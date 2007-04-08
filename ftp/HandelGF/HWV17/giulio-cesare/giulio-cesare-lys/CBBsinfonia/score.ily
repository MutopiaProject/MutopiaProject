%% Sinfonia
\markup \fill-line {
  " "
  \large "Quì s'ode vaga Sinfonia di varj stromenti."
  " "
}
\score {
  \new StaffGroup <<
    \instrStaff \markup \center-align { "Oboe, e" "Violino I." } <<
      \scoreInit
      \keepWithTag #'() \global
      \clef treble \includeNotes #"tutti"
    >>
    \instrStaff \markup {Violino II.} <<
      \keepWithTag #'() \global
      \clef treble \includeNotes #"violino2"
    >>
    \instrStaff \markup {Viola.} <<
      \keepWithTag #'() \global
      \clef alto \includeNotes #"viola"
    >>
    
    \new GrandStaff <<
      \instrStaff \markup { "" \raise #-10 Harpe. } <<
        \keepWithTag #'() \global
        \clef treble \includeNotes #"harpe1"
      >>
      \instrStaff \markup "" <<
        \keepWithTag #'() \global
        \clef bass \includeNotes #"harpe2"
      >>
    >>

    \instrStaff \markup \instruments { "Viola" "da Gamba." } <<
      \keepWithTag #'() \global
      \clef bass \includeNotes #"gamba"
    >>
    \instrStaff \markup \instruments { "Teorba, e" "Bassons e" "Violoncelli." } <<
      \keepWithTag #'teorba \global
      \clef bass \includeNotes #"bassi"
    >>

    \lyricStaff \markup "" <<
      \keepWithTag #'(recit bass) \global
      \includeNotes #"recit"
      \includeNotes #"bassi2"
    >> \includeLyrics #"lyrics"
  >>
  
  \header {
    piece = \markup \bigger \bigger "SINFONIA."
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 60 }
}
