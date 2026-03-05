{
    imports = [
        ./ssh.nix
        ./fish.nix
        ./shell.nix
        ./nextcloud.nix
        ./caelestia.nix
    ];

    programs.starship = {
        enable = true;
        enableFishIntegration = true; 
    };
}