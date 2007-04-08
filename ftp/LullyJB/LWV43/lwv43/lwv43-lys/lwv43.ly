
\header {
  title = \markup \center-align { "Le Bourgeois" Gentilhomme }
  %%subtitle = "Comédie Ballet"
  
  composer = "Jean Baptiste Lully"
  poet = "Molière"
  opus = "LWV 43"
  date = "1670"

  notes = \markup \column {
    \line { Documents originaux :}
    \hspace #1
    \wordwrap { 
      Jean-Baptiste Lully (1632-1687), 
      \italic {Le bourgeois gentilhomme} \hspace #-1 , comédie-ballet,
      donné par le Roy a toutte sa Cour dans le chasteau de Chambord
      au mois d'octobre 1670. [Partition musicale et texte manuscrits] ;
      copié par Philidor l'aîné.
      \with-url #"http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF38831370.htm"
      \tiny \typewriter "http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF38831370.htm"
    }
    \hspace #1
    \wordwrap { 
      Molière,
      \italic {Le bourgeois gentilhomme} : comédie-balet [sic] faite à
      Chambort, pour le divertissement du Roy. Reproduction : Num. BNF 
      de l'éd. de, Paris : P. Le Monnier, 1671.
      \with-url #"http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF37286296.htm"
      \tiny \typewriter "http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF37286296.htm"
    }
  }
}

\include "common/common.ily"

\currentOpus #"LWV43"

\pageBreakHack
\pageBreakHack

\markup \fill-line {
  \null
  \center-align { 
    \null
    \vspace #17
    \fontsize #6 \fill-line { \null ACTEURS. \null }
    \vspace #3
    \fill-line {
      \null
       \override #'(linewidth . 50) \column {
         \line { Monsieur Jourdain, bourgeois, }
         \line { Madame Jourdain, sa femme, }
         \line { Lucile, fille de Monsieur Jourdain, }
         \line { Nicole, servante, }
         \line { Cléonte, amoureux de Lucile, }
         \line { Covielle, valet de Cléonte, }
         \line { Dorante, compte, amant de Dorimène, }
         \line { Dorimène, marquise, }
         \line { Maître de musique, }
         \line { Élève du maître de musique, }
         \line { Maître à danser, }
         \line { Maître d'armes, }
         \line { Maître de philosophie, }
         \line { Maître tailleur, }
         \line { Garçon tailleur, }
         \line { Deux laquais, }
         \line { Plusieurs musiciens, musiciennes, joueurs d'instruments, }
         \line { danseurs, cuisiniers, garçons tailleurs, }
         \line { et autres personnages des intermèdes et du ballet. }
       }
      \null 
    }
    \vspace #2
    \italic \fill-line {\null \line { La scène est à Paris. } \null }
  }
  \null
}

\pageBreakHack
\pageBreakNext
\includeScore "AAouverture"
\include "LWV43/acte1.ily"
\include "LWV43/acte2-scenes-1-3.ily"
\include "LWV43/acte2-scenes-4-5.ily"
\include "LWV43/acte3-scenes-01-03.ily"
\include "LWV43/acte3-scenes-04-06.ily"
\include "LWV43/acte3-scenes-07-10.ily"
\include "LWV43/acte3-scenes-11-16.ily"
\include "LWV43/acte4-scenes-1-2.ily"
\include "LWV43/acte4-scenes-3-5.ily"
\include "LWV43/acte5-scenes-1-4.ily"
\include "LWV43/acte5-scenes-5-6.ily"
\include "LWV43/ballet-des-nations.ily"
