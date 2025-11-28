{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./programs/programs.nix
    ./drivers/drivers.nix
    ./env/env.nix
    ./users.nix
    
    ./modules/modules.nix
    ./services/services.nix
  ];
  services.printing.enable = true;

  i18n.defaultLocale = "en_DK.UTF-8";

  system.stateVersion = "24.11";

  nixpkgs.config.allowUnfree = true;
}
