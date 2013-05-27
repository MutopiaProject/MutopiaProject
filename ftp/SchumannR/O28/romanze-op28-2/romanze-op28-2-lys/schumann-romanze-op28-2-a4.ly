\version "1.7.21"
\include "schumann-romanze-op28-2-notes.ly"
\include "paper16.ly"

\header {
  title = "Romanzen"
  opus = "op. 28/2"
  composer = "R. Schumann (1810-1856)"
  enteredby="Rune Zedeler"
  maintainer="rune@zedeler.dk"
  mutopiatitle = "Romanzen - op. 28/2"
  mutopiacomposer = "SchumannR"
  mutopiainstrument = "Piano"
  style = "Romantic"
  copyright = "Public Domain"
  source = "Ed. Peters"
  
  tagline = "\\parbox{\\hsize}{\\thefooter\\quad\\small\\noindent\\hspace{\\stretch{1}} This music is part of the Mutopia project: \\hspace{\\stretch{1}} \\texttt{http://www.MutopiaProject.org/}\\\\ \\makebox[\\textwidth][c]{It has been typeset and placed in the public domain by " + \maintainer + ".} \\makebox[\\textwidth][c]{Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}}"
  footer = "Mutopia-2003/06/16-314"
}

\score {
  \thePianoStaff
  \paper {
      papersize = "a4"
    interscoreline = 0.0
    interscorelinefill = 1
    indent = 0.5 \in
    pagenumber = no
    linewidth = 17.0 \cm
    \translator {
      \HaraKiriStaffContext
    }
    \translator {
      \ScoreContext
      SpacingSpanner \override #'common-shortest-duration = #(ly:make-moment 1 8)
    }
    \translator {
      \PianoStaffContext
      VerticalAlignment \override #'forced-distance = #13.0
    }
  }
  \midi { \tempo 8=100 }
}

