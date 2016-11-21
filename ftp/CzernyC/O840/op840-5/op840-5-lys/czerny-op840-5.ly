\version "2.18.2"

\language "deutsch"

\include "stile.ily"
\include "defn.ily"

exercise = "5"
tonality_deutsch = "C dur."
tonality_fr = "Ut majeur."
meter = { \tempo 4 = 85 }

\header {
  composer            =       \markup { \bold "Carl Czerny" " (* 21. Februar 1791; † 15. Juli 1857)" }
  mutopiacomposer     =       "CzernyC"

  title               =       "50 Melodische Übungsstücke"
  mutopiatitle        =       "50 Melodische Übungsstücke, No. 5"

  opus                =       "Op. 840"
  piece               =       \markup { "Etüde" \number \tiny \exercise }
  mutopiaopus         =       "Op. 840, No. 5"

  source              =       "IMSLP; Mainz: Schott, n.d.[1855]. Plate 13253"
  style               =       "Romantic"
  moreInfo	      =       "Exercices Progressifs dans tous les tons majeurs et mineurs; Melodic studies"
  license             =       "Public Domain"
  enteredby           =       "Manuela" %Manuela Gößnitzer
  maintainer          =       "Manuela"
  maintainerEmail     =       "pressephotografin--gmail.com"
  maintainerWeb       =       "https://github.com/CarlCzerny/Op-840"
  mutopiainstrument   =       "Piano"
  
 footer = "Mutopia-2016/11/21-2150"
 copyright = \markup {\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0) \right-column {\with-url #"http://www.MutopiaProject.org" {\abs-fontsize #9  "Mutopia " \concat {\abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project "}}}\override #'(font-name . "DejaVu Sans, Bold") \override #'(baseline-skip . 0 ) \center-column {\abs-fontsize #11.9 \with-color #grey \bold {\char ##x01C0 \char ##x01C0 }}\override #'(font-name . "DejaVu Sans,sans-serif") \override #'(baseline-skip . 0) \column { \abs-fontsize #8 \concat {"Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " "by " \maintainer " " \char ##x2014 " " \footer}\concat {\concat {\abs-fontsize #8 { "Placed in the " \with-url #"http://creativecommons.org/licenses/publicdomain" "public domain " "by the typesetter " \char ##x2014 " free to distribute, modify, and perform" }}\abs-fontsize #13 \with-color #white \char ##x01C0 }}}
 tagline = ##f
}
\layout {
  \context {
    \Score
    \override NonMusicalPaperColumn.line-break-permission = ##f
    \override NonMusicalPaperColumn.page-break-permission = ##f
  }
}

\include "etude-05.ily"

\include "score-layout.ily"
\include "score-midi.ily"
