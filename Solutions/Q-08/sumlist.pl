% Contributed by - Anuj Das ( GC University, Silchar - @ Department of Computer Science )

% 8. Write a Prolog program to implement sumlist(List,Sum) so that Sum is the sum of a given list of numbers List.

sumlist([], 0).                     % Base case: sum of empty list is zero.

sumlist([X|Rest], Sum) :-
  sumlist(Rest, SumRest),           % Recursively compute the sum of the rest of the list.
  Sum is X + SumRest.               % Add the current element to the sum of the rest.
