# Homebrew tap for AgenticOS

```bash
brew install --cask vstorm-co/agenticos/agenticos
```

Installs the AgenticOS desktop app from the [GitHub release](https://github.com/vstorm-co/agenticos/releases).
The release is not notarized by Apple, so the cask clears the download quarantine flag from the installed
app; without that, macOS would show "Apple could not verify AgenticOS". The cask file is updated by the
release workflow of the main repository, so do not edit it here.
