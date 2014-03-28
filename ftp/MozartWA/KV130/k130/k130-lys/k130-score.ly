% -*- LilyPond -*-

\version "2.18.2"

#(set-global-staff-size 16)

\include "defs.ly"

\include "flute1-i.ly"
\include "flute2-i.ly"
\include "horn1-i.ly"
\include "horn2-i.ly"
\include "horn3-i.ly"
\include "horn4-i.ly"
\include "violin1-i.ly"
\include "violin2-i.ly"
\include "viola-i.ly"
\include "basso-i.ly"

\score {
    <<
	\override Score.BarNumber.padding = #3

	\context StaffGroup = "winds" <<

	    \context Staff = "oboi" <<
          \set Staff.midiInstrument = #"flute"
		      \set Staff.instrumentName = \markup { \center-column { "2 Flauti" } }
		      \time 4/4
		      \partcombine \fluteIFirstMov \fluteIIFirstMov
	    >>

	    \context Staff = hornsC {
        \set Staff.midiInstrument = #"french horn"
		    \set Staff.instrumentName = \markup { \center-column { "Corni in" "C alto" } }
		    \time 4/4
		    \partcombine \hornIFirstMov \hornIIFirstMov
	    }

	    \context Staff = hornsF {
         \set Staff.midiInstrument = #"french horn"
		      \transposition f' 
		      \set Staff.instrumentName = \markup { \center-column { "Corni" "in F" } }
		      \time 4/4
          \partcombine \hornIIIFirstMov \hornIVFirstMov 
	    }
	>>

	\context StaffGroup = "strings" <<

	    \context Staff = violinI <<
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = \markup { \center-column { "Violino I." } }

		\time 4/4

		\violinIFirstMov
	    >>

	    \context Staff = violinII <<
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = \markup { \center-column { "Violino II." } }

		\time 4/4

		\violinIIFirstMov
	    >>

	    \context Staff = "viola" <<
                \set Staff.midiInstrument = #"viola"
		\set Staff.instrumentName = \markup { \center-column { "Viola." } }

		\time 4/4

		\violaFirstMov
	    >>

	    \context Staff = "basso" <<
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = \markup { \center-column { "Violoncello"
				     "e Basso." } }


		\time 4/4

		\bassoFirstMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 124
    }



    \header {
	piece = "Allegro."
    }

    \layout { }
}


\include "flute1-ii.ly"
\include "flute2-ii.ly"
\include "horn1-ii.ly"
\include "horn2-ii.ly"
\include "horn3-ii.ly"
\include "horn4-ii.ly"
\include "violin1-ii.ly"
\include "violin2-ii.ly"
\include "viola-ii.ly"
\include "basso-ii.ly"

\score {
    <<
	\override Score.BarNumber.padding = #3

	\context StaffGroup = "winds" <<

	    \context Staff = "oboi" <<
                \set Staff.midiInstrument = #"flute"
		\set Staff.instrumentName = \markup { \center-column { "2 Flauti" } }

		\time 3/8
		
		\partcombine \fluteISecondMov \fluteIISecondMov

	    >>

	    \context Staff = hornsC {
                \set Staff.midiInstrument = #"french horn"
		\transposition f' 
		\set Staff.instrumentName = \markup { \center-column { "Corni" "in F" } }

		\time 3/8
    \partcombine \hornISecondMov \hornIISecondMov
		%\context Voice = "one" \XXpartcombine Voice
		%\context Voice = "one" { \hornISecondMov }
		%\context Voice = "two" { \hornIISecondMov }
	    }

	    \context Staff = hornsF {
                \set Staff.midiInstrument = #"french horn"
		\transposition ais 
		\set Staff.instrumentName = \markup { \center-column { "Corni" "in B" } }

		\time 3/8
    \partcombine \hornIIISecondMov \hornIVSecondMov

		%\context Voice = "one" \XXpartcombine Voice
		%\context Voice = "one" { \hornIIISecondMov }
		%\context Voice = "two" { \hornIVSecondMov }
	    }
	>>

	\context StaffGroup = "strings" <<

	    \context Staff = violinI <<
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = \markup { \center-column { "Violino I." } }

		\time 3/8

		\violinISecondMov
	    >>

	    \context Staff = violinII <<
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = \markup { \center-column { "Violino II." } }

		\time 3/8

		\violinIISecondMov
	    >>

	    \context Staff = "viola" <<
                \set Staff.midiInstrument = #"viola"
		\set Staff.instrumentName = \markup { \center-column { "Viola." } }

		\time 3/8

		\violaSecondMov
	    >>

	    \context Staff = "basso" <<
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = \markup { \center-column { "Violoncello"
				     "e Basso." } }


		\time 3/8

		\bassoSecondMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 42
    }



    \header {
	piece = "Andantino grazioso."
    }

    \layout { }
}


\include "flute1-iii.ly"
\include "flute2-iii.ly"
\include "horn1-iii.ly"
\include "horn2-iii.ly"
\include "horn3-iii.ly"
\include "horn4-iii.ly"
\include "violin1-iii.ly"
\include "violin2-iii.ly"
\include "viola-iii.ly"
\include "basso-iii.ly"

\score {
    <<
	\override Score.BarNumber.padding = #3

	\context StaffGroup = "winds" <<

	    \context Staff = "oboi" <<
                \set Staff.midiInstrument = #"flute"
		\set Staff.instrumentName = \markup { \center-column { "2 Flauti" } }

		\time 3/4
		\partial 4
		\partcombine \fluteIThirdMov \fluteIIThirdMov
		

		\context Voice = "markings" { \markingsIII }
	    >>

	    \context Staff = hornsC {
                \set Staff.midiInstrument = #"french horn"
		\set Staff.instrumentName = \markup { \center-column { "Corni in" "C alto" } }

		\time 3/4
		\partial 4
      \partcombine \hornIThirdMov \hornIIThirdMov
	    }

	    \context Staff = hornsF {
                \set Staff.midiInstrument = #"french horn"
		\transposition f' 
		\set Staff.instrumentName = \markup { \center-column { "Corni" "in F" } }

		\time 3/4
		\partial 4
    \partcombine \hornIIIThirdMov \hornIVThirdMov

	    }
	>>

	\context StaffGroup = "strings" <<

	    \context Staff = violinI <<
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = \markup { \center-column { "Violino I." } }

		\time 3/4
		\partial 4

		\violinIThirdMov
	    >>

	    \context Staff = violinII <<
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = \markup { \center-column { "Violino II." } }

		\time 3/4
		\partial 4

		\violinIIThirdMov
	    >>

	    \context Staff = "viola" <<
                \set Staff.midiInstrument = #"viola"
		\set Staff.instrumentName = \markup { \center-column { "Viola." } }

		\time 3/4
		\partial 4

		\violaThirdMov
	    >>

	    \context Staff = "basso" <<
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = \markup { \center-column { "Violoncello" "e Basso." } }


		\time 3/4
		\partial 4

		\bassoThirdMov
		\context Voice = "markings" { \markingsIIIbis }
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 130
    }



    \header {
	piece = "MENUETTO."
    }

    \layout { }
}

\include "flute1-iv.ly"
\include "flute2-iv.ly"
\include "horn1-iv.ly"
\include "horn2-iv.ly"
\include "horn3-iv.ly"
\include "horn4-iv.ly"
\include "violin1-iv.ly"
\include "violin2-iv.ly"
\include "viola-iv.ly"
\include "basso-iv.ly"

\score {
    <<
	\override Score.BarNumber.padding = #3

	\context StaffGroup = "winds" <<

	    \context Staff = "flutes" <<
                \set Staff.midiInstrument = #"flute"
		\set Staff.instrumentName = \markup { \center-column { "2 Flauti" } }

		\time 4/4
		
		\partcombine \fluteIFourthMov \fluteIIFourthMov

	    >>

	    \context Staff = hornsC {
                \set Staff.midiInstrument = #"french horn"
		\set Staff.instrumentName = \markup { \center-column { "Corni in" "C alto" } }

		\time 4/4
		\partcombine \hornIFourthMov \hornIIFourthMov

		%\context Voice = "one" \XXpartcombine Voice
		%\context Voice = "one" { \hornIFourthMov }
		%\context Voice = "two" { \hornIIFourthMov }
	    }

	    \context Staff = hornsF {
                \set Staff.midiInstrument = #"french horn"
		\transposition f' 
		\set Staff.instrumentName = \markup { \center-column { "Corni" "in F" } }

		\time 4/4

		\partcombine \hornIIIFourthMov \hornIVFourthMov
		%\context Voice = "one" \XXpartcombine Voice
		%\context Voice = "one" { \hornIIIFourthMov }
		%\context Voice = "two" { \hornIVFourthMov }
	    }
	>>

	\context StaffGroup = "strings" <<

	    \context Staff = violinI <<
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = \markup { \center-column { "Violino I." } }

		\time 4/4

		\violinIFourthMov
	    >>

	    \context Staff = violinII <<
                \set Staff.midiInstrument = #"violin"
		\set Staff.instrumentName = \markup { \center-column { "Violino II." } }

		\time 4/4

		\violinIIFourthMov
	    >>

	    \context Staff = "viola" <<
                \set Staff.midiInstrument = #"viola"
		\set Staff.instrumentName = \markup { \center-column { "Viola." } }

		\time 4/4

		\violaFourthMov
	    >>

	    \context Staff = "basso" <<
                \set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = \markup { \center-column { "Violoncello" "e Basso." } }


		\time 4/4

		\bassoFourthMov
	    >>
	>>
    >>

    
  \midi {
    \tempo 4 = 180
    }



    \header {
	piece = "Allegro molto."
    }

    \layout { }
}


