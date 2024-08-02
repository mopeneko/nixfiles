{
  security.rtkit.enable = true;

  services = {
    pipewire = {
      enable = true;
      alsa = {
        enable = true;
        support32Bit = true;
      };
      pulse.enable = true;
      jack.enable = true;
      extraConfig.pipewire = {
        "10-clock-rate" = {
          "context.properties" = {
            "default.clock.rate" = 384000;
            "default.clock.allowed-rates" = [ 44100 48000 96000 192000 384000 ];
          };
        };
      };
    };
  };
}
