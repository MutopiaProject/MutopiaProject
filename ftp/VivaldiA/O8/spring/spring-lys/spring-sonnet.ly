\version "1.7.13"
% Giunt'é la Primavera e festosetti
% La Salutan gl'Augei con lieto canto,
% E i fonti allo Spirar de'Zeffiretti
% Con dolce mormorio Scorrono intanto:
% 
% Vengon' coprendo l'aer di nero amanto
% E Lampi, e tuoni ad annuntiarla eletti;
% Indi tacendo questi, gl'Augelletti
% Tornan' di nuovo al lor canoro incanto:
% 
% E quindi Sul fiorito ameno prato
% Al caro mormorio di fronde e piante
% Dorme'l Caprar col fido can' à lato.
% 
% Di pastoral Zampogna al Suon festante
% Danzan Ninfe e Pastor nel tetto amato
% Di primavera all'apparir brillante.



SonnetSpringOne = \notes {
% mark "A"
\partial 8 s8
s1^#'(lines "Giunt'é la Primavera" " " " ")	% Spring has come
s1*11
s2
% mark "B" : measure 13-1/2
s2
s1*5
s2
s2^#'(lines "e festosetti  La Salutan gl'Augei con lieto canto," " " " ")
s1*11
% mark "C" : measure 31
s1^#'(lines "E i fonti allo Spirar de'Zeffiretti  Con dolce mormorio Scorrono intanto:" " " " ")
s1*12
% mark "D" : measure 44
s1^#'(lines "Vengon' coprendo l'aer di nero amanto  E Lampi, e tuoni ad annuntiarla eletti;" " " " ")
s1*14
% mark "E" : measure 59
s1^#'(lines "Indi tacendo questi, gl'Augelletti  Tornan' di nuovo al lor canoro incanto:" " " " ")
s1*23
}

SonnetSpringTwo = \notes {
% mark "F"
s2.^#'(lines "E quindi Sul fiorito ameno prato  Al caro mormorio di fronde e piante  Dorme'l Caprar col fido can' à lato." " " " ")
s2.*38
}

SonnetSpringThree = \notes {
% mark "G"
s1.^#'(lines "Di pastoral Zampogna al Suon festante  Danzan Ninfe e Pastor nel tetto amato  Di primavera all'apparir brillante." " " " ")
s1.*88
}
