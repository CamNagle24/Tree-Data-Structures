type 'a tree = Leaf of 'a | Branch of 'a tree * 'a tree

val tree_product : int tree -> int

val tree_range : int tree -> int * int

val tree_depth_range : 'a tree -> int * int

val shallow_tree_difference : int tree -> int

val same_shape : 'a tree -> 'a tree -> bool
