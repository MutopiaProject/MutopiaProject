\version "2.12.3"
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



SonnetSpringOne = \new Voice {
% mark "A"
\override TextScript #'outside-staff-priority = #9999
\partial 8 s8
s1^ \markup{"Giunt'é la Primavera"}	% Spring has come
s1*11
s2
% mark "B" : measure 13-1/2
s2
s1*5
s2
s2^ \markup{"e festosetti  La Salutan gl'Augei con lieto canto,"}
s1*11
% mark "C" : measure 31
s1^ \markup{"E i fonti allo Spirar de'Zeffiretti  Con dolce mormorio Scorrono intanto:"}
s1*12
% mark "D" : measure 44
\break
s1^ \markup{"Vengon' coprendo l'aer di nero amanto  E Lampi, e tuoni ad annuntiarla eletti;"}
s1*14
% mark "E" : measure 59
\break
s1^ \markup{"Indi tacendo questi, gl'Augelletti  Tornan' di nuovo al lor canoro incanto:"}
s1*23
}

SonnetSpringTwo = \new Voice {
% mark "F"
\override TextScript #'outside-staff-priority = #9999
s2.^ \markup{\hspace #-15 \smaller "E quindi Sul fiorito ameno prato  Al caro mormorio di fronde e piante  Dorme'l Caprar col fido can' à lato."}
s2.*38
}

SonnetSpringThree = \new Voice {
% mark "G"
\override TextScript #'outside-staff-priority = #9999
s1.^ \markup{\hspace #-15 \smaller "Di pastoral Zampogna al Suon festante  Danzan Ninfe e Pastor nel tetto amato  Di primavera all'apparir brillante."}
s1.*88
}
