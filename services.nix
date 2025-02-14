{ config, pkgs, ... }:

{
 # services.flatpak.enable = true;
  services.xserver.displayManager.lightdm.enable = true;
  services.displayManager.defaultSession = "none+i3";
}

