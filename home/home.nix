{ lib, pkgs, ... }: {
    imports = [
        ./env/env.nix
        ./programs/programs.nix
    ];

    home = {
        username = "mih4n";
        homeDirectory = "/home/mih4n";
        stateVersion = "24.11";
    };

    wayland.windowManager.hyprland = {
        plugins = [
            pkgs.hyprlandPlugins.hyprgrass
        ];
    };
}