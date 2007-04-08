%% Coro. Viva il nostre Alcide
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \new InnerStaffGroup <<
        \instrStaff \markup \instruments { "Corno I.II." " in A." } <<
          \scoreInit
          \keepWithTag #'(up horn-A) \global
          \new Voice { \voiceOne \includeNotes #"corno1" }
          \new Voice { \voiceTwo \includeNotes #"corno2" }
          \new Voice { \oneVoice \includeNotes #"corno12-rests" }
        >>
        \instrStaff \markup \instruments { "Corno III.IV." "in D." } <<
          \keepWithTag #'horn-D \global
          \new Voice {\voiceOne \includeNotes #"corno3" }
          \new Voice {\voiceTwo \includeNotes #"corno4" }
          \new Voice {\oneVoice \includeNotes #"corno34-rests" }
        >>
      >>
      \instrStaff \markup \instruments { "Violino I.II." "Oboe I." } <<
        \keepWithTag #'other \global
        \clef treble
        \includeNotes #"violino1"
      >>
      \instrStaff \markup \instruments { "Violino III." "Oboe II." } <<
        \keepWithTag #'other \global
        \clef treble
        \includeNotes #"violino2"
      >>
      \instrStaff \markup "Viola." <<
        \keepWithTag #'other \global
        \clef alto
        \includeNotes #"viola"
      >>
    >>
    \new InnerChoirStaff <<
      \lyricStaff \markup "Durastanti." <<
        \keepWithTag #'other \global
        \clef treble
        \includeNotes #"soprano" >> \includeLyrics #"soprano-lyrics"
      \lyricStaff \markup "Robinson." <<
        \keepWithTag #'other \global
        \clef alto
        \includeNotes #"alto" >> \includeLyrics #"alto-lyrics"
      \lyricStaff \markup \instruments {
        \smallCaps "Bigongi, e" \smallCaps "Berenstadt."
      } 
      <<
        \keepWithTag #'other \global
        \clef tenor
        \includeNotes #"tenor" >> \includeLyrics #"tenor-lyrics"
      \lyricStaff \markup \instruments { 
        \smallCaps "Boschi, e" \smallCaps "Le Guare." 
      }
      <<
        \keepWithTag #'other \global
        \clef bass
        \includeNotes #"bass" >> \includeLyrics #"bass-lyrics"
    >>
    
    \instrStaff \markup "Tutti Bassi." <<
      \keepWithTag #'other \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>

  \header {
    act = \markup \column { 
      \vspace #2
      "ATTO PRIMO"
      \vspace #1
    }
    scene = \markup \column {
      "SCENA I." 
      \vspace #1
    }
    scenedescr = \markup \center-align { 
      \line { Campagna d'Egitto con antico ponte sopra un ramo del Nilo. }
      \line { \smallCaps {Giulio Cesare} e \smallCaps Curio che passano
              il ponte con seguito. }
    }
    piece = \markup \column {
      \vspace #2
      "CORO."
      \vspace #2
    }
    breakbefore = #(break-before?)
  }

  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 128 }
}
