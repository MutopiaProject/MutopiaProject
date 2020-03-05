\version "2.18.2"

\include "violin.ly"
\include "cello.ly"
\include "piano.ly"

\header {
  title = "Piano Trio No. 1"
  subtitle = "(1st Movement: Allegro)"
  instrument = "for Pianoforte, Violino and Violoncello"
  composer = "Ludwig van Beethoven"
  opus = "Opus 1, No. 1"
  mutopiatitle = "Piano Trio Opus 1, No. 1 (1st Movement: Allegro)"
  mutopiacomposer = "BeethovenLv"
  mutopiainstrument = "Violin, 'Cello and Piano"
  mutopiaopus = "Op. 1, No. 1"
  date = "1795"
  source = "Breitkopf and Härtel (1862-1865)"
  style = "Classical"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Alexander Jones"
}

fullMusic = {
 <<

 \violinStaff

 \celloStaff

 \pianoStaff

 >>
}

ourTempo = \tempo 4 = 158

\book {
  \score {
    \fullMusic
    \layout {  }
  }
  \score {
    \unfoldRepeats \fullMusic
    \midi {
      \ourTempo
    }
  }
}

\book {
  \bookOutputSuffix "Violin"
  \score {
    \violinStaff
    \layout {  }
  }
  \score {
    \unfoldRepeats \violinStaff
    \midi {
      \ourTempo
    }
  }
}

\book {
  \bookOutputSuffix "Cello"
  \score {
    \celloStaff
    \layout {  }
  }
  \score {
    \unfoldRepeats \celloStaff
    \midi {
      \ourTempo
    }
  }
}

\book {
  \bookOutputSuffix "Piano"
  \score {
    \pianoStaff
    \layout {  }
  }
  \score {
    \unfoldRepeats \pianoStaff
    \midi {
      \ourTempo
    }
  }
}
