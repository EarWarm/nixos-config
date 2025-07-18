{ config, pkgs, ... }:
{
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    imports = [
        ./bundle.nix
        ./users/earwarm.nix
    ];

    
}