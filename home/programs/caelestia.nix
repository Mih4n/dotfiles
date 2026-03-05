{
  programs.caelestia = {
    enable = true;
    systemd = {
      target = "graphical-session.target";
      environment = [];
    };
    settings = {
    };
    cli = {
      enable = true;
      settings = {
        theme.enableGtk = false;
      };
    };
  };
}