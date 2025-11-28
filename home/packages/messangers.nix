{ config, pkgs, ... }: {
    home.packages = with pkgs; [
        discord
        thunderbird
        telegram-desktop
    ];
}