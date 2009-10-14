global={\key c \major }
\bookpart {
\header { 
	title = "Sonata duodecima"
	subtitle = "a 7" 
	composer = "J.H.Schmelzer"
	}
\paper{
%spacing issues
	ragged-last-bottom = ##f
%	system-count = #10
%	indent = .75\cm
}
\score {
\new GrandStaff
<<
	\new StaffGroup = "Cornettino" 
	<<
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Cornettino 1mo" 
			\set Staff.midiInstrument = #"muted trumpet"
			\new Voice {\include "./sonata_xii/layout.ily"}
			\new Voice {\global \clef treble \include "./sonata_xii/n_cn1.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Cornettino 2do"
			\set Staff.midiInstrument = #"muted trumpet"
			\new Voice {\global \clef treble \include "./sonata_xii/n_cn2.ily"}
		>>
	>>
	\new StaffGroup = "Clarino" 
	<<
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Clarino 1mo" 
			\set Staff.midiInstrument = #"trumpet"
			\new Voice {\global \clef treble \include "./sonata_xii/n_tr1.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Clarino 2do"
			\set Staff.midiInstrument = #"trumpet"
			\new Voice {\global \clef treble \include "./sonata_xii/n_tr2.ily"}
		>>
	>>
	\new StaffGroup = "Trombone" 
	<<
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Trombone 1" 
			\set Staff.midiInstrument = #"trombone"
			\new Voice {\global \clef alto \include "./sonata_xii/n_tb1.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Trombone 2do"
			\set Staff.midiInstrument = #"trombone"
			\new Voice {\global \clef tenor \include "./sonata_xii/n_tb2.ily"}
		>>
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Trombone 3" 
			\set Staff.midiInstrument = #"trombone"
			\new Voice {\global \clef bass \include "./sonata_xii/n_tb3.ily"}
		>>
	>>

    \new StaffGroup ="BC"
	<<	
		\new Staff 
		<< 
			\set Staff.instrumentName = #"Continuo"
			\set Staff.midiInstrument = #"Cello"
			\new Voice {\include "./sonata_xii/n_fig.ily" }
			\new Voice {\global \clef bass \include "./sonata_xii/n_bc.ily"}
		>>
	>>
>>
\layout {
%	\context { \Score \override SpacingSpanner  #'common-shortest-duration = #(ly:make-moment 1 4) }
}
\midi { \context { \Score tempoWholesPerMinute = #(ly:make-moment 100 4) } 
	\context { \Voice \remove "Dynamic_performer"}}
}
}
