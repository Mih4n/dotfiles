{ inputs, pkgs, ... }: {
    programs.fish = {
        enable = true;

        shellInit = ''
            set -x EDITOR code
        '';

        interactiveShellInit = ''
            fish_vi_key_bindings
        '';

        shellAliases = {
            lf = "lfcd";
            os = "nh os";
            home = "nh home";
        };
    };
}