{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    inputs.spicetify-nix.nixosModules.default
  ];

  programs.spicetify = let
    spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
  in {
    enable = true;
    enabledExtensions = with spicePkgs.extensions; [
      adblock
      hidePodcasts
      shuffle
      trashbin
      popupLyrics
    ];

    theme = spicePkgs.themes.defaultDynamic;
  };
}