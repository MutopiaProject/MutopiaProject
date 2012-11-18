
\version "2.16.0"

\include "viola-1.ly"
\include "viola-2.ly"

%{
violeGroup =  \context PianoStaff = viole_group  <<
        \set PianoStaff.aDueText = #""
	\context Staff=oneViole {
		\set Staff.midiInstrument = #"viola"
		\set Staff.instrumentName = #"Viola"
		\set Staff.shortInstrumentName = #"Vla."
		
		\clef "alto"
		%\set Staff.clefGlyph = #"clefs.C"
		%\set Staff.clefPosition = #0

		\global
	}
	\context Staff=twoViole {
		\set Staff.midiInstrument = #"viola"
		\set Staff.instrumentName = #"Viola II"
		\set Staff.shortInstrumentName = #"Vla. II"
		
		\clef "alto" 
		%\set Staff.clefGlyph = #"clefs.C"
		%\set Staff.clefPosition = #0

		\global
	}

	\context Staff=oneViole \partcombine \violaI \violaII
>>
%}

violeGroup =   \context Staff = "viole" <<
        \set Staff.aDueText = #""
	\context Staff = "viole" {
		\set Staff.midiInstrument = #"viola"
		\set Staff.instrumentName = #"Viola"
		\set Staff.shortInstrumentName = #"Vla."

		\clef "alto" 
		%\set Staff.clefGlyph = #"clefs.C"
		%\set Staff.clefPosition = #0

		\global
	}
	\context Voice = "one" \partcombine \violaI \violaII
>>

