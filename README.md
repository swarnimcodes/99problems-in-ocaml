# Ninety-Nine Problems in OCaml
[Official Website](https://ocaml.org/problems)
### Problem 01
Write a function last : 'a list -> 'a option that returns the last element of a list.

```ocaml
let rec last = function
  | [] -> None
  | [x] -> Some x
  | _ :: rest -> last rest;;

let my_list = [1; 2; 3; 4];;

let () =
  match last my_list with
  | Some x -> Printf.printf "The last element is %d\n"  x
  | None -> print_endline "The list is empty!";;
```