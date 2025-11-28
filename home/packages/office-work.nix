{ config, pkgs, ... }: {
    home.packages = with pkgs; [
        libreoffice-qt6-fresh
        onlyoffice-bin
    ];
}