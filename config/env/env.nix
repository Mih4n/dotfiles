{ config, pkgs, ... }: {
    services.xserver.enable = true;

    services.displayManager = {
        gdm = {
            enable = true;
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

        kitty
        python314
        nodejs_24

        nvidia-vaapi-driver
        vulkan-tools
    ];

    programs = {
    	hyprland = {
            enable = true;
	        xwayland.enable = true;
    	};
    };
    
    environment.sessionVariables = {
        NIXOS_OZONE_WL = "1";
        GBM_BACKEND = "nvidia-drm";
        __GLX_VENDOR_LIBRARY_NAME = "nvidia";
        WLR_NO_HARDWARE_CURSORS = "1";
    };

    services.upower.enable = true;
    services.power-profiles-daemon.enable = true;

    xdg.portal.enable = true;
    xdg.portal.extraPortals = [ pkgs.xdg-desktop-portal-gtk ];
}