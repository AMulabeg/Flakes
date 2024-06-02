{ inputs,config, pkgs, lib, ... }:
{
   # List packages installed in system profile. To search by name, run:
   # $ nix-env -qaP | grep wget
   imports = [
     ./homebrew.nix
     ./fonts.nix
      # <home-manager/nix-darwin>
   ];
    home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      amer = import ./home.nix;
    };
  };

        
    environment.systemPackages = with pkgs; [
    # Neovim tools
    vim
    neovim
    ripgrep
    # Terminal tools
    git
    zsh
    fd
    neofetch
    fzf
    nerdfonts
    zoxide
    tmux
    gnused
    sesh
    bat
    eza
    curl
    cmatrix
    cowsay
    fastfetch
    gh
    ffmpeg
    fish
    gnugrep
    htop
    lazydocker
    lazygit
    lsd
    llvm
    nerdfix
    netcat
    qemu
    ranger
    starship
    tldr
    terminal-notifier
    tree
    unzip
    wget
    yazi
    yt-dlp
    ultralist
    home-manager
    docker
    # TWM tools 
    skhd
    yabai
    # Compilers
    gcc-arm-embedded
    cmake
    python3
    go
    lua
    gnumake
    openjdk
    cargo
    nodejs
    # SQL tools
    sqlite
    postgresql
    duckdb
    # Formatters
    clang-tools
  ];

  # Use a custom configuration.nix location.
  # $ darwin-rebuild switch -I darwin-config=$HOME/.config/nixpkgs/darwin/configuration.nix
  # environment.darwinConfig = "$HOME/.config/nixpkgs/configuration.nix";
  nixpkgs.config.allowUnfree = true;
  nixpkgs.hostPlatform = "aarch64-darwin";

  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;

  programs.zsh.enable = true;  # default shell on catalina
  # Used for backwards compatibility, please read the changelog before changing.
  # $ darwin-rebuild changelog
  system.stateVersion = 4;
}

