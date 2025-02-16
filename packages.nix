{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    zsh psmisc alacritty wget git vim curl rofi feh
    discord enpass _1password-gui flatpak slack
    brave firefox spotify scrot polybar siji
  ];
}

