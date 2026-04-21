const BASE = location.pathname.startsWith('/playground') ? '/playground' : '';
const codeEl = document.getElementById('code');
const outputEl = document.getElementById('output');
const runBtn = document.getElementById('run-btn');
const examplesEl = document.getElementById('examples');

// Load examples list on startup
fetch(BASE + '/api/examples')
    .then(r => r.json())
    .then(names => {
        names.forEach(name => {
            const opt = document.createElement('option');
            opt.value = name;
            opt.textContent = name;
            examplesEl.appendChild(opt);
        });
    })
    .catch(() => {});

// Load selected example
examplesEl.addEventListener('change', () => {
    const name = examplesEl.value;
    if (!name) return;
    fetch(BASE + '/api/example/' + name)
        .then(r => r.json())
        .then(data => { codeEl.value = data.code; })
        .catch(err => { outputEl.textContent = 'Failed to load example: ' + err; });
});

// Run code
function runCode() {
    const code = codeEl.value;
    if (!code.trim()) return;

    runBtn.disabled = true;
    runBtn.textContent = 'Running...';
    outputEl.textContent = 'Compiling and running...';
    outputEl.className = '';

    fetch(BASE + '/api/run', {
        method: 'POST',
        headers: { 'Content-Type': 'text/plain' },
        body: code
    })
    .then(r => r.json())
    .then(data => {
        outputEl.textContent = data.output || '(no output)';
        outputEl.className = data.success ? 'success' : 'error';
    })
    .catch(err => {
        outputEl.textContent = 'Request failed: ' + err;
        outputEl.className = 'error';
    })
    .finally(() => {
        runBtn.disabled = false;
        runBtn.textContent = 'Run';
    });
}

// Ctrl+Enter shortcut
codeEl.addEventListener('keydown', e => {
    if ((e.ctrlKey || e.metaKey) && e.key === 'Enter') {
        e.preventDefault();
        runCode();
    }
    // Tab inserts spaces
    if (e.key === 'Tab') {
        e.preventDefault();
        const start = codeEl.selectionStart;
        codeEl.value = codeEl.value.substring(0, start) + '    ' + codeEl.value.substring(codeEl.selectionEnd);
        codeEl.selectionStart = codeEl.selectionEnd = start + 4;
    }
});
