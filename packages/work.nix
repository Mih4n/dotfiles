{ config, pkgs, ... }: {
    config.environment.systemPackages = with pkgs; [
        git
        zip
        gcc
        wget
        docker
        vscode
        nodejs_23
        python313Full

        #dotnet
        dotnet-sdk_9
        omnisharp-roslyn
    ];
}