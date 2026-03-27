is_multiple(0, _) :- true, !.
is_multiple(X, N) :- X > 0, N1 is X - N, is_multiple(N1, N), !.

% check from 2 to X-1 if X is prime
is_prime_help(X, N) :- N < X, is_multiple(X, N), !.
is_prime_help(X, N) :- N < X, N1 is N + 1, is_prime_help(X, N1), !.

is_prime(X) :- not(X > 1), !, fail.
is_prime(X) :- X=2, !.
is_prime(X) :- X=3, !.
is_prime(X) :- not(is_prime_help(X, 2)), !.