# zsh.nix
{ config, pkgs, lib, ... }:

{

  # Set Zsh shell for a specific user (Replace <my-username> with your actual username)
  users.users.kerolos.shell = pkgs.zsh;
  # users.users.officialrajdeepsingh.shell = pkgs.zsh;

  # Enable and configure Zsh with Oh My Zsh
  programs.zsh = {
    enable = true;
    autosuggestions.enable = true;
    zsh-autoenv.enable = true;
    syntaxHighlighting.enable = true;
    ohMyZsh = {
      enable = true;
      theme = "robbyrussell";
      plugins = [
        "git"
        "terraform"
        "history"
      ];
    };
  };
}

