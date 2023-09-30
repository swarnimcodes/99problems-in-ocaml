let rec last_two = function
  | [] -> None
  | [x] -> None
  | [x; y] -> Some (x, y)
  | _ :: rest -> last_two rest;;

let my_list = [1; 2; 3; 4; 5];;

match last_two my_list with
  | Some (x, y) -> Printf.printf "The last two elements are %d and %d\n" x y
  | None -> print_endline "Either the list was empty or had one element.";;