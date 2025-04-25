{ config, pkgs, ... }: {
    hardware.graphics = {
        enable = true;
    };

    services.xserver.videoDrivers = ["nvidia"];
    hardware.nvidia = {
        open = false;
        modesetting.enable = true;
        
        prime = {
            sync.enable = true;

            intelBusId = "PCI:0:2:0";
            nvidiaBusId = "PCI:2:0:0";
        };
    };
}
