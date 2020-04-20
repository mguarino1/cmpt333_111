month(january,31).
month(february,28).
month(march,31).
month(april,30).
month(may,31).
month(june,30).
month(july,31).
month(august,31).
month(september,30).
month(october,31).
month(november,30).
month(december,31).

next_month(january,february).
next_month(february,march).
next_month(march,april).
next_month(april,may).
next_month(may,june).
next_month(june,july).
next_month(july,august).
next_month(august,september).
next_month(september,october).
next_month(october,november).
next_month(november,december).
next_month(december,january).

interval(month(A,B),month(C,D),X) :-
    A=C,
    B=D,
    X is 0.

interval(month(A,B),month(C,D),X) :-
    A=C,
    B\=D,
    X is D-B.

interval(month(A,B),month(C,D),X) :-
    A\=C,
    month(A,Days),
    Acc is Days-B+D,
    interval(month(A,B),month(C,D),Acc,X).

interval(month(A,B),month(C,D),Acc,X) :-
    next_month(A,NextMonth),
    NextMonth=C,
    X = Acc;
    next_month(A,NextMonth),
    month(NextMonth,NextDays),
    NewAcc is Acc+NextDays,
    interval(month(NextMonth,B),month(C,D),NewAcc,X).



