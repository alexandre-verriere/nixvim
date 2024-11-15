{
  plugins.telescope = {
    enable = false;
    keymaps = {
      "<leader>ff" = "find_files";
      "<leader>fg" = "live_grep";
      "<leader><space>" = "buffers";
      "<leader>fh" = "help_tags";
      "<leader>fd" = "diagnostics";
    };
    extensions = {
      fzf-native = { enable = true; };
      file-browser = { enable = true; };
      ui-select = { enable = true; };
    };

    # set_env.COLORTERM = "truecolor";
  };
}
