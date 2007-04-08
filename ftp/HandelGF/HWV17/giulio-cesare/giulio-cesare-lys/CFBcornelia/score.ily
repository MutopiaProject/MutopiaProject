%% Aria. Cornelia: Cessa omai di sospirare
\score {
  \new OchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup Flauti. <<
        \keepWithTag #'up \global
        \clef treble
        \includeNotes #"flauti" 
      >>
      \new InnerStaffGroup <<
        \instrStaff \markup "Violino I." <<
          \keepWithTag #'() \global
          \clef treble
          \includeNotes #"violino1"
        >>
        \instrStaff \markup "Violino II." <<
          \keepWithTag #'() \global
          \clef treble
          \includeNotes #"violino2"
        >>
        \instrStaff \markup "Viola." <<
          \keepWithTag #'() \global
          \clef alto
          \includeNotes #"viola" 
        >>
      >>
      \lyricStaff \markup "Cornelia." <<
        \keepWithTag #'() \global
        \cornelia \includeNotes #"cornelia" 
      >> \includeLyrics #"cornelia-lyrics"
    >>
    \instrStaff \markup "Bassi." <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 60 }
}
