#(ly:set-option 'relative-includes #t)

layoutStaffSize = #13.5
#(set-global-staff-size #'layoutStaffSize)
\include "common/bwv0036b.ily"

\include "common/woodwindStaves.ily"
\include "common/stringStaves.ily"
\include "common/vocalStaves.ily"
\include "common/keyboardStaff.ily"
\include "common/continuoStaff.ily"

\header {
    scoretype = "Klavierauszug / Vocal Score"
}

\include "parts/bwv0036b_01.ily"
keybMarkup = \markup {
  \override #'(baseline-skip . 2.5)
  \center-column { \fluteName
           \line { \oboeName }
           \line { \violinsName }
           \line { \violaName }
           \line { \continuoName } }
}
\bookpart {
  \include "common/title_section.ily"
  \paper {
    min-systems-per-page = #3
  }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \satbchoir \sopranoMusic \sopranoLyrics \altoMusic \altoLyrics
                 \tenorMusic \tenorLyrics \bassMusic \bassLyrics
      \keybStaff \keybMarkup
                 \markup { } << \trebKeybA \globalMarksBreaks \\ \trebKeybB >>
                 { } \markup { } << \bassKeybA \marksBottom \\ \bassKeybB >>
    >>
    \layout {
      incipit-width = 1.0\cm
      indent = 2.2\cm
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
      #(layout-set-staff-size 15.5)
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
      \tenorStaff << \tenorMusic \globalMarksBreaks >> \tenorLyrics
      \keybStaff \markup { }
                 \oboeMarkup \oboeMusic \keybDynamics
                 \continuoMarkup << \continuoMusic \marksTopBottom >>
    >>
    \layout {
      \context { \Staff \RemoveEmptyStaves }
      \context {
        \Score
        \remove "Mark_engraver"
        \remove "Staff_collecting_engraver"
      }
    }
  }
}

\include "parts/bwv0036b_04.ily"
\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \altoStaff << \altoMusic \globalMarksBreaks >> \altoLyrics
      \continuoStaff \continuoMusic \contFigBass
    >>
    \layout {
        #(layout-set-staff-size 15.5)
        indent = 1.7\cm
        incipit-width = 0.7\cm
    }
  }
}

\include "parts/bwv0036b_05.ily"
keybMarkup = \markup {
  \override #'(baseline-skip . 2.5)
  \center-column { \fluteName
           \line { \violinsName }
           \line { \violaName }
           \line { \continuoName } }
}
\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \altoStaff << \altoMusic \globalMarksBreaks >> \altoLyrics
      \keybStaff \keybMarkup
                 \markup { } << \global \trebKeybA \\ \trebKeybB >>
                 \keybDynamics 
                 \markup { } << \global \bassKeybA \\ \bassKeybB >>
    >>
    \layout {
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
      \sopranoStaff << \sopranoMusic \globalMarksBreaks >> \sopranoLyrics
      \continuoStaff \continuoMusic \contFigBass
    >>
    \layout {
        #(layout-set-staff-size 15.5)
        indent = 1.7\cm
        incipit-width = 0.7\cm
    }
  }
}

\include "parts/bwv0036b_07.ily"
keybMarkup = \markup {
  \override #'(baseline-skip . 2.5)
  \center-column { \fluteName
           \line { \violinName } }
}
\bookpart {
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \sopranoStaff << \sopranoMusic \globalMarksBreaks >> \sopranoLyrics
      \keybStaff \keybMarkup
                 \markup { } << \violinMusic \trebleMarks >>
                 \keybDynamics
                 \markup { } << \continuoMusic \globalMarksBreaks \bassMarks >>
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
keybMarkup = \markup {
  \override #'(baseline-skip . 2.5)
  \center-column { \fluteName
           \line { \oboeName }
           \line { \violinsName }
           \line { \violaName }
           \line { \continuoName } }
}
\bookpart {
  \paper {
    min-systems-per-page = #3
  }
  \score {
    \header { piece = \pieceName }
    <<
      \set Score.tempoHideNote = ##t
      \satbchoir \sopranoMusic \sopranoLyrics \altoMusic \altoLyrics
                 \tenorMusic \tenorLyrics \bassMusic \bassLyrics
      \keybStaff \keybMarkup
                 \markup { } << \global \trebKeybA \\ \trebKeybB >>
                 \keybDynamics
                 \markup { } << \global \bassKeybA \\ \bassKeybB >>
    >>
    \layout {
      incipit-width = 1.0\cm
      indent = 2.2\cm
      \context { \Staff \RemoveEmptyStaves }
      \context {
        \Score
        \remove "Mark_engraver"
        \remove "Staff_collecting_engraver"
      }
    }
  }
}

