let rec list_len (xs: 'a list): int =
  match xs with
  | [] -> 0
  | x :: rest -> 1 + list_len rest

let my_list = [1; 2; 3; 4; 5; 6]

let () =
  match list_len my_list with
  | x -> Printf.printf "The length of the list is %d\n" x
