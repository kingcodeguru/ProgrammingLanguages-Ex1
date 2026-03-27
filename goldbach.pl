:- consult('is_prime.pl').

goldbach_helper(N1, N2, X) :- is_prime(N1), is_prime(N2), X = [N2, N1], !.
goldbach_helper(N1, N2, X) :- N1 > 2, N1_1 is N1 - 1, N2_1 is N2 + 1, goldbach_helper(N1_1, N2_1, X).

goldbach(N, X) :- not(N > 2), X=[], !.
goldbach(N, X) :- not(is_multiple(N, 2)), X=[], !.
goldbach(N, X) :- N1 is N - 2, N2 is N - N1, goldbach_helper(N1, N2, X).