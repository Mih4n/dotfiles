{ config, pkgs, system, inputs, ...}: {
    home.packages = with pkgs; [
        inputs.zen-browser.packages."${system}".specific
        oh-my-zsh
        oh-my-posh
    ];
}