{pkgs,...}:{
fonts.fontDir.enable = true;
  fonts.fonts = [
    pkgs.monaspace
    pkgs.jetbrains-mono
    pkgs.hack-font
  ];
}
