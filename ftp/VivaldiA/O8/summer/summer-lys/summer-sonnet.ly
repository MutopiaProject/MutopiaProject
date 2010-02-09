\version "2.12.3"
% Sotto dura Staggion dal Sole accesa
% Langue L'huom, langue 'l gregge, ed arde il Pino;
% Scioglie il Cucco la Voce, e tosto intesa
% Canta la Tortorella e'l gardelino.
% 
% Zeffiro dolce Spira, mà contesa
% Muove Borea improviso al Suo vicino;
% E piange il Pastorel, perche Sospesa
% Teme fiera borasca, e'l Suo destino;
% 
% Toglie alle membra lasse il Suo riposo
% Il timore de'Lampi, e tuoni fieri
% E de mosche, e mossoni il Stuol furioso!
% 
% Ah che pur troppo I Suoi timor Son veri
% Tuona e fulmina il ciel e grandinoso
% Tronca il capo alle Spiche e a'grani alteri.


SonnetSummerOne = \new Voice {
\override TextScript #'outside-staff-priority = #9999
% mark "A"
s4.^ \markup{"Sotto dura Staggion dal Sole accesa  Langue L'huom, langue 'l gregge, ed arde il Pino;"}
s4.*29
% mark "B" : measure 31
s1^ \markup{"Scioglie il Cucco la Voce,"}
s1*20
s4.*6	% time sig change : measure 52
% mark "C" : measure 58
s4.^ \markup{"e tosto intesa  Canta la Tortorella e'l gardelino."}
\noBreak
s4.*19
% mark "D" : measure 78
s4.^ \markup{"Zeffiro dolce Spira,"}
s4.*11
% Vento Borea : measure 90
s4.^ \markup{"mà contesa  Muove Borea improviso al Suo vicino;"}
\noBreak
s4.*25
% mark "E" : measure 116
s4.^ \markup{"E piange il Pastorel, perche Sospesa  Teme fiera borasca, e'l Suo destino;"}
s4.*57
}

SonnetSummerTwo = \new Voice {
\override TextScript #'outside-staff-priority = #9999
% mark "F"
s1^ \markup{\hspace #-15 \smaller "Toglie alle membra lasse il Suo riposo  Il timore de'Lampi, e tuoni fieri  E de mosche, e mossoni il Stuol furioso!"}
s1*21
}

SonnetSummerThree = \new Voice {
\override TextScript #'outside-staff-priority = #9999
% mark "G"
s2.^ \markup{\hspace #-15 \smaller "Ah che pur troppo I Suoi timor Son veri  Tuona e fulmina il ciel e grandinoso  Tronca il capo alle Spiche e a'grani alteri."}
}

