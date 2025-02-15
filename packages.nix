{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    alacritty wget git vim curl 
    discord enpass _1password-gui flatpak slack
    brave firefox spotify
  ];
}

