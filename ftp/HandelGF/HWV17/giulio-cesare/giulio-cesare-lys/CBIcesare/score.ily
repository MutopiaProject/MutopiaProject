%% 
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup Tutti. <<
        \scoreInit
        \keepWithTag #'up \global
        \clef treble \includeNotes #"tutti"
      >>
      \instrStaff \markup {(Violino II.)} <<
        \keepWithTag #'() \global
        \clef treble \includeNotes #"violino2"
      >>
      \instrStaff \markup { (Viola.) } <<
        \keepWithTag #'() \global
        \clef alto \includeNotes #"viola"
      >>
      \instrStaff \markup Bassons. <<
        \keepWithTag #'() \global
        \clef bass \includeNotes #"bassons"
      >>
      
      \lyricStaff \markup Cesare. <<
        \keepWithTag #'() \global
        \cesare \includeNotes #"cesare"
      >> \includeLyrics #"cesare-lyrics"
    >>
    \instrStaff \markup Bassi. <<
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 120 }
}
