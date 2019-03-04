adjacent(X,Y) :- X =:= Y+1.
adjacent(X,Y) :- X =:= Y-1.

offices([office(_,1), office(_,2), office(_,3), office(_,4), office(_,5)]).

layout(X) :- offices(X),
    member(office(jack,B),X),
    member(office(laura,C),X), C\=1,
    member(office(sally,D),X),
    member(office(jim,A),X), A\=1, A\=5, \adjacent(A,B),\adjacent(A,C),
    member(office(hunter,E),X), E\=5.


