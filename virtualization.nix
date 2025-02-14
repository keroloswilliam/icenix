{ config, pkgs, ... }:

{
  services.libvirtd.enable = true;
  virtualisation.libvirtd.enable = true;

  users.users.kerolos.extraGroups = [ "libvirtd" ];
}

