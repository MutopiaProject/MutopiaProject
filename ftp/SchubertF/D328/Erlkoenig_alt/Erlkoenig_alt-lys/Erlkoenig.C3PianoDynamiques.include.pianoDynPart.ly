%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           C3. PIANO: Dynamiques pour la sortie Partition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DYNAMIQUES COMMUNES

pianoDynPart = {
 \override DynamicTextSpanner #'dash-period = #-1.0

%1-5
 s1\f
 s1*4
%6-12
 s2.\cr \times 2/3 { s4 s8\! }
 s2.\decr \times 2/3 { s4 s8\! }
 s1*5
%13-24
 \dynamD s1\pp  s1*11
%25-26
 \pinceD s4\decr \times 2/3 { s4 s8\! } s2
 s1
%27-28
 \pinceD s4\decr \times 2/3 { s4 s8\! } s2
 s1
%29-31
 \pinceD s4\decr \times 2/3 { s4 s8\! } s2
 s1*2
%32-34
 \dynamDB s1\f  s1*2
%35-37
 \dynamD s1\pp  s1*2
%38-43
 \cresDDDD s2\cr s2\!
 s1
 s1\f
 s1-\ppAdLib
 s1*2
%44-47
 \pinceD s2.\decr \times 2/3 { s4 s8\! }
 \dynamD s1\mf
 \dynamD s1\p
 s1
%48-55
 \dynamD s1\mf
 s1*7
%56-57
 s2 \dimTextDecresc s4\decr s4\!
 s1
%58-71
 \dynamD s1\pp
 s1*13
%72-75
 s2 s2\f
 s1*3
%76-77
 s2 s2\p
 s1
%78-80
 \dimTextDecresc s2\decr s2\!
 \pinceDD s2.\cr \times 2/3 { s8 s8\! s8 }
 s4\decr \times 2/3 { s4 s8\! } s2
%81-84
 s1*4
%85
 \pinceDD s2.\cr \times 2/3 { s8 s8\! s8 }
 s2.\decr \dynamD s4\!\ppp
%87-95
 s1*9
%96-97
 s2 \times 2/3 { s8 s4\f\decr s4 s8\! }
 s1
%98-102
 s1*5
%103-105
 \dimTextDecresc s2\decr s2\!
 s4 s2\cr \times 2/3 { s4 s8\! }
 s4\decr \times 2/3 { s4 s8\! } s2
 s1*2
%108-111
 \pinceD s4\decr \times 2/3 { s4 s8\! } s2
 s1
 \cresDDDD s2\cr s2\!
 s1
%112-114
 \dynamD \pinceD s2\ff\decr s4 \times 2/3 { s4 s8\! }
 s1*2
%115-122
 \dynamD s1\p
 s1
 \dynamD s1\pp
 s1*5
%123-127
 \dynamD \pinceD s2\fff\decr s8 s4.\!
 s1*4
%128-130
 s2\sf s2\sf
 s2\sf s2\sf
 s2\sf s2\sf
%131-134
 \dynamG s1\f
 s1*3
%135-138
 s2 \cresD s4\cr s4\!
 s1*3
%139-140
 s2\decr \times 2/3 { s4 s8\! } s4
 \dynamD s1\ff
%141-144
 s2 s2\cr
 s2. \times 2/3 { s4 s8\! }
 s1\sf
 s1\sf
%145-148
 s2.\fp\decr \times 2/3 { s4 s8\! }
 \dynamD s1\pp
 s8 s4\p s8 s4 s8\f s8
 s1
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% DYNAMIQUES SUPPLEMENTAIRES POUR LA PORTEE DU BAS
pianoBasDynPart = {
%1
 s1
 s1\f
%3-14
 s1*12
%15-18
 s2 \pinceH s4\decr \times 2/3 { s4 s8\! }
 s1
 s2 \pinceH s4\decr \times 2/3 { s4 s8\! }
 s1
%19-49
 s1*31
%50-53
 \pinceMontante \pinceDDDD s4\decr s4\! s2
 s1*3
%54-71
 s4\decr \times 2/3 { s4 s8\! } s2
 s1*17
%72-75
 s2. \pinceD  \times 2/3 { s4\decr s8\! }
 s1
 s2. \pinceD s8\decr s8
 s4\! s4 s2
%76-148
 s1*73
}

