{ pkgs, ... }:

{
  plugins = {
    lsp = {
      enable = true;
      servers = {
        bashls.enable = true;
        clangd.enable = true;
        cmake.enable = true;
        cssls.enable = true;
        elixirls.enable = true;
        gleam.enable = true;
        gopls.enable = true;
        html.enable = true;
        htmx.enable = true;
        kotlin_language_server.enable = true;
        lua-ls = {
            enable = true;
            settings.telemetry.enable = false;
        };
        nixd.enable = true;
        prolog_ls = {
          enable = true;
          package = pkgs.swiProlog;
        };
        pylyzer.enable = true;
        ruby-lsp.enable = true;
        ruff_lsp.enable = true;
        rust-analyzer = {
            enable = true;
            installCargo = true;
            installRustc = true;
        };
        sqls.enable = true;
        svelte.enable = true;
        tailwindcss.enable = true;
        ts-ls.enable = true;
      };
      keymaps.lspBuf = {
        "gd" = "definition";
        "gD" = "references";
        "gt" = "type_definition";
        "gi" = "implementation";
        "K" = "hover";
      };
    };
        #rustaceanvim.enable = true;
  };
}
