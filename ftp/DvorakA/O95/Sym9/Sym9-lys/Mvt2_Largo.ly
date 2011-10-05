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
\include "woods.notesL.ily"
\include "brass.notesL.ily"
\include "strings.notesL.ily"
\include "percussion.notesL.ily"

%\pointAndClickOff
\header {
  meter = \markup\huge "Movement II"
}
\score {
  \keepWithTag #'score \killCues  <<
    \new Devnull \conductormL
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = #"Flute I II"
        shortInstrumentName = #"Fl"
      } \partcombine \fluteImL \fluteIImL
      \new Staff \with {
        instrumentName = \markup\center-column{ 
          "Oboe I II" "English Horn" 
        }
        shortInstrumentName = #"Ob"
      } \partcombine \oboeImL \oboeIImL
      \new Staff \with {
        instrumentName = \markup\center-column {
          "Clarinet I II" \concat {"in A, then B"\flat}
        }
        shortInstrumentName = #"Cl(A)"
      } \partcombine \clarinetImL \clarinetIImL
      \new Staff \with {
        instrumentName = #"Bassoon I II"
        shortInstrumentName = #"Ba"
      } \partcombine \bassoonImL \bassoonIImL
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \new Staff \with {
          instrumentName = \markup\center-column {
            "Horn I II" "in E, then C"
          }
          shortInstrumentName = \markup\center-column {"H12" "(E)"}
          soloText = #"Solo I"
        } \partcombine \hornImL \hornIImL
        \new Staff \with {
          instrumentName = \markup\center-column {
            "Horn III IV" "in C, then E"
          }
          shortInstrumentName = \markup\center-column {"H34" "(C)"}
          soloText = #"Solo III"
          soloIIText = #"Solo IV"
        } \partcombine \hornIIImL \hornIVmL
      >>
      \new Staff \with {
        instrumentName = \markup\center-column {
          "Trumpet I II" "in E"
        }
        shortInstrumentName = #"T(E)"
      }        \partcombine \trumpetImL \trumpetIImL
      \new GrandStaff <<
        \new Staff \with {
          instrumentName = \markup\center-column {
            "Alto Trombone" "Tenor Trombone"
          }
          shortInstrumentName = #"Tbn"
          soloText = #"Solo Alto"
          soloIIText = #"Solo Tenor"
        } \partcombine \tromboneImL \tromboneIImL
        \new Staff \with {
          instrumentName = \markup\center-column{
            "Bass Trombone" "Tuba"
          }
          soloText = \markup\whiteout\pad-around#0.3 "B.Tmb."
          soloIIText = #"Tuba"
          shortInstrumentName = #"BT"
        } \partcombine \bassTrombonemL \tubamL
      >>
    >>
    \new Staff \with {
      instrumentName = \markup\concat{"Timpani D" \flat}
      shortInstrumentName = #"Tmp"
    } \timpanimL
    \new StaffGroup <<
      \new GrandStaff <<
        \new Staff \with {
          instrumentName = #"Violin I"
          shortInstrumentName = #"V1"
        } \violinImL
        \new Staff \with {
          instrumentName = #"Violin II"
          shortInstrumentName = #"V2"
        } \violinIImL
      >>
      \new Staff \with {
        instrumentName = #"Viola"
        shortInstrumentName = #"Va"
      } \violamL
      \new Staff \with {
        instrumentName = #"Cello"
        shortInstrumentName = #"Vcl"
      } \cellomL
      \new Staff \with {
        instrumentName = #"Contrabass"
        shortInstrumentName = #"Cb"
      } \bassmL
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
    \new Devnull \conductormL
    \new Staff="flute" \with {
      midiInstrument = #"flute" 
      midiMinimumVolume = #0.1
      midiMaximumVolume = #0.7
    } << \fluteImL \fluteIImL >>
    \new Staff="oboe" \with {
      midiInstrument = #"oboe" 
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.7
    } << \oboeImL \oboeIImL >>
    \new Staff="clarinet" \with {
      midiInstrument = #"clarinet"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.7
    } << \clarinetImL \clarinetIImL >>
    \new Staff="bassoon" \with {
      midiInstrument = #"bassoon"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.7
    } << \bassoonImL \bassoonIImL >>
    \new Staff="french hornA" \with {
      midiInstrument = #"french horn"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \hornImL \hornIImL >>
    \new Staff="french hornB" \with {
      midiInstrument = #"french horn"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \hornIIImL \hornIVmL >>
    \new Staff="trumpet" \with {
      midiInstrument = #"trumpet"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \trumpetImL \trumpetIImL >>
    \new Staff="trombone" \with {
      midiInstrument = #"trombone"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \tromboneImL \tromboneIImL \bassTrombonemL \tubamL >>
    \new Staff="timpani" \with {
      midiInstrument = #"timpani"
    } \timpanimL
    \unfoldRepeats <<
      \new Staff = "violin1" \with {
        midiInstrument = #"string ensemble 1"
      } \violinImL
      \new Staff = "violin2" \with {
        midiInstrument = #"string ensemble 1"
      } \violinIImL
      \new Staff = "viola" \with {
        midiInstrument = #"string ensemble 1"
      } \violamL
      \new Staff = "cello" \with {
        midiInstrument = #"string ensemble 1"
      } \cellomL
      \new Staff = "bass" \with {
        midiInstrument = #"string ensemble 1"
      } \bassmL
    >>
  >>
  \midi {}
}
