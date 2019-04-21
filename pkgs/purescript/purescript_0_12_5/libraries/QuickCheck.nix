{ mkDerivation, base, containers, deepseq, erf, process, random
, stdenv, template-haskell, tf-random, transformers
}:
mkDerivation {
  pname = "QuickCheck";
  version = "2.12";
  sha256 = "f83e5dd917dbb9c7b3ad0e35a466ee904feefaf66cfede09b6ffcaa88b3933a0";
  revision = "1";
  editedCabalFile = "1770fdbrihv1a7b4sfrx32j45zvfp932linm0npsbp5zh7mjwlw2";
  libraryHaskellDepends = [
    base containers deepseq erf random template-haskell tf-random
    transformers
  ];
  testHaskellDepends = [ base deepseq process ];
  homepage = "https://github.com/nick8325/quickcheck";
  description = "Automatic testing of Haskell programs";
  license = stdenv.lib.licenses.bsd3;
}
