\version "2.18.2"
\include "util.ily"

\include "ilys/principale.ily"
\include "ilys/violino1.ily"
\include "ilys/violino2.ily"
\include "ilys/viola.ily"
\include "ilys/oboe1.ily"
\include "ilys/oboe2.ily"
\include "ilys/cembalo.ily"

#(set-global-staff-size 15)
\paper {
  indent = 2\cm  % space for instrumentName
  short-indent = 1\cm  % space for shortInstrumentName
}

oboeISet = {
  \set Staff.midiInstrument = #"oboe"
  \set Staff.instrumentName = "Oboe I"
  \set Staff.shortInstrumentName = "Ob. 1"
  \set Staff.midiMaximumVolume = #0.8
}

oboeIISet = {
  \set Staff.midiInstrument = #"oboe"
  \set Staff.instrumentName = "Oboe II"
  \set Staff.shortInstrumentName = "Ob. 2"
  \set Staff.midiMaximumVolume = #0.8
}

principaleSet = {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = "Violino principale"
  \set Staff.shortInstrumentName = "Vl. P"
  \set Staff.midiMinimumVolume = #0.8
}

violinoISet = {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = "Violino I"
  \set Staff.shortInstrumentName = "Vl. 1"
  \set Staff.midiMaximumVolume = #0.8
}

violinoIISet = {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = "Violino II"
  \set Staff.shortInstrumentName = "Vl. 2"
  \set Staff.midiMaximumVolume = #0.8
}

violaSet = {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = "Viola"
  \set Staff.shortInstrumentName = "Vla."
  \set Staff.midiMaximumVolume = #0.8
}

cembaloSet = {
  \set Staff.midiInstrument = #"harpsichord"
  \set Staff.instrumentName = "Cembalo"
  \set Staff.shortInstrumentName = "Cm."
  \set Staff.midiMinimumVolume = #0.8
}

\score {
  <<
    \new StaffGroup = "woodwind" <<
      \new Staff = oboeI {
        \oboeISet
        \oboeIFirstMov
      }
      \new Staff = oboeII {
        \oboeIISet
        \oboeIIFirstMov
      }
    >>

    \new Staff = violinoP {
      \principaleSet
      \principaleFirstMov
    }

    \new StaffGroup = "strings" <<
      \new Staff = violinoI {
        \violinoISet
        \violinoIFirstMov
      }
      \new Staff = violinoII {
        \violinoIISet
        \violinoIIFirstMov
      }
      \new Staff = viola {
        \violaSet
        \violaFirstMov
      }
    >>
    \new Staff = "Cembalo" {
      \cembaloSet
      \cembaloFirstMov
    }
  >>
  \layout { }
  \midi {
    \tempo 4 = 110
  }
}

\score {
  <<
    \new StaffGroup = "woodwind" <<
      \new Staff = oboeI {
        \oboeISet
        \oboeISecondMov
      }
      \new Staff = oboeII {
        \oboeIISet
        \oboeIISecondMov
      }
    >>
    \new Staff = violinoP {
      \principaleSet
      \principaleSecondMov
    }
    \new StaffGroup = "strings" <<
      \new Staff = violinoI {
        \violinoISet
        \violinoISecondMov
      }
      \new Staff = violinoII {
        \violinoIISet
        \violinoIISecondMov
      }
      \new Staff = viola {
        \violaSet
        \violaSecondMov
      }
    >>
    \new Staff = "Cembalo" {
      \cembaloSet
      \cembaloSecondMov
    }
  >>

  \layout { }
  \midi {
    \tempo 4 = 50
  }
}

\score {
  <<
    \new StaffGroup = "woodwind" <<
      \new Staff = oboeI {
        \oboeISet
        \oboeIThirdMov
      }
      \new Staff = oboeII {
        \oboeIISet
        \oboeIIThirdMov
      }
    >>
    \new Staff = violinoP {
      \principaleSet
      \principaleThirdMov
    }
    \new StaffGroup = "strings" <<
      \new Staff = violinoI {
        \violinoISet
        \violinoIThirdMov
      }
      \new Staff = violinoII {
        \violinoIISet
        \violinoIIThirdMov
      }
      \new Staff = viola {
        \violaSet
        \violaThirdMov
      }
    >>
    \new Staff = "Cembalo" {
      \cembaloSet
      \cembaloThirdMov
    }
  >>

  \layout { }
  \midi {
    \tempo 2. = 54
  }
}
