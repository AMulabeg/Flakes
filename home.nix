{ config, pkgs, inputs, ... }:
let
  inherit (config.lib.file) mkOutOfStoreSymlink;
in
{
  home.username = "amer";
  home.homeDirectory = "/Users/amer";
  home.stateVersion = "24.05"; # Please read the comment before changing.

  xdg.enable = true;
  home.packages = [
  ];
  home.sessionPath = [
    "/Users/amer/.local/bin"
    "/Users/amer/.cargo/bin"
    "/Users/amer/.gem"
    "/Users/amer/.ghcup/bin/ghc"
    "/Users/amer/.anaconda"

  ];
  programs.git = {
    enable = true;
    userName = "AMulabeg";
    userEmail = "a.mulabeg@proton.me";
  };
  home.file = {
    # ".config/nvim".source = "${inputs.neovim}";
  };
  home.sessionVariables = {
    EDITOR = "Neovim";
  };
  programs.home-manager.enable = true;
}
