let rec last = function
  | [] -> None
  | [x] -> Some x
  | _ :: rest -> last rest;;

let my_list = [1; 2; 3; 4];;

let () =
  match last my_list with
  | Some x -> Printf.printf "The last element is %d\n"  x
  | None -> print_endline "The list is empty!";;
