{pkgs, ...}: {
  programs.firefox.enable = true;

  home.packages = with pkgs; [
    cava
    ani-cli
    manga-cli
    vlc
    yt-dlp
    eog

    chromium
    google-chrome
    brave
    mullvad-browser
  ];
}
