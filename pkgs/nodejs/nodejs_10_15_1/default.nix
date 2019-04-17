{ stdenv, callPackage, lib, libuv_1_24_0, http-parser_2_9_0 }:

let
  libuv = libuv_1_24_0;
  http-parser = http-parser_2_9_0;
  buildNodejs = callPackage <nixpkgs/pkgs/development/web/nodejs/nodejs.nix> { inherit libuv http-parser; };
in
  buildNodejs {
    version = "10.15.1";
    sha256 = "0n68c4zjakdj6yzdc9fbrn0wghyslkya9sz1v6122i40zfwzfm8s";
  }
