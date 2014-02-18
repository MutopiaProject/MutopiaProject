\version "2.16.1"
\include "definitions.ily"

% LESSON XXXIV. Andante with Variations by Cramer. (Variation 1)

LessonXXXIVUpperB=\relative c'{
	\key g \minor
	\clef treble
	\time 2/4
	\tempo 4=72 \hideTempo
	\repeat volta 2{
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 3 8)
		\stemUp f16-\tweak #'stencil ##f\mf f' \stemNeutral
		d-4 f,-1 bes-2 f-1 c'-3 g-1 a-2 f-1|bes-2 f'-5 d-4  bes-2 f-1 d-2 ees-3 f-4|
		d-1 f-2 bes-4 g-2 f-1[ a-2] bes-3[ d-5]|\stemDown d-4( f,-1 bes-2 d-4 c-3 a d a) \stemNeutral|
		\once \override Slur #'control-points = #'( ( 0.6641 . 2.988) ( 7.638 . 6.199) ( 31.105 . 7.527) ( 44.389 . 4.095) )
		d( bes f'ees d bes <ees a,> c|
	%LINE 2
		\stemUp <f bes,> f,_1 g_2 a_3 bes_4 f_1 bes_5 d,_1)
		e_\markup{\italic \smaller "dimin."}^2 bes'-5 f-3 a-5 d,-2[ bes'-5 bes,-1 e-3](|
		\set Score.measurePosition = #(ly:make-moment 1 8)
		<g e bes>4-1-3-5)^( <f a,>8^)-1-4
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		c'16 a \noBreak
		d bes ees c f d bes bes'|\stemDown bes, bes' bes, bes' bes, bes' f d|
		\stemUp bes' g aes f g ees f d|
	%LINE 3
		f d fis d g ees bes g|g ees aes f g ees a\> c,\!|
		bes'-5 bes,-1 c-2 d-3 ees-4 bes-1 ees-5 bes-2|
		c-3_\p ees-5 bes-2 d-4 \change Staff = "lower" \autoBeamOff g,[ \change Staff = "upper" \stemDown ees' \change Staff = "lower" \stemUp ees, a]|
		\autoBeamOn
		\set Score.measurePosition = #(ly:make-moment 1 8)
		<c ees,>4^( <bes d,>8^)
	}
}
LessonXXXIVLowerB=\relative c'{
	\key g \minor
	\clef bass
	\time 2/4
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		r8-\tweak #'stencil ##f \mf
		r8 <bes d> <ees ees,> <c f,>|
		<bes d>4 r8 <f^~ a,>|\stemUp <f bes,>8 d16 ees <d bes>8 bes \stemNeutral|
		f' f, r fis'^\markup{\italic "rf"}|g g,g'f16 ees|
		d4 r8 bes|c[ d bes c]
		\set Score.measurePosition = #(ly:make-moment 1 8)
		r16 f[ e f] f,8
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		\change Staff = "upper"
		\stemDown f''8_~
		f[ ees d] \change Staff = "lower" <ees f,>
		<d f,> <c ees,><bes d,> r|
		\change Staff = "upper" \stemDown e\rest bes'~ bes <aes bes,>|
		<aes ees~>4 <g ees>8 d\rest|
		\change Staff = "lower" ees,[ d ees] <fis fis,>|
		<g g,>4. \stemDown g,8(|a[ bes) ees,-| f-|]
		\set Score.measurePosition = #(ly:make-moment 1 8)
		g16\rest bes[ a bes] \stemNeutral 
		 \once \override NoteColumn #'ignore-collision = ##t
		bes,8
	}
}
