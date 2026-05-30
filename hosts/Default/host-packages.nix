{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    obsidian
    ludusavi # For game saves
    github-desktop
    pokego # Overlayed
    signal-desktop  #Signal Messanger
    libreoffice-qt-fresh  #Office
    qbittorrent   #Standard Torrent
    eduvpn-client #Uni vpn
    zathura       #PDF Reader
    foliate       #eBook reader
    blanket
    zotero
    logseq
    fluffychat
    keepassxc
    anki
    python314
    zip
    ffmpeg
    tree-sitter
    keyd
    godot # For game development
    github-desktop
    # pokego # Overlayed

    # All-in-one front-end for emulators 
    (retroarch.withCores (cores: with cores; [
      # citra # Nintendo - 3DS
      dolphin # Nintendo - GameCube / Wii
      # fbneo # Arcade
      flycast # Sega - Dreamcast / Naomi
      genesis-plus-gx # Sega - MS/GG/MD/CD
      mame # Arcade
      melonds # Nintendo - DS
      mgba # Nintendo - Game Boy Advance
      mupen64plus # Nintendo - N64
      pcsx2 # Sony - PlayStation 2
      ppsspp # Sony - PlayStation Portable (PSP)
      picodrive # Sega - MD/32X
      prosystem # Atari - 7800 / 2600
      sameboy # Nintendo - Game Boy / Color
      snes9x # Nintendo - SNES / SFC
      swanstation # Sony - PlayStation
    ]))
  ];
  services.mullvad-vpn.enable = true;
  services.mullvad-vpn.package = pkgs.mullvad-vpn;
  #for eduvpn
  networking.networkmanager.plugins = [ pkgs.networkmanager-openvpn ];
  
  i18n.inputMethod = {
    enable = true;
    type = "fcitx5";
    fcitx5.addons = with pkgs; [
      fcitx5-mozc
      fcitx5-gtk
    ];
  };
  hardware.openrazer.enable = true;
  hardware.openrazer.users = ["freddy"];
}
