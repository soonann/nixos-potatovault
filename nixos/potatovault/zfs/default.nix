{pkgs, config, ...}: {


  # https://openzfs.github.io/openzfs-docs/Getting%20Started/NixOS/index.html
  boot.supportedFilesystems = [ "zfs" ];
  networking.hostId = "f839bdb9";
  boot.zfs.forceImportRoot = false;

  # https://nixos.wiki/wiki/ZFS
  # kernel packages for zfs
  boot.kernelPackages = config.boot.zfs.package.latestCompatibleLinuxPackages;
}

