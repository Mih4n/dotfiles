{ config, pkgs, ... }: {
    config.environment.systemPackages = with pkgs; [
        git
        zip
        unzip
        wget
        docker
        vscode
        vscode-fhs
        steam-run
        
        #dotnet
        dotnet-sdk_9
    ];
}