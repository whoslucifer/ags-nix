{pkgs, ...}: {
  home = {
    packages = with pkgs;
    with nodePackages_latest;
    with libsForQt5; [
      #i3 # gaming
      sway

      # gui
      #blueberry
      (mpv.override {scripts = [mpvScripts.mpris];})
      d-spy
      dolphin
      #figma-linux
      #kolourpaint
      #github-desktop
      nautilus
      icon-library
      #dconf-editor
      qt5.qtimageformats
      #vlc
      #yad

      # tools
      bat
      eza
      fd
      ripgrep
      #fzf
      socat
      jq
      gojq
      acpi
      ffmpeg
      libnotify
      #killall
      zip
      unzip
      glib
      foot
      kitty
      starship
      showmethekey
      vscode
      ydotool
      fileroller

      mp
      zoxide
      yad
      file
      toybox
      entr

      # theming tools
      gradience
      gnome-tweaks

      # hyprland
      brightnessctl
      cliphist
      fuzzel
      grim
      hyprpicker
      tesseract
      imagemagick
      pavucontrol
      playerctl
      swappy
      swaylock-effects
      swayidle
      slurp
      swww
      wayshot
      wlsunset
      wl-clipboard
      wf-recorder

      # langs
      gjs
      bun
      cargo
      #typescript
      eslint
      # very important stuff
      uwuify
    ];
  };
}
