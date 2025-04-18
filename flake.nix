{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        hardware.url = "github:NixOS/nixos-hardware/master";

        home-manager = {
            url = "github:nix-community/home-manager";
            inputs.nixpkgs.follows = "nixpkgs";
        };
    };

    outputs = { nixpkgs, home-manager, ... }@inputs: 
    let
        lib = nixpkgs.lib;
        system = "x86_64-linux";
        pkgs = import nixpkgs { inherit system; };
    in {
        nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
            inherit system;
            specialArgs = { inherit inputs; };

            modules = [
                ./configuration.nix

                inputs.hardware.nixosModules.microsoft-surface-common
            ];
        };
        homeConfigurations.mih4n = home-manager.lib.homeManagerConfiguration {
            inherit pkgs;

            modules = [ 
                ./home.nix 
            ];
        };
    };
}