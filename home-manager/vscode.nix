{ pkgs, ... }:
{
  programs.vscode = {
    enable = true;

    extensions = (with pkgs.vscode-extensions; [
      mskelton.one-dark-theme
      streetsidesoftware.code-spell-checker
      bbenoist.nix
    ]);

    userSettings = {
      "workbench.colorTheme" = "One Dark";
    };
  };
}
