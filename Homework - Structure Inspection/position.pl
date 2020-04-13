position(Term,Term,1).

position(Subterm,Term,Position) :-
    subterm(Subterm,Term,Position,1).

subterm(_,[],[],_).

subterm(Subterm,[Subterm|Term],[Position|List],Position) :-
    Ind is Position+1,
    subterm(Subterm,Term,List,Ind).

subterm(Subterm,[X|Term],List,Position) :-
    dif(X,Subterm),
    Ind is Position+1,
    subterm(Subterm,Term,List,Ind).
