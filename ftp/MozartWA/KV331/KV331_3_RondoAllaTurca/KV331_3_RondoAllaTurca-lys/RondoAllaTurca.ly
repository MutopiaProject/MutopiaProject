\include "paper20.ly"
\version "1.4.7"
\header {
  title = "Rondo Alla Turca"
  subtitle = "Turkish March"
  composer = "W. A. Mozart"
  piece = "\\quad \\quad \\quad \\quad \\quad Allegretto"
  mutopiatitle = "Rondo Alla Turca"
  mutopiacomposer = "W. A. Mozart (1756-1791)"
  mutopiainstrument = "Piano"
  style = "classical"
  copyright = "Public Domain"
  maintainer = "Rune Zedeler"
  maintainerEmail = "rz@daimi.au.dk"
  lastupdated = "2001/sep/15"

  footer = "Mutopia-2001/09/15-108"
  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
}

volta = "volta"
\include "RondoAllaTurcaNotes.ly"
\score { \notes
  \context GrandStaff <
    \property GrandStaff.connectArpeggios = ##t
    \context Staff = up {
      \right
    }
    \context Staff = down {
      \property Staff.VoltaBracket = \turnOff
      \left
    }
  >
  \paper {
    \translator {
      \GraceContext
      Slur \override #'direction = #-1
    }
    \translator {
      \ScoreContext
      SpacingSpanner \override #'arithmetic-basicspace = #1.8
      GraceAlignment \override #'horizontal-space = #-0.4
      PaperColumn \override #'before-grace-spacing-factor = #1.0
      
    }
    interscoreline = 6.0 \pt

  }
}

volta = "unfold"
\include "RondoAllaTurcaNotes.ly"
\score { \notes
  {
    \context Staff < \right \left >
  }
  \midi {
    \tempo 4=120
  }
}
