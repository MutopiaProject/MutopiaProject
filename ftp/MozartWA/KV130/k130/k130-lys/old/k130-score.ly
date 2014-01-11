% -*- LilyPond -*-

\version "1.7.29"

\include "paper16.ly"

\include "defs.ly"

\include "flutes-i.ly"
\include "horn1-i.ly"
\include "horn2-i.ly"
\include "horn3-i.ly"
\include "horn4-i.ly"
\include "violin1-i.ly"
\include "violin2-i.ly"
\include "viola-i.ly"
\include "basso-i.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = winds <

	    \context Staff = oboi <
                \property Staff.midiInstrument = #"flute"
		\property Staff.instrument = 
		\markup { \center << "2 Flauti" >> }

		\time 4/4
		
		\flutesFirstMov

	    >

	    \context Staff = hornsC {
                \property Staff.midiInstrument = #"french horn"
		\property Staff.instrument = 
		\markup { \center << "Corni in" "C alto" >> }

		\time 4/4

		\context Voice=one \partcombine Voice
		\context Thread=one { \hornIFirstMov }
		\context Thread=two { \hornIIFirstMov }
	    }

	    \context Staff = hornsF {
                \property Staff.midiInstrument = #"french horn"
		\property Staff.transposing = #5
		\property Staff.instrument = 
		\markup { \center << "Corni" "in F" >> }

		\time 4/4

		\context Voice=one \partcombine Voice
		\context Thread=one { \hornIIIFirstMov }
		\context Thread=two { \hornIVFirstMov }
	    }
	>

	\context StaffGroup = strings <

	    \context Staff = violinI <
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = 
		\markup { \center << "Violino I." >> }

		\time 4/4

		\violinIFirstMov
	    >

	    \context Staff = violinII <
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = 
		\markup { \center << "Violino II." >> }

		\time 4/4

		\violinIIFirstMov
	    >

	    \context Staff = viola <
                \property Staff.midiInstrument = #"viola"
		\property Staff.instrument = 
		\markup { \center << "Viola." >> }

		\time 4/4

		\violaFirstMov
	    >

	    \context Staff = basso <
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = 
		\markup { \center << "Violoncello"
				     "e Basso." >> }


		\time 4/4

		\bassoFirstMov
	    >
	>
    >

    \midi {
       \tempo 4 = 124
    }

    \header {
	piece = "Allegro."
    }

    \paper { }
}


\include "flutes-ii.ly"
\include "horn1-ii.ly"
\include "horn2-ii.ly"
\include "horn3-ii.ly"
\include "horn4-ii.ly"
\include "violin1-ii.ly"
\include "violin2-ii.ly"
\include "viola-ii.ly"
\include "basso-ii.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = winds <

	    \context Staff = oboi <
                \property Staff.midiInstrument = #"flute"
		\property Staff.instrument = 
		\markup { \center << "2 Flauti" >> }

		\time 3/8
		
		\flutesSecondMov

	    >

	    \context Staff = hornsC {
                \property Staff.midiInstrument = #"french horn"
		\property Staff.transposing = #5
		\property Staff.instrument = 
		\markup { \center << "Corni" "in F" >> }

		\time 3/8

		\context Voice=one \partcombine Voice
		\context Thread=one { \hornISecondMov }
		\context Thread=two { \hornIISecondMov }
	    }

	    \context Staff = hornsF {
                \property Staff.midiInstrument = #"french horn"
		\property Staff.transposing = #-2
		\property Staff.instrument = 
		\markup { \center << "Corni" "in B" >> }

		\time 3/8

		\context Voice=one \partcombine Voice
		\context Thread=one { \hornIIISecondMov }
		\context Thread=two { \hornIVSecondMov }
	    }
	>

	\context StaffGroup = strings <

	    \context Staff = violinI <
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = 
		\markup { \center << "Violino I." >> }

		\time 3/8

		\violinISecondMov
	    >

	    \context Staff = violinII <
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = 
		\markup { \center << "Violino II." >> }

		\time 3/8

		\violinIISecondMov
	    >

	    \context Staff = viola <
                \property Staff.midiInstrument = #"viola"
		\property Staff.instrument = 
		\markup { \center << "Viola." >> }

		\time 3/8

		\violaSecondMov
	    >

	    \context Staff = basso <
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = 
		\markup { \center << "Violoncello"
				     "e Basso." >> }


		\time 3/8

		\bassoSecondMov
	    >
	>
    >

    \midi {
       \tempo 4 = 42
    }

    \header {
	piece = "Andantino grazioso."
    }

    \paper { }
}


\include "flutes-iii.ly"
\include "horn1-iii.ly"
\include "horn2-iii.ly"
\include "horn3-iii.ly"
\include "horn4-iii.ly"
\include "violin1-iii.ly"
\include "violin2-iii.ly"
\include "viola-iii.ly"
\include "basso-iii.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = winds <

	    \context Staff = oboi <
                \property Staff.midiInstrument = #"flute"
		\property Staff.instrument = 
		\markup { \center << "2 Flauti" >> }

		\time 3/4
		\partial 4
		
		\flutesThirdMov

		\context Voice=markings { \markingsIII }
	    >

	    \context Staff = hornsC {
                \property Staff.midiInstrument = #"french horn"
		\property Staff.instrument = 
		\markup { \center << "Corni in" "C alto" >> }

		\time 3/4
		\partial 4

		\context Voice=one \partcombine Voice
		\context Thread=one { \hornIThirdMov }
		\context Thread=two { \hornIIThirdMov }
	    }

	    \context Staff = hornsF {
                \property Staff.midiInstrument = #"french horn"
		\property Staff.transposing = #5
		\property Staff.instrument = 
		\markup { \center << "Corni" "in F" >> }

		\time 3/4
		\partial 4

		\context Voice=one \partcombine Voice
		\context Thread=one { \hornIIIThirdMov }
		\context Thread=two { \hornIVThirdMov }
	    }
	>

	\context StaffGroup = strings <

	    \context Staff = violinI <
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = 
		\markup { \center << "Violino I." >> }

		\time 3/4
		\partial 4

		\violinIThirdMov
	    >

	    \context Staff = violinII <
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = 
		\markup { \center << "Violino II." >> }

		\time 3/4
		\partial 4

		\violinIIThirdMov
	    >

	    \context Staff = viola <
                \property Staff.midiInstrument = #"viola"
		\property Staff.instrument = 
		\markup { \center << "Viola." >> }

		\time 3/4
		\partial 4

		\violaThirdMov
	    >

	    \context Staff = basso <
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = 
		\markup { \center << "Violoncello"
				     "e Basso." >> }


		\time 3/4
		\partial 4

		\bassoThirdMov
		\context Voice=markings { \markingsIIIbis }
	    >
	>
    >

    \midi {
       \tempo 4 = 130
    }

    \header {
	piece = "MENUETTO."
    }

    \paper { }
}

\include "flutes-iv.ly"
\include "horn1-iv.ly"
\include "horn2-iv.ly"
\include "horn3-iv.ly"
\include "horn4-iv.ly"
\include "violin1-iv.ly"
\include "violin2-iv.ly"
\include "viola-iv.ly"
\include "basso-iv.ly"

\score {
    <
	\property Score.BarNumber \override #'padding = #3

	\context StaffGroup = winds <

	    \context Staff = flutes <
                \property Staff.midiInstrument = #"flute"
		\property Staff.instrument = 
		\markup { \center << "2 Flauti" >> }

		\time 4/4
		
		\flutesFourthMov

	    >

	    \context Staff = hornsC {
                \property Staff.midiInstrument = #"french horn"
		\property Staff.instrument = 
		\markup { \center << "Corni in" "C alto" >> }

		\time 4/4

		\context Voice=one \partcombine Voice
		\context Thread=one { \hornIFourthMov }
		\context Thread=two { \hornIIFourthMov }
	    }

	    \context Staff = hornsF {
                \property Staff.midiInstrument = #"french horn"
		\property Staff.transposing = #5
		\property Staff.instrument = 
		\markup { \center << "Corni" "in F" >> }

		\time 4/4

		\context Voice=one \partcombine Voice
		\context Thread=one { \hornIIIFourthMov }
		\context Thread=two { \hornIVFourthMov }
	    }
	>

	\context StaffGroup = strings <

	    \context Staff = violinI <
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = 
		\markup { \center << "Violino I." >> }

		\time 4/4

		\violinIFourthMov
	    >

	    \context Staff = violinII <
                \property Staff.midiInstrument = #"violin"
		\property Staff.instrument = 
		\markup { \center << "Violino II." >> }

		\time 4/4

		\violinIIFourthMov
	    >

	    \context Staff = viola <
                \property Staff.midiInstrument = #"viola"
		\property Staff.instrument = 
		\markup { \center << "Viola." >> }

		\time 4/4

		\violaFourthMov
	    >

	    \context Staff = basso <
                \property Staff.midiInstrument = #"cello"
		\property Staff.instrument = 
		\markup { \center << "Violoncello"
				     "e Basso." >> }


		\time 4/4

		\bassoFourthMov
	    >
	>
    >

    \midi {
       \tempo 4 = 180
    }

    \header {
	piece = "Allegro molto."
    }

    \paper { }
}


