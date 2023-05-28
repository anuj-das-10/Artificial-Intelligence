% Contributed by - Anuj Das ( GC University, Silchar - @ Department of Computer Science )

% 4. Write a Prolog program to calculate the n-th Fibonacci number.

fibonacci(0, 0). % The 0th Fibonacci number is 0  --> Exception

fibonacci(1, 0). % The 1st Fibonacci number is 0
fibonacci(2, 1). % The 2nd Fibonacci number is 1
fibonacci(3, 1). % The 3rd Fibonacci number is 1

fibonacci(N, Result) :-  N > 3, 
  N1 is N - 1, 
  N2 is N - 2, 
  fibonacci(N1, Result1),
  fibonacci(N2, Result2), 
  Result is Result1 + Result2. 
