{ config, pkgs, ... }:
{
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    imports = [
        "${toString ./hardware-configuration.nix}"
        ./bundle.nix
        ./users/earwarm.nix
    ];

    
}