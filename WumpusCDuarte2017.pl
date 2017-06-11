casilla(1,1).
casilla(1,2).
casilla(1,3).
casilla(1,4).

casilla(2,1).
casilla(2,2).
casilla(2,3).
casilla(2,4).

casilla(3,1).
casilla(3,2).
casilla(3,3).
casilla(3,4).

casilla(4,1).
casilla(4,2).
casilla(4,3).
casilla(4,4).

wumpus(3,3).

hedor(X,Y):-(((Z is Y-1),wumpus(X,Z));((Z is Y+1),wumpus(X,Z));((Z is X-1),wumpus(Z,Y));((Z is X+1),wumpus(Z,Y))),casilla(X,Y).
d(X,Y):- X \== Y.



dondeWumpus2(X,Y,Z,W):-hedor(X,Y),(((Z is X, W is Y+1));((Z is X, W is Y-1));((Z is Y, W is X+1));((Z is Y, W is X-1))).
% HACER E
%?- dondeWumpus2(2,3,X,Y),write('Puede Haber un WUMPUS en la Columna '),write(X),write(', Fila '),write(Y),nl,fail.