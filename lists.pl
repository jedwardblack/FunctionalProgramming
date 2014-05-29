%Joseph E. Black, Jr.

addAtRear(Y, [], Y).
addAtRear(Y, [X|Xs], [X|Zs]) :- addAtRear(Y, Xs, Zs).

deleteFromRear([Y], []).
deleteFromRear([X|Xs], Y, [X|List]) :- deleteFromRear(Xs, List).
deleteFromRear([X|Xs], [X|List]) :- deleteFromRear(Xs, List).

insert(X, [], [X]).
insert(X, [Y|Ys], [X,Y|Ys]) :- X @< Y.
insert(X, [Y|Zs], [Y|Ys]) :- insert(X, Zs, Ys).

insertionSort([],[]).
insertionSort([X|Xs],Sorted):- insertionSort(Xs,SortedTail), insert(X,SortedTail, Sorted).
