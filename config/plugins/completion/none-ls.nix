{
  plugins.none-ls = {
    enable = true;
    enableLspFormat = true;
    sources = {
      code_actions = {
        gitsigns.enable = true;
        statix.enable = true;
        gitrebase.enable = true;
      };
      completion = {
        luasnip.enable = false;
        tags.enable = true;
      };
      diagnostics = {
        ansiblelint = {
          enable = true;
          settings = "{ filetypes = { 'yaml.ansible' } }";
        };
        yamllint.enable = true;
        statix.enable = true;
        pylint.enable = false;
        markdownlint.enable = true;
        codespell.enable = false;
      };
      formatting = {
        # alejandra.enable = true;
        # just.enable = true;
        # markdownlint.enable = true;
        # nixfmt.enable = true;
        # prettier.enable = true;
        # stylua.enable = true;
        # treefmt.enable = true;
        # yamlfmt.enable = false;
      };
    };
  };
}

