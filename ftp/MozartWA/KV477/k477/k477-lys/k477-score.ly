\version "2.4.0"
\encoding "latin1"

#(set-global-staff-size 15)

\include "k477-defs.ly"
\include "k477-header.ly"

\include "k477-clarinet-part.ly"
\include "k477-basset-horn-part.ly"
\include "k477-horn1-part.ly"
\include "k477-horn2-part.ly"
\include "k477-oboe1-part.ly"
\include "k477-oboe2-part.ly"
\include "k477-violin1-part.ly"
\include "k477-violin2-part.ly"
\include "k477-viola-part.ly"
\include "k477-cello-part.ly"

\score 
{
    \simultaneous
    {
	\new StaffGroup
	<<
	    \new Staff {
		\set Staff.instrument = \markup { "Oboi" }
		\set Staff.midiInstrument = #"oboe"
		\partcombine 
		{ << { \oboeI } { \markings } >> }
		{ \oboeII }
	    }

	    \new Staff {
		\set Staff.instrument = \markup 
		{
		    \column 
		    <
			"Clarinetto"
			{ "in B" \smaller \flat }
		    >
		}
		\set Staff.midiInstrument = #"clarinet"

		\new Voice { \clarinet }
	    }
	>>

	\new StaffGroup
	<<
	    \new Staff {
		\set Staff.instrument = \markup 
		{
		    \column 
		    <
			"Corno di"
			"bassetto"
			"in F"
		    >
		}
		\set Staff.midiInstrument = #"clarinet"

		\new Voice { \bassetHorn }
	    }

	    \new Staff {
		\set Staff.instrument = \markup 
		{
		    \column 
		    <
			"Corno I"
			{ "in E" \smaller \flat }
		    >
		}
		\set Staff.midiInstrument = #"french horn"

		\new Voice { \hornI }
	    }

	    \new Staff {
		\set Staff.instrument = \markup 
		{
		    \column 
		    <
			"Corno II"
			"in C (basso)"
		    >
		}
		\set Staff.midiInstrument = #"french horn"

		\new Voice { \hornII }
	    }
	>>

	\new StaffGroup 
	<<
	    \new GrandStaff 
	    <<
		\new Staff {
		    \set Staff.instrument = \markup { "Violini I" }
		    \set Staff.midiInstrument = #"orchestral strings"
		    \new Voice { \violinI }
		}

		\new Staff {
		    \set Staff.instrument = \markup { "Violini II" }
		    \set Staff.midiInstrument = #"orchestral strings"
		    \new Voice { \violinII }
		}
	    >>

	    \new Staff {
		\set Staff.instrument = \markup { "Viola" }
		\set Staff.midiInstrument = #"orchestral strings"
		\new Voice { \viola }
	    }

	    \new Staff {
		\set Staff.instrument = \markup { "Violoncello" }
		\set Staff.midiInstrument = #"orchestral strings"
		\new Voice { \cello }
	    }
	>>
    }

    \layout { }
    \include "k477-midi.ly"
}
