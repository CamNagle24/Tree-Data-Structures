type 'a tree = Leaf of 'a | Branch of 'a tree * 'a tree

type 'a nonempty_list
  = One of 'a
  | Cons of 'a * 'a nonempty_list

type ('key, 'value) maptree =
  | Node of ('key, 'value) maptree * 'key * 'value * ('key, 'value) maptree
  | End

let chars_of_string (str : string) : char list =
  List.of_seq (String.to_seq str)
