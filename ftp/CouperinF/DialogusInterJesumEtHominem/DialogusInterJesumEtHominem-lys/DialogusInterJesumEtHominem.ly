
\header {
  copyrightYear = "2007"
  title = "Dialogus inter Jesum et hominem"
  subtitle = "À deux voix"
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

\currentOpus "DialogusInterJesumEtHominem"
\includeScore "A"
\includeScore "B"
\includeScore "C"
\includeScore "D"
\includeScore "E"
