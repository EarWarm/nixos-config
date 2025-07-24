{ config, pkgs, ... }:
{
  users.users.earwarm = {
    isNormalUser = true;
    name = "earwarm";
    extraGroups = [
      "wheel"
      "networkmanager"
    ];
    shell = pkgs.bash;
    hashedPassword = "$2a$12$PNY9/latUz9dGQfIM.6LuedvSoF4YeZqaZX3qqDL02JR.Jk8jT7xO"; # Default password (earwarm). Change it with passwd command
  };
}