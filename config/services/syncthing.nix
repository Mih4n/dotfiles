{
    services.syncthing = {
        enable = true;
        openDefaultPorts = true;

        user = "mih4n";
        dataDir = "/home/mih4n";
        configDir = "/home/mih4n/.config/syncthing";

        settings.gui = {
            user = "mih4n";
            password = "";
        };
    };
}