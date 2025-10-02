{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      system = "x86_64-linux"; # As this is for T2 Macs, only x86_64 needed.
      pkgs = nixpkgs.legacyPackages.${system};
    in {
      devShell = pkgs.mkShell {
        buildInputs=[
          pkgs.pkg-config
          pkgs.rust-openssl
        ];
      };

      packages.${system}.default = pkgs.rustPlatform.buildRustPackage {
        pname = "iso2god";
        version = "0.1.0";
        src = ./.;
        cargoHash = "sha256-1q2ruR2FFtIjBBR4E9Z/icbeVaec2QzWWXbHouJ2+do=";
      };
    };
}
