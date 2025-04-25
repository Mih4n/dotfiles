{ config, pkgs, ... }: {
    
    imports = [
        ./dependencies.nix
    ];

    services.xserver.enable = true;

    services.displayManager = {
        sddm = {
            enable = true;
            wayland.enable = true;
        };
        autoLogin = {
            user = "mih4n";
            enable = true;
        };
    };

    environment.systemPackages = with pkgs; [
        eww

        #screenshot
        swappy
        grimblast

        #hypr
        hyprcursor
        hyprpicker

        #apps
        gvfs
        polkit
        udisks2
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
}
