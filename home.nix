{ config, pkgs, inputs, ... }:
let
  inherit (config.lib.file) mkOutOfStoreSymlink;
in
{
  home.username = "amer";
  home.homeDirectory = "/Users/amer";
  home.stateVersion = "24.05"; # Please read the comment before changing.

  xdg.enable = true;
  xdg.configFile.nvim.source = mkOutOfStoreSymlink "/Users/amer/dots/.config/nvim";
  xdg.configFile.wezterm.source = mkOutOfStoreSymlink "/Users/amer/dots/.wezterm.lua";
  xdg.configFile.zsh.source = mkOutOfStoreSymlink "/Users/amer/dots/.zshrc";
  xdg.configFile.sketchybar.source = mkOutOfStoreSymlink "/Users/amer/dots/.config/sketchybarmain";
  xdg.configFile.sketchybarleft.source = mkOutOfStoreSymlink "/Users/amer/dots/.config/sketchybarleft";
  xdg.configFile.sketchybarmain.source = mkOutOfStoreSymlink "/Users/amer/dots/.config/sketchybar";
  xdg.configFile.starship.source = mkOutOfStoreSymlink "/Users/amer/dots/.config/starship.toml";
  xdg.configFile.tmux.source = mkOutOfStoreSymlink "/Users/amer/dots/.config/tmux";
  xdg.configFile.yabai.source = mkOutOfStoreSymlink "/Users/amer/dots/.config/yabai";
  xdg.configFile.skhd.source = mkOutOfStoreSymlink "/Users/amer/dots/.config/skhd";

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
  home.file = { };
  home.sessionVariables = {
    EDITOR = "Neovim";
  };
  programs.home-manager.enable = true;
}
