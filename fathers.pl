father(terach, abraham).
father(terach, nachor).
father(terach, haran).
father(abraham, isaac).
father(haran, lot).
father(haran, milcah).
father(haran, yiscah).
father(isaac, esau).
father(isaac, jacob).

mother(sarah, isaac).

male(terach).
male(abraham).
male(nachor).
male(haran).
male(isaac).
male(lot).
male(esau).
male(jacob).

female(sarah).
female(milcah).
female(yiscah).

grandfather(X,Y) :- father(X, Z), father(Z, Y).
brother(X, Y) :- father(Z, X), father(Z, Y), male(X), X\==Y.

/* Recursive definition of "ancestor" */
parent(X, Y) :- father(X, Y).
parent(X, Y) :- mother(X, Y).
ancestor(X, Y) :- parent(X, Y).
ancestor(X, Y) :- parent(X, Z), ancestor(Z, Y).