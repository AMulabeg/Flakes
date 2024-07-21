{...}:{


homebrew = {
    enable = true;
    
    brews =[
    # macOS packages
      "switchaudio-osx"
      "borders"
      "yabai"
      "skhd"
      "sketchybar"
      "tpm"
      "yq"
    # Stuff that doesn't exist on nix or for some reason
      "luajit"

    ];


    taps = [
      "homebrew/services"
    ];
     

        casks = [
      # "firefox"
      "google-chrome"
      "Itsycal"
      "anaconda"
      "karabiner-elements"
      "obsidian"
      "alfred"
      "wezterm"
      "discord"
      "wireshark"
      "element"
      "hiddenbar"
      "iina"
      "protonvpn"
      "spotify"
      "transmit"
      "betterdisplay"
      "thunderbird"
      "sf-symbols"
      "shottr" 
      
    
    ];
};
}
