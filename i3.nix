{ config, pkgs, ... }:

{
  services.xserver.enable = true;
  services.xserver.windowManager.i3.enable = true;
  services.xserver.displayManager.startx.enable = true;

  services.xserver.xkb = {
    layout = "us";
    variant = "";
  };

  environment.systemPackages = with pkgs; [
    i3 dmenu i3status polybar rofi feh picom xorg.xrandr autorandr light
  ];
}

