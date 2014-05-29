/Joseph Black/

male(carter).
male(chris).
male(stewie).
male(brian).
male(francis).
male(wilson).

female(barbara).
female(carol).
female(lois).
female(meg).
female(thelma).
female(merilyn).
female(babs)

parent(wilson, merilyn).
parent(babs, merilyn).
parent(wilson, barbara).
parent(babs, barbara).

parent(barbara, lois).
parent(carter, lois).
parent(barbara, carol).
parent(carter, carol).

parent(francis, peter).
parent(thelma, peter).

parent(peter, stewie).
parent(peter, chris).
parent(peter, meg).
parent(peter, brian).

parent(lois, stewie).
parent(lois, chris).
parent(lois, meg).
parent(lois, brian).

marriedTo(peter, lois).
marriedTo(francis, thelma).
marriedTo(carter, barbara).
marriedTo(X, Y) :- marriedTo(Y, X).

mother(X, Y) :- parent(X, Y), female(X).

is_mother(X) :- mother(X, _).

daughter(X, Y) :- female(X), parent(Y, X).

child(X, Y) :- parent(Y, X).

sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), X\==Y.

aunt(X, Y) :- female(X), sister(X, Z), parent(Z, Y).

grandmother(X, Y) :- female(X), parent(X, Z), parent(Z, Y).

great_aunt(X, Y) :- aunt(X, Z), parent(Z, Y).

sister_in_law(X, Y) :- marriedTo(Y, Z), sister(X, Z).

descendant(X, Y) :- parent(Y, X); descendant(Y, Z).





