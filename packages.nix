{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    wget git vim curl 
    discord enpass _1password-gui flatpak slack
    brave firefox spotify
  ];
}

