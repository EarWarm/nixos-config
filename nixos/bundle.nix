{ config, pkgs, ... }:

{
    imports = [
        # Import hardware
        ./hardware/hardware-configuration.nix
        # Import components
        ./components/datetime.nix
        ./components/fonts.nix
        ./components/rofi.nix
        ./components/desktop.nix
        ./components/waybar.nix
        ./components/locale.nix
        ./components/nixpkgs.nix
        # Import programms
        ./programms/git.nix
        ./programms/firefox.nix
    ];
}