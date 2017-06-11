casilla(11).
casilla(12).
casilla(13).
casilla(14).
casilla(21).
casilla(22).
casilla(23).
casilla(24).
casilla(31).
casilla(32).
casilla(33).
casilla(34).
casilla(41).
casilla(42).
casilla(43).
casilla(44).
%A es la casilla donde está el wumpus y B son las casillas con edor
wumpus(A,B):-casilla(B),dif(A,B),(B is A+1;B is A-1;B is A+10;B is A-10).

% A es una casilla con hedor y B es la casilla donde está el wumpus
hedor(A,B):-casilla(B),dif(A,B),(B is A+1;B is A-1;B is A+10;B is A-10).
