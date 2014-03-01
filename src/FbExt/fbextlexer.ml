# 1 "src/FbExt/fbextlexer.mll"
 
  open Fbextparser;;

# 6 "src/FbExt/fbextlexer.ml"
let __ocaml_lex_tables = {
  Lexing.lex_base = 
   "\000\000\232\255\084\000\037\000\235\255\237\255\239\255\001\000\
    \000\000\023\000\024\000\018\000\103\000\106\000\030\000\017\000\
    \015\000\020\000\002\000\000\000\002\000\005\000\255\255\031\000\
    \253\255\252\255\026\000\251\255\035\000\034\000\046\000\030\000\
    \043\000\064\000\066\000\250\255\062\000\077\000\242\255\244\255\
    \249\255\063\000\108\000\100\000\248\255\110\000\241\255\097\000\
    \112\000\247\255\098\000\246\255\116\000\245\255\243\255\240\255\
    ";
  Lexing.lex_backtrk = 
   "\255\255\255\255\022\000\021\000\255\255\255\255\255\255\255\255\
    \017\000\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\001\000\019\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    ";
  Lexing.lex_default = 
   "\255\255\000\000\255\255\255\255\000\000\000\000\000\000\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\020\000\020\000\000\000\255\255\
    \000\000\000\000\255\255\000\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\000\000\255\255\255\255\000\000\000\000\
    \000\000\255\255\255\255\255\255\000\000\255\255\000\000\255\255\
    \255\255\000\000\255\255\000\000\255\255\000\000\000\000\000\000\
    ";
  Lexing.lex_trans = 
   "\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\018\000\018\000\018\000\018\000\018\000\000\000\018\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \018\000\000\000\018\000\000\000\000\000\000\000\000\000\000\000\
    \019\000\004\000\020\000\006\000\021\000\008\000\022\000\000\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\003\000\
    \003\000\003\000\000\000\007\000\055\000\005\000\054\000\000\000\
    \000\000\017\000\000\000\000\000\000\000\011\000\014\000\000\000\
    \000\000\013\000\000\000\000\000\010\000\000\000\015\000\016\000\
    \000\000\000\000\009\000\000\000\012\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\002\000\
    \000\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\052\000\050\000\047\000\028\000\
    \026\000\025\000\023\000\024\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\027\000\036\000\
    \030\000\031\000\032\000\029\000\033\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\034\000\
    \035\000\037\000\038\000\002\000\045\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\042\000\
    \040\000\043\000\044\000\046\000\048\000\049\000\051\000\053\000\
    \039\000\041\000\000\000\000\000\000\000\000\000\000\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\000\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \001\000\000\000\255\255\000\000\000\000\255\255\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\000\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\000\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000";
  Lexing.lex_check = 
   "\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\000\000\000\000\018\000\018\000\000\000\255\255\018\000\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \000\000\255\255\018\000\255\255\255\255\255\255\255\255\255\255\
    \000\000\000\000\019\000\000\000\020\000\000\000\021\000\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\255\255\000\000\007\000\000\000\008\000\255\255\
    \255\255\000\000\255\255\255\255\255\255\000\000\000\000\255\255\
    \255\255\000\000\255\255\255\255\000\000\255\255\000\000\000\000\
    \255\255\255\255\000\000\255\255\000\000\003\000\003\000\003\000\
    \003\000\003\000\003\000\003\000\003\000\003\000\003\000\000\000\
    \255\255\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\002\000\009\000\010\000\011\000\014\000\
    \015\000\016\000\017\000\023\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\026\000\028\000\
    \029\000\030\000\031\000\014\000\032\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\033\000\
    \034\000\036\000\037\000\002\000\041\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\012\000\
    \013\000\042\000\043\000\045\000\047\000\048\000\050\000\052\000\
    \013\000\012\000\255\255\255\255\255\255\255\255\255\255\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\255\255\
    \000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
    \000\000\255\255\020\000\255\255\255\255\021\000\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\255\255\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\255\255\002\000\002\000\002\000\002\000\
    \002\000\002\000\002\000\002\000\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
    \255\255\255\255\255\255\255\255\255\255";
  Lexing.lex_base_code = 
   "";
  Lexing.lex_backtrk_code = 
   "";
  Lexing.lex_default_code = 
   "";
  Lexing.lex_trans_code = 
   "";
  Lexing.lex_check_code = 
   "";
  Lexing.lex_code = 
   "";
}

let rec token lexbuf =
    __ocaml_lex_token_rec lexbuf 0
and __ocaml_lex_token_rec lexbuf __ocaml_lex_state =
  match Lexing.engine __ocaml_lex_tables __ocaml_lex_state lexbuf with
      | 0 ->
# 13 "src/FbExt/fbextlexer.mll"
    (token lexbuf)
# 152 "src/FbExt/fbextlexer.ml"

  | 1 ->
# 14 "src/FbExt/fbextlexer.mll"
                       ( token lexbuf )
# 157 "src/FbExt/fbextlexer.ml"

  | 2 ->
# 15 "src/FbExt/fbextlexer.mll"
                       ( AND )
# 162 "src/FbExt/fbextlexer.ml"

  | 3 ->
# 16 "src/FbExt/fbextlexer.mll"
                       ( OR )
# 167 "src/FbExt/fbextlexer.ml"

  | 4 ->
# 17 "src/FbExt/fbextlexer.mll"
                       ( NOT )
# 172 "src/FbExt/fbextlexer.ml"

  | 5 ->
# 18 "src/FbExt/fbextlexer.mll"
                       ( FUNCTION )
# 177 "src/FbExt/fbextlexer.ml"

  | 6 ->
# 19 "src/FbExt/fbextlexer.mll"
                       ( IF )
# 182 "src/FbExt/fbextlexer.ml"

  | 7 ->
# 20 "src/FbExt/fbextlexer.mll"
                       ( THEN )
# 187 "src/FbExt/fbextlexer.ml"

  | 8 ->
# 21 "src/FbExt/fbextlexer.mll"
                       ( ELSE )
# 192 "src/FbExt/fbextlexer.ml"

  | 9 ->
# 22 "src/FbExt/fbextlexer.mll"
                       ( LET )
# 197 "src/FbExt/fbextlexer.ml"

  | 10 ->
# 23 "src/FbExt/fbextlexer.mll"
                       ( REC )
# 202 "src/FbExt/fbextlexer.ml"

  | 11 ->
# 24 "src/FbExt/fbextlexer.mll"
                       ( IN )
# 207 "src/FbExt/fbextlexer.ml"

  | 12 ->
# 25 "src/FbExt/fbextlexer.mll"
                       ( GOESTO )
# 212 "src/FbExt/fbextlexer.ml"

  | 13 ->
# 26 "src/FbExt/fbextlexer.mll"
                       ( BOOL false )
# 217 "src/FbExt/fbextlexer.ml"

  | 14 ->
# 27 "src/FbExt/fbextlexer.mll"
                       ( BOOL true )
# 222 "src/FbExt/fbextlexer.ml"

  | 15 ->
# 28 "src/FbExt/fbextlexer.mll"
                       ( EOEX )
# 227 "src/FbExt/fbextlexer.ml"

  | 16 ->
# 29 "src/FbExt/fbextlexer.mll"
                       ( PLUS )
# 232 "src/FbExt/fbextlexer.ml"

  | 17 ->
# 30 "src/FbExt/fbextlexer.mll"
                       ( MINUS )
# 237 "src/FbExt/fbextlexer.ml"

  | 18 ->
# 31 "src/FbExt/fbextlexer.mll"
                       ( EQUAL )
# 242 "src/FbExt/fbextlexer.ml"

  | 19 ->
# 32 "src/FbExt/fbextlexer.mll"
                       ( LPAREN )
# 247 "src/FbExt/fbextlexer.ml"

  | 20 ->
# 33 "src/FbExt/fbextlexer.mll"
                       ( RPAREN )
# 252 "src/FbExt/fbextlexer.ml"

  | 21 ->
# 34 "src/FbExt/fbextlexer.mll"
                       ( INT (int_of_string(Lexing.lexeme lexbuf)) )
# 257 "src/FbExt/fbextlexer.ml"

  | 22 ->
# 35 "src/FbExt/fbextlexer.mll"
                       ( IDENT (Lexing.lexeme lexbuf) )
# 262 "src/FbExt/fbextlexer.ml"

  | 23 ->
# 36 "src/FbExt/fbextlexer.mll"
                       ( EOEX )
# 267 "src/FbExt/fbextlexer.ml"

  | __ocaml_lex_state -> lexbuf.Lexing.refill_buff lexbuf; __ocaml_lex_token_rec lexbuf __ocaml_lex_state

;;

