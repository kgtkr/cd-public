{
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
    rust-overlay.url = "github:oxalica/rust-overlay";
    cd-common.url = "github:kgtkr/cd-common";
  };

  outputs = { self, nixpkgs, flake-utils, cd-common, ... }:
    flake-utils.lib.eachDefaultSystem (system:
      {
        devShell = cd-common.devShell.${system};
      }
    );
}
