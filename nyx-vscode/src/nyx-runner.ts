import { spawn } from 'child_process';
import * as fs from 'fs';
import * as path from 'path';
import * as os from 'os';

export interface Diagnostic {
    line: number;
    col: number;
    message: string;
}

export interface NyxSymbol {
    kind: string;
    name: string;
    line: number;
    col: number;
}

export interface NyxDefinition {
    kind: string;
    name: string;
    line: number;
    col: number;
}

export interface CheckResult {
    diagnostics: Diagnostic[];
    symbols: NyxSymbol[];
    definitions: NyxDefinition[];
}

export class NyxRunner {
    private nyxCheckPath: string;
    private workDir: string;
    private debounceTimer: NodeJS.Timeout | null = null;

    constructor(nyxCheckPath: string, workDir: string) {
        this.nyxCheckPath = nyxCheckPath;
        this.workDir = workDir;
    }

    async check(filePath: string): Promise<CheckResult> {
        if (this.debounceTimer) {
            clearTimeout(this.debounceTimer);
        }

        return new Promise((resolve) => {
            this.debounceTimer = setTimeout(async () => {
                const result = await this.runCheck(filePath);
                resolve(result);
            }, 300);
        });
    }

    private async runCheck(filePath: string): Promise<CheckResult> {
        const tmpDir = fs.mkdtempSync(path.join(os.tmpdir(), 'nyx-check-'));

        try {
            fs.copyFileSync(filePath, path.join(tmpDir, 'script.nx'));

            const stdSrc = path.join(this.workDir, 'std');
            const stdDst = path.join(tmpDir, 'std');
            if (fs.existsSync(stdSrc) && !fs.existsSync(stdDst)) {
                fs.symlinkSync(stdSrc, stdDst);
            }

            const stdout = await this.spawn(tmpDir);
            return this.parseOutput(stdout);
        } finally {
            fs.rmSync(tmpDir, { recursive: true, force: true });
        }
    }

    private spawn(cwd: string): Promise<string> {
        return new Promise((resolve, reject) => {
            const proc = spawn(this.nyxCheckPath, [], {
                cwd,
                timeout: 5000,
                stdio: ['ignore', 'pipe', 'pipe'],
            });

            let stdout = '';

            proc.stdout.on('data', (data: Buffer) => { stdout += data.toString(); });
            proc.stderr.on('data', (data: Buffer) => { /* ignore stderr */ });

            proc.on('close', () => {
                resolve(stdout);
            });

            proc.on('error', (err: Error) => {
                reject(err);
            });
        });
    }

    private parseOutput(stdout: string): CheckResult {
        const diagnostics: Diagnostic[] = [];
        const symbols: NyxSymbol[] = [];
        const definitions: NyxDefinition[] = [];

        const lines = stdout.split('\n');
        for (const line of lines) {
            if (line.startsWith('DIAG:')) {
                const parts = line.split(':');
                if (parts.length >= 5) {
                    diagnostics.push({
                        line: parseInt(parts[2], 10) || 0,
                        col: parseInt(parts[3], 10) || 0,
                        message: parts.slice(4).join(':'),
                    });
                }
            } else if (line.startsWith('DEF:')) {
                // DEF:kind:name:line:col
                const parts = line.split(':');
                if (parts.length >= 5) {
                    definitions.push({
                        kind: parts[1],
                        name: parts[2],
                        line: parseInt(parts[3], 10) || 0,
                        col: parseInt(parts[4], 10) || 0,
                    });
                }
            } else if (line.startsWith('SYM:')) {
                // SYM:kind:name
                const parts = line.split(':');
                if (parts.length >= 3) {
                    symbols.push({
                        kind: parts[1],
                        name: parts[2],
                        line: 0,
                        col: 0,
                    });
                }
            } else if (line.startsWith('Error [')) {
                const match = line.match(/^Error \[(\d+):(\d+)\]:\s*(.*)$/);
                if (match) {
                    diagnostics.push({
                        line: parseInt(match[1], 10),
                        col: parseInt(match[2], 10),
                        message: match[3],
                    });
                }
            }
        }

        return { diagnostics, symbols, definitions };
    }
}
