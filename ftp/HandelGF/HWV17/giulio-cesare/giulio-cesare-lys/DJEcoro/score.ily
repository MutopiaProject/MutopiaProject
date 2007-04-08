%% Coro. Ritorni omai nel nostro core
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \new InnerStaffGroup <<
        \instrStaff \markup \instruments { 
          \hspace #1
          "Corno I."
          \hspace #1
          \smaller \italic "ex G." 
        } <<
          \keepWithTag #'(up horn with-breaks) \global
          \includeNotes #"corno1"
        >>
        \instrStaff \markup "Corno II." <<
          \keepWithTag #'horn \global
          \includeNotes #"corno2"
        >>
        \instrStaff \markup \instruments {
          \hspace #1
          "Corno III."
          \hspace #1
          \smaller \italic "ex D." 
        } <<
          \keepWithTag #'horn \global
          \includeNotes #"corno3"
        >>
        \instrStaff \markup "Corno IV." <<
          \keepWithTag #'horn \global
          \includeNotes #"corno4"
        >>
      >>
    
      \instrStaff \markup \instruments { "Oboe I." "Violino I." } <<
        \keepWithTag #'other \global
        \clef treble
        \includeNotes #"tutti1"
      >>
      \instrStaff \markup \instruments { "Oboe II." "Violino II." } <<
        \keepWithTag #'other \global
        \clef treble
        \includeNotes #"tutti2"
      >>
      \instrStaff \markup "Viola." <<
        \keepWithTag #'other \global
        \clef alto
        \includeNotes #"viola"
      >>
    >>
    
    \new InnerChoirStaff <<
      \lyricStaff \markup \instruments { "Cuzzoni, e" "Durastanti." } <<
        \keepWithTag #'other \global
        \clef treble
        \includeNotes #"soprano1" 
      >> \includeLyrics #"soprano1-lyrics"
      \lyricStaff \markup \instruments { "Robinson, e" "Senesino." } <<
        \keepWithTag #'other \global
        \clef treble
        \includeNotes #"soprano2"
      >> \includeLyrics #"soprano2-lyrics"
      \lyricStaff \markup \instruments { "Berenstadt," "e Bigongi." } <<
        \keepWithTag #'other \global
        \clef alto
        \includeNotes #"alto"
      >> \includeLyrics #"lyrics"
      \lyricStaff \markup \instruments { "Boschi, e" "Le Guare." } <<
        \keepWithTag #'other \global
        \clef bass
        \includeNotes #"bass"
      >> \includeLyrics #"lyrics"
    >>
    
    \instrStaff \markup "Bassi." <<
      \scoreInit
      \keepWithTag #'other \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header {
    piece = "CORO."
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 212 }
}
