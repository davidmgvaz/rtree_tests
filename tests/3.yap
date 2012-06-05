:- udi(roads(-,rtree)).
:- ['../data/roads.yap'].

:- ['../data/utility.yap'].

x(ID1,ID2) :- 
        utility(ID1,R1),
        R2 && R1,
        roads(ID2,R2).
