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
        bottles
        dbeaver-bin
        mission-center
        zed-editor
        typst
        typship
        tinymist
        corefonts
        vista-fonts
        
        #java 
        maven
        jdk
        direnv

        #rust
        cargo
        rustc

        #dotnet
        dotnet-sdk_10
        wineWowPackages.waylandFull
    ];
}