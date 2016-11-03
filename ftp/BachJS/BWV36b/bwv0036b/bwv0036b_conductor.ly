#(ly:set-option 'relative-includes #t)

#(set-global-staff-size 14.5)
\include "common/bwv0036b.ily"

\include "common/woodwindStaves.ily"
\include "common/stringStaves.ily"
\include "common/vocalStaves.ily"
\include "common/continuoStaff.ily"

\header {
    scoretype = "Partitur / Score"
}

\include "parts/bwv0036b_01.ily"
fluteOboeMarkup = \markup {
  \override #'(baseline-skip . 2.5)
  \center-column { \fluteName
           \line { \oboeName } }
}
\bookpart {
  \include "common/title_section.ily"
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \singleStaff \fluteOboeMarkup << \fluteMusic \globalMarksBreaks >>
      \vlIvlIIvla \violinIMusic \violinIIMusic \violaMusic
      \satbchoir \sopranoMusic \sopranoLyrics \altoMusic \altoLyrics
                 \tenorMusic \tenorLyrics \bassMusic \bassLyrics
      \continuoStaff << \continuoMusic \marksBottom >> { }
    >>
    \layout {
      indent = 1.7\cm
      incipit-width = 0.7\cm
      \context { \Staff \RemoveEmptyStaves }
      \context {
        \Score
        \remove "Mark_engraver"
        \remove "Staff_collecting_engraver"
      }
    }
  }
}

\include "parts/bwv0036b_02.ily"
\bookpart {
  \paper {
    system-count = #5
  }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \tenorStaff << \tenorMusic \globalMarksBreaks >> \tenorLyrics
      \continuoStaff \continuoMusic \contFigBass
    >>
    \layout {
      indent = 1.7\cm
      incipit-width = 0.7\cm
    }
  }
}

\include "parts/bwv0036b_03.ily"
\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \oboeStaff << \oboeMusic \globalMarksBreaks >>
      \tenorStaff \tenorMusic \tenorLyrics
      \continuoStaff << \continuoMusic \marksTopBottom \continuoMarks >> { }
    >>
    \layout {
      indent = 1.7\cm
      incipit-width = 0.7\cm
      \context {
        \Score
        \remove "Mark_engraver"
        \remove "Staff_collecting_engraver"
      }
    }
  }
}

\include "parts/bwv0036b_04.ily"
\include "common/stringStaves.ily"
\bookpart {
  \paper {
    system-count = #5
  }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \vlIvlIIvla \violinIMusic \violinIIMusic \violaMusic
      \altoStaff \altoMusic \altoLyrics
      \continuoStaff << \continuoMusic \globalMarksBreaks >> \contFigBass
    >>
    \layout {
      indent = 1.7\cm
      incipit-width = 0.7\cm
    }
  }
}

\include "parts/bwv0036b_05.ily"
\addQuote "violinI" { \violinIMusic }
\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \new StaffGroup <<
        \new Staff = "FlVlI" <<
          \set Staff.instrumentName = \markup {
                  \override #'(baseline-skip . 2.5)
                  \center-column { \fluteName
                           \line { \violinIName } } }
          \new Voice { \fluteMusic }
          \new Voice { \globalMarksBreaks }
          \new Voice {
            s1*36 s2
            \new Staff \with {
              \remove "Time_signature_engraver"
              \RemoveAllEmptyStaves
              alignAboveContext = #"FlVlI"
              \override StaffSymbol.staff-space = #(magstep -2)
              fontSize = #-2
              firstClef = ##f
              explicitKeySignatureVisibility = #all-invisible
            } {
              \globalNoTimeSig \quoteDuring #"violinI" {
                s16\mark\markup{ "Ossia Vl I" } s16 s8 s4 s2 s8 }
              \stopStaff
            }
            s8 s4 s1*4 s4 s8
            \new Staff \with {
              \remove "Time_signature_engraver"
              \RemoveAllEmptyStaves
              alignAboveContext = #"FlVlI"
              \override StaffSymbol.staff-space = #(magstep -2)
              fontSize = #-2
              firstClef = ##f
              explicitKeySignatureVisibility = #all-invisible
            } {
              \globalNoTimeSig s8\mark\markup{ "Ossia Vl I" }
              \quoteDuring #"violinI" {
                s16 s16 s8 s4 s4. }
              s16 \stopStaff
            }
          }
        >>
        \violinIIStaff \violinIIMusic
        \violaStaff \violaMusic
      >>
      \altoStaff \altoMusic \altoLyrics
      \continuoStaff \continuoMusic { }
    >>
    \layout {
      indent = 1.7\cm
      incipit-width = 0.7\cm
      \context { \Staff \RemoveEmptyStaves }
    }
  }
}

\include "parts/bwv0036b_06.ily"
\bookpart {
  \paper {
    system-count = #5
  }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \sopranoStaff \sopranoMusic \sopranoLyrics
      \continuoStaff \continuoMusic \contFigBass
    >>
    \layout {
      indent = 1.7\cm
      incipit-width = 0.7\cm
    }
  }
}

\include "parts/bwv0036b_07.ily"
fluteviolinMarkup = \markup {
  \override #'(baseline-skip . 2.5)
  \center-column { \fluteName
           \line { \violinName } }
}
\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \singleStaff \fluteviolinMarkup
        << \globalMarksBreaks \trebleMarks \violinMusic >>
      \sopranoStaff \sopranoMusic \sopranoLyrics
      \continuoStaff \continuoMusic { }
    >>
    \layout {
      \context { \Staff \RemoveEmptyStaves }
      \context {
        \Score
        \remove "Mark_engraver"
        \remove "Staff_collecting_engraver"
      }
      \context {
        \Voice
        \override Script.padding = #0.5
      }
    }
  }
}

\include "parts/bwv0036b_08.ily"
fluteoboeviolinIMarkup = \markup {
  \override #'(baseline-skip . 2.5)
  \center-column { \fluteName
           \line { \oboeName }
           \line { \violinIName } }
}
\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \new StaffGroup <<
        \singleStaff \fluteoboeviolinIMarkup
          << \globalMarksBreaks \fluteMusic >>
        \violinIIStaff \violinIIMusic
        \violaStaff \violaMusic
      >>
      \satbchoir \sopranoMusic \sopranoLyrics \altoMusic \altoLyrics
                 \tenorMusic \tenorLyrics \bassMusic \bassLyrics
      \continuoStaff << \continuoMusic \figBassWarning >> \contFigBass
    >>
    \layout {
      indent = 1.7\cm
      incipit-width = 0.7\cm
      \context { \Staff \RemoveEmptyStaves }
      \context {
        \Score
        \remove "Mark_engraver"
        \remove "Staff_collecting_engraver"
      }
    }
  }
}

