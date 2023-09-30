let rev_list (xs: 'a list): 'a list =
  let rec rev_list' (xs: 'a list) (acc: 'a list): 'a list =
    match xs with
    | [] -> acc
    | x :: rest -> rev_list' rest (x :: acc)
  in rev_list' xs []

(*
- we take in a list with the name xs
- along with it we pass an empty accumulator lis
- this accumulator list is essentially the result in the end
- when we encounter an empty list i.e. the list xs has become empty, we return acc
- when non empty xs, we add the head 'x' to the acc list
- and reverse the rest of the list
- beautiful!
*) 