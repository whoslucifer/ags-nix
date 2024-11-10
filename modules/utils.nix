{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    btrfs-progs
    curl
    wget
    cpufrequtils
    glib #for gsettings to work
    gsettings-qt
    killall
    libappindicator
    pciutils
    xdg-user-dirs
    xdg-utils
    networkmanagerapplet
    librsvg
  ];
}
