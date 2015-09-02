\version "2.18.2"

#(set-global-staff-size 18)

\include "header.ily"

\include "violin_one.ily"
\include "violin_two.ily"
\include "violin_three.ily"
\include "violoncello.ily"

\score {
  <<
    \context StaffGroup = strings <<
      \new Staff = violinI \with {
        midiInstrument = #"violin"
        instrumentName = \markup {
          \center-column { "Violin I"  }
        }
   %     shortInstrumentName = #"Vl.I"
      }
      \violinone

      \new Staff = violinII \with {
        midiInstrument = #"violin"
        instrumentName = \markup {
          \center-column {"Violin II" }
        }
  %      shortInstrumentName = #"Vl.II"
      }
      \violintwo
      
      \new Staff = violinIII \with {
        midiInstrument = #"violin"
        instrumentName = \markup {
          \center-column { "Violin III" }
        }
%        shortInstrumentName = #"Vl.III"
      }
      \violinthree 

      \context Staff = violoncello \with {
        midiInstrument = #"cello"
        instrumentName = \markup {
          \center-column { "Violoncello" }
        }
 %       shortInstrumentName = #"Vc."
      } <<
        \clef "bass"
	\violoncello 
      >>
    >>
>>

\include "paper.ily"
\include "midi.ily"
}
