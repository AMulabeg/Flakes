{ ... }: {


  homebrew = {
    enable = true;

    brews = [
      # macOS packages
      "neovim"
      "switchaudio-osx"
      "borders"
      "yabai"
      "skhd"
      "sketchybar"
      "tpm"
      "yq"
      "ruby"
      "bitwarden-cli"
      "swift"
      "ollama"

      # Stuff that doesn't exist on nix or for some reason
    ];


    taps = [
      "homebrew/services"
      "koekeishiya/formulae"
      "felixkratz/formulae"

    ];



    casks = [
      # "firefox"
      "discord@canary"
      "playcover-community"
      "shortcat"
      "anaconda"
      "karabiner-elements"
      "obsidian"
      "wezterm"
      "wireshark"
      "element"
      "hiddenbar"
      "iina"
      "protonvpn"
      "spotify"
      "transmit"
      "betterdisplay"
      "thunderbird"
      "shottr"
      "gimp"
      "alfred"
      "font-sf-pro"
      "font-jetbrains-mono"

    ];
  };
}
