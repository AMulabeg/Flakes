{
  description = "Amer's Flake";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-24.05-darwin";
    nix-darwin.url = "github:LnL7/nix-darwin";
    nix-darwin.inputs.nixpkgs.follows = "nixpkgs";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    templ.url = "github:a-h/templ";
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs-unstable";
    dotfiles =
      {
        url = "github:amulabeg/dots";
        flake = false;
      };

    neovim = {
      url = "github:amulabeg/neovim";
      flake = false;
    };

  };

  outputs = { self, nix-darwin, nixpkgs, templ, home-manager, dotfiles, neovim, ... }@inputs:
    let
      configuration = { pkgs, ... }: {
        nixpkgs.config.allowUnfree = true;
        nixpkgs.overlays = [
          inputs.templ.overlays.default
        ];
        imports = [ ./darwin-configuration.nix ];

        users.users.amer = {
          name = "amer";
          home = "/Users/amer";
        };

        services.nix-daemon.enable = true;
        programs.zsh.enable = true; # default shell on catalina

        system.configurationRevision = self.rev or self.dirtyRev or null;

        system.stateVersion = 4;

        nixpkgs.hostPlatform = "aarch64-darwin";
      };

    in
    {
      darwinConfigurations."snow" = nix-darwin.lib.darwinSystem {
        modules = [
          configuration
          home-manager.darwinModules.home-manager
          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.amer = import ./home.nix;
            home-manager.extraSpecialArgs = {
              inherit inputs;
            };
          }
        ];
      };
      darwinPackages = self.darwinConfigurations."snow".pkgs;
    };
}
