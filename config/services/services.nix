{
    imports = [
        ./ssh.nix
        ./syncthing.nix
        ./tailscale.nix
    ];

    services.gnome.gnome-keyring.enable = true; 
    security.pam.services.greetd.enableGnomeKeyring = true;
}