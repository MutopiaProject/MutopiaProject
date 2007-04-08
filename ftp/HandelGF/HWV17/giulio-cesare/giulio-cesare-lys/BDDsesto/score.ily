%% Aria. Sesto: Svegliatevi nel core
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      { \skip 1*34
        \new Staff <<
          \set Staff.alignAboveContext = #"violino1"
          \keepWithTag #'(up flauti) \global
          \clef treble
          \includeNotes #"flauti"
        >> }
      \new InnerStaffGroup <<
        \instrStaffWithName "violino1" "Violino I." <<
          \keepWithTag #'(not-flauti violinoI) \global
          \clef treble
          \includeNotes #"violino1"
        >>
        \instrStaff \markup "Violino II.  " <<
          \keepWithTag #'(not-flauti violinoII) \global
          \clef treble
          \includeNotes #"violino2"
        >>
      >>
      \lyricStaff \markup "Sesto." <<
        \keepWithTag #'(not-flauti) \global
        \sesto \includeNotes #"sesto"
      >> \includeLyrics #"sesto-lyrics" 
    >>
    \instrStaff \markup "Bassi." <<
      \scoreInit
      \keepWithTag #'(not-flauti down) \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header {
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 80 }
}
