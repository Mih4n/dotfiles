{ config, inputs, pkgs, ... }: {
    imports = [
        inputs.hardware.nixosModules.common-gpu-nvidia 
        inputs.hardware.nixosModules.microsoft-surface-common
    ];

    hardware.nvidia.open = false;
    hardware.nvidia.prime = {
        offload = {
            enable = true;
            enableOffloadCmd = true;
        };
        intelBusId = "PCI:0:2:0";
        nvidiaBusId = "PCI:2:0:0";
    }; 

    swapDevices = [ 
        {
            device = "/var/lib/swapfile";
            size = 8 * 1024;
        } 
    ]; 

    hardware.graphics.enable32Bit = true;

    zramSwap.enable = true;

    hardware.microsoft-surface.kernelVersion = "stable";

    services.iptsd.enable = true;
    environment.systemPackages = [ pkgs.surface-control ];
}
