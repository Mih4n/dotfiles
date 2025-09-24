{
    programs.caelestia = {
        enable = true;
        systemd = {
            enable = false;
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