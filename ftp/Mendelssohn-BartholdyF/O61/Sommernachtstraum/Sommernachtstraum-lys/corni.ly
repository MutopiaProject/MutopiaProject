\header{
filename =	 "corni.ly"
enteredby =	"Felix Braun"
copyright =	 "Public Domain"
}

\version "2.16.0"
\include "deutsch.ly"

cornoB =  \relative c {
	R2.*9 \clef "bass" | c2. ~ | c~ | c~ | c~ | c~ | c~ | 
	c4 r8 r4 r8 | r2. \clef "G" | g''~ | g~ | g~ | g~ | g | R2.*3 |
	g2.~ | g~ | g~ | g~ | g | R2.*20 | g4.\>~  g4\! r8 | R2.*8 |
	g2.~ | g~ | g4 r8 r4 r8 | R2. | 
	g,8 r r r4 r8 |
	g8 r r r4 r8 |
	g8 r r r4 r8 |
	g8 r r r4 r8 |
	g8 r r r4 r8 |
	R2.*4 |
	r4 r8 g'8 r r \clef "bass" | c,,2.~ | c~ | c~ | c~ | c4 r8 r4 r8 |
	R2.*3 \clef "G" | c'2.~ | c~ | c~ | c | R2.*8 | g2.~ | g~ | g~ | g~ | 
	g4 r8 r4 r8 | R2.*12 \clef "bass"|
%% 111
	c,2.~ | c~ | c~ | c | R2.*4 | c2.~ | c~ | c~ | c | R2.*4 |
	r4 r8 c4 r8 | c4 r8 r4 r8 |
	r4 r8 c4 r8 | c4 r8 r4 r8 |
	r4 r8 c4 r8 | c4 r8 c4 r8 |
	c4 r8 r4 r8 | R2.*7 \clef "G" |
	g'8\p r r r4 r8 |
}

cornoC =  \relative c, {
	R2.*9 | c2.\p~ | c~ | c~ | c~ | c~ | c~ | 
	c4 r8 r4 r8 | r2. | g''\p~ | g_"cresc."~ | g2.~ | g~ | g | R2.*3 |
	g2.\p~ | g~ | g~ | g~ | g | R2.*20 | g4.~ g4 r8 | R2.*8 |
	g2.\p~ | g~ | g4 r8 r4 r8 | R2. | 
	g8\pp r r r4 r8 |
	g8 r r r4 r8 |
	g8 r r r4 r8 |
	g8 r r r4 r8 |
	g8 r r r4 r8 |
	R2.*4 |
	r4 r8 g8\p r r | c,,2.~ | c~ | c~ | c~ | c4 r8 r4 r8 |
	R2.*3 \clef "G" | c''2.\p~ | c~ | c~ | c | R2.*8 | g2.\p~ | g-"dim."~ | 
	g~ | g~ | g4 r8 r4 r8 | R2.*12 \clef "bass" |
%% 111
	c,,2.\p\<~ | c~ |  c\f\>~ |  c\! | R2.*4 | c2.\p\<~ | c~ |  c\f\>~ |  c\! | 
	R2.*4 |
	r4 r8 c4\p r8 | c4 r8 r4 r8 |
	r4 r8 c4 r8 | c4 r8 r4 r8 |
	r4 r8 c4\pp r8 | c4 r8 c4 r8 |
	c4 r8 r4 r8 | R2.*8
}

corniStaff = \new Staff = "corni" <<
	\set Staff.midiInstrument = #"french horn"
	\set Staff.instrumentName = #"Corni in A"
	\set Staff.shortInstrumentName = #"Cor."
	\transposition a 
	<< 
		\global
		\partcombine \cornoB \cornoC
	>>
>>
