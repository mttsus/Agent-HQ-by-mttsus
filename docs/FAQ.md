# Frequently asked questions

### Is Agent HQ already built in this repository?
No. This is a public prompt-driven starter. Codex uses the full master prompt to build an app on your device. A future release could include a prebuilt app, but this version does not.

### Can I run it without Codex CLI?
You can run `python3 bootstrap.py --prepare` and open the workspace in a Codex-compatible IDE or another coding agent. The automatic launch flow requires an installed Codex CLI.

### Can Codex use every installed AI agent?
Not necessarily. It discovers only what it can access, verifies capabilities and reports limitations. Access to a configuration is not proof of a live integration.

### Where are my data and outputs?
By default, the generated workspace is in `workspace/` and excluded from Git. The resulting application's storage and output paths depend on the implementation and must be reported by Codex.

### How do I stop the app?
Ask Codex for the exact command/process. Stop its backend using the recorded command, often Ctrl+C in the terminal running the server. Browser closure alone may not stop a server.

### What about costs?
The starter has no paid dependencies. Codex usage and generated integration dependencies may incur costs depending on account, service, and implementation. Approve them explicitly.

### Why is there `powered by mttsus`?
It is a small, visible creator credit requested in the application specification, and is separate from any vendor endorsement.
