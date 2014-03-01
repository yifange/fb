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

val main :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Fbsrast.expr
