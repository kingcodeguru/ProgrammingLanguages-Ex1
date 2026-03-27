remove_at(X, [A | L ], 1, R) :- X=A, R=L, !.
remove_at(X, [A | List], N, R) :- N1 is N - 1, remove_at(X, List, N1, R2), R=[A|R2] .