\version "2.14.0"
% Antonín Dvořák
\paper {
  #(layout-set-staff-size 15)
  indent = 2.5\cm
  short-indent = 0.8\cm
  ragged-last-bottom = ##f
  page-limit-inter-system-space = ##t
  system-separator-markup = \slashSeparator
}
\include "header.ily"
% Included files define one variable for each part
% Variables for transposing instrument contain their
%  notes at written pitch, as opposed to concert pitch
\include "woods.notesA.ily"
\include "brass.notesA.ily"
\include "strings.notesA.ily"
\include "percussion.notesA.ily"

%\pointAndClickOff
\header {
  meter = \markup\huge "Movement I"
}
\score {
  \keepWithTag #'score \killCues  <<
    \new Devnull \conductormA
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = \markup\center-column {
          "Flute I II" "Piccolo"
        }
        shortInstrumentName = #"Fl"
      } \partcombine \fluteImA \fluteIImA
      \new Staff \with {
        instrumentName = #"Oboe I II"
        shortInstrumentName = #"Ob"
      } \partcombine \oboeImA \oboeIImA
      \new Staff \with {
        instrumentName = \markup\center-column {
          "Clarinet I II" "in A"
        }
        shortInstrumentName = #"Cl(A)"
      } \partcombine \clarinetImA \clarinetIImA
      \new Staff \with {
        instrumentName = #"Bassoon I II"
        shortInstrumentName = #"Ba"
      } \partcombine \bassoonImA \bassoonIImA
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \new Staff \with {
          instrumentName = \markup\center-column {
            "Horn I II" "in E"
          }
          shortInstrumentName = #"H(E)"
          soloText = #"Solo I"
        } \partcombine \hornImA \hornIImA
        \new Staff \with {
          instrumentName = \markup\center-column {
            "Horn III IV" "in C, then E"
          }
          shortInstrumentName = #"H(C)"
          soloText = #"Solo III"
          soloIIText = #"Solo IV"
        } \partcombine \hornIIImA \hornIVmA
      >>
      \new Staff \with {
        instrumentName = \markup\center-column {
          "Trumpet I II" "in E, then C"
        }
        shortInstrumentName = #"T(E)"
      } \partcombine \trumpetImA \trumpetIImA
      \new GrandStaff <<
        \new Staff \with {
          instrumentName = \markup\center-column {
            "Alto Trombone" "Tenor Trombone"
          }
          shortInstrumentName = #"Tbn"
          midiInstrument = #"trombone"
          soloText = #"Solo Alto"
          soloIIText = #"Solo Tenor"
        } \partcombine \tromboneImA \tromboneIImA
        \new Staff \with {
          instrumentName = #"Bass Trombone"
          shortInstrumentName = #"BTbn"
        } \bassTrombonemA
      >>
    >>
    \new Staff \with {
      instrumentName = \markup\center-column {
        "Timpani" \concat{"A E B" \natural}
      }
      shortInstrumentName = #"Tmp"
    } \timpanimA 
    \new StaffGroup <<
      \new GrandStaff <<
        \new Staff \with {
          instrumentName = #"Violin I"
          shortInstrumentName = #"V1"
        } \violinImA
        \new Staff \with {
          instrumentName = #"Violin II"
          shortInstrumentName = #"V2"
        } \violinIImA
      >>
      \new Staff \with {
        instrumentName = #"Viola"
        shortInstrumentName = #"Va"
      } \violamA
      \new Staff \with {
        instrumentName = "Violincello"
        shortInstrumentName = #"Vcl"
      } \cellomA
      \new Staff \with {
        instrumentName = "Contrabass"
        shortInstrumentName = #"Cb"
      } \bassmA
    >>
  >>
  \layout {
    \context{
      \Staff \RemoveEmptyStaves
    }
  }
}

% MIDI output in a separate score to avoid
% issue 645 with \partcombine and \midi
\score {
  \keepWithTag #'score \killCues  <<
    \new Devnull \conductormA 
    \new Staff="flute" \with {
      midiInstrument = #"flute" 
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.7
    } << \fluteImA \fluteIImA >>
    \new Staff="oboe" \with {
      midiInstrument = #"oboe" 
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.7
    } << \oboeImA \oboeIImA >>
    \new Staff="clarinet" \with {
      midiInstrument = #"clarinet"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.7
    } << \clarinetImA \clarinetIImA >>
    \new Staff="bassoon" \with {
      midiInstrument = #"bassoon"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.7
    } << \bassoonImA \bassoonIImA >>
    \new Staff="french hornA" \with {
      midiInstrument = #"french horn"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \hornImA \hornIImA >>
    \new Staff="french hornB" \with {
      midiInstrument = #"french horn"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \hornIIImA \hornIVmA >>
    \new Staff="trumpet" \with {
      midiInstrument = #"trumpet"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \trumpetImA \trumpetIImA >>
    \new Staff="trombone" \with {
      midiInstrument = #"trombone"
      midiMinimumVolume = #0.4
      midiMaximumVolume = #1.0
    } << \tromboneImA \tromboneIImA \bassTrombonemA >>
    \new Staff="timpani" \with {
      midiInstrument = #"timpani"
    } \timpanimA 
    \unfoldRepeats <<
      \new Staff = "violin1" \with {
        midiInstrument = #"string ensemble 1"
      } \violinImA
      \new Staff = "violin2" \with {
        midiInstrument = #"string ensemble 1"
      } \violinIImA
      \new Staff = "viola" \with {
        midiInstrument = #"string ensemble 1"
      } \violamA
      \new Staff = "cello" \with {
        midiInstrument = #"string ensemble 1"
      } \cellomA
      \new Staff = "bass" \with {
        midiInstrument = #"string ensemble 1"
      } \bassmA
    >>
  >>
  \midi {}
}
