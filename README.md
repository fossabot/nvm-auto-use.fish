# nvm-auto-use.fish

Automates loading the correct Node.js version from `.nvmrc` in Fish shell.

## Installation

Ensure you have [fisher](https://github.com/jorgebucaran/fisher) installed, then run:

```fish
fisher install ivuorinen/nvm-auto-use.fish
```

## Usage

This script automatically detects the `.nvmrc` file in your current or
parent directories and loads the specified Node.js version.

If the specified version is not installed, it will be installed
automatically using `nvm install`.

## Uninstall

To remove the plugin, run:

```fish
fisher remove ivuorinen/nvm-auto-use.fish
```

## License

MIT License. See [LICENSE](LICENSE) for details.
