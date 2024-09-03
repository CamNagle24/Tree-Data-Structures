(* Copy these from literacy *)

type ('key, 'value) maptree =
  | Node of ('key, 'value) maptree * 'key * 'value * ('key, 'value) maptree
  | End

val map_lookup : ('key, 'value) maptree -> 'key -> 'value option
val map_insert : 'key -> 'value -> ('key, 'value) maptree -> ('key, 'value) maptree

(* Copy these from mastery *)

type 'a tree = Leaf of 'a | Branch of 'a tree * 'a tree

val huffman_decode_one : bool list -> 'a tree -> (bool list * 'a) option
val huffman_decode : bool list -> 'a tree -> 'a list option
val huffman_decode_string : bool list -> char tree -> string option

(* New functions *)

val make_map_of_paths : 'a tree -> bool list -> ('a, bool list) maptree -> ('a, bool list) maptree
val lookup_all : ('a, 'b) maptree -> 'a list -> 'b list option
val huffman_encode : 'a tree -> 'a list -> bool list option
val huffman_encode_string : char tree -> string -> bool list option

val map_increment : 'key -> ('key, int) maptree -> ('key, int) maptree
val get_frequencies : 'a list -> ('a, int) maptree
val trees_of_frequencies : ('a, int) maptree -> ('a tree * int) list

val insert_into_sorted : 'a -> int -> ('a * int) list -> ('a * int) list
val huffman_train_loop : ('a tree * int) list -> 'a tree
val huffman_train : 'a list -> 'a tree
val huffman_train_on_string : string -> char tree
