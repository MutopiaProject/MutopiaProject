
\header {
  copyrightYear = "2007"
  title = "Salve Regine"
  subtitle = "À voix seule"
  composer = "François Couperin"

  notes = \markup \column {
    \line { Documents originaux :}
    \null
    \wordwrap {
      Mottets, a voix seule, deux et trois parties 
      et symphonies de Mr Couperin, 
      copie de l'atelier Philidor, Ca 1705.
    }
    \with-url #"http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF39579545.htm" \typewriter "http://gallica.bnf.fr"
  }
}

\include "common/common.ily"

\currentOpus "SalveRegina"
\includeScore "A"
\includeScore "B"
\includeScore "C"
\includeScore "D"
