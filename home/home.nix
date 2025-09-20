{ lib, config, pkgs, system, inputs, ... }: {
    imports = [
        ./packages/packages.nix
        ./programs/programs.nix
    ];

    home = {
        username = "mih4n";
        homeDirectory = "/home/mih4n";
        stateVersion = "24.11";
    }; 
}