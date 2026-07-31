import * as path from 'path';
import * as vscode from 'vscode';
import { NyxRunner, Diagnostic as NyxDiag, NyxSymbol, NyxDefinition } from './nyx-runner';

let diagnosticCollection: vscode.DiagnosticCollection;
let runner: NyxRunner;
let lastDefinitions: NyxDefinition[] = [];

export function activate(context: vscode.ExtensionContext) {
    diagnosticCollection = vscode.languages.createDiagnosticCollection('nyx');
    context.subscriptions.push(diagnosticCollection);

    const workspaceFolders = vscode.workspace.workspaceFolders;
    const nyxCheckPath = workspaceFolders
        ? path.join(workspaceFolders[0].uri.fsPath, 'nyx_check')
        : 'nyx_check';

    runner = new NyxRunner(nyxCheckPath, workspaceFolders?.[0]?.uri.fsPath || '.');

    // Run diagnostics on save
    context.subscriptions.push(
        vscode.workspace.onDidSaveTextDocument((doc) => {
            if (doc.languageId === 'nyx') {
                runDiagnostics(doc);
            }
        })
    );

    // Run diagnostics on open
    context.subscriptions.push(
        vscode.workspace.onDidOpenTextDocument((doc) => {
            if (doc.languageId === 'nyx') {
                runDiagnostics(doc);
            }
        })
    );

    // Clear diagnostics on close
    context.subscriptions.push(
        vscode.workspace.onDidCloseTextDocument((doc) => {
            diagnosticCollection.delete(doc.uri);
        })
    );

    // Document symbol provider (outline)
    context.subscriptions.push(
        vscode.languages.registerDocumentSymbolProvider(
            { language: 'nyx' },
            new NyxDocumentSymbolProvider()
        )
    );

    // Go-to-definition provider
    context.subscriptions.push(
        vscode.languages.registerDefinitionProvider(
            { language: 'nyx' },
            new NyxDefinitionProvider()
        )
    );

    // Hover provider
    context.subscriptions.push(
        vscode.languages.registerHoverProvider(
            { language: 'nyx' },
            new NyxHoverProvider()
        )
    );

    // Run for already open documents
    vscode.workspace.textDocuments.forEach((doc) => {
        if (doc.languageId === 'nyx') {
            runDiagnostics(doc);
        }
    });
}

async function runDiagnostics(document: vscode.TextDocument) {
    try {
        const result = await runner.check(document.uri.fsPath);

        const diagnostics: vscode.Diagnostic[] = result.diagnostics.map((d: NyxDiag) => {
            const line = Math.max(0, d.line - 1);
            const col = Math.max(0, d.col - 1);
            const range = new vscode.Range(line, col, line, 1000);
            const diag = new vscode.Diagnostic(range, d.message, vscode.DiagnosticSeverity.Error);
            diag.source = 'nyx';
            return diag;
        });

        diagnosticCollection.set(document.uri, diagnostics);

        // Cache definitions for go-to-definition
        lastDefinitions = result.definitions;
    } catch (err) {
        console.error('nyx_check failed:', err);
    }
}

class NyxDocumentSymbolProvider implements vscode.DocumentSymbolProvider {
    async provideDocumentSymbols(
        document: vscode.TextDocument
    ): Promise<vscode.DocumentSymbol[]> {
        try {
            const result = await runner.check(document.uri.fsPath);
            lastDefinitions = result.definitions;

            return result.definitions
                .filter((d: NyxDefinition) => ['fn', 'struct', 'enum', 'trait', 'test'].includes(d.kind))
                .map((d: NyxDefinition) => {
                    const line = Math.max(0, d.line - 1);
                    const col = Math.max(0, d.col - 1);
                    const range = new vscode.Range(line, col, line, col + d.name.length);
                    let kind: vscode.SymbolKind;
                    switch (d.kind) {
                        case 'fn': kind = vscode.SymbolKind.Function; break;
                        case 'struct': kind = vscode.SymbolKind.Struct; break;
                        case 'enum': kind = vscode.SymbolKind.Enum; break;
                        case 'trait': kind = vscode.SymbolKind.Interface; break;
                        case 'test': kind = vscode.SymbolKind.Method; break;
                        default: kind = vscode.SymbolKind.Variable;
                    }
                    return new vscode.DocumentSymbol(d.name, d.kind, kind, range, range);
                });
        } catch {
            return [];
        }
    }
}

class NyxDefinitionProvider implements vscode.DefinitionProvider {
    async provideDefinition(
        document: vscode.TextDocument,
        position: vscode.Position
    ): Promise<vscode.Definition | undefined> {
        // Get the word at cursor position
        const wordRange = document.getWordRangeAtPosition(position);
        if (!wordRange) { return undefined; }
        const word = document.getText(wordRange);

        // Ensure we have definitions
        if (lastDefinitions.length === 0) {
            try {
                const result = await runner.check(document.uri.fsPath);
                lastDefinitions = result.definitions;
            } catch {
                return undefined;
            }
        }

        // Find definition matching the word
        const def = lastDefinitions.find((d: NyxDefinition) => d.name === word);
        if (def) {
            const line = Math.max(0, def.line - 1);
            const col = Math.max(0, def.col - 1);
            return new vscode.Location(document.uri, new vscode.Position(line, col));
        }

        return undefined;
    }
}

class NyxHoverProvider implements vscode.HoverProvider {
    async provideHover(
        document: vscode.TextDocument,
        position: vscode.Position
    ): Promise<vscode.Hover | undefined> {
        const wordRange = document.getWordRangeAtPosition(position);
        if (!wordRange) { return undefined; }
        const word = document.getText(wordRange);

        if (lastDefinitions.length === 0) {
            try {
                const result = await runner.check(document.uri.fsPath);
                lastDefinitions = result.definitions;
            } catch {
                return undefined;
            }
        }

        const def = lastDefinitions.find((d: NyxDefinition) => d.name === word);
        if (def) {
            const markdown = new vscode.MarkdownString();
            markdown.appendCodeblock(`(${def.kind}) ${def.name}`, 'nyx');
            return new vscode.Hover(markdown, wordRange);
        }

        return undefined;
    }
}

export function deactivate() {}
