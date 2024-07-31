{ pkgs, ... }:
{
  home.packages = [ pkgs.mplus-outline-fonts.githubRelease ];

  programs = {
    alacritty = {
      settings = {
        font.normal = {
          family = "Mplus Code 60";
          style = "regular";
        };
      };
    };
  };
}
