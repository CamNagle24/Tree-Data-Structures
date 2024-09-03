type ('key, 'value) maptree =
  | Node of ('key, 'value) maptree * 'key * 'value * ('key, 'value) maptree
  | End

type 'a tree = Leaf of 'a | Branch of 'a tree * 'a tree

let chars_of_string (str : string) : char list =
  List.of_seq (String.to_seq str)

let string_of_chars (chars : char list) : string =
  String.of_seq (List.to_seq chars)

let sort_by_second_int (xs : ('a * int) list) : ('a * int) list =
  List.stable_sort (fun (_, l) (_, r) -> compare l r) xs
