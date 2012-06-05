:- nogc.

:- udi(roads(-,+)).
:- ['roads.yap'].

%% :- udi(utility(-,+)).
%% :- ['utility.yap'].

%% :- udi(rrlines(-,+)).
%% :- ['rrlines.yap'].

%% :- udi(car(-,+)).
%% :- ['car.yap'].

%:- udi(car(-,+)).
%% :- ['cas.yap'].

%% :- udi(roads(+)).
%% :- ['la.yap'].

:- op(700,xfx,'&&').

A '&&' B :-
        attributes:get_all_atts(A,C),
        attributes:put_att_term(A,overlap(C,B)).

test((roads(X,R1), R2 && R1, roads(Y,R2), fail)).
%% test((roads(X,R1), R2 && R1, utility(Y,R2), fail)).
%% test((utility(X,R1), R2 && R1, roads(Y,R2), fail)).
%% test((roads(X,R1), R2 && R1, rrlines(Y,R2), fail)).
%% test((rrlines(X,R1), R2 && R1, roads(Y,R2), fail)).
%% test((cas(X,R1), R2 && R1, car(Y,R2), fail)).
%% test((car(X,R1), R2 && R1, car(Y,R2), fail)).

b(X) :-
        test(A),
        write(A),nl,
        time(A),
        fail.
b(_).

:- write('start'),nl, b(_), halt.