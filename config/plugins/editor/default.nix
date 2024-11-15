{
  imports = [
    ./arrow.nix
    ./mini.nix
    ./oil.nix
    ./smart-splits.nix
    ./spectre.nix
    ./startify.nix
    ./telescope.nix
    ./treesitter.nix
    ./trouble.nix
    ./floaterm.nix
    ./inc-rename.nix
    ./refactoring.nix
    ./noice.nix
    ./gitsigns.nix
    ./fzf-lua.nix
  ];

  plugins = {
    leap.enable = true;
    # hardtime.enable = false;
    which-key.enable = false;
    nvim-autopairs.enable = true;
    fugitive.enable = true;
    diffview.enable = true;
    gitsigns.enable = true;
    fzf-lua.enable = true;
    vim-surround.enable = true;
    nvim-bqf.enable = true;
    dressing.enable = true;
    rainbow-delimiters.enable = true;
    nix.enable = true;
  };
}
