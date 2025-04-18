{ lib, pkgs, ... }: {
    home = {
        username = "mih4n";
        homeDirectory = "/home/mih4n";

        stateVersion = "23.11";
    };
    gtk = {
        enable = true;
        theme = {
            name = "gruvbox-dark-gtk";
            package = pkgs.gruvbox-dark-gtk;
        };
        cursorTheme = {
            name = "Bibata-Modern-Ice";
            package = pkgs.bibata-cursors;
        }
    };
}