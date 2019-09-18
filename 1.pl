% Justas Tvarijonas programų sistemos 4 kursas, 3 grupė
% 4; 17; 36; 39

asmuo(justas, vyr,  22, zaidimai).
asmuo(ruta, mot, 26, dainavimas).
asmuo(audrius, vyr, 24, zaidimai).
asmuo(ausra, mot, 51, mokymas).
asmuo(arnoldas, vyr, 50, vaidyba).
asmuo(tomas, vyr, 24, zaidimai).
asmuo(remigijus, vyr, 22, zaidimai).
asmuo(mindaugas, vyr, 49, zvejyba).
asmuo(vita, mot, 48, grybavimas).
asmuo(romas, vyr, 40, sodyba).
asmuo(ramune, mot, 38, teatras).
asmuo(rokas, vyr, 4, zaidimai).
asmuo(jogaile, mot, 7, mosklai).
asmuo(greta, mot, 23, medicina).
asmuo(vale, mot, 78, sachmatai).
asmuo(vladas, vyr, 84, fizika).
asmuo(gintautas, vyr, 47, drozinejimas).
asmuo(violeta, mot, 48, apsipirkimai).
asmuo(aivaras, vyr, 20, ukininkavimas).
asmuo(aida, mot, 14, sokiai).


mama(ausra, justas).
mama(ausra, ruta).
mama(ausra, audrius).
mama(vale, ausra).
mama(vale, gintautas).
mama(vale, romas).
mama(vale, mindaugas).
mama(vita, tomas).
mama(vita, remigijus).
mama(violeta, aivaras).
mama(violeta, aida).

pora(arnoldas, ausra).
pora(gintautas, violeta).
pora(mindaugas, vita).
pora(romas, ramune).
pora(tomas, greta).
pora(vladas, vale).

tevasMama(Vaikas, TevasMama):-
  mama(TevasMama, Vaikas);
  pora(TevasMama, Mama),
  mama(Mama, Vaikas).


%4
sunus(Sunus, TevasMama):-
  asmuo(Sunus, vyr, _, _),
  tevasMama(Sunus, TevasMama).

%sunus(audrius, ausra).
%sunus(tomas, mindaugas).

%17
anuke(Anuke, SenelisSenele):-
  asmuo(Anuke, mot, _, _),
  tevasMama(Anuke, TevasMama), 
  tevasMama(TevasMama, SenelisSenele).

%anuke(ruta, vladas).
%anuke(ruta, vale).

%36
brolisSese(Vaikas, BrolisSese):-
  tevasMama(Vaikas, TevasMama),
  tevasMama(BrolisSese, TevasMama).

vidurinis(Vaikas) :-
  asmuo(Vaikas, _, Amzius1, _),
  (brolisSese(Vaikas, BrolisSese1),
  asmuo(BrolisSese1, _, Amzius2, _), Amzius1 > Amzius2),
  (brolisSese(Vaikas, BrolisSese2),
  asmuo(BrolisSese2, _, Amzius3, _), Amzius1 < Amzius3).

%vidurinis(audrius).
%viduinis(mindaugas).
%39
panasusAmzius(Amzius1, Amzius2):-
  Amzius1 - Amzius2 < 4,
  Amzius1 - Amzius2 > -4.

trys_draugai(Draugas1, Draugas2, Draugas3):-
  asmuo(Draugas1, _, Amzius1, Pomegis1),
  asmuo(Draugas2, _, Amzius2, Pomegis2),
  asmuo(Draugas3, _, Amzius3, Pomegis3),
  Pomegis1 = Pomegis2, Pomegis2 = Pomegis3,
  panasusAmzius(Amzius1, Amzius2),
  panasusAmzius(Amzius1, Amzius3),
  panasusAmzius(Amzius2, Amzius3).

%trys_draugai(tomas, audrius, remigijus).

