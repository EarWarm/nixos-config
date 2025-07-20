{ config, pkgs, nixosPath, ... }:
{
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    imports = [
        "${toString nixosPath}/hardware-configuration.nix"
        ./bundle.nix
        ./users/earwarm.nix
    ];
}