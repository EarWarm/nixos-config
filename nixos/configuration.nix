{ config, pkgs, nixosPath, ... }:
{
    nix.settings.experimental-features = [ "nix-command" "flakes" ];

    imports = [
        ./hardware-configuration.nix
        ./bundle.nix
        ./users/earwarm.nix
    ];

    # Bootloader
    boot.loader.systemd-boot.enable = true;
    boot.loader.efi.canTouchEfiVariables = true;

    system.stateVersion = "25.05";
}