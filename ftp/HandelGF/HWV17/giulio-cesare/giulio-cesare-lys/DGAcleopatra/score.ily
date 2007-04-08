%% Recit. Cleopatra: Voi, che mie fide ancelle
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup << 
      \instrStaff \markup Oboe <<
        \override Score.VerticalAxisGroup #'remove-first = ##t
        \keepWithTag #'up \global
        \clef treble \includeNotes #"oboe"
      >>
      \new InnerStaffGroup <<
        \instrStaff \markup "Violino I." <<
          \keepWithTag #'upB \global
          { s4.*10 s4 s2._"(senza Oboe.)" }
          \clef treble \includeNotes #"violino1"
        >>
        \instrStaff \markup "Violino II." <<
          \keepWithTag #'() \global
          \clef treble \includeNotes #"violino2"
        >>
        \instrStaff \markup Viola. <<
          \keepWithTag #'() \global
          \clef alto \includeNotes #"viola"
        >>
      >>
      \lyricStaff \markup "" <<
        \keepWithTag #'cleopatra \global
        \cleopatra \includeNotes #"cleopatra" 
      >> \includeLyrics #"cleopatra-lyrics"
    >>
    \instrStaff \markup Bassi. <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    scene = "SCENA VII."
    scenedescr = \markup \center-align {
      \line { Appartamento di Cleopatra. }
      \line { \smallCaps Cleopatra (con guardie) frà le sue damigelle, }
      \line { che piangono, e poi \smallCaps Cesare con soldati. }
    }
    breakbefore = #(break-before?)
  }
  \layout { 
    \context {
      \RemoveEmptyStaffContext
      \consists "Mark_engraver" 
    } 
    #(define tweak-key (*current-piece*))
  }
  \midi { \tempo 4 = 80 }
}
