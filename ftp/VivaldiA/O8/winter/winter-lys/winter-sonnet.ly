\version "1.7.13"
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

SonnetWinterOne = \notes {
% mark "A" : measure 1
s1^#'(lines "Aggiacciato tremar trà nevi algenti" " " " ")
s1*10
% mark "B" : measure 12
% solo part also marked "Orrido Vento"
s1^#'(lines "Al Severo Spirar d'orrido Vento," " " " ")
s1*9 s2
% mark "C" : measure 22 1/2
s2^#'(lines "Correr battendo i piedi ogni momento;" " " " ")
s1*24
% mark "D" : measure 47
s1^#'(lines "E pel Soverchio gel batter i denti;" " " " ")
s1*16
}

SonnetWinterTwo = \notes {
% mark "E" : 
s1^#'(lines "Passar al foco i di quieti e contenti Mentre la pioggio fuor bagna ben cento;" " " " ")
s1*17
}

SonnetWinterThree = \notes {
% mark "F" : measure 1
s4.^#'(lines "Caminar Sopra'l giaccio," " " " ")
s4.*23
% mark "G" : measure 25
s4.^#'(lines "e à passo lento Per timor di cader gersene intenti;" " " " ")
s4.*14
% mark "H" : measure 40
s4.^#'(lines "Gir forte Sdruzziolar, cader à terra," " " " ")
s4.*10
% mark "I" : measure 51
s4.^#'(lines "Di nuovo ir Sopra 'l giaccio e correr forte" " " " ")
s4.*37
% mark "L" : measure 89
s4.^#'(lines "Sin ch'il giaccio Si rompe, e Si disserra;" " " " ")
s4.*11
% mark "M" : measure 101
s4.^#'(lines "Sentir uscir dalle ferrate porte" " " " ")
s4.*18
% mark "N" : measure 120
s4.^#'(lines "Sirocco, Borea, e tutti i Venti in guerra" " " " ")
s4.*29
% 4 measures from end
s4.^#'(lines "Quest'è 'l verno, mà tal, che gioja apporte." " " " ")
s4.*3
}

