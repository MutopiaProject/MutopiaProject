%% Sinfonia
\score {
  \new StaffGroup <<
    \instrStaff \markup \instruments { "Oboe, e" "Violino I." } <<
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
    
    \new InnerStaffGroup <<
      \instrStaff \markup \instruments { "Oboe I.  " "Violino I." } <<
        \keepWithTag #'() \global
        \clef treble \includeNotes #"orch-tutti1"
      >>
      \instrStaff \markup \instruments { "Oboe II.  " "Violino II." } <<
        \keepWithTag #'() \global
        \clef treble \includeNotes #"orch-tutti2"
      >>
      \instrStaff \markup "Viola." <<
        \keepWithTag #'() \global
        \clef alto \includeNotes #"orch-viola"
      >>
      \instrStaff \markup "Bassi." <<
        \keepWithTag #'() \global
        \clef bass \includeNotes #"orch-bassi"
      >>
    >>
  >>
  \header {
    scenedescr = \markup \column {
      \fill-line { "Quì s'apre il Parnasso, e vedesi in trono la Virtù" }
      \fill-line { "assista delle nove Muse." }
    }
    breakbefore = #(break-before?)
  }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 60 }
}
