\version "2.16.1"
\include "definitions.ily"

% LESSON XXIII. German Hymn - Variation 1, by Pleyel.

LessonXXIIIUpperB = \relative c''{
	\key g \major
	\time 2/4
	\clef treble
	\repeat volta 2{
	%LINE 1
		<d g b>16-.\p <d g b>-. <d g b>8-.  <d g d'>16-. <d g d'>-. <d g d'>8-.|
		<d fis a>-1-2-4_\markup{\italic "sempre staccato"} <d fis a> <d fis a> <d g b>|
		<c e c'>16 <c e c'> <c e c'>8 <d fis a>16-1-2-4 <d fis a> <d fis a>8|
		<d g b>-1-3-5 <c fis a>-1-3-5 <b g'>-1-4 r|
		<d g b>16 <d g b> <d g b>8 <d g d'>16 <d g d'> <d g d'>8|
		<d fis a> <d fis a> <d fis a> <d g b>|
		<c e c'>16 <c e c'> <c e c'>8 <d fis a>16 <d fis a> <d fis a>8|
	%LINE 2
		<b g'> <b g'> <b g'> r|
	}
	\repeat volta 2{
		<d fis a>16-1-3-5_\< <d fis a> <d fis a>8 <dis fis b>16-2-3-5 <dis fis b> <dis fis b>8_\!|
		<b e g>-1-2-4 <b e g> <b e g> <cis e a>-2-3-5_\p|
		<a d fis>16-1-2-4\f <a d fis> <a d fis>8 <a cis e>16-1-3-5 <a cis e> <a cis e>8|
		<fis d'>-2-5 <fis d'> <fis d'> r|<d' g b>16 <d g b> <d g b>8 <d g d'>16 <d g d'> <d g d'>8|
		<d fis a> <d fis a> <d fis a> <d g b>|
		<c e c'>16 <c e c'> <c e c'>8 <d fis a>16  <d fis a>  <d fis a>8|
		<b g'> <b g'> <b g'> r| 
	}
}
LessonXXIIILowerB = \relative c'{
	\clef bass
	\key g \major
	\time 2/4
	\repeat volta 2{
	%LINE 1
		g16-. g-. g8-. b16-. b-. b8-.|
		\setFingeringLeft <d-1> d d b-2|
		a16-3 a a8 \setFingeringLeft <d-1>16 d d8|
		g,-1 d-2 g,-5 r|
		g'16 g g8 b16 b b8|
		d d d b|
		a16 a a8 d16 d d8|
	%LINE 2
		g, g g r|
	}
	\repeat volta 2 {
		d'16 d d8 b16 b b8|
		e-1 e e a,|
		d16 d d8 a16 a a8|
		d, d d r|
		g16 g g8 b16 b b8|
		d d d b|
		a16 a a8 d16 d d8|
		g, g g r|
	}
}
