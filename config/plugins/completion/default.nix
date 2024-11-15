{
  imports =
    [
      ./cmp.nix
      ./lspkind.nix
      ./none-ls.nix
      # # ./codium.nix
      ./luasnip.nix
      # ./conform.nix
    ];

  config.opts.completeopt = [ "menu" "menuone" "noselect" ];
}
