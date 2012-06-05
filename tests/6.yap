:- ['../data/cas.yap'].

:- udi(car(-,rtree)).
:- ['../data/car.yap'].

x(ID1,ID2) :- 
        cas(ID1,R1),
        R2 && R1,
        car(ID2,R2).
