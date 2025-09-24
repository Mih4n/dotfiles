{
    imports = [
        ./nvidia.nix
    ];

    hardware.microsoft-surface.kernelVersion = "stable";

    services.tlp.settings = {
        intel_pstate = "disable";

        CPU_SCALING_MIN_FREQ_ON_AC = 2000000;
        CPU_SCALING_MAX_FREQ_ON_AC = 4200000;
        CPU_SCALING_MIN_FREQ_ON_BAT = 2000000;
        CPU_SCALING_MAX_FREQ_ON_BAT = 4200000;
    };
}
