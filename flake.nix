{
  description = "NixOS configuration by EarWarm";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    yandex-browser = { 
      url = "github:miuirussia/yandex-browser.nix"; 
      inputs.nixpkgs.follows = "nixpkgs"; 
    };
    disko = {
      url = "github:nix-community/disko";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, disko, ... }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs { inherit system; };
    in {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        inherit system;

        specialArgs = {
          nixosPath = ./nixos;
        };

        modules = [
          ./disko.nix
          ./nixos/configuration.nix
        ];
      };
    };
}