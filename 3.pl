% Justas Tvarijonas programų sistemos 4 kursas, 3 grupė
% 1.12; 2.3; 3.2; 4.1

%1.12
skirk_teig_neig([], [], []).
skirk_teig_neig([Skaicius|Likutis], [Skaicius|TeigiamuLikutis], R2):- Skaicius > 0, skirk_teig_neig(Likutis, TeigiamuLikutis, R2).
skirk_teig_neig([Skaicius|Likutis], R1, [Skaicius|NeigiamuLikutis]):- Skaicius < 0, skirk_teig_neig(Likutis, R1, NeigiamuLikutis).
skirk_teig_neig([Skaicius|Likutis], R1, R2):- Skaicius = 0, skirk_teig_neig(Likutis, R1, R2).

% 2.3
% dubl_trigub([-3,2,0],R).
dubl_trigub([],[]).
dubl_trigub([Skaicius|Likutis], [Skaicius|[Skaicius|Likutis2]]) :- Skaicius > 0, dubl_trigub(Likutis, Likutis2).
dubl_trigub([Skaicius|Likutis], [Skaicius|[Skaicius|[Skaicius|Likutis2]]]) :- Skaicius =< 0, dubl_trigub(Likutis, Likutis2).

% 3.2
% bendri([a,b,c,d],[d,b,e],R).
priklauso(Skaicius, [Skaicius|_]).
priklauso(Skaicius,[_|Tail]):-
  priklauso(Skaicius, Tail).

bendri([], _, []).
bendri([Skaicius|Likutis], Sarasas, [Skaicius|Likutis2]) :- priklauso(Skaicius, Sarasas), bendri(Likutis, Sarasas, Likutis2).
bendri([Skaicius|Likutis], Sarasas, Bendri) :- not(priklauso(Skaicius, Sarasas)), bendri(Likutis, Sarasas, Bendri).

% 4.1
% des_skaic([1,9,8,5],K).
des_skaic([], 0).
des_skaic([Skaicius|Likutis], X) :- 
  length(Likutis, Ilgis), 
  des_skaic(Likutis, PilnasSkaicius),
  X is PilnasSkaicius + 10 ** Ilgis * Skaicius.
