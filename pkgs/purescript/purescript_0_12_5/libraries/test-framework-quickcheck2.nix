{ mkDerivation, base, extensible-exceptions, QuickCheck, random
, stdenv, test-framework
}:
mkDerivation {
  pname = "test-framework-quickcheck2";
  version = "0.3.0.5";
  sha256 = "c9f678d4ec30599172eb887031f0bce2012b532daeb713836bd912bff64eee59";
  revision = "1";
  editedCabalFile = "1vmpk70h1594h9s216d3ngkb399fpny1d3sh4gg0vrc75p4as68d";
  libraryHaskellDepends = [
    base extensible-exceptions QuickCheck random test-framework
  ];
  homepage = "http://haskell.github.io/test-framework/";
  description = "QuickCheck-2 support for the test-framework package";
  license = stdenv.lib.licenses.bsd3;
}
