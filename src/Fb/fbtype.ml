open Fbast
  
(*
 * If you would like typechecking to be enabled by your interpreter by default,
 * then change the following value to true.  Whether or not typechecking is
 * enabled by default, you can explicitly enable it or disable it using
 * command-line arguments. 
 *)
let typecheck_default_enabled = true
  
(*
 * Replace this with your typechecker code.  Your code should not throw the
 * following exception; if you need to raise an exception, create your own
 * exception type here.
 *)
exception TypeInferenceFailure of string
exception TypeError 
exception NotImplemented
  
(* module Fbtype = struct *)
(*   type t = fbtype;; *)
(*   let compare = compare;; *)
(* end *)
(* ;; *)
(*  *)
(* module TypeEquations = Map.Make(Fbtype) *)
(* ;; *)
(*  *)
(* let typecheck e = ();; *)
(* let generateType e = ();; *)
(* let generateType gamma e = match e with *)
(*     Var x -> (lookup gamma x, TypeEquations.empty) *)
(*   | Int _ -> (TInt, TypeEquations.empty) *)
(*   | Bool _ -> (TBool, TypeEquations.empty) *)
(*   | Plus (e1, e2) -> (TInt, union (snd (generateType gamma e1)) (snd (generateType gamme e2))) *)
(*  *)
let counter = ref 97
  
let getFreshType () =
  (counter := !counter + 1; TVar (Char.escaped (Char.chr (!counter - 1))))
  
let rec lookup gamma x =
  match gamma with
  | [] -> (match x with 
        Ident v -> raise (TypeInferenceFailure ("Could not find type for unbound variable " ^ v)))
  | t :: ts -> if (fst t) = x then snd t else lookup ts x
  
let insert x xs = if List.mem x xs then xs else x :: xs
  
let rec union xs ys =
  match xs with | [] -> ys | x :: tail -> union tail (insert x ys)
  
let rec generateType gamma e =
  match e with
  | Var x -> ((lookup gamma x), [])
  | Int _ -> (TInt, [])
  | Bool _ -> (TBool, [])
  | Plus (e1, e2) ->
      let r1 = generateType gamma e1

      and r2 = generateType gamma e2
      in
        if (fst r1) = (fst r2)
        then (TInt, (union (union (snd r1) (snd r2)) [ ((fst r2), TInt) ]))
        else
          (TInt,
           (union (union (snd r1) (snd r2))
              [ ((fst r1), TInt); ((fst r2), TInt) ]))
  | Minus (e1, e2) ->
      let r1 = generateType gamma e1

      and r2 = generateType gamma e2
      in
        if (fst r1) = (fst r2)
        then (TInt, (union (union (snd r1) (snd r2)) [ ((fst r2), TInt) ]))
        else
          (TInt,
           (union (union (snd r1) (snd r2))
              [ ((fst r1), TInt); ((fst r2), TInt) ]))
  | And (e1, e2) ->
      let r1 = generateType gamma e1

      and r2 = generateType gamma e2
      in
        if (fst r1) = (fst r2)
        then (TBool, (union (union (snd r1) (snd r2)) [ ((fst r2), TBool) ]))
        else
          (TBool,
           (union (union (snd r1) (snd r2))
              [ ((fst r1), TBool); ((fst r2), TBool) ]))
  | Or (e1, e2) ->
      let r1 = generateType gamma e1

      and r2 = generateType gamma e2
      in
        if (fst r1) = (fst r2)
        then (TBool, (union (union (snd r1) (snd r2)) [ ((fst r2), TBool) ]))
        else
          (TBool,
           (union (union (snd r1) (snd r2))
              [ ((fst r1), TBool); ((fst r2), TBool) ]))
  | Not e ->
      let r = generateType gamma e
      in 
        (TBool, union (snd r) [(fst r, TBool)])
  | Equal (e1, e2) ->
      let r1 = generateType gamma e1

      and r2 = generateType gamma e2
      in
        if (fst r1) = (fst r2)
        then (TBool, (union (union (snd r1) (snd r2)) [ ((fst r2), TInt) ]))
        else
          (TBool,
           (union (union (snd r1) (snd r2))
              [ ((fst r1), TInt); ((fst r2), TInt) ]))
  | If (e1, e2, e3) ->
      let r1 = generateType gamma e1 and r2 = generateType gamma e2

      and r3 = generateType gamma e3 in
      let s = union (union (snd r1) (snd r2)) (snd r3) in
      let alpha = getFreshType ()
      in
        (alpha,
         (union s [ ((fst r1), TBool); ((fst r2), alpha); ((fst r3), alpha) ]))
  | Function (x, e) ->
      let alpha = getFreshType () in
      let r = generateType (union gamma [ (x, alpha) ]) e
      in ((TArrow (alpha, (fst r))), (snd r))
  | Appl (e1, e2) ->
      let r1 = generateType gamma e1 and r2 = generateType gamma e2 in
      let s = union (snd r1) (snd r2) in
      let alpha = getFreshType ()
      in (alpha, (union s [ ((fst r1), (TArrow ((fst r2), alpha))) ]))
  | _ -> raise NotImplemented
  
let rec addEquations e =
  match e with
  | [] -> []
  | (t1, t2) :: eqs ->
      let s1 =
        (match (t1, t2) with
         | (TArrow (tt1, tt2), TArrow (tt3, tt4)) ->
             [ (tt1, tt3); (tt2, tt4) ]
         | _ -> []) in
      let ss = s1 @ e in
      let s2 =
        let ss1 = List.map (fun x -> (t1, snd x)) (List.filter (fun x -> (fst x) = t2) ss) and
            ss2 = List.map (fun x -> (snd x, t2)) (List.filter (fun x -> (fst x) = t1) ss) and
            ss3 = List.map (fun x -> (t1, fst x)) (List.filter (fun x -> (snd x) = t2) ss) and
            ss4 = List.map (fun x -> (fst x, t2)) (List.filter (fun x -> (snd x) = t1) ss) 
        in
            
        union (union (union ss1 ss2) ss3) ss4
      in union (union (union s1 s2) [ (t1, t2) ]) (addEquations eqs)
  
let rec computeClosure e =
  let c1 = addEquations e in
  let c2 = addEquations c1
  in List.filter (fun x -> match x with (l, r) -> l != r) (if (List.length c1) = (List.length c2) then c1 else computeClosure c2)
  
let rec checkClosure e =
  match e with
  | [] -> true
  | (TInt, TBool) :: es -> false
  | (TBool, TInt) :: es -> false
  | (TInt, TArrow (_, _)) :: es -> false
  | (TBool, TArrow (_, _)) :: es -> false
  | (TArrow (_, _), TInt) :: es -> false
  | (TArrow (_, _), TBool) :: es -> false
  | _ :: es -> checkClosure es
  

let replace t1 t2 = match (t1, t2) with
    (_, TInt) -> t2
  | (_, TBool) -> t2
  | (TVar _, TArrow (_, _)) -> t2
  | (TVar x, TVar y) -> let xn = Char.code x.[0] and yn = Char.code y.[0] in if yn > xn then t2 else t1
  | _ -> t1

let rec substituteTypeVar t es = match es with
    [] -> t
  | (t1, t2) :: tail -> if t = t1 
    then substituteTypeVar (replace t t2) tail 
    else if t = t2 
      then substituteTypeVar (replace t t1) tail 
      else substituteTypeVar t tail

let rec substitute t es = 
  match t with
      TInt -> t
    | TBool -> t
    | TArrow (x, y) -> TArrow (substitute x es, substitute y es)
    | _ -> substituteTypeVar t es

let rec getType t es =
  let t1 = substitute t es in
  let t2 = substitute t1 es in
  if t1 = t2 then t2 else getType t2 es

let typecheck e =
  let r = generateType [] e in
  let t = fst r and eqs = snd r in
    counter := 97;
    let closure = computeClosure eqs
    in if checkClosure closure then if t = TInt || t = TBool then
      t
    else
      getType t closure     
    else raise (TypeInferenceFailure "immediately inconsistent types")


