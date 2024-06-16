{ config, pkgs, ... }:

{
  home.username = "amer";
  home.homeDirectory = "/Users/amer";
  home.stateVersion = "24.05"; # Please read the comment before changing.
  home.packages = [
  ];
  home.sessionPath = [
    "$HOME/.local/bin"
  ];
  home.file = {
  };
  home.sessionVariables = {
     EDITOR = "Neovim";
  };
  programs.home-manager.enable = true;
}
