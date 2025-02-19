{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    terraform ranger vscode zsh psmisc alacritty wget git vim curl rofi feh remmina
    discord enpass _1password-gui flatpak slack wget
    brave firefox spotify scrot polybar siji awscli2 copilot-cli docker
  ];
}

