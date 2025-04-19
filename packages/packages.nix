{ config, pkgs, ... }: {
    imports = [
        ./messangers.nix
        ./office-work.nix
        ./games.nix
        ./work.nix
    ];

    nixpkgs.config.allowUnfree = true;
}