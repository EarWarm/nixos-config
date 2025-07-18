{ config, pkgs, ... }:
{
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    imports = [
        ./hardware-configuration.nix
        ./bundle.nix
        ./users/earwarm.nix
    ];

    
}