#!/usr/bin/env ocaml
#directory "pkg"
#use "topkg.ml"

let () =
  Pkg.describe "protobuf" ~builder:`OCamlbuild [
    Pkg.lib "pkg/META";
    Pkg.lib ~exts:Exts.module_library "src/protobuf_codec";
    Pkg.lib ~exts:[".ml"]     "src_test/test_protobuf_codec";
    Pkg.lib ~exts:[".native"] "src_test/test_protobuf";
    Pkg.doc "README.md";
    Pkg.doc "LICENSE.txt";
    Pkg.doc "CHANGELOG.md"; ]
