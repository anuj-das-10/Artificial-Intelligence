% Contributed by - Anuj Das ( GC University, Silchar - @ Department of Computer Science )

% 10. Write a Prolog program to implement GCD of two numbers.


gcd(X, Y, GCD) :-
    X =:= Y,                % If `X` is equal to `Y`, then `X` (or `Y`) is the GCD.
    GCD is X.

gcd(X, Y, GCD) :-
    X < Y,                  % If `X` is less than `Y`, swap them and call `gcd` with the new order.
    gcd(Y, X, GCD).
    
gcd(X, Y, GCD) :-
    X > Y,                  % If `X` is greater than `Y`, find the difference between them and call `gcd` with `Y` and the difference.
    Z is X - Y,
    gcd(Y, Z, GCD).
