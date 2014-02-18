\version "2.16.1"
\include "definitions.ily"

% LESSON XV. Prelude in D Minor.

LessonXVUpperA= \relative c'{
		\time 2/2
		\key d \minor
		\clef treble
		%LINE 1
			r4 <<{a8-1 d-2 f-4 a-5 f d}\\{a2.}>>
			r4 <<{a8-1 cis-2 e-3 g-5 e cis}\\{a2.}>>
			r4 <<{d8-1 f-2 a-3 d-5 a f}\\{d2.}>>
			r4 <<{bes8-1 e-2 g-4 bes g e}\\{bes2.}>>
		%LINE 2
			r4 <<{a8 d f-4 a f d}\\{a2.}>>
			r4 <<{g8 a cis-4 e-5 cis a}\\{g2.}>>
			s1 s1 \bar "|."
}
LessonXVLowerA= \relative c{
	\tempo 2=90
	\hideTempo
	\key d \minor
	\clef bass
	\time 2/2
	%LINE 1
		<<{d8-4 f-1~ f2.}\\{d1}>>
		<<{e8-3 g~ g2.}\\{e1}>>
		<<{f8-2 a-1~ a2.}\\{f1}>>
		<<{g,8-5 e'-2~ e2.}\\{g,1}>>
	%LINE 2
		<<{a8-5 f'-1~ f2.}\\{a,1}>>
		<<{a8-3 e'-1~ e2.}\\{a,1}>>
		<<{g'8-1 bes-4 a-3 e-1 f-4 cis-2 d4-1 e1\rest}\\{c2\rest g4\rest g8\rest a8 s1}\\{d,1|d1\fermata}>>
}
