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
