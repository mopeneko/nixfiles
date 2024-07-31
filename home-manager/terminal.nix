{ pkgs, ... }: {
  programs = {
    git = {
      enable = true;
      userName = "mopeneko";
      userEmail = "mopeneko@lem0n.cc";
      extraConfig = {
        init = {
          defaultBranch = "main";
        };
      };
    };

    gh = {
      enable = true;
    };

    alacritty = {
      enable = true;
    };

    fastfetch = {
      enable = true;
    };

    bottom = {
      enable = true;
    };
  };
}
