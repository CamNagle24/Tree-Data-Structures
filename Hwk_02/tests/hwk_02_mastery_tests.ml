open Hwk_02_mastery

let () =
  assert (huffman_decode_one [false; false; false] tree3 = Some ([], 'e'))
