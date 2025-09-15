{ config, pkgs, ... }: {
    config.environment.systemPackages = with pkgs; [
        git
        zip
        unzip
        gcc
        wget
        docker
        vscode
        steam-run
        
        #dotnet
        dotnet-sdk_9
        omnisharp-roslyn
        zlib
        openssl
        curl
        libuuid
        zed-editor

        gnuplot_qt
    ];
}