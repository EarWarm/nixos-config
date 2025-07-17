{ config, pkgs, ... }:

{
    # Import configurations
    imports = [
        ./hardware-configuration.nix
        # Import components
        ./components/datetime.nix
        ./components/fonts.nix
        ./components/desktop.nix
        ./components/waybar.nix
        # Import programms
    ];

}