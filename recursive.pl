child(anne,bridget). 
child(bridget,caroline). 
child(caroline,donna). 
child(donna,emily).

descend(X,Y) :- child(X,Y).
descend(X,Y) :- child(X,Z),
	     	descend(Z,Y).


natural(0).
natural(succ(X)) :- natural(X).

add(0,Y,Y).
add(succ(X),Y,succ(Z)) :- add(X,Y,Z).
