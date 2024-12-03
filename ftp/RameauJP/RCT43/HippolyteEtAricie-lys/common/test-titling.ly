\version "2.11.39"
\include "titling.ily"

\paper { tocTitle = "TABLE DES MATIÈRES" }
#(ly:set-option 'use-rehearsal-numbers #t)
\markuplines \table-of-contents

\opusTitle "Titre de l'œuvre"
\ouverture "Ouverture"
\pieceNoTitle
{ c''1 \pageBreak c'' }

\act "Acte Premier"
\scene "Scène Première"
\sceneDescription \markup \wordwrap-center {
  bla bla bla bla bla bla bla bla bla bla
  bla bla bla bla bla bla bla bla bla bla
  bla bla bla bla bla bla bla bla bla bla
  bla bla bla bla bla bla bla bla bla bla
}
\pieceToc \markup { Pièce 1 (toc seulement) }
{ d'' \pageBreak d'' }
\pieceTocTitle "Pièce 2 toc+titre"
{ e'' }

\scene "Scène Deuxième"
\pieceTitle "Pièce 3 (titre seulement)"
{ f'' }
\pieceTocAndTitle \markup { Pièce 4 avec titre différent } \markup { Pièce 4 avec toc différent }
{ g'' }
\actEnd \markup { FIN DE L'ACTE PREMIER }

\act "Acte Deuxième"
\scene "Scène Première"
\pieceNoTitle
{ a'' }