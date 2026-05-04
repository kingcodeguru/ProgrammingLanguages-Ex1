and(A, B) :- A, B.

or(A, B) :- A | B.

not(A) :- A, !, fail.
not(_).

xor(A, B) :- and(not(A), B) | and(A, not(B)).

equal(A, B) :- A, B | not(A), not(B).

nor(A, B) :- not(A), not(B).

nand(A, B) :- not(and(A, B)).

eval(X, S) :- X, !, S='true'.
eval(X, S) :- not(X), !, S='fail'.

table(A, B, X) :- write('true  true  '), A=true, B=true, eval(X, S), writeln(S), fail.
table(A, B, X) :- write('true  fail  '), A=true, B=fail, eval(X, S), writeln(S), fail.
table(A, B, X) :- write('fail  true  '), A=fail, B=true, eval(X, S), writeln(S), fail.
table(A, B, X) :- write('fail  fail  '), A=fail, B=fail, eval(X, S), writeln(S), fail.

table(_, _, _).
