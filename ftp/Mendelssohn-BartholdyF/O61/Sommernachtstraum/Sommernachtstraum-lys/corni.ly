\header{
filename =	 "corni.ly";
enteredby =	"Felix Braun";
copyright =	 "Public Domain";
}

\version "1.3.122";
\include "deutsch.ly"

cornoB = \notes \relative c {
	R2.*9 \clef "bass"; | c2. ~ | c~ | c~ | c~ | c~ | c~ | 
	c4 r8 r4 r8 | r2. \clef "G"; | g''~ | g~ | g~ | g~ | g | R*3 |
	g~ | g~ | g~ | g~ | g | R*20 | g4.\>~ \!g4 r8 | R2.*8 |
	g~ | g~ | g4 r8 r4 r8 | R2. | 
	g,8 r r r4 r8 |
	g8 r r r4 r8 |
	g8 r r r4 r8 |
	g8 r r r4 r8 |
	g8 r r r4 r8 |
	R2.*4 |
	r4 r8 g'8 r r \clef "bass"; | c,,2.~ | c~ | c~ | c~ | c4 r8 r4 r8 |
	R2.*3 \clef "G"; | c'~ | c~ | c~ | c | R*8 | g~ | g~ | g~ | g~ | 
	g4 r8 r4 r8 | R2.*12 \clef "bass";|
%% 111
	c,~ | c~ | c~ | c | R*4 | c~ | c~ | c~ | c | R*4 |
	r4 r8 c4 r8 | c4 r8 r4 r8 |
	r4 r8 c4 r8 | c4 r8 r4 r8 |
	r4 r8 c4 r8 | c4 r8 c4 r8 |
	c4 r8 r4 r8 | R2.*7 \clef "G"; |
	g'8\p r r r4 r8 |
}

cornoC = \notes \relative c, {
	R2.*9 | c2.\p~ | c~ | c~ | c~ | c~ | c~ | 
	c4 r8 r4 r8 | r2. | g''\p~ | <g {s2 s4-"cresc."}>~ | g2.~ | g~ | g | R*3 |
	g\p~ | g~ | g~ | g~ | g | R*20 | g4.~ g4 r8 | R2.*8 |
	g\p~ | g~ | g4 r8 r4 r8 | R2. | 
	\stemDown g8\pp r r r4 r8 |
	g8 r r r4 r8 |
	g8 r r r4 r8 |
	g8 r r r4 r8 |
	g8 r r r4 r8 |
	R2.*4 |
	r4 r8 \stemUp g8\p r r | c,,2.~ | c~ | c~ | c~ | c4 r8 r4 r8 |
	R2.*3 | \stemDown c''\p~ | c~ | c~ | c | R*8 | g\p~ | g-"dim."~ | 
	g~ | g~ | g4 r8 r4 r8 | R2.*12 |
%% 111
	\stemUp c,,\p\<~ | c~ | \!c\f\>~ | \!c | R*4 | c\p\<~ | c~ | \!c\f\>~ | \!c | 
	R*4 |
	r4 r8 c4\p r8 | c4 r8 r4 r8 |
	r4 r8 c4 r8 | c4 r8 r4 r8 |
	r4 r8 c4\pp r8 | c4 r8 c4 r8 |
	c4 r8 r4 r8 | R2.*8 |
}

corniStaff = \context Staff = corni <
	\property Staff.midiInstrument = #"french horn"
	\property Staff.instrument = #"Corni in A"
	\property Staff.instr = #"Cor."
	\property Staff.transposing = #-3
	\notes< 
		\global
		\context Voice=cornoi
			\cornoB
		\context Voice=cornoii
			\cornoC
	>
>
