{ config, pkgs, ... }:
{
  networking.networkmanager.enable = true;

  networking.hostName = "nixos"; # Define your hostname.
}