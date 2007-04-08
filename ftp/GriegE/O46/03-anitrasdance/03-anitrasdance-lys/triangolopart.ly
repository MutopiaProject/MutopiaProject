\version "1.6.5"
\include "header.ly"

triangolo = \notes \relative c'' {
	\time 3/4
	\key c\major

	c2.:16\p\fermata
	c4 r^\fermata r
	r2.
	r 
	r 
	r 
% volta (1)
 \repeat volta 2 {
	c4\p r r
	r2.
	c4 r r
	
	r2.
	c4 r r
	r2.
	c4 r r
	r2.
	c4 r r
	c4 r r
	c4 r r
	c4 r r
% 2
	c r r
	r2.
	r 
 }

	\alternative {
	{ r2. } { r2. }
	}

 \repeat volta 2 {
	c4 r r
	r2.
	c4 r r
	r2.
	r

	r2.
	r
	r
	c4 r r
	r2.
	c4 r r
	r2.
	r
	r
% 3
	r
	r
	r
	r
	r
	c4 r r
	r2.
	c4 r r
	r2.

	r
	r
	r
	c4 r r
	r2.
	c4 r r
	r2.
	r
	r
% 4
	r2. 
	r
 	r
 	r
 	r
 	r
 	r
 	r

	r2. 
	r 
	r 
	r 
	r^"poco rit." 
	r
	c4\p^"a tempo" r r
	r2.
	c4 r r 
% 5
	r2.
	c4 r r
	r2.
	c4 r r
	r2.
	c4 r r
	r2.
	c4 r r 
	r2.
	c4 r r

	c r r
	c r r
	c r r 
	c r r
	r2.
	r }
\alternative {
{r2. } {r2. r c2.:16^\fermata  c4 r r \bar "||"}
}
}

\score {

   \context Staff = triangolo {
	\property Staff.midiInstrument = #"tinkle bell"
	\property Staff.instrument = #"Triangolo"
	\property Staff.instr = #"  Tr.  "
	\notes <
	\context Voice=triangolo
	\triangolo
	>
}
\paper {}
\midi { \tempo 4=160 }
}