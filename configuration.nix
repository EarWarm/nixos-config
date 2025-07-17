{ config, pkgs, ... }:

{
    # Import configurations
    imports = [
        ./hardware-configuration.nix
        # Import components
        ./components/datetime.nix
        ./components/fonts.nix
        ./components/rofi.nix
        ./components/desktop.nix
        ./components/waybar.nix
        # Import programms
        ./programms/git.nix
        ./programms/firefox.nix
    ];

}