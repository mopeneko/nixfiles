{ pkgs, ... }:
{
  home = {
    username = "user";
    homeDirectory = "/home/user";
  };

  home.stateVersion = "24.05";

  programs = {
    home-manager = {
      enable = true;
    };
  };

  imports = [
    ./base.nix
    ./desktop.nix
    ./terminal.nix
    ./audio.nix
    ./browser.nix
    ./vscode.nix
    ./im.nix
  ];

  wayland.windowManager.hyprland.settings = {
    # NVIDIA
    env = [
      "LIBVA_DRIVER_NAME, nvidia"
      "XDG_SESSION_TYPE, wayland"
      "GBM_BACKEND, nvidia_drm"
      "__GLX_VENDOR_LIBRARY_NAME, nvidia"
    ];

    cursor = {
      no_hardware_cursors = "true";
    };
    # ======

    monitor = [
      "DP-1, 1920x1080@165, 0x0, 1"
      "HDMI-A-1,1920x1080@75, 1920x0, 1"
    ];

    workspace = [
      "1, monitor:DP-1"
      "2, monitor:HDMI-A-1"
    ];
  };
}
