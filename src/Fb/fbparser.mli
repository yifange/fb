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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Fbast.expr
