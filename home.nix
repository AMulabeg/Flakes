{ config, pkgs, inputs, ... }:

{
  home.username = "amer";
  home.homeDirectory = "/Users/amer";
  home.stateVersion = "24.05"; # Please read the comment before changing.
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
    ".config/nvim".source = "${inputs.neovim}/nvim";
  };
  home.sessionVariables = {
    EDITOR = "Neovim";
  };
  programs.home-manager.enable = true;
}
