% Contributed by - Anuj Das ( GC University, Silchar - @ Department of Computer Science )

% 3.  Write a Prolog program to calculate the factorial of a given number.


% The factorial of 0 is 1
factorial(0, 1). 

factorial(N, Result) :- 
    N > 0, 
    Num is N - 1, 
    factorial(Num, NewResult), 
    Result is N * NewResult. 
