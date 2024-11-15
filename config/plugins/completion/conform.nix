{ pkgs, ... }:
let
  inherit (pkgs)
    gofumpt
    stylua
    ruff
    prettierd
    nixpkgs-fmt
    terraform;

in
{
  config = {

    extraPackages = [
      gofumpt
      stylua
      ruff
      prettierd
      nixpkgs-fmt
      terraform
    ];

    plugins.conform-nvim = {
      enable = true;
      formattersByFt = {
        go = [ "gofumpt" ];
        lua = [ "stylua" ];
        python = [ "ruff_format" "ruff_fix" ];
        javascript = [ "prettierd" ];
        typescript = [ "prettierd" ];
        nix = [ "nixpkgs_fmt" ];
        tf = [ "terraform_fmt" ];
        "_" = [ "trim_whitespace" ];
        jsonnet = [ "jsonnetfmt" ];
        html = [ "prettierd" ];
        sh = [ "shfmt" ];
      };
    };

  };
}

