%% Cleopatra: V'adoro, pupile.
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup \instruments { "Oboe, e" "Violino I." } <<
        \scoreInit 
        \keepWithTag #'(up tutti) \global
        \clef treble
        \includeNotes #"tutti"
      >>
      \instrStaff \markup {Violino II.} <<
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"violino2"
      >>
      \instrStaff \markup {Viola.} <<
        \keepWithTag #'() \global
        \clef alto
        \includeNotes #"viola"
      >>
      
      \instrStaff \markup \instruments { "Viola" "da Gamba." } <<
        \keepWithTag #'() \global
        \clef bass
        \includeNotes #"gamba"
      >>
      \instrStaff \markup \instruments {
        "Teorba, Harpe," "Bassons e" "Violoncelli." }
      <<
        \keepWithTag #'() \global
        \clef bass
        \includeNotes #"bassi"
      >>
      
      \lyricStaff \markup Cleopatra. <<
        \keepWithTag #'() \global
        \cleopatra \includeNotes #"cleopatra"
      >> \includeLyrics #"cleopatra-lyrics"
    >>
    \new InstrumentStaffGroup <<
      \new InnerStaffGroup <<
        \instrStaff \markup "Violino I." <<
          \keepWithTag #'() \global
          \clef treble
          \includeNotes #"orch-violino1"
        >>
        \instrStaff \markup "Violino II." <<
          \keepWithTag #'() \global
          \clef treble
          \includeNotes #"orch-violino2"
        >>
        \instrStaff \markup "Viola." <<
          \keepWithTag #'() \global
          \clef alto
          \includeNotes #"orch-viola"
        >>
        \instrStaff \markup "Bassi." <<
          \keepWithTag #'down \global
          \clef bass
          \includeNotes #"orch-bassi"
        >>
      >>
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 60 }
}
