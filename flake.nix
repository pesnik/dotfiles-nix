{
  description = "pesnik's NixOS configuration";
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nixvim = {
      url = "github:nix-community/nixvim";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
  outputs = { self, nixpkgs, home-manager, nixvim, zen-browser, ... }@inputs:
  let
    system = "x86_64-linux";
  in
  {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        specialArgs = { inherit inputs; };
        modules = [
          ./hosts/nixos/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.extraSpecialArgs = { inherit inputs; };
            home-manager.users.pesnik = import ./home/hosts/nixos.nix;
          }
        ];
      };
    };

    homeConfigurations."pesnik@PesnikOS" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = { inherit inputs; zen-browser = zen-browser.packages.${system}.default; };
      modules = [
        ./home/hosts/PesnikOS.nix
      ];
    };

    homeConfigurations."pesnik@sandbox" = home-manager.lib.homeManagerConfiguration {
      pkgs = nixpkgs.legacyPackages.${system};
      extraSpecialArgs = { inherit inputs; zen-browser = zen-browser.packages.${system}.default; };
      modules = [
        ./home/hosts/sandbox.nix
      ];
    };
  };
}
