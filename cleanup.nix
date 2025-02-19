# garbage-collection.nix
{ config, pkgs, lib, ... }:

{
  nix.gc = {
    automatic = true;
    dates = "weekly"; # or "daily"
    options = "--delete-older-than 7d";
  };
}

