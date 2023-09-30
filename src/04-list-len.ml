let rec list_len (xs: 'a list): int =
  match xs with
  | [] -> 0
  | x :: rest -> 1 + list_len rest

(* Tail Recursive Solution *)
let tail_list_len (xs: 'a list): int =
  let rec tail_list_len' (k: int) (xs: 'a list): int =
    match xs with
    | [] -> k
    | _ :: rest -> tail_list_len' (k + 1) rest
  in tail_list_len' 0 xs

let my_list = [1; 2; 3; 4; 5; 6]

let () =
  match tail_list_len my_list with
  | x -> Printf.printf "The length of the list is %d\n" x
