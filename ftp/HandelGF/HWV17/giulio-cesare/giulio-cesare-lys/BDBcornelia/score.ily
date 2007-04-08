%% Aria. Cornelia: Priva son d'ogni conforto
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup "Traversa." <<
        \keepWithTag #'up \global
        \clef treble
        \includeNotes #"traversa" 
      >>
      \new InnerStaffGroup <<
        \instrStaff \markup "Violino I.II." <<
          \keepWithTag #'() \global
          \clef treble
          \new Voice { \voiceOne \includeNotes #"violino1" }
          \new Voice { \voiceTwo \includeNotes #"violino2" }
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
      >>  \includeLyrics #"cornelia-lyrics" 
    >>
    \instrStaff \markup "Bassi." <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 44 }
}
