{ config, pkgs, ... }:

{
  home.username = "EarWarm";
  home.homeDirectory = "/home/earwarm";

  programs.bash.enable = true;

  programs.git = {
    enable = true;
    userName = "EarWarm";
    userEmail = "earwarm@bk.ru";
  };

  home.stateVersion = "25.05";
}