{ pkgs, user, ... }: {
    programs.zsh.enable = true;

    users.users.mih4n = {
        isNormalUser = true;
        description = "mih4n";
        extraGroups = [ "networkmanager" "wheel" "docker" "surface-control" ];
        packages = with pkgs; [
        ];
    };
}