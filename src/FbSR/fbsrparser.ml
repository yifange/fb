type token =
  | AND
  | BOOL of (bool)
  | DOT
  | ELSE
  | EOEX
  | EQUAL
  | FUNCTION
  | GET
  | GOESTO
  | IDENT of (string)
  | IF
  | IN
  | INT of (int)
  | LCURLY
  | LET
  | LPAREN
  | MINUS
  | NOT
  | OR
  | PLUS
  | RCURLY
  | REC
  | REF
  | RPAREN
  | SEMI
  | SET
  | THEN

open Parsing;;
# 2 "src/FbSR/fbsrparser.mly"

open Fbsrast

let rec mkappl e args =
  match args with
    [] -> e
  | a::rest -> Appl(mkappl e rest, a)

# 41 "src/FbSR/fbsrparser.ml"
let yytransl_const = [|
  257 (* AND *);
  259 (* DOT *);
  260 (* ELSE *);
  261 (* EOEX *);
  262 (* EQUAL *);
  263 (* FUNCTION *);
  264 (* GET *);
  265 (* GOESTO *);
  267 (* IF *);
  268 (* IN *);
  270 (* LCURLY *);
  271 (* LET *);
  272 (* LPAREN *);
  273 (* MINUS *);
  274 (* NOT *);
  275 (* OR *);
  276 (* PLUS *);
  277 (* RCURLY *);
  278 (* REC *);
  279 (* REF *);
  280 (* RPAREN *);
  281 (* SEMI *);
  282 (* SET *);
  283 (* THEN *);
    0|]

let yytransl_block = [|
  258 (* BOOL *);
  266 (* IDENT *);
  269 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\003\000\003\000\003\000\003\000\003\000\003\000\004\000\
\004\000\008\000\008\000\006\000\007\000\005\000\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\003\000\003\000\003\000\003\000\002\000\
\003\000\004\000\008\000\006\000\006\000\002\000\003\000\002\000\
\003\000\001\000\001\000\001\000\003\000\002\000\003\000\001\000\
\002\000\003\000\005\000\001\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\019\000\000\000\000\000\030\000\000\000\018\000\
\000\000\000\000\000\000\000\000\000\000\031\000\000\000\000\000\
\029\000\020\000\000\000\016\000\000\000\028\000\022\000\000\000\
\000\000\000\000\000\000\000\000\008\000\014\000\000\000\000\000\
\001\000\000\000\000\000\000\000\000\000\000\000\024\000\000\000\
\000\000\000\000\000\000\021\000\000\000\000\000\023\000\000\000\
\017\000\000\000\000\000\000\000\000\000\000\000\025\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\027\000\000\000\000\000\000\000\000\000"

let yydgoto = "\002\000\
\014\000\015\000\016\000\040\000\017\000\024\000\018\000\025\000"

let yysindex = "\010\000\
\032\255\000\000\000\000\004\255\032\255\000\000\032\255\000\000\
\002\255\000\255\032\255\032\255\032\255\000\000\183\255\003\255\
\000\000\000\000\011\255\000\000\156\255\000\000\000\000\015\255\
\006\255\004\255\018\255\191\255\000\000\000\000\032\255\025\255\
\000\000\032\255\032\255\032\255\032\255\032\255\000\000\003\255\
\032\255\032\255\032\255\000\000\004\255\032\255\000\000\091\000\
\000\000\254\254\054\255\001\000\054\255\223\255\000\000\223\255\
\215\255\219\255\055\255\245\255\032\255\025\255\032\255\032\255\
\223\255\000\000\249\255\223\255\032\255\223\255"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\048\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\075\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\012\000\
\000\000\139\255\102\255\022\000\129\255\166\255\000\000\040\000\
\000\000\041\255\000\000\000\000\000\000\000\000\000\000\000\000\
\050\000\000\000\000\000\064\000\000\000\074\000"

let yygindex = "\000\000\
\000\000\251\255\244\255\000\000\255\255\031\000\000\000\004\000"

let yytablesize = 367
let yytable = "\020\000\
\032\000\021\000\019\000\039\000\003\000\028\000\029\000\030\000\
\027\000\006\000\001\000\022\000\006\000\006\000\035\000\008\000\
\009\000\037\000\011\000\041\000\043\000\026\000\023\000\046\000\
\045\000\048\000\044\000\055\000\050\000\051\000\052\000\053\000\
\054\000\003\000\022\000\056\000\057\000\058\000\004\000\005\000\
\060\000\006\000\007\000\059\000\008\000\009\000\010\000\011\000\
\002\000\012\000\002\000\002\000\002\000\002\000\013\000\065\000\
\032\000\067\000\068\000\002\000\063\000\026\000\049\000\070\000\
\002\000\066\000\002\000\002\000\002\000\000\000\000\000\002\000\
\002\000\002\000\002\000\003\000\000\000\003\000\003\000\003\000\
\003\000\000\000\000\000\000\000\000\000\000\000\003\000\000\000\
\000\000\000\000\000\000\003\000\000\000\003\000\003\000\003\000\
\000\000\000\000\003\000\003\000\003\000\003\000\005\000\000\000\
\000\000\005\000\005\000\005\000\000\000\000\000\000\000\000\000\
\000\000\005\000\000\000\000\000\000\000\000\000\005\000\000\000\
\005\000\005\000\005\000\000\000\000\000\005\000\005\000\005\000\
\005\000\004\000\000\000\000\000\004\000\004\000\004\000\000\000\
\000\000\000\000\000\000\009\000\004\000\000\000\009\000\009\000\
\009\000\004\000\000\000\004\000\004\000\004\000\009\000\000\000\
\004\000\004\000\004\000\004\000\031\000\009\000\032\000\009\000\
\000\000\034\000\009\000\009\000\009\000\009\000\000\000\000\000\
\000\000\015\000\015\000\000\000\035\000\000\000\036\000\037\000\
\000\000\015\000\000\000\000\000\000\000\038\000\042\000\031\000\
\000\000\032\000\015\000\033\000\034\000\015\000\015\000\031\000\
\015\000\032\000\000\000\000\000\034\000\000\000\000\000\035\000\
\000\000\036\000\037\000\000\000\000\000\000\000\000\000\035\000\
\038\000\036\000\037\000\000\000\000\000\000\000\047\000\031\000\
\038\000\032\000\061\000\031\000\034\000\032\000\000\000\031\000\
\034\000\032\000\000\000\000\000\034\000\000\000\000\000\035\000\
\000\000\036\000\037\000\035\000\000\000\036\000\037\000\035\000\
\038\000\036\000\037\000\062\000\038\000\031\000\000\000\032\000\
\038\000\031\000\034\000\032\000\000\000\000\000\034\000\000\000\
\064\000\031\000\000\000\032\000\069\000\035\000\034\000\036\000\
\037\000\035\000\000\000\036\000\037\000\000\000\038\000\006\000\
\006\000\035\000\038\000\036\000\037\000\000\000\000\000\006\000\
\000\000\007\000\007\000\000\000\000\000\000\000\006\000\000\000\
\006\000\007\000\000\000\006\000\006\000\006\000\006\000\000\000\
\000\000\000\000\007\000\010\000\010\000\007\000\007\000\007\000\
\007\000\000\000\000\000\010\000\000\000\012\000\012\000\000\000\
\000\000\000\000\000\000\000\000\010\000\012\000\000\000\010\000\
\010\000\000\000\010\000\013\000\013\000\000\000\012\000\000\000\
\000\000\012\000\012\000\013\000\012\000\011\000\011\000\000\000\
\000\000\000\000\000\000\000\000\013\000\011\000\000\000\013\000\
\013\000\000\000\013\000\031\000\000\000\032\000\011\000\000\000\
\034\000\011\000\011\000\000\000\011\000\000\000\000\000\000\000\
\000\000\000\000\000\000\035\000\000\000\000\000\037\000"

let yycheck = "\005\000\
\003\001\007\000\004\000\016\000\002\001\011\000\012\000\013\000\
\010\000\010\001\001\000\010\001\010\001\010\001\017\001\013\001\
\014\001\020\001\016\001\009\001\006\001\022\001\021\001\006\001\
\026\000\031\000\021\001\040\000\034\000\035\000\036\000\037\000\
\038\000\002\001\010\001\041\000\042\000\043\000\007\001\008\001\
\046\000\010\001\011\001\045\000\013\001\014\001\015\001\016\001\
\001\001\018\001\003\001\004\001\005\001\006\001\023\001\061\000\
\003\001\063\000\064\000\012\001\006\001\021\001\032\000\069\000\
\017\001\062\000\019\001\020\001\021\001\255\255\255\255\024\001\
\025\001\026\001\027\001\001\001\255\255\003\001\004\001\005\001\
\006\001\255\255\255\255\255\255\255\255\255\255\012\001\255\255\
\255\255\255\255\255\255\017\001\255\255\019\001\020\001\021\001\
\255\255\255\255\024\001\025\001\026\001\027\001\001\001\255\255\
\255\255\004\001\005\001\006\001\255\255\255\255\255\255\255\255\
\255\255\012\001\255\255\255\255\255\255\255\255\017\001\255\255\
\019\001\020\001\021\001\255\255\255\255\024\001\025\001\026\001\
\027\001\001\001\255\255\255\255\004\001\005\001\006\001\255\255\
\255\255\255\255\255\255\001\001\012\001\255\255\004\001\005\001\
\006\001\017\001\255\255\019\001\020\001\021\001\012\001\255\255\
\024\001\025\001\026\001\027\001\001\001\019\001\003\001\021\001\
\255\255\006\001\024\001\025\001\026\001\027\001\255\255\255\255\
\255\255\004\001\005\001\255\255\017\001\255\255\019\001\020\001\
\255\255\012\001\255\255\255\255\255\255\026\001\027\001\001\001\
\255\255\003\001\021\001\005\001\006\001\024\001\025\001\001\001\
\027\001\003\001\255\255\255\255\006\001\255\255\255\255\017\001\
\255\255\019\001\020\001\255\255\255\255\255\255\255\255\017\001\
\026\001\019\001\020\001\255\255\255\255\255\255\024\001\001\001\
\026\001\003\001\004\001\001\001\006\001\003\001\255\255\001\001\
\006\001\003\001\255\255\255\255\006\001\255\255\255\255\017\001\
\255\255\019\001\020\001\017\001\255\255\019\001\020\001\017\001\
\026\001\019\001\020\001\025\001\026\001\001\001\255\255\003\001\
\026\001\001\001\006\001\003\001\255\255\255\255\006\001\255\255\
\012\001\001\001\255\255\003\001\012\001\017\001\006\001\019\001\
\020\001\017\001\255\255\019\001\020\001\255\255\026\001\004\001\
\005\001\017\001\026\001\019\001\020\001\255\255\255\255\012\001\
\255\255\004\001\005\001\255\255\255\255\255\255\019\001\255\255\
\021\001\012\001\255\255\024\001\025\001\026\001\027\001\255\255\
\255\255\255\255\021\001\004\001\005\001\024\001\025\001\026\001\
\027\001\255\255\255\255\012\001\255\255\004\001\005\001\255\255\
\255\255\255\255\255\255\255\255\021\001\012\001\255\255\024\001\
\025\001\255\255\027\001\004\001\005\001\255\255\021\001\255\255\
\255\255\024\001\025\001\012\001\027\001\004\001\005\001\255\255\
\255\255\255\255\255\255\255\255\021\001\012\001\255\255\024\001\
\025\001\255\255\027\001\001\001\255\255\003\001\021\001\255\255\
\006\001\024\001\025\001\255\255\027\001\255\255\255\255\255\255\
\255\255\255\255\255\255\017\001\255\255\255\255\020\001"

let yynames_const = "\
  AND\000\
  DOT\000\
  ELSE\000\
  EOEX\000\
  EQUAL\000\
  FUNCTION\000\
  GET\000\
  GOESTO\000\
  IF\000\
  IN\000\
  LCURLY\000\
  LET\000\
  LPAREN\000\
  MINUS\000\
  NOT\000\
  OR\000\
  PLUS\000\
  RCURLY\000\
  REC\000\
  REF\000\
  RPAREN\000\
  SEMI\000\
  SET\000\
  THEN\000\
  "

let yynames_block = "\
  BOOL\000\
  IDENT\000\
  INT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 70 "src/FbSR/fbsrparser.mly"
            ( _1 )
# 263 "src/FbSR/fbsrparser.ml"
               : Fbsrast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 75 "src/FbSR/fbsrparser.mly"
      ( _1 )
# 270 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'simple_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr_list) in
    Obj.repr(
# 77 "src/FbSR/fbsrparser.mly"
      ( mkappl _1 _2 )
# 278 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 79 "src/FbSR/fbsrparser.mly"
      ( Plus(_1, _3) )
# 286 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 81 "src/FbSR/fbsrparser.mly"
      ( Minus(_1, _3) )
# 294 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 83 "src/FbSR/fbsrparser.mly"
      ( And(_1, _3) )
# 302 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 85 "src/FbSR/fbsrparser.mly"
      ( Or(_1, _3) )
# 310 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 87 "src/FbSR/fbsrparser.mly"
      ( Not _2 )
# 317 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 89 "src/FbSR/fbsrparser.mly"
      ( Equal(_1, _3) )
# 325 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'ident_decl) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 91 "src/FbSR/fbsrparser.mly"
      ( Function(_2, _4) )
# 333 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 5 : 'ident_decl) in
    let _4 = (Parsing.peek_val __caml_parser_env 4 : 'ident_decl) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _8 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 93 "src/FbSR/fbsrparser.mly"
      ( LetRec(_3, _4, _6, _8) )
# 343 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 95 "src/FbSR/fbsrparser.mly"
      ( If(_2, _4, _6) )
# 352 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'ident_decl) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 97 "src/FbSR/fbsrparser.mly"
      ( Let(_2, _4, _6) )
# 361 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 99 "src/FbSR/fbsrparser.mly"
      ( Ref _2 )
# 368 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 101 "src/FbSR/fbsrparser.mly"
      ( Set(_1, _3) )
# 376 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 103 "src/FbSR/fbsrparser.mly"
      ( Get _2 )
# 383 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'label) in
    Obj.repr(
# 105 "src/FbSR/fbsrparser.mly"
      ( Select(_3, _1) )
# 391 "src/FbSR/fbsrparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 110 "src/FbSR/fbsrparser.mly"
      ( Int _1 )
# 398 "src/FbSR/fbsrparser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 112 "src/FbSR/fbsrparser.mly"
      ( Bool _1 )
# 405 "src/FbSR/fbsrparser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ident_usage) in
    Obj.repr(
# 114 "src/FbSR/fbsrparser.mly"
      ( _1 )
# 412 "src/FbSR/fbsrparser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'record_body) in
    Obj.repr(
# 116 "src/FbSR/fbsrparser.mly"
      ( Record _2 )
# 419 "src/FbSR/fbsrparser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 118 "src/FbSR/fbsrparser.mly"
      ( Record [] )
# 425 "src/FbSR/fbsrparser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 120 "src/FbSR/fbsrparser.mly"
      ( _2 )
# 432 "src/FbSR/fbsrparser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 125 "src/FbSR/fbsrparser.mly"
      ( [_1] )
# 439 "src/FbSR/fbsrparser.ml"
               : 'simple_expr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'simple_expr_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 127 "src/FbSR/fbsrparser.mly"
      ( _2::_1 )
# 447 "src/FbSR/fbsrparser.ml"
               : 'simple_expr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'label) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 132 "src/FbSR/fbsrparser.mly"
      ( [(_1, _3)] )
# 455 "src/FbSR/fbsrparser.ml"
               : 'record_body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 4 : 'label) in
    let _3 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _5 = (Parsing.peek_val __caml_parser_env 0 : 'record_body) in
    Obj.repr(
# 134 "src/FbSR/fbsrparser.mly"
      ( (_1, _3)::_5 )
# 464 "src/FbSR/fbsrparser.ml"
               : 'record_body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 139 "src/FbSR/fbsrparser.mly"
      ( Lab _1 )
# 471 "src/FbSR/fbsrparser.ml"
               : 'label))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ident_decl) in
    Obj.repr(
# 143 "src/FbSR/fbsrparser.mly"
      ( Var _1 )
# 478 "src/FbSR/fbsrparser.ml"
               : 'ident_usage))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 148 "src/FbSR/fbsrparser.mly"
      ( Ident _1 )
# 485 "src/FbSR/fbsrparser.ml"
               : 'ident_decl))
(* Entry main *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let main (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Fbsrast.expr)
;;
# 152 "src/FbSR/fbsrparser.mly"




# 515 "src/FbSR/fbsrparser.ml"
