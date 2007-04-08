%% Aria. Cleopatra: Piangerò la sorte mia
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup \column { "Traversa," "e Violino I." } <<
        \keepWithTag #'up \global
        \clef treble
        {
          \includeNotes #"violino1-1"
          <<
            s1^\markup "Viol I. II."
            \includeNotes #"violini-2"
          >>
        }
      >>
      \new Staff \with {
        \remove "Axis_group_engraver"
        \consists "Hara_kiri_engraver"
        \override Beam #'auto-knee-gap = #'()
        \override VerticalAxisGroup #'remove-empty = ##t
      } <<
        \set Staff . instrument = \markup \instrument-name "Violino II."
        \keepWithTag #'() \global
        \clef treble
        \includeNotes #"violino2-1"
      >>
      \lyricStaff \markup Cleopatra. <<
        \keepWithTag #'() \global
        {
          \cleopatra \includeNotes #"cleopatra-1" 
          \cleopatra \includeNotes #"cleopatra-2" 
        }
      >> { 
        \includeLyrics #"cleopatra-lyrics-1"
        \includeLyrics #"cleopatra-lyrics-2" 
      }
    >>
    \new InstrumentStaffGroup <<
      \new Staff \with {
        \remove "Axis_group_engraver"
        \consists "Hara_kiri_engraver"
        \override Beam #'auto-knee-gap = #'()
        \override VerticalAxisGroup #'remove-empty = ##t
      } <<
        \keepWithTag #'() \global
        \clef bass
        \override Score.VerticalAxisGroup #'remove-first = ##t
        { 
          s4.*47 
          << s1^\markup "Violoncello."
             \includeNotes #"cello-2" >>
        }
      >>
      \instrStaff \markup "Bassi." <<
        \scoreInit
        \keepWithTag #'down \global
        \clef bass
        {
          \includeNotes #"bassi-1"
          <<
            \includeNotes #"bassi-2"
            \break
            \includeFigures #"figures-2"
          >>
        }
      >>
    >>
  >>
  \header { breakbefore = #(break-before?) }
  \layout { #(define tweak-key (*current-piece*)) }
  \midi { \tempo 4 = 54 }
}
