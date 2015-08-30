\version "2.18.0"

\include "header.ly"
\include "flute.ly"
\include "violinP.ly"
\include "violin.ly"
\include "viola.ly"
\include "cello.ly"
\include "violone.ly"
\include "harpsichord.ly"

#(set-global-staff-size 13)

\score {
  \header {
    instrument = "Ensemble"
  }
  <<
    \context GrandStaff = Solos <<
      \context Staff = Flute <<
        \set Staff.instrumentName = \markup \smaller "Flauto traverso." %flute solo
        %\set Staff.shortInstrumentName = "Fl"
        \flute
        \set Staff.midiInstrument = "flute"
      >>

      \context Staff = ViolinPrinciple <<
        \set Staff.instrumentName = \markup \smaller "Violino principate." %violin solo
        %\set Staff.shortInstrumentName = "Vl.I"
        \set Staff.midiInstrument = #"violin"
        \violinP
      >>
    >>

    \context GrandStaff = Strings <<

      \context Staff = ViolinMain <<
        \set Staff.instrumentName = \markup \smaller {
          \column {
            "Violino"
            "di ripieno."
          }
        }
        %\set Staff.shortInstrumentName = "Vl"
        \set Staff.midiInstrument = "violin"
        \violin
      >>

      \context Staff = ViolaRip <<
        \set Staff.instrumentName = \markup \smaller {
          \column {
            "Viola"
            "di ripieno."
          }
        }
        %\set Staff.shortInstrumentName = "Va"
        \set Staff.midiInstrument = "viola"
        \viola
      >>
      \context Staff = Cellos <<
        \set Staff.instrumentName = \markup \smaller "Violoncello." 	%Cello
        %\set Staff.shortInstrumentName = "Vn"
        \set Staff.midiInstrument = "cello"
        \cello
      >>
      \context Staff = DoubleBass <<
        \set Staff.instrumentName = \markup \smaller "Violone." %"Double Bass"
        %\set Staff.shortInstrumentName = "B"
        \set Staff.midiInstrument = "contrabass"
        \violone
      >>
    >>
    \harpsichordTa
  >>

  \layout {}
  \midi { \tempo 2 = 90 }
}
