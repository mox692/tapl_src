(* カリー化 *)
let aa = fun x -> fun y -> x + y
(* カリー化を書く際はfun keywordが必要そう *)

(* match *)
let is_zero a = match a with
| 0 -> true
| _ -> false

(* list *)
let l1 = [1;2;3;4;5]
let l2 = 0::l1

(* tuple *)
let exp =
  let (l, r) = (3, 4) in
  l + r

let max1 (pair : float * float) : float =
  let (r1, r2) = pair in
    if r1 < r2 then r2 else r1

(* レコード *)
type person = {name: string; age: int}
let a = {name = "s"; age = 3}

(* レコードのmatch *)
type colour = Red | Green | Blue | Yellow
let pattern : (int * colour) list =
  [(1, Red); (3, Green); (1, Red); (2, Green)]

let is_red e = match e with
| (_, Red) -> print_endline "this is red"
| _ -> print_endline "this is not red"

let rec fib n = match n with
| 0 -> 0
| 1 -> 1
| k -> 
  if k < 0 then 0 else fib(n-1) + fib(n-2)

let rec fizzbaz n = 
  if n mod 15 == 0 then print_endline (Printf.sprintf "%d: fizzbazz\n" n)
  else if n mod 5 == 0 then print_endline (Printf.sprintf "%d: fizz\n" n)
  else if n mod 3 == 0 then print_endline (Printf.sprintf "%d: bazz\n" n);
  if n != 1 then fizzbaz(n-1)

let aaa = 
  let a = ref 45 in
    a := 3;
  a
    


  
(* 実行ゾーン *)
let aa3 = aa 3
let () = print_int (aa3 7)
let p = (3, Red)
let () = is_red p

let () = print_int !aaa
