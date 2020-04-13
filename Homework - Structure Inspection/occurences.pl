occurences(Sub,Term,N) :-
    string_chars(Term,CTerms),
    bagof(t,subterm(Sub,CTerms),Ts),
    length(Ts,N).

subterm(X,X).
subterm(X,Term) :-
    compound(Term),
    arg(_,Term,Arg),
    subterm(X,Arg).

