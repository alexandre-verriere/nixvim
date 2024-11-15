{ pkgs, ... }: {
  plugins = {
    treesitter-context.enable = true;
    treesitter-textobjects.enable = true;
    ts-autotag.enable = true;
    treesitter = {
      enable = true;
      grammarPackages = with pkgs;
        vimPlugins.nvim-treesitter.passthru.allGrammars;
    };
  };
}
