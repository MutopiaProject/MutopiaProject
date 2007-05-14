%%% -*- LilyPond -*-

\version "2.10.10"

\include "defs.ly"

#(set-global-staff-size 17)

\include "violin1-i.ly"

\score {
  \context Staff <<
    \override Score.BarNumber   #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.autoBeaming = ##f
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violino I."

    \time 4/4

    \violinIFirstMov
    \context Voice = "markings" { \markingsI }
  >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 120 4)
    }
  }

  \layout { }
}

\include "violin1-ii.ly"

\score {
  \context Staff <<
    \override Score.BarNumber   #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.autoBeaming = ##f
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violino I."

    \time 3/4

    \violinISecondMov
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

\include "violin1-iii.ly"

\score {
  \context Staff <<
    \override Score.BarNumber   #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.autoBeaming = ##f
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violino I."

    \time 3/4
    \partial 4

    \violinIThirdMov
    \context Voice = "markings" { \markingsIII }
    \context Voice=markingsBis { \markingsIIIbis }
  >>

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 140 4)
    }
  }

  \layout { }
}

\include "violin1-iv.ly"

\score {
  \context Staff <<
    \override Score.BarNumber   #'padding = #3
    \set Score.skipBars = ##t
    \set Staff.autoBeaming = ##f
    \set Staff.midiInstrument = #"violin"
    \set Staff.instrumentName = "Violino I."

    \time 2/2

    \violinIFourthMov
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
