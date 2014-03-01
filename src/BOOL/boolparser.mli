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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Boolast.expr
