\version "2.11.62"
\include "bach-air-notes.ly"
#(set-global-staff-size 16)

\paper {
  ragged-last-bottom = ##f
}

\score {

  \new StaffGroup <<
    \new Staff {
      \set Staff.midiInstrument = "violin"
      \set Staff.instrumentName = "Violino I"
      %\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 10)
      \clef "violin"
      << \global \violinone >>
    }

    \new Staff {
      \set Staff.midiInstrument = "violin"
      \set Staff.instrumentName = "Violino II"
      %\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 5)
      \clef "violin"
      << \global \violintwo >>
    }

    \new Staff {
      \set Staff.midiInstrument = "viola"
      \set Staff.instrumentName = "Viola"
      %\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 5)
      \clef "alto"
      << \global \viola >>
    }

    \new Staff {
      \set Staff.midiInstrument = "cello"
      \set Staff.instrumentName = "Continuo"
      %\override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-10 . 5)
      \clef "bass"
      << \global \continuo >>
    }
  >>

  \layout{}

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 30 4)
    }
  }
}

