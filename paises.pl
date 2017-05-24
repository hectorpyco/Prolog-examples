%adaptado de Gustavo DeJean :
% https://www.youtube.com/user/gustavoDejean
%trabajo en clase con alumnos 5to año 2017

%Paises
es_un_pais(paraguay).
es_un_pais(argentina).
es_un_pais(brasil).
es_un_pais(bolivia).
es_un_pais(chile).
es_un_pais(perú).
es_un_pais(uruguay).

%Paises que limitan
limita_con(paraguay, brasil).
limita_con(paraguay, argentina).
limita_con(paraguay, bolivia).
limita_con(argentina, chile).
limita_con(argentina, brasil).
limita_con(argentina, bolivia).
limita_con(argentina, uruguay).
limita_con(chile, peru).
limita_con(chile, bolivia).
limita_con(brasil, bolivia).
limita_con(brasil, peru).
limita_con(brasil, uruguay).
limita_con(bolivia, peru).


% LISTAR TODOS:
% limita_con(X, Y), write(X), write(' '), write(Y), nl, fail.


%Regla limitrofes
limitrofes(X,Y):- limita_con(X,Y); %OR
                limita_con(Y,X).

% listar limitrofes:
% limitrofes(X,Y), write(X), write('-'), write(Y), nl, fail.
% listar limitrofes con un pais:
% limitrofes(paraguay,X),write(X),nl,fail.

%Superficie paises
superficie_pais(brasil, 8547404).
superficie_pais(argentina, 3402538).
superficie_pais(paraguay, 406752).
superficie_pais(uruguay, 176215).
%pais pequeño
pais_pequeño(X):-superficie_pais(X,Y), %AND
		Y < 1000000.
%paises translimitrofes(ej: brasil y chile)
translimitrofes(X,Z,Y):-limitrofes(X,Z),
		      limitrofes(Z,Y),
		      dif(X,Y),
                      not(limitrofes(Y,X)).
% Listar translimitrofes con chile, aclarar a traves de cual pais ocurre
% la condición:
% translimitrofes(chile,Z,Y),write(Y),write(' a traves de
% '),write(Z),nl,fail.

%PIB
pib(paraguay,1000).
pib(argentina,5000).
pib(bolivia,1000).
pib(brasil,6000).
pib(peru,1000).
pib(chile,4000).
pib(uruguay,2000).

%paises ricos y pobres

pobre(X):- pib(X,Y), Y < 3000.
rico(X):- pib(X,Y), Y > 2999.


















