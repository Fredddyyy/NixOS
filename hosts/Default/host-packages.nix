{ pkgs, ... }:
{
  environment.systemPackages = with pkgs; [
    obsidian
    # ludusavi # For game saves
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
  ];
  services.mullvad-vpn.enable = true;
  services.mullvad-vpn.package = pkgs.mullvad-vpn;
  #for eduvpn
  networking.networkmanager.plugins = [ pkgs.networkmanager-openvpn ];
}
