
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B32a. PIANO DYNAMIQUES POUR LA PARTITION
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
dynPartPianoA = {
%--- 0
\partial 16 s16\p
%--- 1
s2.*2
\DYNEXO #'(1.5 . 0) \PINEXO #'(1 . 0) s2\fp\decr s8. s16\!
s2.*3
%--- 7
s2.\p
s2.*4
%--- 12
s2.
s8 s8-\CRESCM s2
s2.
\DYNEXO #'(1 . 0) s2.\p
s2.
%--- 17
s8 s4\cr s4\!\decr s16 s16\!
s2.*4
%--- 22
s2.
s8 s4.-\DECRESCM s4
s2.*2
s2.-\CRESCM
%--- 27
s4 s4\cr s8 s8\!
s4\decr s8. s16\! s4
s2.
s8 s4.\cr s8. s16\!
s2\f\decr s8. s16\!
%--- 32
s2.\p
s2 s4-\DECRESCM
s2 s8 s8\pp
s2.*2
%--- 37
s2.*2
s2.\p
%--- 40
s2.*11
%--- 51
\DYNEXO #'(1.5 . 0) s2.\pp
%--- 52
s2.*3
s2.\f
s2.
%--- 57
\DYNEXO #'(1.5 . 0) s4\mf \times 4/6 { s4\cr s8\! s4\decr s8\! }
s2.
\DYNEXO #'(1 . 0) s2.\p
s2.
\DYNEXO #'(1 . 0) s2.\p
%--- 62
s2.*2
s2.\f
s2.
%--- 66
s4 \PINEXO #'(-1 . 0) s16 s4.\cr s16\!
s4..\decr s16\! s4
s2.\pp
s2.
%--- 70
s2.\pp
s2.*3
%--- 74
s2.*2
s2.\f
s2.
%--- 78
s4.. \PINEXO #'(1.5 . 0) s8.\cr s16\! s16
s4..\decr s16\! s4
s2.\p
s2 s8.\cr s16\!
%--- 82
s4..\fp\decr s16\! s4
s2.\pp
s2.*3
%--- 87
s2.*2
s4 s4..\cr s16\!
s16 s4.\decr s16\! s4
s2.
%--- 92
s2.*4
s2.\p
%--- 97
s2.*10
%--- 107
s2.
\DYNEXO #'(1.5 . 0) s2.\pp
s2.*3
%--- 112
s4-\CRESCM s4..\cr s16\!
s2\f\decr s8. s16\!
s8.\f\decr s16\! s2
s4. s4.\p
s2.-\DECRESCM
%--- 117
\DYNEXO #'(1.5 . 0) s2.\pp
s2.*4
%--- 122
s2.*2
s2\cr s8. s16\!
s2\decr s8 s8\!
s2.
}


%%%%%%%%%%%%%%%%%%%% PARTIE B
dynPartPianoB = {
%--- 127-148
\DYNEXO #'(1.5 . -1) s2.\pp
s2.*21
%--- 149
\DYNEXO #'(1.5 . 0) s2.\pp
s2.
s2.-\DECRESCM
s2.*3
%--- 155
s2.*2
s4. s4.-\CRESCM
s8 s2\cr s8\!
s2\decr s8 s8\!
s2.\p
%--- 161
\DYNEXO #'(1.5 . 0) s2.\pp
s2.*5
s8 s2\cr s8
%--- 168
s2 s8 s8\!
s2.\fp\decr
s4 s8\! s4.
s8 s4.\decr s8\! s8
s2.*3
%--- 175
s8 s2\cr s8
s2 s8 s8\!
\DYNEXO #'(1 . 0) \PINEXO #'(0.5 . 0) s2\fp\decr s8 s8\!
s2.
s8 s4.\decr s8\! s8
s2.
s8 s4.\decr s8\! s8
%--- 182
s2.
s2.\p
s2.*4
s4\cr s8\! s4\decr s8\! 
%--- 189
s2.*3
s8 s2-\CRESCM s8
s8 s2\cr s8\!
s2\f\decr s8 s8\!
%--- 195
s2.\p
s2.*3
s8 s2\cr s8\!
s8 s4\decr s8\! s4
%--- 201
s2.*11
%--- 212
s8 s2\cr s8\!
s8 s2\decr s8
%--- 214
s8 s8\! s2
s2.*3
s1*2
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynPartPianoC = {
%--- 219
s2\pp
s2*23
%--- 243
\PINEXO #'(1.5 . 0) s8\cr s8\! s16 s16\decr s8\!
s2
s16 s16\cr s8\! s8\decr s8\!
s2
\PINEXO #'(1.5 . 0) s8\cr s8\! s16 s16\decr s8\!
%--- 248
s2
s8\cr s8\! s8\decr s8\!
s2*8
%--- 258
s8 s4\cr s8\!
\DYNEXO #'(1.5 . 0) s2\mf
s2*2
%--- 262
s2
s4\mf-\SFORZATO s4-\SFORZATO 
s2-\SFORZATO 
s4-\SFORZATO-\CRESCM s4-\SFORZATO 
s2-\SFORZATO
s4.\f\decr s8\!
%--- 268
s2
s2\p
s2*2
s4.\cr s8\!
s8 s4\decr s8\!
%--- 274
s2
s4\mf-\SFORZATO s4-\SFORZATO 
s2-\SFORZATO 
s4-\SFORZATO s4-\SFORZATO 
s2-\SFORZATO
s2*2
%--- 281
s2\p
s2*2
s8 s4\cr s8\!
\DYNEXO #'(1 . 0) s8.\f s4\decr s16
s8\! s4.
%--- 287
s2
\TSCREXO #'(-0.5 . 3) s2-\DECRESCM
\DYNEXO #'(1 . 0) s2\p
s2
\DYNEXO #'(1 . 0) s2\pp
s2*2
%--- 294
s2*5
s16 s16\cr s8\! s16 \PINEXO #'(-1 . 0) s16\decr s8\!
s2
s8\cr s8\! s8\decr s8\!
%--- 302
s2*5
\DYNEXO #'(1 . 0) s2\mf
s2*2
%--- 310
s2
\DYNEXO #'(1 . 0) s2\f
s2*2
\DYNEXO #'(1 . 0) s2\p
s2*2
%--- 317
s2*2
\DYNEXO #'(1 . 0) s8\f s4\cr s8\!
s4\decr s8\! s8
s2*2
%--- 323
\DYNEXO #'(1 . 0) s2\p
s2*3
\DYNEXO #'(1 . 0) s2\f
s2
%--- 329
s2
s4 s4\mf
s2
s4 \TSCREXO #'(-0.5 . 1) s4-\CRESCM
s2
s4 s8\cr s8\!
%--- 335
s2\ff
s2*6
%--- 342
s2
\DYNEXO #'(1.5 . 0) s2\fz
s2*6
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PARTITION
dynPartPiano = { \dynPartPianoA \dynPartPianoB \dynPartPianoC }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                           B32b. PIANO DYNAMIQUES POUR LE MIDI
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%%%%%% PARTIE A
dynMidiPianoAA = {
%--- 0
\partial 16 s16\mf
%--- 1
s2.*2
s2.\mf\decr
s4 s8\!\p s8 s4
s2.*2
%--- 7
s2.\p
s2.*4
%--- 12
s2.
s8 s8\cr s2
s2 s4\!\mf
s2.\p
s2.
%--- 17
s8 s4\cr s4\!\mf\decr s16 s16\!\p
s2.*4
%--- 22
s2.
s2.\decr
s2.
s2.\!\pp
s2.\cr
%--- 27
s2 s8. s16\!\mf
s4\decr s8. s16\!\pp s4
s2.
s2.\cr
s2\!\f\decr s8. s16\!\p
%--- 32
s2.\p
s2 s4\decr
s2 s8 s8\!\pp
s2.*2
%--- 37
s2.*2
s2.\p
s2.*2
%--- 42
s2.*5
%--- 47
s2.*2
}

%%%%%%%%%%%%%%%%%%%% HAUT
dynMidiPianoAB = {
%--- 49
s2.\fff
s2.
}

%%%%%%%%%%%%%%%%%%%% BAS
dynMidiPianoAC = {
%--- 49
s2.*2
}

%%%%%%%%%%%%%%%%%%%% suite
dynMidiPianoAD = {
%--- 51
s2.\pp
%--- 52
s2.*3
s2.\f
s2.
%--- 57
s4\mf \times 4/6 { s4\cr s8\!\f s4\decr s8\!\mf }
s2.
s2.\p
s2.
}

%%%%%%%%%%%%%%%%%%%% HAUT
dynMidiPianoAE = {
%--- 61
s2.\fff
s2.*2
}

%%%%%%%%%%%%%%%%%%%% BAS
dynMidiPianoAF = {
%--- 61
s2.*3
}

%%%%%%%%%%%%%%%%%%%% suite
dynMidiPianoAG = {
%--- 64
s2.\f
s2.
%--- 66
s4 s4..\cr s16\!\ff
s2.\decr
s2.\!\pp
s2.
%--- 70
s2.\pp
s2.*3
%--- 74
s2.*2
s2.\f
s2.
%--- 78
s4 s4..\cr s16\!\ff
s2.\decr
s2.\!\p
s2 s4\cr
%--- 82
s2.\f\decr
s2.\!\pp
s2.*3
%--- 87
s2.*2
s2.\cr
s4..\!\mf\decr s16\!\pp s4
s2.
%--- 92
s2.*4
s2.\p
%--- 97
s2.*9
}

%%%%%%%%%%%%%%%%%%%% HAUT
dynMidiPianoAH = {
%--- 106
s2.\fff
s2.
}

%%%%%%%%%%%%%%%%%%%% BAS
dynMidiPianoAI = {
%--- 106
s2.*2
}

%%%%%%%%%%%%%%%%%%%% suite
dynMidiPianoAJ = {
%--- 108
s2.\pp
s2.*3
%--- 112
s2.\cr
s2\!\f\decr s8 s8\!\mp
}

%%%%%%%%%%%%%%%%%%%% HAUT
dynMidiPianoAK = {
%--- 114-116
s8.\fff\decr s16\!\ff s2
s4. s4.\f
s2.\decr
%--- 117
s2.\!\mp
%--- 118
s2.*2
%--- 120
s2.\ff
s2.
%--- 122
s2.*2
s2.\cr
s2.\!\fff\decr
s2.\!\ff
}

%%%%%%%%%%%%%%%%%%%% BAS
dynMidiPianoAL = {
%--- 114-116
s8.\f\decr s16\!\mp s2
s4. s4.\p
s2.\decr
%--- 117
s2.\!\pp
%--- 118
s2.*4
%--- 122
s2.*2
s2.\cr
s2.\!\mf\decr
s2.\!\p
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PIANO A
dynMidiPianoHautA = {
 \dynMidiPianoAA \dynMidiPianoAB \dynMidiPianoAD \dynMidiPianoAE \dynMidiPianoAG \dynMidiPianoAH \dynMidiPianoAJ \dynMidiPianoAK
}

dynMidiPianoBasA = {
 \dynMidiPianoAA \dynMidiPianoAC \dynMidiPianoAD \dynMidiPianoAF \dynMidiPianoAG \dynMidiPianoAI \dynMidiPianoAJ \dynMidiPianoAL
}

%%%%%%%%%%%%%%%%%%%% suite
dynMidiPianoB = {
%--- 127-148
s2.\p
s2.*21
%--- 149
s2.\p
s2.
s2.\decr
s2.*2
s2.\!\pp
%--- 155
s2.*2
s2 s4\cr
s2.
s2.\!\f\decr
s2.\!\p
%--- 161
s2.\pp
s2.*5
s8 s2\cr s8
%--- 168
s2.
s2.\!\f\decr
s4 s8\!\p s4.
s8 s4.\decr s8\!\pp s8
s2.*3
%--- 175
s8 s2\cr s8
s2.
s2\!\f\decr s8 s8\!\mp
s2.
s8 s4.\decr s8\!\p s8
s2.
s8 s4.\decr s8\!\pp s8
%--- 182
s2.
s2.\p
s2.*4
s4\cr s8\!\mf s4\decr s8\!\p 
%--- 189
s2.*3
s8 s2\cr s8
s2.
s2.\!\f\decr
%--- 195
s2.\!\p
s2.*3
s8 s2\cr s8\!\mf
s8 s4\decr s8\!\p s4
%--- 201
s2.*11
%--- 212
s8 s2\cr s8\!\mf
s8 s2\decr s8
%--- 214
s8 s8\!\p s2
s2.*3
\appoggiatura s8 s1*2
}


%%%%%%%%%%%%%%%%%%%% PARTIE C
dynMidiPianoCA = {
%--- 219
s2\pp
s2*23
%--- 243
s8\cr s8\!\mf s8\decr s8\!\pp
s2
s8\cr s8\!\mf s8\decr s8\!\pp
s2
s8\cr s8\!\mf s8\decr s8\!\pp
%--- 248
s2
s8\cr s8\!\mf s8\decr s8\!\pp
s2*8
}

%%%%%%%%%%%%%%%%%%%% HAUT
dynMidiPianoCB = {
%--- 258
s8 s4.\cr
s2\!\ff
s2*3
}

%%%%%%%%%%%%%%%%%%%% BAS
dynMidiPianoCC = {
%--- 258
s8 s4.\cr
s2\!\mf
s2*3
}


%%%%%%%%%%%%%%%%%%%% suite
dynMidiPianoCD = {
%--- 263
s4\mf s4 
s2 
s2\cr
s2
s4.\!\f\decr s8\!\mf
%--- 268
s2
s2\p
s2*2
s4.\cr s8\!\mf
s4.\decr s8\!\p
%--- 274
s2
s4\mf s4 
s2 
s4 s4 
s2
s2*2
%--- 281
s2\p
s2*2
s8 s4.\cr
s8\!\f s8. s16\decr s8
s8\!\mp s4.
%--- 287
s2
s2\decr
s2\!\p
s2
s2\pp
s2*2
%--- 294
s2*5
s8\cr s8\!\mf s8\decr s8\!\pp
s2
s8\cr s8\!\mf s8\decr s8\!\pp
%--- 302
s2*5
s2\mf
s2*2
%--- 310
s2
s2\f
s2*2
s2\p
s2*2
%--- 317
s2*2
s8\f s4.\cr
s4\!\ff\decr s8\!\f s8
s2*2
%--- 323
s2\p
s2*3
s2\f
s2
%--- 329
s2
s2\mf
s2
s4 s4\cr
s2
s2
%--- 335
s2\!\ff
s2*6
%--- 342
s2
s4\fff s4\ff
s2*6
}

%%%%%%%%%%%%%%%%%%%% SYNTHESE PIANO C
dynMidiPianoHautC = {
 \dynMidiPianoCA \dynMidiPianoCB \dynMidiPianoCD
}

dynMidiPianoBasC = {
 \dynMidiPianoCA \dynMidiPianoCC \dynMidiPianoCD
}


%%%%%%%%%%%%%%%%%%%% SYNTHESES MIDI
dynMidiPianoHaut = { \dynMidiPianoHautA \dynMidiPianoB \dynMidiPianoHautC }
dynMidiPianoBas  = { \dynMidiPianoBasA  \dynMidiPianoB \dynMidiPianoBasC }
