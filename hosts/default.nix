{ config, pkgs, ... }:

{
  # Import configurations
  imports = [
    ./vm-shared.nix
  ];

  users.users.earwarm = {
    isNormalUser = true;
    name = "EarWarm";
    extraGroups = [ "wheel" ];
    shell = pkgs.bash;
  };
}