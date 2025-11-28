{ config, pkgs, ... }: {
  hardware.graphics.enable = true;

  services.xserver.videoDrivers = ["nvidia"];
  hardware.nvidia = {
    open = false;
    modesetting.enable = true;
    nvidiaSettings = true;
    
    # Power management crucial for laptop battery
    powerManagement.enable = true;
    powerManagement.finegrained = true;
    
    # Use the correct driver version for GTX 1060
    package = config.boot.kernelPackages.nvidiaPackages.production;
    
    # Prime offload for Optimus/detachable GPU
    prime = {
      offload.enable = true;
      offload.enableOffloadCmd = true;
      
      # Double-check these bus IDs after testing
      intelBusId = "PCI:0:2:0";
      nvidiaBusId = "PCI:2:0:0";
    };
  };

  # Surface Book 2 with GTX 1060 specific settings
  boot.kernelParams = [ 
    "nvidia.NVreg_EnableMSI=1"  # Better interrupt handling
  ];

  # Essential tools
  environment.systemPackages = with pkgs; [
    pciutils
    clinfo
  ];
}