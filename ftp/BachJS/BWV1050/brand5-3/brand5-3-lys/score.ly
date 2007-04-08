 \version "2.4.0"

\include "header.ly"
\include "flute.ly"
\include "violinP.ly"
\include "violin.ly"
\include "viola.ly"
\include "cello.ly"
\include "violone.ly"
\include "harpsichord.ly"

#(set-global-staff-size 13)

\score 
{
	\header
	{
		instrument = "Ensemble"
	}
<<
 \context GrandStaff = Solos <<
	 \context Staff = Flute	<<
		\set Staff.instrument = \markup \smaller "Flauto traverso." %flute solo
		%\set Staff.instr = "Fl"
 		\flute
		\set Staff.midiInstrument = "flute"
		
	>>

	 \context Staff = ViolinPrinciple <<
		\set Staff.instrument = \markup \smaller "Violino principate." %violin solo
		%\set Staff.instr = "Vl.I"
                \set Staff.midiInstrument = #"violin"
		\violinP 
	 >>
  >>

  
 \context GrandStaff = Strings <<
	
 	\context Staff = ViolinMain <<
		\set Staff.instrument = \markup \smaller { 
			\column <
				"Violino"
				"di ripieno."
			 > }
		
		%\set Staff.instr = "Vl"
	 	\set Staff.midiInstrument = "violin"
		\violin
	>>
 	
	\context Staff = ViolaRip <<
		\set Staff.instrument = \markup \smaller { 
			\column <
				"Viola"
				"di ripieno."
			 > }
		%\set Staff.instr = "Va"
	 	\set Staff.midiInstrument = "viola"
 		\viola 
	>>
	 \context Staff = Cellos <<
	 	\set Staff.instrument = \markup \smaller "Violoncello." 	%Cello
		%\set Staff.instr = "Vn"
		\set Staff.midiInstrument = "cello"
		\cello  		
	>>
	 \context Staff = DoubleBass <<
		\set Staff.instrument = \markup \smaller "Violone." %"Double Bass"
		%\set Staff.instr = "B"
	 	\set Staff.midiInstrument = "contrabass"
		\violone
	>>
>>
	\harpsichordTa

>>



	\layout 
	{
	}

	\midi { 
	\tempo 2=90
	}


}
