{
    inputs = {
        nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
        hardware.url = "github:NixOS/nixos-hardware/master";
    };

    outputs = { nixpkgs, ... }@inputs: {
        nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
            system = "x86_64-linux";
            specialArgs = { inherit inputs; };

            modules = [
                ./configuration.nix

                inputs.hardware.nixosModules.microsoft-surface-common
            ];
        };
    };
}