open Core
open Core_bench

let () =
  Random.self_init ();
  let x = Random.float 10.0 in
  let y = Random.float 10.0 in
  Command_unix.run (Bench.make_command [
    Bench.Test.create ~name:"Float add" (fun () ->
      ignore (x +. y));
    Bench.Test.create ~name:"Float mul" (fun () ->
      ignore (x *. y));
    Bench.Test.create ~name:"Float div" (fun () ->
      ignore (x /. y));
  ])