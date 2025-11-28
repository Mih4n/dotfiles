{ config, pkgs, ... }: {
    programs.nh = {
        enable = true;
        clean.enable = true;
        clean.extraArgs = "--keep-since 4d --keep 3";
        flake = "/home/mih4n/nixos";
    };

    environment.sessionVariables = {
        NH_FLAKE = "/home/mih4n/nixos";
    };

    environment.systemPackages = with pkgs; [
        nh
    ];
}