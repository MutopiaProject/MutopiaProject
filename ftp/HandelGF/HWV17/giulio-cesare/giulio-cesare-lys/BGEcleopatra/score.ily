%% Aria. Cleopatra: Tutto può donna Vezzosa, s'amorosa
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \new InnerStaffGroup <<
        \instrStaff \markup "Tutti Violini." <<
          \keepWithTag #'up \global
          \clef treble \includeNotes #"violini"
        >>
        \instrStaff \markup "Viola." <<
          \keepWithTag #'() \global
          \clef alto \includeNotes #"viola"
        >>
      >>
      \instrStaff \markup "Oboe." <<
        \keepWithTag #'() \global 
        \clef treble \includeNotes #"oboe"
      >>
      \lyricStaff \markup "Cleopatra." <<
        \keepWithTag #'cleopatra \global
        \cleopatra \includeNotes #"cleopatra" 
      >> \includeLyrics #"cleopatra-lyrics" 
    >>
    \instrStaff \markup "Bassi." <<
      \scoreInit
      \keepWithTag #'down \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 88 }
}

\markup \large \fill-line {
 "(Mentre Cleopatra vuol partire, vien ritenuta da Nireno.)"
}
