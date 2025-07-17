{ config, pkgs, ... }:

{
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    # Import configurations
    imports = [
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

    programs.bash.enable = true;
}