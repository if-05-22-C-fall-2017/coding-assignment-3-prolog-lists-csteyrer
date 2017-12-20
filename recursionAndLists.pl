prepend(E, L, [E|L]).

addElement(E, [], [E]).
addElement(E,[H|T], [H|ExtendedTail]) :- addElement(E, T, ExtendedTail).

hasLength([], 0).
hasLength([_|T], X) :- hasLength(T, N), X is N+1.

remove(E, [E|T], T).
remove(E,[H|T], [H|ReducedTail]) :- remove(E, T, ReducedTail).