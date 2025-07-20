{
  description = "NixOS configuration by EarWarm";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    yandex-browser = { 
      url = "github:miuirussia/yandex-browser.nix"; 
      inputs.nixpkgs.follows = "nixpkgs"; 
    };
  };

  outputs = { self, nixpkgs, ... }: {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      let
        system = "x86_64-linux";
      in {
        nixosConfigurations.my-host = nixpkgs.lib.nixosSystem {
          inherit system;

          modules = [
            # Оборачиваем путь к configuration.nix как path
            (import ./nixos/configuration.nix)
          ];

          # 👇 Обязательно указываем, что ./nixos — это часть flake
          specialArgs = {
            nixosPath = ./nixos;
          };
        };
      };
    };
  };
}