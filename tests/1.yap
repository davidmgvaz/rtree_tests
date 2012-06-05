:- udi(roads(-,rtree)).
:- ['../data/roads.yap'].

%base.dat dados Yap_export_term tabelas
%base.idx indices
%base.1.rtree
%base.3.btree

x(ID1,ID2) :- 
        roads(ID1,R1),
        R2 && R1,
        roads(ID2,R2).
