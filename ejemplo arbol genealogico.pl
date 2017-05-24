%link: http://carrerasdecomputacion.zoomblog.com/archivo/2010/06/17/arbol-genealogico-en-Prolog.html
%version corregida.


hombre(carlos).
hombre(juan).
hombre(pedro).
hombre(pablo).
hombre(mateo).
hombre(andres).
hombre(edwin).

mujer(maria).
mujer(paula).
mujer(carla).
mujer(lorena).

padre(juan,carlos).
padre(carla,carlos).
padre(pablo,juan).
padre(mateo,juan).
padre(andres,pedro).
padre(edwin,andres).

madre(juan,maria).
madre(carla,maria).
madre(pablo,paula).
madre(mateo,paula).
madre(andres,carla).
madre(edwin,lorena).

esposo(maria,carlos).
esposo(paula,juan).
esposo(carla,pedro).
esposo(lorena,andres).

casados(X,Y):-esposo(X,Y);esposo(Y,X).
%?- casados(X,Y),write(X),write(' con '),write(Y),nl,fail.

hijo(A,B):-padre(B,A),hombre(B).
%?- hijo(carlos,V),write(V),nl,fail.
%?- hijo(juan,C),write(C),nl,fail.

hija(A,B):-padre(B,A),mujer(B).
%?- hija(carlos,X).
%
padres(A,B,C):-padre(A,B),madre(A,C).%metodo1:A es el hijo/a
%?- padres(carla,X,Y)
padres1(A,B,C):-padre(A,B),casados(B,C).%metodoB:A es el hijo/a
%?- padres1(mateo,X,Y).
%
abuelo(A,C):-padre(A,B),padre(B,C),hombre(C).
%?- abuelo(edwin,X).
%
abuelos(A,C,E):-abuelo(A,C),casados(C,E).%CyE son los abuelos
%?- abuelos(edwin,X,Y).
%
hermano(A,B):-padre(A,C),padre(B,C),dif(A,B),hombre(B).
%?- hermano(carla,H).
%
hermanO_A(A,B):-padre(A,C),padre(B,C),dif(A,B).%retorna hermano o hermana, metodo1

hermanoa(A,B):-madre(A,C),madre(B,C),dif(A,B).%retorna hermano o hermana, metodo2

suegro(A,C):-casados(A,B),padre(B,C),hombre(C).
suegros(A,C,E):-casados(A,B),padre(B,C),casados(C,E).%CyE son los suegros
suegros1(A,C,E):-suegro(A,C),casados(C,E).






