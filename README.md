# Homebrew Tap for Penpal

```bash
brew tap Longfellow1/penpal
brew install penpal
penpal install init
penpal doctor
```

This tap installs the `penpal` CLI. Runtime initialization, launchd jobs, diagnostics, and uninstall are owned by the Penpal CLI.

The current formula tracks the `v0.2.0-preview.1` Penpal preview tag. The old `keypulse` formula is kept reachable through `formula_renames.json`, so `brew upgrade keypulse` moves to `penpal`.
