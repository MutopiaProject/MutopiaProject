%% Aria. Sesto: Cara speme, questo core tu cominci a lusingar
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      {
        \skip 1*25 \skip 4
        \context Staff = "tutti" <<
          \set Staff.alignAboveContext = #"sesto"
          \set Staff.voltaOnThisStaff = ##t
          \keepWithTag #'() \global
          \includeNotes #"tutti"
        >>   
      }
      \lyricStaffWithName #'("sesto" "Sesto.") <<
        \keepWithTag #'(full up) \global
        \sesto \includeNotes #"sesto" 
        {
          \skip 1*25 \skip 4 \bar "" \break
          \set Staff.voltaOnThisStaff = ##f
        }
      >> \includeLyrics #"sesto-lyrics"
    >>
    \instrStaffWithName #"bassi" #"Bassi." <<
      \scoreInit
      \keepWithTag #'(full down) \global
      \clef bass \includeNotes #"bassi"
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 60 }
}
