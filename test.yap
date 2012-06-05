:- ['roads.yap'].
%%:- ['utility.yap'].
%%:- ['rrlines.yap'].

overlap([(X1,Y1),(X2,Y2)],[(X3,Y3),(X4,Y4)]):-
       X1 =< X4, X3 =< X2, Y1 =< Y4, Y3 =< Y4.

test((roads(X,R1), roads(Y,R2), overlap(R1,R2), fail)).
%% test((roads(X,R1), utility(Y,R2), overlap(R1,R2), fail)).
%% test((utility(X,R1), roads(Y,R2), overlap(R1,R2), fail)).
%% test((roads(X,R1), rrlines(Y,R2), overlap(R1,R2), fail)).
%% test((rrlines(X,R1), rrlines(Y,R2), overlap(R1,R2), fail)).

b(X) :-
        test(A),
        write(A),nl,
        time(A),
        fail.
b(_).

:- write('start'),nl,b(_), halt.