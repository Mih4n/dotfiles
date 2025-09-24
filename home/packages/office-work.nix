{ config, pkgs, ... }: {
    config.environment.systemPackages = with pkgs; [
        libreoffice-qt6-fresh
        onlyoffice-bin
    ];
}