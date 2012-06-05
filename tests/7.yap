:- ['../data/car.yap'].

:- udi(cas(-,rtree)).
:- ['../data/cas.yap'].

x(ID1,ID2) :- 
        car(ID1,R1),
        R2 && R1,
        cas(ID2,R2).
