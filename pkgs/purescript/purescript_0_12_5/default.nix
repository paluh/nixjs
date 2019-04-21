{ haskell }:

let
  purescriptPkg = import ../mkPurescriptPkg.nix {
    version = "0.12.5";
    sha256 = "0dpn0v510lgzd9zqglqan4m8l7bf891psqmih147pnrmigmiaa39";
  };
  haskellPackages = haskell.packages.ghc844.override {
    overrides = haskellPackagesNew: haskellPackagesOld: rec {
      ChasingBottoms = haskellPackagesNew.callPackage ./libraries/ChasingBottoms.nix {};
      hspec-core = haskellPackagesNew.callPackage ./libraries/hspec-core.nix {};
      hspec-discover = haskellPackagesNew.callPackage ./libraries/hspec-discover.nix {};
      hspec-meta = haskellPackagesNew.callPackage ./libraries/hspec-meta.nix {};
      hspec = haskellPackagesNew.callPackage ./libraries/hspec.nix {};
      network = haskellPackagesNew.callPackage ./libraries/network.nix {};
      optparse-applicative = haskellPackagesNew.callPackage ./libraries/optparse-applicative.nix {};
      purescript = haskellPackagesNew.callPackage purescriptPkg {};
      psqueues = haskellPackagesNew.callPackage ./libraries/psqueues.nix {};
      QuickCheck = haskellPackagesNew.callPackage ./libraries/QuickCheck.nix {};
      simple-sendfile = haskellPackagesNew.callPackage ./libraries/simple-sendfile.nix {};
      test-framework-quickcheck2 = haskellPackagesNew.callPackage ./libraries/test-framework-quickcheck2.nix {};
      warp = haskell.lib.dontCheck (haskellPackagesNew.callPackage ./libraries/warp.nix {});
      wai-extra = haskellPackagesNew.callPackage ./libraries/wai-extra.nix {};
      websockets = haskellPackagesNew.callPackage ./libraries/websockets.nix {};
    };
  };
in
  haskellPackages.purescript

