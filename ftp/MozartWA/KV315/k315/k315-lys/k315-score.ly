% -*- LilyPond -*-

\version "2.18.0"

#(set-global-staff-size 16)

\include "defs.ly"

%\include "oboi.ly"
\include "oboe1.ly"
\include "oboe2.ly"
%\include "horns.ly"
\include "horn1.ly"
\include "horn2.ly"
\include "flute.ly"
\include "violin1.ly"
\include "violin2.ly"
\include "viola.ly"
\include "basso.ly"

\score {
  <<
	\override Score.BarNumber.padding = #3

	\new StaffGroup = "winds" <<

      \new Staff = "oboi" \with {
        printPartCombineTexts = ##f
        midiInstrument = #"oboe"
		instrumentName = "Oboi"
		shortInstrumentName = "Ob."
      } <<
        \tempo "Andante."
		\time 2/4
        \partcombine \oboeIPart \oboeIIPart
      >>

      \new Staff = "horns" \with {
        printPartCombineTexts = ##f
        midiInstrument = #"french horn"
		instrumentName = "Corni in C"
		shortInstrumentName = "Crn."
      } <<
		\time 2/4
		\partcombine \hornIPart \hornIIPart
      >>

	>>

	\new StaffGroup = "solo" <<

      \new Staff = "flute" \with {
        midiInstrument = #"flute"
		instrumentName = \markup {
          \center-column { "Flauto traverso" "principale." }
        }
		shortInstrumentName = "Fl."
      } <<
		\time 2/4
		\flutePart
      >>
	>>

	\new StaffGroup = "strings" <<

      \new Staff = violinI \with {
        midiInstrument = #"violin"
		instrumentName = "Violino I."
		shortInstrumentName = "Vl.I"
      } <<
		\time 2/4
		\violinIPart
      >>

      \new Staff = violinII \with {
        midiInstrument = #"violin"
		instrumentName = "Violino II."
		shortInstrumentName = "Vl.II"
      } <<
		\time 2/4
		\violinIIPart
      >>

      \new Staff = "viola" \with {
        midiInstrument = #"viola"
		instrumentName = "Viola."
		shortInstrumentName = "Vla"
      } <<
		\time 2/4
		\violaPart
      >>

      \new Staff = "basso" \with {
        midiInstrument = #"cello"
		instrumentName = \markup {
          \center-column { "Violoncello" "e Basso." }
        }
		shortInstrumentName = "Vc. Bs."
      } <<
		\time 2/4
		\bassoPart
      >>
	>>

  >>

  \midi {
    \tempo 4 = 46
  }

  \layout {
    indent = 20 \mm
    short-indent = 6 \mm
  }
}
