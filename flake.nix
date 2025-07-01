{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        hardware.url = "github:NixOS/nixos-hardware/master";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };

        nix-alien = {
            url = "github:thiagokokada/nix-alien";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { nixpkgs, home-manager, nix-alien, ... }@inputs: 
    let
        lib = nixpkgs.lib;
        system = "x86_64-linux";
        pkgs = import nixpkgs { inherit system; };
    in {
        nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
            inherit system;
            specialArgs = { inherit inputs; };

            modules = [
                ./config/configuration.nix
                
                inputs.hardware.nixosModules.microsoft-surface-common
            ];
        };
        homeConfigurations.mih4n = home-manager.lib.homeManagerConfiguration {
            inherit pkgs;

            modules = [ 
                ./home/home.nix
            ];
        };
    };
}