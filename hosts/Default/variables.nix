{
  username = "freddy"; # auto-set with install.sh, live-install.sh, and rebuild scripts.

  # Desktop Environment
  desktop = "hyprland"; # hyprland, i3, gnome, plasma6

  # Theme & Appearance
  bar = "waybar"; # waybar, hyprpanel, noctalia-shell, caelestia-shell
  waybarTheme = "minimal"; # stylish, minimal
  sddmTheme = "astronaut"; # astronaut, black_hole, purple_leaves, jake_the_dog, hyprland_kath
  defaultWallpaper = "galaxy.webp"; # Change with SUPER + SHIFT + W
  hyprlockWallpaper = "galaxy.webp";

  # Default Applications
  terminal = "kitty"; # kitty, alacritty
  editor = "nixvim"; # nixvim, vscode, helix, doom-emacs, nvchad, neovim
  browser = "zen-beta"; # zen-beta, firefox, floorp
  fileManager = "thunar"; # yazi, lf, thunar
  shell = "zsh"; # zsh, bash
  games = true; # Enable/Disable gaming module

  # Hardware
  hostname = "NixOS";
  videoDriver = "amdgpu"; # nvidia, amdgpu, intel
  #nvidiaChannel = "legacy_580"; # stable, latest, beta, legacy_xxx
  bluetoothSupport = true; # Whether your motherboard supports bluetooth
    
  # Localization
  timezone = "Europe/Berlin";
  locale = "de_DE.UTF-8";
  clock24h = true;
  kbdLayout = "de";
  kbdVariant = "";
  consoleKeymap = "de";
}
