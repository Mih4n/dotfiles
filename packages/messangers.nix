{ config, pkgs, ... }: {
    config.environment.systemPackages = with pkgs; [
        discord
        thunderbird
        telegram-desktop
    ];
}