{ stdenv, callPackage, lib, openssl_1_1, libuv_1_24_0, http-parser_2_9_0 }:

let
  openssl = openssl_1_1;
  libuv = libuv_1_24_0;
  http-parser = http-parser_2_9_0;
  buildNodejs = callPackage <nixpkgs/pkgs/development/web/nodejs/nodejs.nix> { inherit openssl libuv http-parser; };
in
  buildNodejs {
    version = "10.15.3";
    sha256 = "1mcijznh481s44i59p571a38bfvcxm9f8x2l0l1005aly0kdj8jf";
  }
