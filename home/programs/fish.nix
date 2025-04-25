{ inputs, pkgs, ... }: {
  programs.fish = {
    enable = true;

    shellInit = ''
      set fish_greeting

      set -x EDITOR nvim
    '';

    shellAliases = {
      lf = "lfcd";
      os = "nh os";
    };
  };
}