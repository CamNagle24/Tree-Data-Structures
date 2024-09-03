open Hwk_02_enrichment

let () =
  assert (map_increment 'A' End = Node (End, 'A', 1, End))
