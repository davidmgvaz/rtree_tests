:- ['../data/roads.yap'].

:- udi(utility(-,rtree)).
:- ['../data/utility.yap'].

x(ID1,ID2) :- 
        roads(ID1,R1),
        R2 && R1,
        utility(ID2,R2).
