%% Sinfonia
\score {
  \new StaffGroup <<
    \new InnerStaffGroup <<
      \instrStaff \markup \instruments { 
        "Corno I. II." \smaller \italic "ex G." }
      <<
        \keepWithTag #'(corno up) \global
        \clef treble
        \new Voice <<
          { \oneVoice s1*4 s2 \voiceOne s2 s4
            \oneVoice s16 \voiceOne s8. s4
            \oneVoice s16 \voiceOne s8. s1*4 s4
            \oneVoice s2. s1*2 s2 s16 \voiceOne s8. s4
            \oneVoice s16 \voiceOne s8. s2. s1*4 s2.
            \oneVoice s4 s2. s8 \voiceOne s8^\markup \tempo Adagio. s2. 
            \oneVoice s8 \voiceOne s8 s2.
            \oneVoice s4 s1*2
          }
          \includeNotes #"corno1" 
        >>
        \new Voice { \voiceTwo \includeNotes #"corno2" }
      >>
      \instrStaff \markup \instruments {
        "Corno III. IV." \smaller \italic "ex D." } 
      <<
        \keepWithTag #'corno \global
        \clef treble
        \new Voice <<
          { \oneVoice s1*10 \voiceOne s2.
            \oneVoice s16 \voiceOne s8. s4
            \oneVoice s16 \voiceOne s8. s2 s1 s2.
            \oneVoice s16 \voiceOne s8. s2.
            \oneVoice s4 s1*3 s2 s8 \voiceOne s4. s2.
            \oneVoice s4 s1*2 s2 s4. \voiceOne s8^\markup \tempo Adagio. s2.
            \oneVoice s8 \voiceOne s8 s2.
            \oneVoice s4
          }
          \includeNotes #"corno3" 
        >>
        \new Voice { \voiceTwo \includeNotes #"corno4" }
      >>
    >>

    \new InnerStaffGroup <<
      \instrStaff \markup "Oboe I." <<
        \keepWithTag #'not-corno \global
        \clef treble
        \includeNotes #"oboe1"
      >>
      \instrStaff \markup "Oboe II." <<
        \keepWithTag #'not-corno \global
        \clef treble
        \includeNotes #"oboe2"
      >>
      \instrStaff \markup Bassons. <<
        \keepWithTag #'not-corno \global
        \clef bass
        \includeNotes #"bassons"
      >>
    >>

    \new InnerStaffGroup <<
      \instrStaff \markup "Violino I." <<
        \keepWithTag #'not-corno \global
        \clef treble
        \includeNotes #"violino1"
      >>
      \instrStaff \markup "Violino II." <<
        \keepWithTag #'not-corno \global
        \clef treble
        \includeNotes #"violino2"
      >>
      \instrStaff \markup Viola. <<
        \keepWithTag #'not-corno \global
        \clef alto
        \includeNotes #"viola"
      >>
    >>
    \instrStaff \markup Bassi. <<
      \scoreInit
      \keepWithTag #'(not-corno down) \global
      \clef bass
      \includeNotes #"bassi"
    >>
  >>
  \header {
    scene = "SCENA ULTIMA."
    scenedescr = \markup \center-align {
      \line { Porto di Alessandria. }
      \line { \smallCaps Cesare, \smallCaps Cleopatra, e seguito d'Egizii con }
      \line { trombe e timpani; finita la Sinfonia entrano }
      \line { \smallCaps Curio e \smallCaps Nireno,
              e poi \smallCaps Sesto e \smallCaps Cornelia, con }
      \line { un paggio, che porta lo scettro 
              e la corona di \smallCaps Tolomeo. }
    }
    piece = "SINFONIA"
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 68 }
}
