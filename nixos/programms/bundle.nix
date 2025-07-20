{ config, pkgs, ... }:
{
  imports = [
    ./firefox.nix
    ./git.nix
  ];

  environment.systemPackages = with pkgs; [
    tree
    wget
    kitty
    bash
  ];
}