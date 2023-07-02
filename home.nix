{ config, pkgs, ... }:

{
  home.username = "mic";
  home.homeDirectory = "/home/mic";
  home.stateVersion = "23.05";
  nixpkgs.config.allowUnfree = true;

  programs.direnv.enable = true;
  programs.direnv.nix-direnv.enable = true;

  programs.bash.enable = true;
  programs.go.enable = true;

  home.packages = with pkgs; [
    discord
    emacs
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    fira-code
    fira-code-symbols
    pulseaudio
    flameshot
    git
    gcc
    brightnessctl
    slock
    playerctl
    pulseaudio
    pavucontrol
    cmake
    fontconfig
    hugo
    gh
    higan
    unzip
    (retroarch.override {
    cores = with libretro; [
      genesis-plus-gx
      snes9x
      beetle-saturn
      ppsspp
      mame
    ];
    })
    transmission-gtk
    p7zip
    (chromium.override {
      enableWideVine = true;
    })
    rar
    udisks
    yt-dlp
    ffmpeg
    networkmanagerapplet
    spotify
    soulseekqt
    mpv
    nodejs
    nodePackages.pnpm
    nodePackages.typescript
    nodePackages.typescript-language-server
    cowsay
    classicube
    exercism
    emacs-all-the-icons-fonts
    android-studio
    neovim-unwrapped
    luajit
    helix
  ];

  home.file = {

  };


  home.sessionVariables = {
    EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
}
