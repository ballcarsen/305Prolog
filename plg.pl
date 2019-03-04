adjacent(X,Y) :- X =:= Y+1.
adjacent(X,Y) :- X =:= Y-1.

offices([office(_,1), office(_,2), office(_,3), office(_,4), office(_,5)]).


layout(X) :- offices(X),
	member(office(jim, A), X), A\=1, A\=5,
	member(office(hunter,C),X), C\=5,
	member(office(laura,D),X), D\=1,
	member(office(sally,B), X), B > D,
	member(office(jack, E),X).

