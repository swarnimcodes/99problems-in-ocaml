let rec list_len (xs: 'a list): int =
  match xs with
  | [] -> 0
  | x :: rest -> 1 + list_len rest

(* Tail Recursive Solution *)
let rec tail_list_len (k: int) (xs: 'a list): int =
  match xs with
  | [] -> k
  | _ :: rest -> tail_list_len (k + 1) rest

let my_list = [1; 2; 3; 4; 5; 6]

let () =
  match tail_list_len 0 my_list with
  | x -> Printf.printf "The length of the list is %d\n" x
