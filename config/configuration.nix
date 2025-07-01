{ config, pkgs, ... }: {
  imports = [
    ./hardware-configuration.nix
    ./packages/packages.nix
    ./programs/programs.nix
    ./drivers/drivers.nix
    ./users.nix
    
    ./env/env.nix
    ./modules/modules.nix
    ./services/services.nix
  ];
  services.printing.enable = true;

  i18n.defaultLocale = "en_US.UTF-8";

  system.stateVersion = "24.11";
}
