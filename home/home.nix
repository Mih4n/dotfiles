{ lib, pkgs, ... }: {
    home = {
        username = "mih4n";
        homeDirectory = "/home/mih4n";

        stateVersion = "23.11";
    };
    gtk = {
        enable = true;
        theme = {
            name = "Gruvbox-Dark";
            package = pkgs.gruvbox-gtk-theme;
        };
        iconTheme = {
            name = "Papirus-Dark";
            package = pkgs.papirus-icon-theme;
        };
        cursorTheme = {
            name = "Bibata-Modern-Ice";
            package = pkgs.bibata-cursors;
        };
    };
    wayland.windowManager.hyprland = {
        plugins = [
            pkgs.hyprlandPlugins.hyprgrass
        ];
    };
}