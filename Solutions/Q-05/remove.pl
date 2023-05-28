% Contributed by - Anuj Das ( GC University, Silchar - @ Department of Computer Science )

% 5. Write a Prolog program to remove the n-th item from a list.


% remove_item(index, List-1, Resultant-List).
remove_item(0, [_|Tail], Tail).                              % If N is 0, remove the first item in the list by returning the tail of the list.
remove_item(Index, [Head|Tail], [Head|R]) :- Index > 0,      % If N is greater than 0, we need to keep looking for the Nth item to remove.
    Num is Index - 1,                                        % Decrement N to look for the (N-1)th item.
    remove_item(Num, Tail, R).                               % Recursively call `remove_item` with the tail of the list and the result.
