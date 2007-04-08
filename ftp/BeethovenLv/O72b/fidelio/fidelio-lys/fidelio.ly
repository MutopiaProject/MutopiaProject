%%% Many thanks to the Case Western Reserve University Kulas Music library
%%% for providing the old texts that would otherwise rot on the shelves.

\version "2.0.1"

\include "paper13.ly"
\include "english.ly"
\include "defs.ly"

\include "flauti.ly"
\include "oboi.ly"
\include "clarinettiA.ly"
\include "fagotti.ly"
\include "corniE.ly"
\include "corniE2.ly"
\include "trombeC.ly"
\include "trombone_tenore.ly"
\include "trombone_basso.ly"
\include "timpani.ly"
\include "violino1.ly"
\include "violino2.ly"
\include "viola.ly"
\include "violoncello.ly"
\include "contrabasso.ly"


\header {
	\include "header.ly"
	
	mutopiatitle 		= "Fidelio Overture"
 	mutopiacomposer 	= "BeethovenLv"
 	mutopiaopus 		= "O 72b"
 	mutopiainstrument 	= "Orchestra"
 	date 				= "1814/May/26"
 	source 				= "Eulenburg, 1919"
	style 				= "Romantic"
 	copyright			= "Public Domain"
 	maintainer 			= "Will Oram"
 	maintainerEmail 	= "spamguy@foxchange.com"
 	lastupdated 		= "2003/Dec/13"
}

\score { 	
  <<
  	\property Score.InstrumentName \override #'font-magnification	= #1.5
  	\property Score.InstrumentName \override #'padding				= #12
  	
    \context StaffGroup ="woodwinds" <<
      \context Staff ="flauti" <<
      	\property Score.MetronomeMark \override #'transparent = ##t
      	\property Staff.midiInstrument = #"flute"
		\property Staff.instrument = \markup { \center < "2 Flauti" > }
		\property Staff.instr	= \markup { \center < "Fl." > }
		\theFlutes >>
      
      \context Staff ="oboi" <<
      	\property Staff.midiInstrument = #"oboe"
      	\property Staff.instrument = \markup { \center < "2 Oboi" > }
      	\property Staff.instr = \markup { \center < "Ob." > }
      	\theOboes >>
      \context Staff = "clarinetti" <<
      	\property Staff.midiInstrument = #"clarinet"
      	\property Staff.instrument = \markup { \center < "2 Clarinetti" "in A" > }
      	\property Staff.instr = \markup { \center < "Cl." > }
      	\theClarinets >>
      \context Staff = "fagotti" <<
      	\property Staff.midiInstrument = #"bassoon"
      	\property Staff.instrument = \markup { \center < "2 Fagotti" > }
      	\property Staff.instr = \markup { \center < "Fg." > }
      	\theBassoons >>
    >>
    
    \context StaffGroup ="brass" <<
     \context GrandStaff = "horns" <<
		\context Staff = "corni_first" <<
			\property Staff.midiInstrument = #"french horn"
			\property Staff.instrument = \markup { \center < "Corni in E" "I  II" > }
			\property Staff.instr = \markup { \center < "Cor. (E)" > }
			\theHornsfirst >>
		\context Staff = "corni_second" <<
			\property Staff.midiInstrument = #"french horn"
			\property Staff.instrument = \markup { \center < "III IV" > }
			\theHornssecond >>
		>>
		\context Staff = "trumpet" <<
			\property Staff.midiInstrument = #"trumpet"
			\property Staff.instrument = \markup { \center < "2 Trombe" "in C" > }
			\property Staff.instr = \markup { \center < "Trbe. (C)" > }
			\theTrumpets >>
		\context GrandStaff = "trombones" <<
			\context Staff = "tenor_trombone" <<
				\property Staff.midiInstrument = #"trombone"
				\property Staff.instrument = \markup { 
                  							 \center < Trombone Tenore > }
				\theTenorTrombones >>
				\property Staff.instr = \markup { \center < "Trbni" > }
			\context Staff = "bass_trombone" <<
				\property Staff.midiInstrument = #"trombone"
				\property Staff.instrument = \markup {
                  							 \center < Trombone Basso > }
				\theBassTrombones >>
		>>
    >>
    \context StaffGroup ="timpani_group" <<
      \context Staff ="timpani" <<
      	\property Staff.midiInstrument = #"timpani"
      	\property Staff.instrument = \markup { \center < "Timpani" "in E-H" > }
      	\property Staff.instr = \markup { \center < "Timp." > }
      	\theTimpani
      	>>
    >>
    \context StaffGroup ="strings" <<
    	\context GrandStaff = "upper_strings" <<
    		\context Staff = "violin_one" <<
    			\property Staff.midiInstrument = #"string ensemble 1"
				\property Staff.instrument = \markup { \center < "Violino I" > }
				\property Staff.instr = \markup { \center < "Vl." > }
				\theFirstViolins >>
    		\context Staff = "violin_two" <<
    			\property Staff.midiInstrument = #"string ensemble 1"
				\property Staff.instrument = \markup { \center < "Violino II" > }
				\theSecondViolins >>
		>>
	\context Staff = "viola" <<
		\property Staff.midiInstrument = #"string ensemble 1"
			\property Staff.instrument = \markup { \center < "Viola" > }
			\property Staff.instr = \markup { \center < "Vla." > }
			\theViolas >>

		\context GrandStaff = "lower_strings" <<
			\context Staff = "violincello" <<
				\property Staff.midiInstrument = #"string ensemble 1"
				\property Staff.instrument = \markup { \center < "Violoncello" > }
				\property Staff.instr = \markup { \center < "Vc." > }
				\theCellos >>
			
			\context Staff ="contrabass" <<
	      		\property Staff.midiInstrument = #"contrabass"
	      		\property Staff.instrument = \markup { \center < "Contrabasso" > }
	      		\property Staff.instr = \markup { \center < "B." > }
	      		\theBass >>
	     >>
	  >>
 >>
  
\midi { \tempo 4 = 280 }
  \paper {
	indent = 25.0\mm
	%textheight = 300.0\mm
	linewidth = 470\pt
	papersize = "a4"

    \translator { \RemoveEmptyStaffContext }
    \translator {
      \ScoreContext
      %minimumVerticalExtent = #(cons -3 3)
      BarNumber \override #'padding = #3
    }
  }
}

