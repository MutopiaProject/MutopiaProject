%% Aria. Sesto: L'aura che spira
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup "Oboe I. II." <<
        \keepWithTag #'up \global
        \clef treble \includeNotes #"oboe"
      >>
      \new InnerStaffGroup <<
        \instrStaff \markup "Violino I." <<
          \keepWithTag #'() \global
          \clef treble \includeNotes #"violino1"
        >>
        \instrStaff \markup "Violino II." <<
          \keepWithTag #'() \global
          \clef treble \includeNotes #"violino2"
        >>
        \instrStaff \markup "Viola." <<
          \keepWithTag #'() \global
          \clef alto \includeNotes #"viola"
        >>
      >>
      \lyricStaff \markup Sesto. <<
        \keepWithTag #'() \global
        \sesto \includeNotes #"sesto" 
      >> \includeLyrics #"sesto-lyrics"
    >>
    \instrStaff \markup "Bassi." <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 112 }
}
