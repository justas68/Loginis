% Justas Tvarijonas programų sistemos 4 kursas, 3 grupė
% 1.1; 4

kelias(vilnius, kaunas, 100).
kelias(kaunas, klaipeda, 200).
kelias(klaipeda, palanga, 20).
kelias(vilnius, panevezys, 120).
kelias(panevezys, subacius, 30).
kelias(subacius, kupiskis, 18).
kelias(vilnius, kupiskis, 160).
kelias(kupiskis, rokiskis, 40).
kelias(rokiskis, panevezys, 80).
kelias(vilnius, siauliai, 186).

maziau(Skaicius1, Skaicius2) :-
  Skaicius1 < Skaicius2.

nuvaziuos(Miestas1, Miestas2, MaxAtstumas):-
 MaxAtstumas > 0, 
 ((kelias(Miestas1, Miestas2, Atstumas), MaxAtstumas - Atstumas > 0);
 (kelias(Miestas1, TarpinisMiestas, TarpinisAtstumas),
 nuvaziuos(TarpinisMiestas, Miestas2, MaxAtstumas - TarpinisAtstumas))).

% kelias(vilnius, palanga, 330).
% kelias(kupiskis, panevezys, 121).
% kelias(vilnius, panevezys, Atstumas).

f(1, 1).
f(0, 0).
f(N, F):- N1 is N-1, N2 is N-2, f(N1, F1), f(N2, F2),  F is F1+F2.

% f(5, X).