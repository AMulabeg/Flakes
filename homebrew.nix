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
      "ca-certificates"
      "terminal-notifier"

      # Stuff that doesn't exist on nix or for some reason
    ];


    taps = [
      "homebrew/services"
      "koekeishiya/formulae"
      "felixkratz/formulae"


    ];



    casks = [
      # "firefox"
      "vscodium"
      "playcover-community"
      "anaconda"
      "karabiner-elements"
      "obsidian"
      "wezterm"
      "wireshark"
      "element"
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
