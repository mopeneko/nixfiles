{ pkgs, ... }:
{
  home.packages = (with pkgs; [
    hyprpaper
    pavucontrol
    grim
    slurp
    wl-clipboard
  ]);

  wayland.windowManager.hyprland = {
    enable = true;
    settings = {
      "$mainMod" = "SUPER";
      "$terminal" = "alacritty";
      "$menu" = "wofi --show drun";

      bind = [
        "$mainMod, Q, exec, $terminal"
        "$mainMod, C, killactive,"
        "$mainMod, M, exit,"
        "$mainMod, R, exec, $menu"

        "$mainMod, left, movefocus, l"
        "$mainMod, right, movefocus, r"
        "$mainMod, up, movefocus, u"
        "$mainMod, down, movefocus, d"

        "$mainMod, 1, workspace, 1"
        "$mainMod, 2, workspace, 2"

        "$mainMod SHIFT, 1, movetoworkspace, 1"
        "$mainMod SHIFT, 2, movetoworkspace, 2"

        "$mainMod, mouse_down, workspace, e+1"
        "$mainMod, mouse_up, workspace, e-1"

        '', Print, exec, grim -h "$(slurp -d)" - | wl-copy''

        ", XF86AudioPlay, exec, playerctl play-pause"
      ];

      bindm = [
        "$mainMod, mouse:272, movewindow"
        "$mainMod, mouse:273, movewindow"
      ];

      exec-once = "fcitx5";
      env = [
        "GTK_IM_MODULE, fcitx"
        "QT_IM_MODULE, fcitx"
        "XMODIFIER, @im=fcitx"
      ];
    };
  };

  programs = {
    wofi = {
      enable = true;
    };
  };

  services = {
    hyprpaper = {
      enable = true;
      settings = {
        ipc = "on";
        splash = false;
        preload = [ "${../.}/resources/wallpapers/pixai-model-cover_1652814025919403150.png" ];
        wallpaper = [
          "DP-1,${../.}/resources/wallpapers/pixai-model-cover_1652814025919403150.png"
          "HDMI-A-1,${../.}/resources/wallpapers/pixai-model-cover_1652814025919403150.png"
        ];
      };
    };
  };
}
