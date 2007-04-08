%% Recit. Cesare: Dall' ondoso periglio salvo mi
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \new InnerStaffGroup <<
        \instrStaff \markup { Violino I. } <<
          \keepWithTag #'up \global
          \clef treble \includeNotes #"violino1"
        >>
        \instrStaff \markup { Violino II. } <<
          \keepWithTag #'() \global
          \clef treble \includeNotes #"violino2"
        >>
        \instrStaff \markup { Viola. } <<
          \keepWithTag #'() \global
          \clef alto \includeNotes #"viola"
        >>
      >>
      \lyricStaff \markup Cesare. <<
        \keepWithTag #'() \global
        \cesare \includeNotes #"cesare"
      >> \includeLyrics #"cesare-lyrics"
    >>
    \instrStaff \markup Bassi. <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
      \includeFigures #"figures"
    >>
  >>
  \header {
    scene = "SCENA IV."
    scenedescr = \markup \center-align {
      \line { \smallCaps {Giulio Cesare,} da una parte, 
              poi \smallCaps Sesto dall' altra con \smallCaps Nireno, }
      \line { ed \smallCaps Achilla, steso sul margine del 
              porto mortalmente ferito. }
    }
    breakbefore = #(break-before?) 
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 60 }
}
