{ config, pkgs, ... }: {
    environment.systemPackages = with pkgs; [
        #eww deps
        jq
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
        networkmanagerapplet


        #terminal
        zsh
        cava
        kitty
        neovim
        neofetch
        cliphist
        playerctl

        #cursor
        bibata-cursors

        #gtk-theme
        gruvbox-dark-gtk

        fish
        brightnessctl
        ddcutil
        cava
        networkmanager
        lm_sensors
        grim
        swappy
        qalculate-gtk
        fontconfig
        app2unit
        qt6.qtdeclarative
    ];

    services.upower.enable = true;

    xdg.portal.enable = true;
    xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
}