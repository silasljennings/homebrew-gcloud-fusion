# Homebrew Tap for gcloud-fusion

This is the official Homebrew tap for gcloud-fusion - CLI shortcuts for Google Cloud Platform, Firebase, and GitHub operations.

## Installation

```bash
brew tap silasljennings/gcloud-fusion
brew install gcloud-fusion
```

## What is gcloud-fusion?

gcloud-fusion provides a streamlined CLI interface that "fuses" together:
- Google Cloud Platform operations (gcloud CLI)
- Firebase operations (firebase CLI)
- GitHub operations (gh CLI)
- Local development utilities

## Available Commands

After installation, these commands become available:

### Google Cloud (gc-*)
- `set-project` - Switch gcloud to specified GCP project
- `create-secret` - Create/replace secrets in GCP Secret Manager
- `create-artifact` - Create Artifact Registry repositories
- `link-repo` - Link GitHub repository to GCP project
- `create-trigger` - Create Cloud Build triggers
- `create-host` - Connect GitHub as connection host in GCP
- `create-cloudbuild` - Create cloudbuild.yaml files
- `create-dockerfile` - Create Dockerfile templates

### Firebase (fb-*)
- `create-emulator` - Create Firebase emulation setup
- `run-emulator` - Launch Firebase emulators

### GitHub (gh-*)
- `create-repo` - Create new GitHub repositories
- `delete-repo` - Delete GitHub repositories
- `create-ssh` - Create SSH keys for GitHub
- `delete-ssh` - Delete SSH keys from GitHub
- `get-repo` - Clone GitHub repositories
- `set-remote` - Set repository remote origins
- `create-ignore` - Create .gitignore files
- `set-visibility` - Set repository visibility (public/private)

### Local (lc-*)
- `copy-repo` - Copy local repository without .git files
- `get-boiler` - Interactive boilerplate repository setup

### Utilities
- `help` - Show all available commands

## Migration from Legacy Installation

If you previously installed gcloud-fusion via the shell function method:

1. Install via Homebrew (above)
2. Remove old shell functions from your `~/.zshrc` or `~/.bashrc`:
   - Look for "Project Script Shortcuts" section
   - Delete the entire section added by the old installer
3. Restart your shell or run `source ~/.zshrc`

## Dependencies

This formula automatically installs the following dependencies:
- google-cloud-sdk (gcloud CLI)
- firebase-cli (Firebase tools)
- gh (GitHub CLI)
- git (Version control)
- node (Required for firebase-cli)

## Source Code

The source code is available at: https://github.com/silasljennings/gcloud-fusion

## License

MIT License