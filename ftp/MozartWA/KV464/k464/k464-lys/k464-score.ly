% -*- LilyPond -*-

\version "2.16.0"

#(set-global-staff-size 16)

\include "defs.ly"

\include "violin1-i.ly"
\include "violin2-i.ly"
\include "viola-i.ly"
\include "cello-i.ly"

\score {
    <<

	\context StaffGroup = "strings" <<

	    \context Staff = violinI <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"

		\time 3/4
		\partial 4

		\violinIFirstMov
		\context Voice = "markings" { \markingsI }
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\time 3/4
		\partial 4

		\violinIIFirstMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\time 3/4
		\partial 4

		\violaFirstMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\time 3/4
		\partial 4

		\celloFirstMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 140
    }



    \layout { }
}


\include "violin1-ii.ly"
\include "violin2-ii.ly"
\include "viola-ii.ly"
\include "cello-ii.ly"

\score {
    <<

	\context StaffGroup = "strings" <<
	    \context Staff = violinI <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"

		\time 3/4

		\violinISecondMov
		\context Voice = "markings" { \markingsII }
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\time 3/4

		\violinIISecondMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\time 3/4

		\violaSecondMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\time 3/4

		\celloSecondMov
		\context Voice=markingsBis { \markingsIIbis }
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 130
    }



    \layout { }
}

\include "violin1-iii.ly"
\include "violin2-iii.ly"
\include "viola-iii.ly"
\include "cello-iii.ly"


\score {
    <<

	\context StaffGroup = "strings" <<
	    \context Staff = violinI <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"

		\time 2/4
		\partial 4

		\removeWithTag #'part \violinIThirdMov
		\context Voice = "markings" { \markingsIII }
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\time 2/4
		\partial 4

		\removeWithTag #'part \violinIIThirdMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\time 2/4
		\partial 4

		\removeWithTag #'part \violaThirdMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\time 2/4
		\partial 4

		\removeWithTag #'part \celloThirdMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 44
    }



    \layout { }
}


\include "violin1-iv.ly"
\include "violin2-iv.ly"
\include "viola-iv.ly"
\include "cello-iv.ly"


\score {
    <<

	\context StaffGroup = "strings" <<

	    \context Staff = violinI <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino I."
		\set Staff.shortInstrumentName = "Vl.I"

		\removeWithTag #'part \violinIFourthMov	
		\context Voice = "markings" { \markingsIV }
	    >>

	    \context Staff = violinII <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = "Violino II."
		\set Staff.shortInstrumentName = "Vl.II"

		\removeWithTag #'part \violinIIFourthMov
	    >>

	    \context Staff = "viola" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Viola."
		\set Staff.shortInstrumentName = "Vla"

		\removeWithTag #'part \violaFourthMov
	    >>

	    \context Staff = "cello" <<
	        \set Staff.autoBeaming = ##f
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = "Violoncello."
		\set Staff.shortInstrumentName = "Vc."

		\removeWithTag #'part \celloFourthMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 160
    }



    \layout { }
}
