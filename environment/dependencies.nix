{ config, pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        #eww deps
        jq
        # ags
        swww
        dunst
        socat
        upower
        pamixer
        zscroll
        killall
        swaylock
        libnotify
        rofi-wayland
        brightnessctl


        #terminal
        zsh
        cava
        kitty
        neovim
        neofetch
        cliphist
        playerctl
    ];

    services.upower.enable = true;

    xdg.portal.enable = true;
    xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
}