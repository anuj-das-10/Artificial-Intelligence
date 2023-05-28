% Contributed by - Anuj Das ( GC University, Silchar - @ Department of Computer Science )

% 2. Write a Prolog program to find the maximum of two numbers.


maximum(X, Y) :- X = Y, write('Both are equal.').
maximum(X, Y) :- X > Y, write(X), write(' is the maximum.').
maximum(X, Y) :- Y > X, write(Y), write(' is the maximum.').


