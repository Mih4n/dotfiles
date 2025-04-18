{ config, pkgs, ... }: {
    imports = [
        ./messangers.nix
        ./office-work.nix
        ./work.nix
    ];

    nixpkgs.config.allowUnfree = true;
}