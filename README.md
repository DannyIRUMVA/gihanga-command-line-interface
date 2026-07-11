# Gihanga CLI

Gihanga CLI is a Kinyarwanda-first AI coding assistant for the terminal. It helps developers read, edit, write, and run code from the command line while keeping the familiar workflow of a coding agent.

> English documentation: this file  
> Kinyarwanda documentation: [README.rw.md](README.rw.md)

## What it does

- Opens an interactive terminal coding assistant with `gihanga`
- Reads project files and explains code
- Edits and writes files when you ask it to
- Runs shell commands through the built-in bash tool
- Supports multiple AI providers and models
- Supports ubumenyi, extensions, prompt templates, and themes
- Shows Kinyarwanda-first CLI help and slash-command descriptions

## Requirements

- Linux, macOS, or Windows terminal
- Node.js `>=22.19.0`
- npm
- At least one supported AI provider credential, or login through the CLI

## Local install script

Run this from the folder where you want to keep the source code:

```bash
git clone https://github.com/DannyIRUMVA/gihanga-command-line-interface.git
cd gihanga-command-line-interface
./install-local.sh
gihanga --help
```

The script runs:

```bash
npm install --ignore-scripts
npm run build
npm link --workspace @earendil-works/pi-coding-agent
```

After this, the `gihanga` command should work from anywhere on your computer for the current user.

## Updating your local install

```bash
cd gihanga-command-line-interface
git pull
npm install --ignore-scripts
npm run build
npm link --workspace @earendil-works/pi-coding-agent
gihanga --version
```

## Basic usage

```bash
# Start interactive mode
gihanga

# Ask one question and exit
gihanga -p "Explain this project"

# Include files in the first message
gihanga @README.md "Summarize this file"

# Show help
gihanga --help

# List available models
gihanga --list-models
```

## Common commands

```bash
gihanga install <source>      # Install an extension/package source
gihanga remove <source>       # Remove an extension/package source
gihanga update                # Update Gihanga
gihanga list                  # List installed packages/extensions
gihanga config                # Open package resource configuration
```

Inside interactive mode, type `/` to see slash commands such as:

```text
/settings
/model
/login
/resume
/new
/compact
/quit
```

## Authentication

You can start Gihanga and use `/login`:

```bash
gihanga
# then type: /login
```

Or provide an API key through environment variables such as:

```bash
export ANTHROPIC_API_KEY="your-api-key"
gihanga
```

Supported providers include Anthropic, OpenAI, Google Gemini, GitHub Copilot, OpenRouter, Groq, Cerebras, Mistral, Amazon Bedrock, Cloudflare, and others inherited from the original Pi provider layer.

## Development

```bash
npm install --ignore-scripts
npm run build
npm run check
./test.sh
```

For quick source testing without global linking:

```bash
./pi-test.sh
```

## Notes

- The command name is `gihanga`.
- Some internal package names still reference the upstream Pi packages to avoid breaking imports and workspace functionality.
- The actual command flags stay in English for compatibility, while help text is Kinyarwanda-first.
- This project is based on the Pi Agent Harness and adapted for the Kinyarwanda developer community.

## License

MIT
