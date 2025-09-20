{ config, pkgs, ... }: {
    services.xserver.enable = true;

    services.displayManager = {
        gdm = {
            enable = true;
            wayland.enable = true;
        };

        autoLogin = {
            user = "mih4n";
            enable = true;
        };
    };

    environment.systemPackages = with pkgs; [
        #hypr
        hyprcursor
        hyprpicker

        nautilus
        spotify
    ];

    programs = {
    	hyprland = {
    	    enable = true;
	        xwayland.enable = true;
    	};
    };

    environment.sessionVariables = {
        NIXOS_OZONE_WL = "1";
    };

    xdg.portal.enable = true;
    xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
}