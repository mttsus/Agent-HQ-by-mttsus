#!/usr/bin/env python3
"""Prepare an isolated workspace and optionally launch local Codex interactively.

Standard library only; no external services or automatic installation.
"""
import argparse
import shutil
import subprocess
import sys
from pathlib import Path

ROOT = Path(__file__).resolve().parent
WORKSPACE = ROOT / "workspace"
PROMPT = ROOT / "prompts" / "AGENT_HQ_MASTER_PROMPT.md"
BRANDING = ROOT / "prompts" / "BRANDING_ADDENDUM.md"

WORKSPACE_GUIDE = """# Agent HQ implementation workspace

Read `AGENT_HQ_MASTER_PROMPT.md` completely, followed by `BRANDING_ADDENDUM.md`.
The master prompt defines the product and acceptance criteria; the addendum defines international English and unobtrusive attribution.
Inspect actual environment, then implement, test, and launch when possible. Do not fabricate connections or completion claims.
Do not disclose credentials. Obtain permission for external actions, paid services, or scope-expanding access.
Do not overwrite an existing application without inspection and authorization.
This directory is local output, deliberately not committed to the public starter repository.
"""

def prepare():
    for file in (PROMPT, BRANDING):
        if not file.is_file():
            raise FileNotFoundError(f"Missing required file: {file}")
    WORKSPACE.mkdir(exist_ok=True)
    for origin in (PROMPT, BRANDING):
        target = WORKSPACE / origin.name
        if not target.exists():
            shutil.copy2(origin, target)
        elif target.read_bytes() != origin.read_bytes():
            print(f"Keeping user-modified {target.name}; source has changed. Review manually.")
    guide = WORKSPACE / "AGENTS.md"
    if not guide.exists():
        guide.write_text(WORKSPACE_GUIDE, encoding="utf-8")
    print(f"Workspace ready: {WORKSPACE}")


def main(argv=None):
    parser = argparse.ArgumentParser(description="Agent HQ Codex starter")
    parser.add_argument("--check", action="store_true", help="Check prerequisites only")
    parser.add_argument("--prepare", action="store_true", help="Prepare workspace without launching Codex")
    args = parser.parse_args(argv)
    print("Agent HQ by mttsus | Codex starter kit")
    codex = shutil.which("codex")
    print(f"Python: {sys.version.split()[0]} | Codex: {codex or 'NOT FOUND'}")
    if args.check:
        return 0 if codex else 2
    prepare()
    if args.prepare:
        print("Open workspace/ in your coding agent and follow AGENTS.md.")
        return 0
    if not codex:
        print("Codex CLI not found. Install it using the official instructions, sign in, then rerun.")
        print("https://github.com/openai/codex#quickstart")
        return 2
    instruction = (
        "Implement Agent HQ in this workspace. Read AGENT_HQ_MASTER_PROMPT.md "
        "and BRANDING_ADDENDUM.md completely before starting. Follow AGENTS.md. "
        "Audit local capabilities, make a concise plan, implement and verify what is "
        "authorized, explain blockers honestly, and launch the app if possible."
    )
    print("Starting interactive Codex. Codex may request authentication and approvals.")
    try:
        return subprocess.call([codex, instruction], cwd=WORKSPACE)
    except KeyboardInterrupt:
        return 130
    except OSError as exc:
        print(f"Unable to start Codex: {exc}", file=sys.stderr)
        return 1

if __name__ == "__main__":
    sys.exit(main())
