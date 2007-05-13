
\header {
  copyrightYear = "2007"
  title = "Precatio ad Deum"
  subtitle = "À trois voix"
  composer = "François Couperin"

  notes = \markup \column {
    \line { Documents originaux :}
    \null
    \wordwrap {
      Mottets [sic], a voix seule, deux et trois parties 
      et symphonies de Mr Couperin, 
      copie de l'atelier Philidor, Ca 1705.
    }
    \with-url #"http://gallica.bnf.fr/Catalogue/noticesInd/FRBNF39579545.htm" \typewriter "http://gallica.bnf.fr"
  }
}

\include "common/common.ily"

\currentOpus "PrecatioAdDeum"
\includeScore "A"
\includeScore "B"
\includeScore "C"
\includeScore "D"
\includeScore "E"
