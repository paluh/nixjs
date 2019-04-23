{ haskell }:
let
  purescriptPkg = import ../mkPurescriptPkg.nix {
    version = "0.12.5";
    sha256 = "0dpn0v510lgzd9zqglqan4m8l7bf891psqmih147pnrmigmiaa39";
  };
  haskellPackages = haskell.packages.ghc864.override {
    overrides = haskellPackagesNew: haskellPackagesOld: rec {
      network = haskellPackagesNew.callPackage ./libraries/network.nix {};
      purescript = haskellPackagesNew.callPackage purescriptPkg {};
    };
  };
in
  haskellPackages.purescript


