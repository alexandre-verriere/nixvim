{
  description = "Home Manager configuration using flakes";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };

  outputs = { self, nixpkgs, home-manager, }: {
    homeConfigurations = {
      alexandre = home-manager.lib.homeManagerConfiguration {
        # pkgs = import nixpkgs { system = "x86_64-linux"; };

        # modules = [ ./home.nix ];
      };
    };
  };
}
