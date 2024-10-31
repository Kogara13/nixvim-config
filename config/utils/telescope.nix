{
  plugins.telescope = {
    enable = true;
    keymaps = {
      "<leader>fg" = "live_grep";
      "<C-p>" = {
        action = "git_files";
        options = {
          desc = "Telescope Git Files";
        };
      };
    };
    settings.defaults = {
        file_ignore_pattern = [
            "^.git/"
            "^.mypy_cache/"
            "^__pychache__/"
            "^output/"
            "^data/"
            "%.ipynb"
        ];
    };
    extensions.fzf-native = { enable = true; };
  };
}
