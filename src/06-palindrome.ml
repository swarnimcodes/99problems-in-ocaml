let rev_list (xs: 'a list): 'a list =
  let rec rev_list' (xs: 'a list) (acc: 'a list): 'a list =
    match xs with
    | [] -> acc
    | x :: rest -> rev_list' rest (x :: acc)
  in rev_list' xs []

let palindrome (xs: 'a list): bool =
  xs = rev_list xs;;

let my_list = [1; 0; 1]

let () =
  match palindrome my_list with
    | true -> print_endline "List is Palindrome"
    | _ -> print_endline "List is not Palindrome"