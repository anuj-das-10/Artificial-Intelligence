% Contributed by - Anuj Das ( GC University, Silchar - @ Department of Computer Science )

% 6. Write a Prolog program to check if a list is a palindrome.



palindrome(List) :-
  reverse(List, List).          % Check if `List` is equal to its reversed list.


reverse([], []).                                          % An empty list is its own reverse.
reverse([H|T], ReversedList) :-    
    reverse(T, TReversed),                                % Recursively call `reverse` with the tail of the list.
    append(TReversed, [H], ReversedList).                 % Append the head to the end of the reversed tail.
