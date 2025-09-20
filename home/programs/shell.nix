{
    programs.caelestia = {
        enable = true;
        systemd = {
            enable = true;
            target = "graphical-session.target";
            environment = [];
        };
        settings = {
            paths.wallpaperDir = "~/Wallpapers";
        };
        cli = {
            enable = true;
            settings = {
                theme.enableGtk = false;
            };
        };
    };
}