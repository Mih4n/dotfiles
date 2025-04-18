{ config, pkgs, ... }: {
    config.environment.systemPackages = with pkgs; [
        git
        zip
        gcc
        wget
        docker
        vscode
        nodejs_23
        dotnet-sdk
        python313Full
    ];
}