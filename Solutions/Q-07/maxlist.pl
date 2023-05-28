% Contributed by - Anuj Das ( GC University, Silchar - @ Department of Computer Science )

% 7. Write a Prolog program to implement maxlist(List,Max) 
%    so that Max is the greatest number in the list of numbers List using cut predicate.



% Base case: if the list has only one element, it is the maximum.
maxlist([X], X).

% Recursive case: find the maximum of the rest of the list, and compare it to the current element.
% If the current element is greater or equal, then it is the new maximum.
maxlist([X|Rest], Max) :-
    maxlist(Rest, Y),
    X >= Y,
    Max is X, !.        % Use the cut predicate to prevent backtracking and improve performance.

% Recursive case: find the maximum of the rest of the list, and compare it to the current element.
% If the current element is less than the maximum of the rest, then the maximum remains the same.
maxlist([X|Rest], Max) :-
    maxlist(Rest, Y),
    X < Y, 
    Max is Y.
