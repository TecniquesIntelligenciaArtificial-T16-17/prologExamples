append([],Y,Y).
append([A|X],Y,[A|Z]) :- append(X,Y,Z).

prefix(X,L) :- append(X,_,L).

sufix(X,L) :- append(_,X,L).


add_3_and_double(X,Y)  :-  Y  is  (X+3)*2.

len([],0). 
len([_|T],N)  :-  len(T,X),  N  is  X+1.

accLen([_|T],A,L) :- Anew is A+1, accLen(T,Anew,L).
accLen([],A,A).
leng(List,Length) :- accLen(List,0,Length).

accMax([H|T],A,M) :- 
    H =< A,
    accMax(T,A,M).

accMax([H|T],A,M) :-
    H > A,
    accMax(T,H,M).

accMax([],A,A).

max(List,M) :-
    List = [H|_],
    accMax(List,H,M).

/* 
 *    ineficient reverse
*/
naiverev([],[]). 
naiverev([H|T],R):-  naiverev(T,RevT),  append(RevT,[H],R).


/*
*   reverse with accumulator
*/
rev([H|T],A,R) :- rev(T,[H|A],R).
rev([],A,A).
