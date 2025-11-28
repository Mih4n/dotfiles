{ config, pkgs, ... }: {
    home.packages = with pkgs; [
        git
        zip
        unzip
        wget
        docker
        vscode-fhs
        steam-run
        obsidian
        gimp
        
        #java 
        maven
        jdk

        #dotnet
        dotnet-sdk_9
        wineWowPackages.waylandFull
    ];
}