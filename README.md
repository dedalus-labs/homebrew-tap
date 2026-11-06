# Homebrew Tap

Homebrew formulae for [Dedalus](https://dedaluslabs.ai) CLI tools.

## Install

```bash
brew install dedalus-labs/tap/dedalus
```

The formula installs a standalone executable on macOS and Linux, with no Node.js
dependency. If you previously installed the 0.6.0 cask, migrate to the formula:

```bash
brew uninstall --cask dedalus-labs/tap/dedalus
brew install --formula dedalus-labs/tap/dedalus
```

## Usage

```bash
dedalus --help
```
