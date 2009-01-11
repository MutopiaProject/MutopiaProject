%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C4. PIANO: Dynamiques pour la sortie Midi
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DYNAMIQUES POUR LA PORTEE DU HAUT

pianoHautDynMidi = {

%1-5
 s1\f s1*4
%6-11
 s1\cr s1\!\decr s1\!\f s1*4
%13-14
 s1\pp s1
%15-24
 s1*10
%25-34
 s2\mp\decr s2\!\pp
 s1
 s2\mp\decr s2\!\pp
 s1
 s2\mp\decr s2\!\pp
 s1
%31-34
 s1
 s1\f
 s1*2
%35-37
 s1\pp s1 s1
%38-43
 s1\cr
 s1
 s1\!\f
 s1
 s1*2
%44-48
 s1\decr
 s1\!\mf
 s1\p
 s1
 s1\mf
%49-55
 s1*7
%56-57
 s2 s2\decr
 s1
%58-71
 s1\!\pp
 s1*13
%72-77
 s2 s2\f
 s1*3
 s2 s2\p
 s1
%78-80
 s1\decr
 s1\!\pp\cr
 s2\!\mf\decr s2\!\p
%81-84
 s1*4
%85
 s1\cr
 s2.\!\decr s4\!\ppp
%87-95
 s1*9
%96-97
 s2 s8 s4.\f\decr
 s1\!\mp
%98-102
 s1*5
%103-107
 s2\decr s2\!\pp
 s4 s2.\cr
 s2\!\mf\decr s2\!\p
 s1*2
%108-114
 s2\decr s2\!\pp
 s1
 s1\cr
 s1
 s1\!\ff\decr
 s1\!\f
 s1
%115-122
 s1\p
 s1
 s1\pp
 s1*5
%123-127
 s2.\fff\decr s4\!\f
 s1*4
%128-131
 s4\sf s4\f s4\sf s4\f
 s4\sf s4\f s4\sf s4\f
 s4\sf s4\f s4\sf s4\f
 s1
%132-134
 s1*3
%135-138
 s2 s2\cr
 s1*3
%139-140
 s2.\!\ff\decr s4\!\f
 s1
%141-148
 s2 s2\cr
 s2.\!\ff s4
 s4\sf s2.\f
 s4\sf s2.\f
 s8\ff s8\f s2.\decr
 s1\!\pp
 s8 s4\p s4. s8\f s8
 s1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DYNAMIQUES POUR LA PORTEE DU BAS

pianoBasDynMidi = {

%1-5
 s1\f s1*4
%6-11
 s1\cr s1\!\decr s1\!\f s1*4
%13-14
 s1\p s1
%15-24
 s2\cr s2\!\mf\decr
 s2\!\p s2
 s2\cr s2\!\mf\decr
 s2\!\p s2
 s1*6
%25-34
 s2\mp\decr s2\!\pp
 s1
 s2\mp\decr s2\!\pp
 s1
 s2\mp\decr s2\!\pp
 s1
%31-34
 s1
 s1\f
 s1*2
%35-37
 s1\pp s1 s1
%38-43
 s1\cr
 s1
 s1\!\f
 s1
 s1*2
%44-48
 s1\decr
 s1\!\mf
 s1\p
 s1
 s1\f
%49-55
 s1
 s2\decr s2\!\p
 s1\f
 s1
 s1
 s2\decr s2\!\p
 s1\f
%56-57
 s2 s2\decr
 s1
%58-71
 s1\!\pp
 s1*13
%72-77
 s2 s2\f\decr
 s2\!\mp s2\f
 s2 s2\decr
 s2\!\mp s2\f
 s2 s2\p
 s1
%78-80
 s1\decr
 s1\!\pp\cr
 s2\!\decr s2\!\p
%81-84
 s1*4
%85
 s1\cr
 s2.\!\decr s4\!\ppp
%87-95
 s1*9
%96-97
 s2 s8 s4.\f\decr
 s1\!\mp
%98-102
 s1*5
%103-107
 s2\decr s2\!\p
 s4 s2.\cr
 s2\!\decr s2\!\p
 s1*2
%108-114
 s2\decr s2\!\pp
 s1
 s1\cr
 s1
 s1\!\ff\decr
 s1\!\f
 s1
%115-122
 s1\p
 s1
 s1\pp
 s1*5
%123-127
 s2.\fff\decr s4\!\f
 s1*4
%128-131
 s4\sf s4\f s4\sf s4\f
 s4\sf s4\f s4\sf s4\f
 s4\sf s4\f s4\sf s4\f
 s1
%132-134
 s1*3
%135-138
 s2 s2\cr
 s1*3
%139-140
 s2.\!\ff\decr s4\!\f
 s1
%141-148
 s2 s2\cr
 s2.\!\ff s4
 s4\sf s2.\f
 s4\sf s2.\f
 s8\ff s8\f s2.\decr
 s1\!\pp
 s8 s4\p s8 s4\fermata s8\f s8
 s1
}

