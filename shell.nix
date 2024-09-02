{
  pkgs ? import <nixpkgs> {
    config = { };
    overlays = [ ];
  },
  ...
}:
let
  hPkgs = pkgs.haskell.packages.ghc982;
in
pkgs.mkShell {
  packages = with hPkgs; [
    cabal-install
    fourmolu
    ghc
    ghcid
    haskell-language-server
    hlint
  ];
}
