open Fbast;;

(*
 * Replace this with your interpreter code.
 *)
exception TypeMismatch;;
exception NotImplemented;;
exception NotClosed;;

let check_closed expr = 
  let rec check found_idents expr = 
    let f = check found_idents in
      match expr with
        Var x -> if List.mem x found_idents then true else false
      | Bool _ -> true
      | Int _ -> true
      | And (e1, e2) -> f e1 && f e2
      | Or (e1, e2) -> f e1 && f e2
      | Plus (e1, e2) -> f e1 && f e2
      | Minus (e1, e2) -> f e1 && f e2
      | Not e -> f e
      | Equal (e1, e2) -> f e1 && f e2
      | Appl (e1, e2) -> f e1 && f e2
      | If (e1, e2, e3) -> f e1 && f e2 && f e3
      | Function (i, e) -> check (i :: found_idents) e
      | LetRec (i1, i2, e1, e2) -> check (i1 :: i2 :: found_idents) e1 && check (i1 :: found_idents) e2
  in check [] expr
;;

let rec subst ident expr fbody = let sub = subst ident expr in
      match fbody with
    Var i -> if i = ident then expr else Var i
  | And (e1, e2) -> And (sub e1, sub e2)
  | Or (e1, e2) -> Or (sub e1, sub e2)
  | Plus (e1, e2) -> Plus (sub e1, sub e2)
  | Minus (e1, e2) -> Minus (sub e1, sub e2)
  | If (e1, e2, e3) -> If (sub e1, sub e2, sub e3)
  | Not e -> Not (sub e)
  | Equal (e1, e2) -> Equal (sub e1, sub e2)
	| Int x -> Int x
	| Bool x -> Bool x
  | Appl (e1, e2) -> Appl (sub e1, sub e2)
  | Function (i, e) -> if i = ident then fbody else Function (i, sub e)
  | LetRec (i1, i2, e1, e2) -> 
        if ident != i1 && ident != i2 then LetRec (i1, i2, sub e1, sub e2)
        else if ident = i2 then LetRec (i1, i2, e1, sub e2)
        else LetRec (i1, i2, e1, e2)
;;

let rec eval e = if check_closed e then
  match e with
    Var _ -> raise NotClosed
  | Not e ->
      (match eval e with
           Bool x -> Bool (not x)
         | _ -> raise TypeMismatch
      )
  | Equal (e1, e2) ->
      (match (eval e1, eval e2) with
           (Int x, Int y) -> Bool (x = y)
         | _ -> raise TypeMismatch
      )
  | If (e1, e2, e3) ->
      (match eval e1 with
          Bool true -> eval e2
        | Bool false -> eval e3
				| _ -> raise TypeMismatch
      )
  | Minus (e1, e2) -> 
      (match (eval e1, eval e2) with
           (Int x, Int y) -> Int (x - y)
         | _ -> raise TypeMismatch
      )
  | Plus (e1, e2) -> 
      (match (eval e1, eval e2) with
           (Int x, Int y) -> Int (x + y)
         | _ -> raise TypeMismatch
      )
  | And (e1, e2) ->
      (match (eval e1, eval e2) with
           (Bool x, Bool y) -> Bool (x && y)
          | _ -> raise TypeMismatch
      )
  | Or (e1, e2) ->
      (match (eval e1, eval e2) with
           (Bool x, Bool y) -> Bool (x || y)
          | _ -> raise TypeMismatch
      )
  | Appl (e1, e2) ->
      (match eval e1 with
        Function (ident, fbody) ->
          eval (subst ident (eval e2) fbody)

      | _ -> raise TypeMismatch

      )

  | LetRec (f, x, e1, e2) ->
      let inner = subst f (Function (x, (LetRec (f, x, e1, Appl (Var f, Var x))))) e1 in
        eval (subst f (Function (x, inner)) e2)
  | _ -> e
 else raise NotClosed
;;


