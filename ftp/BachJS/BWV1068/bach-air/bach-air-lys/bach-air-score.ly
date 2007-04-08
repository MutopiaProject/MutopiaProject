\version "2.7.40"
\include "bach-air-notes.ly"
#(set-global-staff-size 16)
\score {
   
   \new StaffGroup <<
      \new Staff {
         \set Staff.midiInstrument = "violin"
         \set Staff.instrument = "Violino I"
         \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 10)
         \clef "violin"
         << \global \violinone >>
      }
      
      \new Staff {
         \set Staff.midiInstrument = "violin"
         \set Staff.instrument = "Violino II"
         \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 5)
         \clef "violin"
         << \global \violintwo >>
      }
      
      \new Staff {
         \set Staff.midiInstrument = "viola"
         \set Staff.instrument = "Viola"
         \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-5 . 5)
         \clef "alto"
         << \global \viola >>
      }
      
      \new Staff {
         \set Staff.midiInstrument = "cello"
         \set Staff.instrument = "Continuo"
         \override Staff.VerticalAxisGroup #'minimum-Y-extent = #'(-10 . 5)
         \clef "bass"
         << \global \continuo >>
      }
   >>
   
   \layout{}
   \midi { \tempo 4=30 }
}

