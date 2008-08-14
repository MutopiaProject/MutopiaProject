\header {
  copyrightYear = "2008"
  title = \markup \column {
    \fill-line { "LES PLAISIRS" }
    \fill-line { "DE L'ÎLE ENCHANTÉE" }
  }
  composer = "Jean-Baptiste Lully"
  poet = "Molière"
  opus = "LWV 22"
  date = "1664"
  %% manuscrit: 1690-1702
  notes = \markup \column {
    \line { Documents originaux :}
    \hspace #1
    \wordwrap {
      Jean-Baptiste Lully (1632-1687), 
      \italic { Les Plaisirs De L'Isle Enchantée, Festes Galantes, et
      Magnifiques, faites par Le Roy à Versailles, le 7e May 1664. }
      Copié par Philidor L'aisné.
      \with-url #"http://gallica.bnf.fr/document?O=N207210"
      \tiny \typewriter "http://gallica.bnf.fr"
    }
    \hspace #1
    \wordwrap {
      Molière (1622-1673),
      \italic { Les Plaisirs de l'Isle Enchantée, course de bague
      faite par le Roy à Versailles, le 6 May 1664. }
      Robert Ballard, Paris, 1664.
      \with-url #"http://gallica.bnf.fr/notice?N=FRBNF33539523"
      \tiny \typewriter "http://gallica.bnf.fr"
    }
    \hspace #1
    \wordwrap {
      Molière (1622-1673),
      \italic { La princesse d'Elide : comédie du Sieur Mollière [sic]
      : les plaisirs de l'isle enchantée, course de bague, collation
      ornée de machines, mêlée de dances & de musique, ballet du
      palais d'Alcine, feu d'artifice, et autres fêtes galantes de
      Versailles. }
      Paris, 1684.
      \with-url #"http://gallica.bnf.fr/notice?N=FRBNF37242581"
      \tiny \typewriter "http://gallica.bnf.fr"
    }
  }
}

\include "italiano.ly"
#(set-global-staff-size 16)
\include "common/common.ily"

\setOpus "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee"
\opusTitle "Les Plaisirs de l'Île Enchantée"
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/common.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Title page
\markup \null
\pageBreak

%%% notes
\markup \null
\pageBreak

%%% Table of contents
\markuplines \table-of-contents
\pageBreak
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%% Première journée
%%% Course de bague
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/AAsonnetRoi.ily"
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/ABlouangesReine.ily"
%%% Collation
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/ACcollation.ily"

%%% Seconde journée
%%% La Princesse d'Élide
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/BAintermedeI.ily"
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/BBacteI.ily"
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/BCintermedeII.ily"
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/BDacteII.ily"
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/BEintermedeIII.ily"
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/BFacteIII.ily"
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/BGintermedeIV.ily"
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/BHacteIV.ily"
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/BIintermedeV.ily"
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/BJacteV.ily"
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/BKintermedeVI.ily"

%%% Troisième journée
\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/CAballet.ily"

\include "Lully/Fete/LWV22LesPlaisirsDeLIleEnchantee/CBfin.ily"