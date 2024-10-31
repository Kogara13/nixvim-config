<h1 align="center">NixVim Configuration</h1>
Because who doesn't like a declarative configuration of Neovim?

![Screenshot of configuration](/images/NixVim.png)

## How to run

To run the configuration, you can type the following:

Original repository:

```bash
nix run github:mikaelfangel/nixvim-config
```
Current forked repository:

```bash
nix run github:kogara13/nixvim-config
```

## How to include as package

To include the configuration as a replacement for Neovim, you first need to add it as an input on your system
```
inputs.nixvim.url = "github:mikaelfangel/nixvim-config"
```

Then you can input this in your configuration.nix (be sure that you inherit inputs from your flake)
```
  environment = {
    systemPackages = with pkgs; [
      inputs.nixvim.packages.${system}.default
    ];
  };
```
Or, if using this fork
```
inputs.nixvim.url = "github:kogara13/nixvim-config"
```

```
  environment = {
    systemPackages = with pkgs; [
      inputs.nixvim.packages.${system}.default
    ];
  };
```

## Config and Plugins

Descriptions of all the config files/plugins used in this configuration.

| Name | Description |
| --- | --- |
| auto-pairs.nix | Pairs brackets and quotes automatically. |
| autosave.nix | Saves changes to disk automatically. |
| bufferline.nix | Tab-like interface for easy buffer navigation. |
| cmp.nix | Completion source with several options, including copilot. |
| default.nix | Default configuration file for nixvim. |
| fidget.nix | Show LSP notifications in the bottom corner. |
| git.nix | Gitsigns shows git decorations in Lua, including signs for added, removed, and changed lines. |
| lsp.nix | Language Server Protocol support. |
| lualine.nix | Lualine status line. |
| none-ls.nix | Additional language server configurations. |
| nvim-tree.nix | File explorer tree. |
| options.nix | Additional options and settings for nixvim. |
| telescope.nix | Extendable fuzzy finder over lists. |
| toggleterm.nix | Management of multiple terminal windows. |
| treesitter.nix | Syntax highlighting and indentation based on Tree-sitter. |
| trouble.nix | Provides a pretty list for showing diagnostics, references, telescope results, quickfix and location lists | 
| which_key.nix | Popup display of keybindings. |
| wilder.nix | Display command mode suggestions. |

## Contributing

If there is something that you feel that is not quite right, or you have ideas for improvement, please submit an issue or a PR.

## Acknowledgements
 * [NixVim](https://github.com/nix-community/nixvim)
