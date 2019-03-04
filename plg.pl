adjacent(X,Y) :- X =:= Y+1.
adjacent(X,Y) :- X =:= Y-1.

offices([office(_,1), office(_,2), office(_,3), office(_,4), office(_,5)]).


layout(X) :- offices(X),
    member(office(jack, A),X)
    member(office(laura,B),X), B\=1,
	member(office(sally,C), X), C > B,
	member(office(jim, D), X), D\=1, \D=5, \adjacent(D,A), \adjacent(D,B),
	member(office(hunter, E),X), E\=5.

