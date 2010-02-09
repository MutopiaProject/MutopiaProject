\version "2.12.3"
% TODO:
% figure out how to avoid printing words on top of the other parts' notes
% figure out how to wrap the text at the end of the line

% Aggiacciato tremar trà nevi algenti
% Al Severo Spirar d'orrido Vento,
% Correr battendo i piedi ogni momento;
% E pel Soverchio gel batter i denti;
% 
% Passar al foco i di quieti e contenti
% Mentre la pioggio fuor bagna ben cento;
% Caminar Sopra'l giaccio, e à passo lento
% Per timor di cader gersene intenti;
% 
% Gir forte Sdruzziolar, cader à terra,
% Di nuovo ir Sopra 'l giaccio e correr forte
% Sin ch'il giaccio Si rompe, e Si disserra;
% 
% Sentir uscir dalle ferrate porte
% Sirocco, Borea, e tutti i Venti in guerra
% Quest'è 'l verno, mà tal, che gioja apporte. 

SonnetWinterOne = \new Voice {
\override TextScript #'outside-staff-priority = #9999
% mark "A" : measure 1
s1^\markup {"Aggiacciato tremar trà nevi algenti"}
\noBreak
s1*10
% mark "B" : measure 12
% solo part also marked "Orrido Vento"
s1^\markup {\translate #'(1 . 0) "Al Severo Spirar d'orrido Vento,"}
\noBreak
s1*9 s2
% mark "C" : measure 22 1/2
s2^\markup {"Correr battendo i piedi ogni momento;"}
\noBreak
s1*24
% mark "D" : measure 47
s1^\markup {"E pel Soverchio gel batter i denti;"}
s1*16
}

SonnetWinterTwo = \new Voice {
\override TextScript #'outside-staff-priority = #9999
% mark "E" : 
s1^\markup {"Passar al foco i di quieti e contenti Mentre la pioggio fuor bagna ben cento;"}
s1*17
}

SonnetWinterThree = \new Voice {
\override TextScript #'outside-staff-priority = #9999
% mark "F" : measure 1
s4.^\markup {"Caminar Sopra'l giaccio,"}
s4.*23
% mark "G" : measure 25
s4.^\markup {\translate #'(1 . 0) "e à passo lento Per timor di cader gersene intenti;"}
\noBreak
s4.*14
% mark "H" : measure 40
s4.^\markup {\translate #'(1 . 0) "Gir forte Sdruzziolar, cader à terra,"}
\noBreak
s4.*10
% mark "I" : measure 51
s4.^\markup {"Di nuovo ir Sopra 'l giaccio e correr forte"}
\noBreak
s4.*37
% mark "L" : measure 89
s4.^\markup {"Sin ch'il giaccio Si rompe, e Si disserra;"}
\noBreak
s4.*11
% mark "M" : measure 101
s4.^\markup {\translate #'(1 . 0) "Sentir uscir dalle ferrate porte"}
\noBreak
s4.*18
% mark "N" : measure 120
s4.^\markup {\translate #'(1 . 0) "Sirocco, Borea, e tutti i Venti in guerra"}
\noBreak
s4.*29
% 4 measures from end
s4.^\markup {"Quest'è 'l verno, mà tal, che gioja apporte."}
\noBreak
s4.*3
}

