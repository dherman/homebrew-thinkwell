# Homebrew Tap for Thinkwell

This is the official Homebrew tap for [thinkwell](https://github.com/dherman/thinkwell), an AI agent orchestration framework.

## Stable Release

Install the latest stable version:

```bash
brew install dherman/thinkwell/thinkwell
```

Or tap first, then install:

```bash
brew tap dherman/thinkwell
brew install thinkwell
```

## Pre-release Channel

Install the latest pre-release version (alpha builds, mirrors npm `next` tag):

```bash
brew install dherman/thinkwell/thinkwell-next
```

Pre-release versions use the `*-alpha.N` versioning scheme (e.g., `0.5.0-alpha.1`).

### Switching Between Channels

You can have both installed and switch between them:

```bash
# Switch to stable
brew unlink thinkwell-next && brew link thinkwell

# Switch to pre-release
brew unlink thinkwell && brew link thinkwell-next
```

## Self-Contained Binary

Both formulas install a self-contained binary with the Node.js runtime embedded. No additional dependencies are required.

## Upgrading

```bash
# Upgrade stable
brew upgrade thinkwell

# Upgrade pre-release
brew upgrade thinkwell-next
```

## Uninstalling

```bash
brew uninstall thinkwell
brew uninstall thinkwell-next  # if installed
brew untap dherman/thinkwell   # optional
```
