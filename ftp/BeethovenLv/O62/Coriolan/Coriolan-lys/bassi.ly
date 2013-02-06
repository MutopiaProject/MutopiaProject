\version "2.16.0"

\include "violoncello.ly"
\include "contrabasso.ly"

%{
bassiGroup =  \context PianoStaff = bassi_group  <<
        \staffCombinePianoStaffProperties
	\context Staff=oneBassi {
		\set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = #'(lines
    		  "Violoncello" "    e" "Contrabasso")

    		\set Staff.shortInstrumentName = #"Vc."
		\clef "bass"
		%\set Staff.clefGlyph = #"clefs.F"
		%\set Staff.clefPosition = #2

		\global
	}
	\context Staff=twoBassi {
		\set Staff.midiInstrument = #"contrabass"
		\set Staff.instrumentName = #"Contrabasso"
		\set Staff.shortInstrumentName = #"Cb."
		\transposition c 
	 	\clef "bass" 
		%\set Staff.clefGlyph = #"clefs.F"
		%\set Staff.clefPosition = #2

		\global
	}
	\context Staff=oneBassi \partcombine \violoncello \contrabasso
>>
%}

bassiGroup =  \context PianoStaff = "bassi_group"  <<
	\context Staff=violoncelloStaff <<
		\set Staff.midiInstrument = #"cello"
		\set Staff.instrumentName = #"Violoncello   "
    		\set Staff.shortInstrumentName = #"Vc.  "
		\clef "bass"
		\global
		\violoncello
	>>
	\context Staff=contrabassoStaff <<
		\set Staff.midiInstrument = #"contrabass"
		\set Staff.instrumentName = #"Contrabasso   "
		\set Staff.shortInstrumentName = #"Cb.  "
		\transposition c 
	 	\clef "bass" 
		\global
		\contrabasso
	>>
>>
