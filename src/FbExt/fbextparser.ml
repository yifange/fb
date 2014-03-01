type token =
  | AND
  | BOOL of (bool)
  | ELSE
  | EOEX
  | EQUAL
  | FUNCTION
  | GOESTO
  | IDENT of (string)
  | IN
  | IF
  | INT of (int)
  | LET
  | LPAREN
  | MINUS
  | NOT
  | OR
  | PLUS
  | RPAREN
  | REC
  | THEN

open Parsing;;
# 2 "src/FbExt/fbextparser.mly"

open Fbextast;;

let rec mkappl e args =
  match args with
    [] -> e
  | a::rest -> Appl(mkappl e rest, a)

# 34 "src/FbExt/fbextparser.ml"
let yytransl_const = [|
  257 (* AND *);
  259 (* ELSE *);
  260 (* EOEX *);
  261 (* EQUAL *);
  262 (* FUNCTION *);
  263 (* GOESTO *);
  265 (* IN *);
  266 (* IF *);
  268 (* LET *);
  269 (* LPAREN *);
  270 (* MINUS *);
  271 (* NOT *);
  272 (* OR *);
  273 (* PLUS *);
  274 (* RPAREN *);
  275 (* REC *);
  276 (* THEN *);
    0|]

let yytransl_block = [|
  258 (* BOOL *);
  264 (* IDENT *);
  267 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\002\000\002\000\002\000\002\000\003\000\003\000\003\000\003\000\
\004\000\004\000\006\000\005\000\000\000"

let yylen = "\002\000\
\002\000\001\000\002\000\003\000\003\000\003\000\003\000\002\000\
\003\000\004\000\008\000\006\000\001\000\001\000\001\000\003\000\
\001\000\002\000\001\000\001\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\014\000\000\000\020\000\000\000\013\000\000\000\
\000\000\000\000\021\000\000\000\000\000\019\000\015\000\000\000\
\000\000\000\000\000\000\008\000\000\000\001\000\000\000\000\000\
\000\000\000\000\017\000\000\000\000\000\000\000\000\000\016\000\
\000\000\000\000\005\000\000\000\004\000\018\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000"

let yydgoto = "\002\000\
\011\000\012\000\013\000\028\000\014\000\015\000"

let yysindex = "\010\000\
\163\255\000\000\000\000\006\255\000\000\163\255\000\000\007\255\
\163\255\163\255\000\000\131\255\255\254\000\000\000\000\020\255\
\070\255\006\255\075\255\000\000\163\255\000\000\163\255\163\255\
\163\255\163\255\000\000\255\254\163\255\163\255\006\255\000\000\
\008\255\247\254\000\000\150\255\000\000\000\000\150\255\125\255\
\023\255\163\255\163\255\150\255\145\255\163\255\150\255"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\029\255\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\047\255\000\000\000\000\000\000\000\000\
\091\255\065\255\000\000\094\255\000\000\000\000\101\255\000\000\
\000\000\000\000\000\000\113\255\000\000\000\000\120\255"

let yygindex = "\000\000\
\000\000\250\255\249\255\000\000\254\255\000\000"

let yytablesize = 178
let yytable = "\017\000\
\003\000\016\000\019\000\020\000\024\000\027\000\005\000\026\000\
\021\000\007\000\001\000\009\000\023\000\005\000\033\000\031\000\
\034\000\035\000\036\000\037\000\038\000\024\000\039\000\040\000\
\026\000\018\000\029\000\043\000\041\000\002\000\000\000\002\000\
\002\000\002\000\000\000\044\000\045\000\002\000\000\000\047\000\
\000\000\000\000\002\000\000\000\002\000\002\000\002\000\003\000\
\002\000\003\000\003\000\003\000\000\000\000\000\000\000\003\000\
\000\000\000\000\000\000\000\000\003\000\000\000\003\000\003\000\
\003\000\009\000\003\000\009\000\009\000\009\000\021\000\000\000\
\000\000\009\000\023\000\021\000\000\000\000\000\000\000\023\000\
\009\000\000\000\009\000\024\000\009\000\025\000\026\000\000\000\
\024\000\030\000\025\000\026\000\032\000\006\000\006\000\000\000\
\007\000\007\000\000\000\006\000\000\000\000\000\007\000\010\000\
\010\000\000\000\006\000\000\000\006\000\010\000\006\000\007\000\
\000\000\007\000\000\000\012\000\012\000\000\000\010\000\000\000\
\010\000\012\000\011\000\011\000\000\000\021\000\000\000\042\000\
\011\000\023\000\012\000\021\000\012\000\000\000\022\000\023\000\
\000\000\011\000\024\000\011\000\025\000\026\000\000\000\000\000\
\024\000\021\000\025\000\026\000\000\000\023\000\021\000\000\000\
\000\000\046\000\023\000\000\000\000\000\000\000\024\000\000\000\
\025\000\026\000\000\000\024\000\003\000\025\000\026\000\000\000\
\004\000\000\000\005\000\000\000\006\000\007\000\008\000\009\000\
\000\000\010\000"

let yycheck = "\006\000\
\002\001\004\000\009\000\010\000\014\001\013\000\008\001\017\001\
\001\001\011\001\001\000\013\001\005\001\008\001\021\000\018\000\
\023\000\024\000\025\000\026\000\028\000\014\001\029\000\030\000\
\017\001\019\001\007\001\005\001\031\000\001\001\255\255\003\001\
\004\001\005\001\255\255\042\000\043\000\009\001\255\255\046\000\
\255\255\255\255\014\001\255\255\016\001\017\001\018\001\001\001\
\020\001\003\001\004\001\005\001\255\255\255\255\255\255\009\001\
\255\255\255\255\255\255\255\255\014\001\255\255\016\001\017\001\
\018\001\001\001\020\001\003\001\004\001\005\001\001\001\255\255\
\255\255\009\001\005\001\001\001\255\255\255\255\255\255\005\001\
\016\001\255\255\018\001\014\001\020\001\016\001\017\001\255\255\
\014\001\020\001\016\001\017\001\018\001\003\001\004\001\255\255\
\003\001\004\001\255\255\009\001\255\255\255\255\009\001\003\001\
\004\001\255\255\016\001\255\255\018\001\009\001\020\001\018\001\
\255\255\020\001\255\255\003\001\004\001\255\255\018\001\255\255\
\020\001\009\001\003\001\004\001\255\255\001\001\255\255\003\001\
\009\001\005\001\018\001\001\001\020\001\255\255\004\001\005\001\
\255\255\018\001\014\001\020\001\016\001\017\001\255\255\255\255\
\014\001\001\001\016\001\017\001\255\255\005\001\001\001\255\255\
\255\255\009\001\005\001\255\255\255\255\255\255\014\001\255\255\
\016\001\017\001\255\255\014\001\002\001\016\001\017\001\255\255\
\006\001\255\255\008\001\255\255\010\001\011\001\012\001\013\001\
\255\255\015\001"

let yynames_const = "\
  AND\000\
  ELSE\000\
  EOEX\000\
  EQUAL\000\
  FUNCTION\000\
  GOESTO\000\
  IN\000\
  IF\000\
  LET\000\
  LPAREN\000\
  MINUS\000\
  NOT\000\
  OR\000\
  PLUS\000\
  RPAREN\000\
  REC\000\
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
# 61 "src/FbExt/fbextparser.mly"
            ( _1 )
# 185 "src/FbExt/fbextparser.ml"
               : Fbextast.expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 66 "src/FbExt/fbextparser.mly"
      ( _1 )
# 192 "src/FbExt/fbextparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'simple_expr) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr_list) in
    Obj.repr(
# 68 "src/FbExt/fbextparser.mly"
      ( mkappl _1 _2 )
# 200 "src/FbExt/fbextparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 70 "src/FbExt/fbextparser.mly"
      ( Plus(_1, _3) )
# 208 "src/FbExt/fbextparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 72 "src/FbExt/fbextparser.mly"
      ( Minus(_1, _3) )
# 216 "src/FbExt/fbextparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 74 "src/FbExt/fbextparser.mly"
      ( And(_1, _3) )
# 224 "src/FbExt/fbextparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 76 "src/FbExt/fbextparser.mly"
      ( Or(_1, _3) )
# 232 "src/FbExt/fbextparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 78 "src/FbExt/fbextparser.mly"
      ( Not _2 )
# 239 "src/FbExt/fbextparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 80 "src/FbExt/fbextparser.mly"
      ( Equal(_1, _3) )
# 247 "src/FbExt/fbextparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 2 : 'ident_decl) in
    let _4 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 82 "src/FbExt/fbextparser.mly"
      ( Function(_2, _4) )
# 255 "src/FbExt/fbextparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _3 = (Parsing.peek_val __caml_parser_env 5 : 'ident_decl) in
    let _4 = (Parsing.peek_val __caml_parser_env 4 : 'ident_decl) in
    let _6 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _8 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 84 "src/FbExt/fbextparser.mly"
      ( LetRec(_3, _4, _6, _8) )
# 265 "src/FbExt/fbextparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 4 : 'expr) in
    let _4 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _6 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 86 "src/FbExt/fbextparser.mly"
      ( If(_2, _4, _6) )
# 274 "src/FbExt/fbextparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 91 "src/FbExt/fbextparser.mly"
      ( Int _1 )
# 281 "src/FbExt/fbextparser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : bool) in
    Obj.repr(
# 93 "src/FbExt/fbextparser.mly"
      ( Bool _1 )
# 288 "src/FbExt/fbextparser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ident_usage) in
    Obj.repr(
# 95 "src/FbExt/fbextparser.mly"
      ( _1 )
# 295 "src/FbExt/fbextparser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 97 "src/FbExt/fbextparser.mly"
      ( _2 )
# 302 "src/FbExt/fbextparser.ml"
               : 'simple_expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 102 "src/FbExt/fbextparser.mly"
      ( [_1] )
# 309 "src/FbExt/fbextparser.ml"
               : 'simple_expr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'simple_expr_list) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'simple_expr) in
    Obj.repr(
# 104 "src/FbExt/fbextparser.mly"
      ( _2::_1 )
# 317 "src/FbExt/fbextparser.ml"
               : 'simple_expr_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'ident_decl) in
    Obj.repr(
# 109 "src/FbExt/fbextparser.mly"
      ( Var _1 )
# 324 "src/FbExt/fbextparser.ml"
               : 'ident_usage))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 114 "src/FbExt/fbextparser.mly"
      ( Ident _1 )
# 331 "src/FbExt/fbextparser.ml"
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
   (Parsing.yyparse yytables 1 lexfun lexbuf : Fbextast.expr)
;;
# 118 "src/FbExt/fbextparser.mly"

# 358 "src/FbExt/fbextparser.ml"
