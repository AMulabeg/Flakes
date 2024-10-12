{ inputs, config, pkgs, lib, ... }:
{
  imports = [
    ./homebrew.nix
  ];
  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users = {
      amer = import ./home.nix;
    };
  };

  environment.systemPackages = with pkgs; [
    # nix tools
    nix-tree
    nix-top

    # Neovim tools
    nushell
    ani-cli
    vim
    oh-my-posh
    ripgrep
    # Terminal tools
    subversionClient
    stow
    luajitPackages.jsregexp
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
    luarocks
    wget
    yazi
    yt-dlp
    ultralist
    home-manager
    docker
    btop
    # TWM tools 
    skhd
    yabai
    # Compilers
    gcc-arm-embedded
    cmake
    python3
    go
    gnumake
    openjdk
    cargo
    rustc
    nodejs
    yarn
    php
    julia_19-bin
    # SQL tools
    sqlite
    postgresql
    duckdb

    # Formatters
    clang-tools
    fontconfig




    # Cool stuff
  ];

  nixpkgs.config.allowUnfree = true;
  nixpkgs.hostPlatform = "aarch64-darwin";
  nix.settings.warn-dirty = false;

  homebrew.onActivation.cleanup = "zap";
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  # Auto upgrade nix package and the daemon service.
  services.nix-daemon.enable = true;
  nix.package = pkgs.nix;
  programs.zsh.enable = true; # default shell on catalina
  system.stateVersion = 4;
}
