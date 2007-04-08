%% Aria. Cesare: Al lampo dell'armi
\score {
  \new OrchestraStaffGroup <<
    \new InstrumentStaffGroup <<
      \instrStaff \markup \column { "(Violini)" "unisoni." } <<
        \keepWithTag #'(up full) \global
        \clef treble \includeNotes #"violini" 
      >>
      \lyricStaffWithName #'("cesare" "Cesare.") <<
        \keepWithTag #'(cesare full) \global
        \cesare \includeNotes #"cesare" 
        { \skip 1*55
          <<
            { s1 s1  \clef treble
              \once \override Staff . RehearsalMark #'direction = #1
              \once \override Staff . RehearsalMark #'no-spacing-rods = ##t
              \once \override Staff . RehearsalMark #'self-alignment-X = #1
              \once \override Staff . RehearsalMark #'padding = #-2.5
              \mark "Durastanti."
              s1^\markup { Voci di congiurati di dentro. } }
            \includeNotes #"coro-soprano" 
          >>
        } 
      >> {\includeLyrics #"cesare-lyrics" 
          \includeLyrics #"coro-lyrics" }
    >>
    \instrStaffWithName #"bassi" #"(Bassi.)" <<
      \scoreInit
      \keepWithTag #'(down full) \global
      \clef bass \includeNotes #"bassi"
    >>
    { \skip 1*55
      \new Staff <<
        \set Staff.alignAboveContext = "bassi"
        \keepWithTag #'() \global
        \clef alto
        \new Voice <<
          {\oneVoice s1*2 
            \once \override Staff . RehearsalMark #'direction = #1
            \once \override Staff . RehearsalMark #'no-spacing-rods = ##t
            \once \override Staff . RehearsalMark #'self-alignment-X = #1
            \once \override Staff . RehearsalMark #'padding = #-4
            \mark \markup \column  { \right-align "Robinson."
                                     \right-align "Berenstadt Bigongi." }
           \voiceOne s4 \oneVoice s4 \voiceOne s2
           \voiceOne s4 \oneVoice s4 \voiceOne s2
           \voiceOne s4 \oneVoice s4 \voiceOne s4 \oneVoice s4 
           \voiceOne s4 \oneVoice s4 \voiceOne s4 \oneVoice s4 
         }
          \set Voice . autoBeaming = ##f
          \includeNotes #"coro-alto1" 
        >>
        \context Voice = "alto" { 
          \voiceTwo
          \set Voice . autoBeaming = ##f
          \includeNotes #"coro-alto2" 
        }
        \new Lyrics {
          \set Lyrics.alignAboveContext = "bassi"
          \set associatedVoice = #"alto"
          \includeLyrics #"coro-metered-lyrics"
        }
      >>
    } 
    { \skip 1*55
      \new Staff <<
        \clef bass
        \set Staff.alignAboveContext = "bassi"
        \keepWithTag #'() \global
        \context Voice = "bass" <<
          \set Voice . autoBeaming = ##f
          { s1*2 
            \once \override Staff . RehearsalMark #'direction = #1
            \once \override Staff . RehearsalMark #'no-spacing-rods = ##t
            \once \override Staff . RehearsalMark #'self-alignment-X = #1
            \once \override Staff . RehearsalMark #'padding = #-4
            \mark \markup \column  { \right-align "Boschi."
                                     \right-align "La Gare." }
          }
          \includeNotes #"coro-bass"
          \new Lyrics {
            \set Lyrics.alignAboveContext = "bassi"
            \set associatedVoice = #"bass"
            \includeLyrics #"coro-metered-lyrics"
          }
        >>
      >>
    }
  >>
  \header { breakbefore = #(break-before?) }
  \layout { indent = \largeindent
            #(define tweak-key (*current-piece*)) }
  \midi {\tempo 4 = 128}
}
