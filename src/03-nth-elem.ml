let rec nth_elem (k: int) (xs: 'a list): 'a option =
  match xs with
  | x :: _ when k == 1 -> Some x
  | _ :: rest when k > 1 -> nth_elem (k - 1) rest
  | _ -> None

let my_list = [1; 2; 3; 4; 5]
let k = 2

let () =
  match nth_elem k my_list with
  | None -> print_endline "Invalid inputs"
  | Some x -> Printf.printf "%d th element is %d\n" k x
