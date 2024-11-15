{ pkgs, ... }: {
  extraPlugins = with pkgs; [
    vimPlugins.vim-commentary
    vimPlugins.vim-jinja
    vimPlugins.catppuccin-nvim
    vimPlugins.vim-better-whitespace
    # vimPlugins.nvim-lspconfig
    vimPlugins.lsp_signature-nvim
    vimPlugins.far-vim
    vimPlugins.neovim-ayu
    vimPlugins.papercolor-theme
    vimPlugins.seoul256-vim
    vimPlugins.modus-themes-nvim
    vimPlugins.astrotheme
    vimPlugins.awesome-vim-colorschemes
    vimPlugins.vim-rooter
  ];
}
