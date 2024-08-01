{ pkgs, ... }:
{
  fonts = {
    packages = (with pkgs; [
      mplus-outline-fonts.githubRelease
      noto-fonts-emoji
    ]);
    fontDir.enable = true;
    fontconfig = {
      defaultFonts = {
        serif = [ "M PLUS 2" "Noto Color Emoji" ];
        sansSerif = [ "M PLUS 2" "Noto Color Emoji" ];
        monospace = [ "Mplus Code 60" "Noto Color Emoji" ];
        emoji = [ "Noto Color Emoji" ];
      };
    };
  };
}
