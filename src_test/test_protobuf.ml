open OUnit2

let suite = "Test protobuf" >::: [
    Test_protobuf_codec.suite;
  ]

let _ =
  run_test_tt_main suite
