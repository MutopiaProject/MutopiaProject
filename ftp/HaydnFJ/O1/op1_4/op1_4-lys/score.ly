\version "2.18.2"
\language "deutsch"

% showLastLength = s1 * 14

#(set-global-staff-size 18)

\paper {
  ragged-bottom = ##f
  ragged-last-bottom = ##f
}

breakVoice = {}

\include "header.ily"
\include "defs.ily"
\include "vl_i_a.ily"
\include "vl_ii_a.ily"
\include "vla_a.ily"
\include "vc_a.ily"
\include "vl_i_b.ily"
\include "vl_ii_b.ily"
\include "vla_b.ily"
\include "vc_b.ily"
\include "vl_i_c.ily"
\include "vl_ii_c.ily"
\include "vla_c.ily"
\include "vc_c.ily"
\include "vl_i_d.ily"
\include "vl_ii_d.ily"
\include "vla_d.ily"
\include "vc_d.ily"
\include "vl_i_e.ily"
\include "vl_ii_e.ily"
\include "vla_e.ily"
\include "vc_e.ily"

ViolinIPart_a = \new Staff \with {
  instrumentName = "Violin I"
  midiInstrument = "violin"
  midiPanPosition = #-0.9
  midiMaximumVolume = #1
} \ViolinI_a

ViolinIIPart_a = \new Staff \with {
  instrumentName = "Violin II"
  midiInstrument = "violin"
  midiPanPosition = #-0.2
  midiMaximumVolume = #0.9
} \ViolinII_a

ViolaPart_a = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "viola"
  midiPanPosition = #0.3
  midiMaximumVolume = #0.98
} \Viola_a

CelloPart_a = \new Staff \with {
  instrumentName = "Violoncello"
  midiInstrument = "cello"
  midiPanPosition = #0.9
  midiMaximumVolume = #0.95
} \Cello_a

ViolinIPart_b = \new Staff \with {
  instrumentName = "Violin I"
  midiInstrument = "violin"
  midiPanPosition = #-0.9
  midiMaximumVolume = #0.95
} \ViolinI_b

ViolinIIPart_b = \new Staff \with {
  instrumentName = "Violin II"
  midiInstrument = "violin"
  midiPanPosition = #-0.3
  midiMaximumVolume = #0.9
} \ViolinII_b

ViolaPart_b = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "viola"
  midiPanPosition = #0.3
  midiMaximumVolume = #0.98
} \Viola_b

CelloPart_b = \new Staff \with {
  instrumentName = "Violoncello"
  midiInstrument = "cello"
  midiPanPosition = #0.9
  midiMaximumVolume = #0.95
} \Cello_b

ViolinIPart_c = \new Staff \with {
  instrumentName = "Violin I"
  midiInstrument = "violin"
  midiPanPosition = #-0.9
  midiMaximumVolume = #0.95
} \ViolinI_c

ViolinIIPart_c = \new Staff \with {
  instrumentName = "Violin II"
  midiInstrument = "violin"
  midiPanPosition = #-0.2
  midiMaximumVolume = #0.9
} \ViolinII_c

ViolaPart_c = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "viola"
  midiPanPosition = #0.3
  midiMaximumVolume = #0.98
} \Viola_c

CelloPart_c = \new Staff \with {
  instrumentName = "Violoncello"
  midiInstrument = "cello"
  midiPanPosition = #0.9
  midiMaximumVolume = #0.95
} \Cello_c

ViolinIPart_d = \new Staff \with {
  instrumentName = "Violin I"
  midiInstrument = "violin"
  midiPanPosition = #-0.9
  midiMaximumVolume = #0.95
} \ViolinI_d

ViolinIIPart_d = \new Staff \with {
  instrumentName = "Violin II"
  midiInstrument = "violin"
  midiPanPosition = #-0.2
  midiMaximumVolume = #0.9
} \ViolinII_d

ViolaPart_d = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "viola"
  midiPanPosition = #0.3
  midiMaximumVolume = #0.98
  midiMinimumVolume = #0.01
} \Viola_d

CelloPart_d = \new Staff \with {
  instrumentName = "Violoncello"
  midiInstrument = "cello"
  midiPanPosition = #0.9
  midiMaximumVolume = #0.95
} \Cello_d

ViolinIPart_e = \new Staff \with {
  instrumentName = "Violin I"
  midiInstrument = "violin"
  midiPanPosition = #-0.9
  midiMaximumVolume = #0.95
} \ViolinI_e

ViolinIIPart_e = \new Staff \with {
  instrumentName = "Violin II"
  midiInstrument = "violin"
  midiPanPosition = #-0.3
  midiMaximumVolume = #0.9
} \ViolinII_e

ViolaPart_e = \new Staff \with {
  instrumentName = "Viola"
  midiInstrument = "viola"
  midiPanPosition = #0.3
  midiMaximumVolume = #0.98
} \Viola_e

CelloPart_e = \new Staff \with {
  instrumentName = "Violoncello"
  midiInstrument = "cello"
  midiPanPosition = #0.9
  midiMaximumVolume = #0.95
} \Cello_e

% \score {
%   \new StaffGroup {
%     <<
%       \ViolinIPart_a
%       \ViolinIIPart_a
%       \ViolaPart_a
%       \CelloPart_a
%     >>
%   }
%   \header {
%     piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #2 { "I." } } } }
%   }
%   \layout { indent = 20 \mm }
%   \midi {
%     \tempo 8 = 160
%   }
% }
%
% \pageBreak
%
% \score {
%   \new StaffGroup {
%     <<
%       \ViolinIPart_b
%       \ViolinIIPart_b
%       \ViolaPart_b
%       \CelloPart_b
%     >>
%   }
%   \header {
%     opus = " "
%     piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #3 { "II. Menuetto" } } } }
%   }
%   \layout { indent = 20 \mm }
%   \midi {
%     \tempo 4 = 130
%   }
% }
%
% % \pageBreak
%
% \score {
%   \new StaffGroup {
%     <<
%       \ViolinIPart_c
%       \ViolinIIPart_c
%       \ViolaPart_c
%       \CelloPart_c
%     >>
%   }
%   \header {
%     opus = " "
%     piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #2 { "III." } } } }
%   }
%   \layout { indent = 20 \mm }
%   \midi {
%     \tempo 4 = 55
%   }
% }
%
% \pageBreak
%
\score {
  \new StaffGroup {
    <<
      \ViolinIPart_d
      \ViolinIIPart_d
      \ViolaPart_d
      \CelloPart_d
    >>
  }
  \header {
    opus = " "
    piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold \raise #3 { "IV. Menuetto" } } } }
  }
  \layout {
    indent = 20 \mm
  }
  \midi {
    \tempo 4 = 140
  }
}
%
% \pageBreak
%
% \score {
%   \new StaffGroup {
%     <<
%       \ViolinIPart_e
%       \ViolinIIPart_e
%       \ViolaPart_e
%       \CelloPart_e
%     >>
%   }
%   \header {
%     opus = " "
%     piece = \markup { \fill-line { \center-column { \abs-fontsize #16 \bold { "V." } } } }
%   }
%   \layout { indent = 20 \mm }
%   \midi {
%     \tempo 4 = 106
%   }
% }