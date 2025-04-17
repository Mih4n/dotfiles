{ config, pkgs, ... }: 
let
  unstableTarball = fetchTarball https://github.com/NixOS/nixpkgs-channels/archive/nixos-unstable.tar.gz;
in
{
    nixpkgs.config = {
        packageOverrides = pkgs: with pkgs; {
            unstable = import unstableTarball {
                config = config.nixpkgs.config;
            };
        };
    };

    imports = [
        ./messangers.nix
        ./office-work.nix
        ./work.nix
    ];

    nixpkgs.config.allowUnfree = true;
}