
editionText="Facsimile"
\include "header-definition.ily"


\tocItem \markup "Preface"

\markup {
  \left-column {
    \fill-line { \bold { Preface } }
    \vspace #1
    \wordwrap {
      This \bold { Facsimile } Edition is my attempt to render the
      scanned
      \override #'(padding . 0.1) \auto-footnote "source" "Paris: Sieber. https://imslp.org/wiki/6_Bassoon_Duets%2C_Op.3_%28Devienne%2C_François%29"
      using \override #'(padding . 0.1) \auto-footnote "Lilypond" "https://lilypond.org"  as closely as possible, with
      typos and no interpretation. It's purpose is to allow performes to
      easily compare the Urtext Edition to the original source.
    }
    \vspace #1
    \fill-line {
      \hspace #1
      \right-column {
        \line { Patrick Paulson}
        \line { patrick_paulson@3rivers-ashtanga.org}
        \line { July, 2026}
      }
    }
  }
}

subtitleMarkup = \markup \center-column {
  \line {
    \italic { Facsimile }
    \line { }
  }
}

