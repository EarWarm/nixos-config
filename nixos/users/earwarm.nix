{ config, pkgs, ... }:

{
  users.users.earwarm = {
    isNormalUser = true;
    name = "EarWarm";
    extraGroups = [ "wheel" ];
    shell = pkgs.bash;
  };
}