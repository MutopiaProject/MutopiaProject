%%% -*- LilyPond -*-

\version "2.10.10"

\include "defs.ly"

#(set-global-staff-size 17)

\include "violin2-i.ly"

\score {
  \context Staff <<
    \override Score.BarNumber   #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.autoBeaming = ##f
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violino II."

    \time 4/4

    \violinIIFirstMov
    \context Voice = "markings" { \markingsI }
  >>

  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 140 4)
    }
  }



  \layout { }
}

\include "violin2-ii.ly"

\score {
  \context Staff <<
    \override Score.BarNumber   #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.autoBeaming = ##f
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violino II."

    \time 3/4

    \violinIISecondMov
    \context Voice = "markings" { \markingsII }
  >>

  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 70 4)
    }
  }



  \layout { }
}

\include "violin2-iii.ly"

\score {
  \context Staff <<
    \override Score.BarNumber   #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.autoBeaming = ##f
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violino II."

    \time 3/4
    \partial 4

    \violinIIThirdMov
    \context Voice = "markings" { \markingsIII }
    \context Voice=markingsBis { \markingsIIIbis }
  >>

  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 70 4)
    }
  }



  \layout { }
}

\include "violin2-iv.ly"

\score {
  \context Staff <<
    \override Score.BarNumber   #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.autoBeaming = ##f
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violino II."

    \time 2/2

    \violinIIFourthMov
    \context Voice = "markings" { \markingsIV }
  >>

  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 140 4)
    }
  }



  \layout { }
}
