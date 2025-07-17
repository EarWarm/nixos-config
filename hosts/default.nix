{ config, pkgs, ... }:

{
  # Import configurations
  imports = [
    /etc/nixos/hardware-configuration.nix
    ./vm-shared.nix
  ];

  users.users.earwarm = {
    isNormalUser = true;
    name = "EarWarm";
    extraGroups = [ "wheel" ];
    shell = pkgs.bash;
  };
}