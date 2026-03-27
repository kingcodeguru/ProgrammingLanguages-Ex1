element_at(X, [A | _ ], 1) :- X=A, !.
element_at(X, [_ | List], N) :- N1 is N - 1, element_at(X, List, N1).
