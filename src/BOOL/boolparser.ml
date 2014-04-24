type token =
  | AND
  | OR
  | NOT
  | IMPLIES
  | TRUE
  | FALSE
  | LPAREN
  | RPAREN
  | EOEX

open Parsing;;
let _ = parse_error;;
# 2 "src/BOOL/boolparser.mly"

open Boolast;;

# 19 "src/BOOL/boolparser.ml"
let yytransl_const = [|
  257 (* AND *);
  258 (* OR *);
  259 (* NOT *);
  260 (* IMPLIES *);
  261 (* TRUE *);
  262 (* FALSE *);
  263 (* LPAREN *);
  264 (* RPAREN *);
  265 (* EOEX *);
    0|]

let yytransl_block = [|
    0|]

let yylhs = "\255\255\
\001\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
\000\000"

let yylen = "\002\000\
\002\000\001\000\001\000\003\000\003\000\003\000\002\000\003\000\
\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\002\000\003\000\000\000\009\000\000\000\
\007\000\000\000\000\000\000\000\000\000\001\000\008\000\000\000\
\000\000\000\000"

let yydgoto = "\002\000\
\007\000\008\000"

let yysindex = "\005\000\
\022\255\000\000\022\255\000\000\000\000\022\255\000\000\003\255\
\000\000\012\255\022\255\022\255\022\255\000\000\000\000\010\255\
\000\255\029\255"

let yyrindex = "\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\013\255\
\015\255\026\255"

let yygindex = "\000\000\
\000\000\253\255"

let yytablesize = 35
let yytable = "\009\000\
\011\000\012\000\010\000\011\000\012\000\001\000\013\000\016\000\
\017\000\018\000\011\000\014\000\011\000\012\000\004\000\013\000\
\004\000\000\000\005\000\015\000\004\000\004\000\005\000\005\000\
\003\000\000\000\004\000\005\000\006\000\011\000\012\000\000\000\
\013\000\006\000\006\000"

let yycheck = "\003\000\
\001\001\002\001\006\000\001\001\002\001\001\000\004\001\011\000\
\012\000\013\000\001\001\009\001\001\001\002\001\002\001\004\001\
\004\001\255\255\004\001\008\001\008\001\009\001\008\001\009\001\
\003\001\255\255\005\001\006\001\007\001\001\001\002\001\255\255\
\004\001\008\001\009\001"

let yynames_const = "\
  AND\000\
  OR\000\
  NOT\000\
  IMPLIES\000\
  TRUE\000\
  FALSE\000\
  LPAREN\000\
  RPAREN\000\
  EOEX\000\
  "

let yynames_block = "\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 29 "src/BOOL/boolparser.mly"
            ( _1 )
# 101 "src/BOOL/boolparser.ml"
               : Boolast.expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 34 "src/BOOL/boolparser.mly"
    ( True )
# 107 "src/BOOL/boolparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    Obj.repr(
# 36 "src/BOOL/boolparser.mly"
    ( False )
# 113 "src/BOOL/boolparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 38 "src/BOOL/boolparser.mly"
    ( And(_1, _3) )
# 121 "src/BOOL/boolparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 40 "src/BOOL/boolparser.mly"
    ( Or(_1, _3) )
# 129 "src/BOOL/boolparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'expr) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 42 "src/BOOL/boolparser.mly"
    ( Implies(_1, _3) )
# 137 "src/BOOL/boolparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'expr) in
    Obj.repr(
# 44 "src/BOOL/boolparser.mly"
    ( Not(_2) )
# 144 "src/BOOL/boolparser.ml"
               : 'expr))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'expr) in
    Obj.repr(
# 46 "src/BOOL/boolparser.mly"
    ( _2 )
# 151 "src/BOOL/boolparser.ml"
               : 'expr))
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
   (Parsing.yyparse yytables 1 lexfun lexbuf : Boolast.expr)
;;
# 50 "src/BOOL/boolparser.mly"





# 182 "src/BOOL/boolparser.ml"
