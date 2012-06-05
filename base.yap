:- nogc.

:- op(700,xfx,'&&').
A '&&' B :-
        attributes:get_all_atts(A,C),
        attributes:put_att_term(A,overlap(C,B)).

/*prolog alternative*/
overlap([(X1,Y1),(X2,Y2)],[(X3,Y3),(X4,Y4)]):-
       X1 =< X4, X3 =< X2, Y1 =< Y4, Y3 =< Y4.

x(Out) :-
        tell(Out),
        x(A,B),
        writeln((A,B)),
        fail.
x(_) :-
        told.
