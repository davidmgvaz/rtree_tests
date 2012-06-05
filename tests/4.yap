:- ['../data/roads.yap'].

:- udi(rrlines(-,rtree)).
:- ['../data/rrlines.yap'].

x(ID1,ID2) :- 
        roads(ID1,R1),
        R2 && R1,
        rrlines(ID2,R2).
