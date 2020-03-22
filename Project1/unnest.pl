
unnest_v1([],[]).
%Unnests head and tail from each list and adds them to new list
unnest_v1([X|Xs], L) :-
    unnest_v1(X, Z),
    unnest_v1(Xs, Zs),
    append(Z, Zs, L).
unnest_v1(L, [L]).


%Append function
append([], Ys, Ys).

append([X|Xs], Ys, [X|Zs]) :-
    append(Xs, Ys, Zs).


%Instantiates accumulator
unnest_v2(Xs, Ys) :-
    unnest_v2(Xs, [], Ys).
%Base
unnest_v2([], Acc, Acc).
%Unnests tail of list
unnest_v2([X|Xs], Acc, Zs) :-
    unnest_v2(Xs, Acc, Ys),
    unnest_v2(X, Ys, Zs).
%Checks for non-list
unnest_v2(X, Acc, [X|Acc]) :-
    X \= [],
    X \= [_|_].





