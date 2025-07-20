{ config, pkgs, ... }:
{
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    imports = [
        (import ./hardware-configuration.nix)
        ./bundle.nix
        ./users/earwarm.nix
    ];

    
}