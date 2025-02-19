{ config, pkgs, ... }:

{
  # Enable the Docker service
  virtualisation.docker.enable = true;

  # Allow user access without root
  users.users.kerolos.extraGroups = [ "docker" ];

  # Optional: Specify Docker storage driver if needed
  virtualisation.docker.storageDriver = "overlay2";

  # Example Docker daemon settings
  virtualisation.docker.daemon.settings = {
    userland-proxy = false;
    experimental = true;
    metrics-addr = "0.0.0.0:9323";
    ipv6 = false;
    fixed-cidr-v6 = "fd00::/80";
  };

  # Enable rootless mode if desired
  virtualisation.docker.rootless = {
    enable = true;
    setSocketVariable = true;
  };
}

