% -*- LilyPond -*-
% vim: ft=lilypond :

\version "2.6.0"

markingsI = {}
markingsII = {}
markingsIII = {}
markingsIV = {}

\include "defs.ly"
\include "../defs.ly"

\include "i-violin1.ly"
\include "i-violin2.ly"
\include "i-viola.ly"
\include "i-violoncello.ly"

#(set-global-staff-size 12)

\score {
  <<
    \barNumberDefaultStyle
    \override Score.BarNumber #'padding = #3

    \context StaffGroup = "strings" <<
      \context Staff = violinI <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrument = "Violino I."
        \set Staff.instr = "Vl.I"

        \timeI
        \violinIFirstMov
        \context Voice = "markings" { \markingsI }
      >>

      \context Staff = violinII <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrument = "Violino II."
        \set Staff.instr = "Vl.II"

        \timeI
        \violinIIFirstMov
      >>

      \context Staff = "viola" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrument = "Viola."
        \set Staff.instr = "Vla"

        \timeI
        \violaFirstMov
      >>

      \context Staff = "cello" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrument = "Violoncello."
        \set Staff.instr = "Vc."

        \timeI
        \celloFirstMov
      >>
    >>
  >>

  \include "i-midi.ly"

  \header {
    piece = \headerI
  }

  \layout { }
}

\include "ii-violin1.ly"
\include "ii-violin2.ly"
\include "ii-viola.ly"
\include "ii-violoncello.ly"

\score {
  <<
    \barNumberDefaultStyle
    \override Score.BarNumber   #'padding = #3

    \context StaffGroup = "strings" <<
      \context Staff = violinI <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrument = "Violino I."
        \set Staff.instr = "Vl.I"

        \timeII
        \violinISecondMov
        \context Voice = "markings" { \markingsII }
      >>

      \context Staff = violinII <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrument = "Violino II."
        \set Staff.instr = "Vl.II"

        \timeII
        \violinIISecondMov
      >>

      \context Staff = "viola" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrument = "Viola."
        \set Staff.instr = "Vla"

        \timeII
        \violaSecondMov
      >>

      \context Staff = "cello" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrument = "Violoncello."
        \set Staff.instr = "Vc."

        \timeII
        \celloSecondMov
      >>
    >>
  >>

  \include "ii-midi.ly"

  \header {
    piece = \headerII
  }

  \layout { }
}

\include "iii-violin1.ly"
\include "iii-violin2.ly"
\include "iii-viola.ly"
\include "iii-violoncello.ly"

\score {
  <<
    \barNumberDefaultStyle
    \override Score.BarNumber   #'padding = #3

    \context StaffGroup = "strings" <<
      \context Staff = violinI <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrument = "Violino I."
        \set Staff.instr = "Vl.I"

        \timeIII
        \violinIThirdMov
        \context Voice = "markings" { \markingsIII }
      >>

      \context Staff = violinII <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrument = "Violino II."
        \set Staff.instr = "Vl.II"

        \timeIII
        \violinIIThirdMov
      >>

      \context Staff = "viola" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrument = "Viola."
        \set Staff.instr = "Vla"

        \timeIII
        \violaThirdMov
      >>

      \context Staff = "cello" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrument = "Violoncello."
        \set Staff.instr = "Vc."

        \timeIII
        \celloThirdMov
      >>
    >>
  >>

  \include "iii-midi.ly"

  \header {
    piece = \headerIII
  }

  \layout { }
}

\include "iv-violin1.ly"
\include "iv-violin2.ly"
\include "iv-viola.ly"
\include "iv-violoncello.ly"

\score {
  <<
    \barNumberDefaultStyle
    \override Score.BarNumber   #'padding = #3

    \context StaffGroup = "strings" <<

      \context Staff = violinI <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrument = "Violino I."
        \set Staff.instr = "Vl.I"

        \timeIV
        \violinIFourthMov	
        \context Voice = "markings" { \markingsIV }
      >>

      \context Staff = violinII <<
        \set Staff.midiInstrument = #"violin"
        \set Staff.instrument = "Violino II."
        \set Staff.instr = "Vl.II"

        \timeIV
        \violinIIFourthMov
      >>

      \context Staff = "viola" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrument = "Viola."
        \set Staff.instr = "Vla"

        \timeIV
        \violaFourthMov
      >>

      \context Staff = "cello" <<
        \set Staff.midiInstrument = #"cello"
        \set Staff.instrument = "Violoncello."
        \set Staff.instr = "Vc."

        \timeIV
        \celloFourthMov
      >>
    >>
  >>

  \include "iv-midi.ly"

  \header {
    piece = \headerIV
  }

  \layout { }
}
