{ config, pkgs, ... }:
{
	environment.systemPackages = with pkgs; [
    waybar
  ];

  programs.waybar.enable = true;
  
}