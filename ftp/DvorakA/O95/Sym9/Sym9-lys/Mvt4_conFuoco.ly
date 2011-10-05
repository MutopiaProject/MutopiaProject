\version "2.14.0"
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
\include "woods.notesF.ily"
\include "brass.notesF.ily"
\include "strings.notesF.ily"
\include "percussion.notesF.ily"

%\pointAndClickOff
\header {
  meter = \markup\huge "Movement IV"
}
\score {
  \keepWithTag #'score \killCues <<
    \new Devnull \conductormF
    \new StaffGroup <<
      \new Staff \with {
        instrumentName = #"Flute I II"
        shortInstrumentName = #"Fl"
      } \partcombine \fluteImF \fluteIImF
      \new Staff \with {
        instrumentName = #"Oboe I II"
        shortInstrumentName = #"Ob"
      } \partcombine \oboeImF \oboeIImF
      \new Staff \with {
        instrumentName = #"Clarinet I II in A"
        shortInstrumentName = #"Cl(A)"
      } \partcombine \clarinetImF \clarinetIImF
      \new Staff \with {
        instrumentName = #"Bassoon I II"
        shortInstrumentName = #"Ba"
      } \partcombine \bassoonImF \bassoonIImF
    >>
    \new StaffGroup <<
      \new GrandStaff <<
        \new Staff \with {
          instrumentName = \markup\center-column {
            "Horn I II" "in E, then F"
          }
          shortInstrumentName = #"H(E)"
          soloText = #"Solo I"
        } \partcombine \hornImF \hornIImF
        \new Staff \with {
          instrumentName = \markup\center-column {
            "Horn II IV" "in E, then F, C"
          }
          shortInstrumentName = #"H(E)"
          soloText = #"Solo III"
          soloIIText = #"Solo IV"
        } \partcombine \hornIIImF \hornIVmF
      >>
      \new Staff \with {
        instrumentName = #"Trumpet I II in E"
        shortInstrumentName = #"T(E)"
      } \partcombine \trumpetImF \trumpetIImF
      \new GrandStaff <<
        \new Staff \with {
          instrumentName = \markup\center-column {
            "Alto Trombone" "Tenor Trombone"
          }
          shortInstrumentName = #"Tbn"
          midiInstrument = #"trombone"
          soloText = #"Solo Alto"
          soloIIText = #"Solo Tenor"
        } \partcombine \tromboneImF \tromboneIImF
        \new Staff \with {
          instrumentName = #"Bass Trombone"
          shortInstrumentName = #"BTbn"
        } \bassTrombonemF
      >>
    >>
    \new Staff \with {
      instrumentName = \markup\concat{"Timpani E B" \natural}
      shortInstrumentName = #"Tmp"
    } \timpanimF
    \new RhythmicStaff \with {
      instrumentName = "Cymbal"
      shortInstrumentName = #"Cym"
    } \new Voice \with {
      \remove "Note_performer"
      \consists "Drum_note_performer"
    } \cymbalmF
    \new StaffGroup <<
      \new GrandStaff <<
        \new Staff \with {
          instrumentName = #"Violin I"
          shortInstrumentName = #"V1"
        } \violinImF
        \new Staff \with {
          instrumentName = #"Violin II"
          shortInstrumentName = #"V2"
        } \violinIImF
      >>
      \new Staff \with {
        instrumentName = #"Viola"
        shortInstrumentName = #"Va"
      } \violamF
      \new Staff \with {
        instrumentName ="Violincello"
        shortInstrumentName = #"Vcl"
      } \cellomF
      \new Staff \with {
        instrumentName = "Contrabass"
        shortInstrumentName = #"Cb"
      } \bassmF
    >>
  >>
  \layout {
    \context{
      \Staff \RemoveEmptyStaves
    }
    \context{
      \RhythmicStaff \RemoveEmptyStaves
    }
  }
}

% MIDI output in a separate score to avoid
% issue 645 with \partcombine and \midi
\score {
  \keepWithTag #'score \killCues  <<
    \new Devnull \conductormF
    \new Staff="flute" \with {
      midiInstrument = #"flute"
      midiMinimumVolume = #0.1
      midiMaximumVolume = #0.8
    } << \fluteImF \fluteIImF >>
    \new Staff="oboe" \with {
      midiInstrument = #"oboe"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.8
    } << \oboeImF \oboeIImF >>
    \new Staff="clarinet" \with {
      midiInstrument = #"clarinet"
      midiMinimumVolume = #0.1
      midiMaximumVolume = #0.7
    } << \clarinetImF \clarinetIImF >>
    \new Staff="bassoon" \with {
      midiInstrument = #"bassoon"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #0.7
    } << \bassoonImF \bassoonIImF >>
    \new Staff="french hornA" \with {
      midiInstrument = #"french horn"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \hornImF \hornIImF >>
    \new Staff="french hornB" \with {
      midiInstrument = #"french horn"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \hornIIImF \hornIVmF >>
    \new Staff="trumpet" \with {
      midiInstrument = #"trumpet"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \trumpetImF \trumpetIImF >>
    \new Staff="trombone" \with {
      midiInstrument = #"trombone"
      midiMinimumVolume = #0.2
      midiMaximumVolume = #1.0
    } << \tromboneImF \tromboneIImF \bassTrombonemF >>
    \new Staff="timpani" \with {
      midiInstrument = #"timpani"
    } \timpanimF
    \new DrumStaff = "cymbal" \with {
      midiInstrument = #"drums"
    } \cymbalmF
    \unfoldRepeats <<
      \new Staff = "violin1" \with {
        midiInstrument = #"string ensemble 1"
      } \violinImF
      \new Staff = "violin2" \with {
        midiInstrument = #"string ensemble 1"
      } \violinIImF
      \new Staff = "viola" \with {
        midiInstrument = #"string ensemble 1"
      } \violamF
      \new Staff = "cello" \with {
        midiInstrument = #"string ensemble 1"
      } \cellomF
      \new Staff = "bass" \with {
        midiInstrument = #"string ensemble 1"
      } \bassmF
    >>
  >>
  \midi {}
}
