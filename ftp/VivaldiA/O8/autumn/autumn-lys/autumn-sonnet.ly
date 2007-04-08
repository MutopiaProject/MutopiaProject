\version "1.7.13"
% Celebra il Vilanel con balli e Canti
% Del felice raccolto il bel piacere
% E del liquor di Bacco accesi tanti
% Finiscono col Sonno il lor godere.
% 
% Fà ch'ogn'uno tralasci e balli canti
% L'aria che temperata dà piacere,
% E la Staggion ch'invita tanti e tanti
% 
% I cacciator alla nov'alba à caccia
% Con corni, Schioppi, e canni escono fuore
% Fugge la belua, e Seguono la traccia;
% 
% Già Sbigottita, e lassa al gran rumore
% De'Schioppi e canni, ferita minaccia
% Languida di fuggir, mà oppressa muore.

SonnetAutumnOne = \notes {
% mark "A" : measure 1
s1^#'(lines "Celebra il Vilanel con balli e Canti  Del felice raccolto il bel piacere" " " " ")
s1*30
% mark "B" : measure 32
s1^#'(lines "E del liquor di Bacco accesi tanti" " " " ")
s1*56
% mark "C" : measure 89
s1^#'(lines "Finiscono col Sonno il lor godere." " " " ")
s1*26
}

SonnetAutumnTwo = \notes {
% mark "D"
s2.^#'(lines "Fà ch'ogn'uno tralasci e balli canti  L'aria che temperata dà piacere,  E la Staggion ch'invita tanti e tanti" " " " ")
s2.*44
}

SonnetAutumnThree = \notes {
% mark "E"
s4.^#'(lines "I cacciator alla nov'alba à caccia  Con corni, Schioppi, e canni escono fuore" " " " ")
s4.*74
% mark "F" : measure 76
s4.^#'(lines "Fugge la belua, e Seguono la traccia;" " " " ")
s4.*5
% mark "G" : measure 82
s4.^#'(lines "Già Sbigottita, e lassa al gran rumore  De'Schioppi e canni, ferita minaccia" " " " ")
s4.*46
% mark "H" : measure 129
s4.^#'(lines "Languida di fuggir, mà oppressa muore." " " " ")
s4.*27
}
