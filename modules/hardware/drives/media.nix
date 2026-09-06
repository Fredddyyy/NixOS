{ lib, ... }:
{
  fileSystems."/mnt/media" = lib.mkForce {
    device = "/dev/disk/by-uuid/2C2471C024718E18";
    fsType = "ntfs";
    options = [
      "rw"
      "uid=1000"
      "gid=100"
      "noatime"
      "umask=000"
      "nofail"
      "x-gvfs-show"
      "x-systemd.mount-timeout=5"
    ];
  };
}
