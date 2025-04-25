{ config, pkgs, ... }: {
    config.environment.systemPackages = with pkgs; [
        mcpelauncher-ui-qt
    ];
}
