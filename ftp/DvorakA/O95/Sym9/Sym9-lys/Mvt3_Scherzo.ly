\version "2.14.0"
% #(ly:set-option 'debug-skylines)
% Antonín Dvořák
\paper {
  #(layout-set-staff-size 15)
  indent = 2.5\cm
  short-indent = 0.8\cm
  ragged-last-bottom = ##f
  page-limit-inter-system-space = ##t
  system-separator-markup = \slashSeparator
%  #(define page-breaking ly:minimal-breaking)
}
\include "header.ily"
% Included files define one variable for each part
% Variables for transposing instrument contain their
%  notes at written pitch, as opposed to concert pitch
\include "woods.notesS.ily"
\include "brass.notesS.ily"
\include "strings.notesS.ily"
\include "percussion.notesS.ily"

%\pointAndClickOff
\header {
  meter = \markup\huge "Movement III"
}
\score {
  \keepWithTag #'score \killCues  <<
    \new Devnull \conductormS
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = #"Flute I II"
        shortInstrumentName = #"Fl"
      } \partcombine \fluteImS \fluteIImS
      \new Staff \with {
        instrumentName = #"Oboe I II"
        shortInstrumentName = #"Ob"
      } \partcombine \oboeImS \oboeIImS
      \new Staff \with {
        instrumentName = \markup\center-column {
          "Clarinet I II" "in A"
        }
        shortInstrumentName = #"Cl(A)"
      } \partcombine \clarinetImS \clarinetIImS
      \new Staff \with {
        instrumentName = #"Bassoon I II"
        shortInstrumentName = #"Ba"
      } \partcombine \bassoonImS \bassoonIImS
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \new Staff \with {
          instrumentName = \markup\center-column {
            "Horn I II" "in E"
          }
          shortInstrumentName = \markup\center-column {"H12" "(E)"}
          soloText = #"Solo I"
        } \partcombine \hornImS \hornIImS
        \new Staff \with {
          instrumentName = \markup\center-column {
            "Horn III IV" "in E, then C"
          }
          shortInstrumentName = \markup\center-column {"H34" "(E)"}
          soloText = #"Solo III"
          soloIIText = #"Solo IV"
        } \partcombine \hornIIImS \hornIVmS
      >>
      \new Staff \with {
        instrumentName = \markup\center-column {
          "Trumpet I II" "in E, then C"
        }
        shortInstrumentName = #"T(E)"
      } \partcombine \trumpetImS \trumpetIImS
    >>
    \new Staff \with {
      instrumentName = \markup\center-column {
        "Timpani" \concat {"E B" \natural ", then C G"}
      }
      shortInstrumentName = "Tmp"
    } \timpanimS
    \new RhythmicStaff \with {
      instrumentName = "Triangle"
      shortInstrumentName = #"Tri"
    } \new Voice \with {
      \remove "Note_performer"
      \consists "Drum_note_performer"
    } \trianglemS
    \new StaffGroup <<
      \new GrandStaff <<
        \new Staff \with {
          \consists "Volta_engraver"
          instrumentName = #"Violin I"
          shortInstrumentName = #"V1"
        } \violinImS
        \new Staff \with {
          instrumentName = #"Violin II"
          shortInstrumentName = #"V2"
        } \violinIImS
      >>
      \new Staff \with {
        instrumentName = #"Viola"
        shortInstrumentName = #"Va"
      } \violamS
      \new Staff \with {
        instrumentName ="Violincello"
        shortInstrumentName = #"Vcl"
      } \cellomS
      \new Staff \with {
        instrumentName = "Contrabass"
        shortInstrumentName = #"Cb"
      } \bassmS
    >>
  >>
  \layout {
    \context{
      \RhythmicStaff \RemoveEmptyStaves
    } \context{
      \Staff \RemoveEmptyStaves
    }
  }
}

% MIDI output in a separate score to avoid
% issue 645 with \partcombine and \midi
\score {
  \keepWithTag #'score \killCues  <<
    \new Devnull \conductormS
    \new Staff="flute" \with {
      midiInstrument = #"flute"
      midiMinimumVolume = #0.1
      midiMaximumVolume = #0.8
    } << \fluteImS \fluteIImS >>
    \new Staff="oboe" \with {
      midiInstrument = #"oboe"
      midiMinimumVolume = #0.1
      midiMaximumVolume = #0.7
    } << \oboeImS \oboeIImS >>
    \new Staff="clarinet" \with {
      midiInstrument = #"clarinet"
      midiMinimumVolume = #0.1
      midiMaximumVolume = #0.7
    } << \clarinetImS \clarinetIImS >>
    \new Staff="bassoon" \with {
      midiInstrument = #"bassoon"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.7
    } << \bassoonImS \bassoonIImS >>
    \new Staff="french hornA" \with {
      midiInstrument = #"french horn"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \hornImS \hornIImS >>
    \new Staff="french hornB" \with {
      midiInstrument = #"french horn"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \hornIIImS \hornIVmS >>
    \new Staff="trumpet" \with {
      midiInstrument = #"trumpet"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \trumpetImS \trumpetIImS >>
    \new Staff="timpani" \with {
      midiInstrument = #"timpani"
      midiMinimumVolume = #0.1
      midiMaximumVolume = #0.7
    } \timpanimS
    \new DrumStaff = "triangle" \with {
      midiInstrument = #"drums"
    } \trianglemS
    \unfoldRepeats <<
      \new Staff = "violin1" \with {
        midiInstrument = #"string ensemble 1"
      } \violinImS
      \new Staff = "violin2" \with {
        midiInstrument = #"string ensemble 1"
      } \violinIImS
      \new Staff = "viola" \with {
        midiInstrument = #"string ensemble 1"
      } \violamS
      \new Staff = "cello" \with {
        midiInstrument = #"string ensemble 1"
      } \cellomS
      \new Staff = "bass" \with {
        midiInstrument = #"string ensemble 1"
      } \bassmS
    >>
  >>
  \midi {}
}
