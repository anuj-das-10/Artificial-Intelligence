% Contributed by - Anuj Das ( GC University, Silchar - @ Department of Computer Science )

% 9. Write a Prolog program to implement reverse(List,ReversedList) that reverses a given list.


reverse([], []).                                    % Reversing an empty list gives another empty list.

reverse([X|Rest], Reversed) :-
    reverse(Rest, ReversedRest),                   % Recursively reverse the rest of the list.
    append(ReversedRest, [X], Reversed).           % Append the current element to the reversed rest to get the reversed list.
