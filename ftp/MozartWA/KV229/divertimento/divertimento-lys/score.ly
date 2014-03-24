\version "2.18.0"
#(set-global-staff-size 18)

\include "includes/header.ly"
\include "includes/definitions.ly"
\include "includes/allegro.ly"
\include "includes/menuettoOne.ly"
\include "includes/larghetto.ly"
\include "includes/menuettoTwo.ly"
\include "includes/rondo.ly"

% ********************************************************************************ALLEGRO********************************************************************************

\score {
<<
   \override Score.BarNumber.padding = #3
   \context StaffGroup <<
      \context Staff = "hb" <<
      \set Staff.midiInstrument = #"oboe"
      \set Staff.instrumentName = "Oboe  "
      \oboeAllegro
      >>
      \context Staff = "cl" <<
      \set Staff.midiInstrument = #"clarinet"
      \transposition ais
      \set Staff.instrumentName = \markup { \column { "Clarinetto  " "in B" } }
      \clarinetAllegro
      >>
      \context Staff = "bn" <<
      \set Staff.midiInstrument = #"bassoon"
      \set Staff.instrumentName = "Fagotto  "
      \bassoonAllegro
      >>
   >>
>>
   \header {
      opus = "(1756 - 1791)"
      piece = "Allegro"
   }
   \layout { }

  \midi {
    \tempo 4 = 120
    }


}

% ********************************************************************************MENUETTO 1********************************************************************************

\score {
<<
   \override Score.BarNumber.padding = #3
   \context StaffGroup <<
      \context Staff = "ob" <<
      \set Staff.midiInstrument = #"oboe"
      \oboeMenuettoOne
      \textUpMenuettoOne
      >>
      \context Staff = "cl" <<
      \set Staff.midiInstrument = #"clarinet"
      \transposition ais
      \override Staff.VoltaBracket.stencil = #'()
      \clarinetMenuettoOne
      >>
      \context Staff = "bn" <<
      \set Staff.midiInstrument = #"bassoon"
      \override Staff.VoltaBracket.stencil = #'()
      \bassoonMenuettoOne
      \textDownMenuettoOne
      >>
   >>
>>
   \header {
      piece = "Menuetto"
   }
   \layout { }

  \midi {
    \tempo 4 = 140
    }


}

% ********************************************************************************LARGHETTO********************************************************************************

\score {
<<
   \override Score.BarNumber.padding = #3
   \context StaffGroup <<
      \context Staff = "ob" <<
      \set Staff.midiInstrument = #"oboe"
      \oboeLarghetto
      >>
      \context Staff = "cl" <<
      \set Staff.midiInstrument = #"clarinet"
      \transposition ais
      \clarinetLarghetto
      \override Staff.VoltaBracket.stencil = #'()
      >>
      \context Staff = "bn" <<
      \set Staff.midiInstrument = #"bassoon"
      \bassoonLarghetto
      \override Staff.VoltaBracket.stencil = #'()
      >>
   >>
>>
   \header {
      piece = "Larghetto"
   }
   \layout { }

  \midi {
    \tempo 4 = 50
    }


}

% ********************************************************************************MENUETTO 2********************************************************************************

\score {
<<
   \override Score.BarNumber.padding = #3
   \context StaffGroup <<
      \context Staff = "ob" <<
      \set Staff.midiInstrument = #"oboe"
      \oboeMenuettoTwo
      \textUpMenuettoTwo
      >>
      \context Staff = "cl" <<
      \set Staff.midiInstrument = #"clarinet"
      \transposition ais
      \clarinetMenuettoTwo
      >>
      \context Staff = "bn" <<
      \set Staff.midiInstrument = #"bassoon"
      \bassoonMenuettoTwo
      \textDownMenuettoTwo
      >>
   >>
>>
   \header {
      piece = "Menuetto"
   }
   \layout { }

  \midi {
    \tempo 4 = 140
    }


}

% ********************************************************************************RONDO********************************************************************************

\score {
<<
   \override Score.BarNumber.padding = #3
   \context StaffGroup <<
      \context Staff = "hb" <<
      \set Staff.midiInstrument = #"oboe"
      \oboeRondo
      >>
      \context Staff = "cl" <<
      \set Staff.midiInstrument = #"clarinet"
      \transposition ais
      \clarinetRondo
      >>
      \context Staff = "bn" <<
      \set Staff.midiInstrument = #"bassoon"
      \bassoonRondo
      >>
   >>
>>
   \header {
      piece = "Rondo"
   }


  \midi {
    \tempo 4 = 150
    }



   \layout { }

}

