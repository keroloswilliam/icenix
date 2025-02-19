{ config, pkgs, ... }:

{
  # Enable PipeWire (Recommended)
  hardware.pulseaudio.enable = false; # Disable PulseAudio if it's enabled
  security.rtkit.enable = true;

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true; # PipeWire replaces PulseAudio
    jack.enable = true; # Optional: for JACK support
  };

  # Install essential audio tools
  environment.systemPackages = with pkgs; [
    pavucontrol # GUI volume control
  ];
}

