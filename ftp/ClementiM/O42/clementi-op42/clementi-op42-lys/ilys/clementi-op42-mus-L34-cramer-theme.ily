\version "2.16.1"
\include "definitions.ily"

% LESSON XXXIV. Andante with Variations by Cramer. (ANDANTE)

LessonXXXIVUpperA=\relative c''{
	\key g \minor
	\time 2/4
	\tempo 4=78 \hideTempo
	\clef treble
	\repeat volta 2{
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 3 8)
		f8-5_\p
		<<{\stemUp d-4[
		\once \override Slur #'control-points = #'( ( 1.4944 . 1.162) ( 1.9095 . 1.494) ( 2.3246 . 1.494) ( 2.9888 . 1.245) )
		bes-2^( c-3^) a-1]}
		\\{s4. \setFingeringRight
		\once \override Stem #'cross-staff = ##t
		\once \override Stem #'length = #16
		\once \override Flag #'style = #'no-flag
		<c,-3 ees-2>8}>>
		\autoBeamOff \stemUp bes'-2([ d-4] f,-1)\> \autoBeamOn <f ees c>\!|
		\stemNeutral
		\once \override Slur #'control-points = #'( ( 2.717 . -2.1736) ( 3.4416 . -2.717) ( 4.7096 . -2.8076) ( 6.0681 . -2.5359) )
		<f d>8.( a32 g)-\tweak #'stencil ##f \p f8-. <d'bes>-.|<d bes>4( <c a>8)\> <d a>\!|
		<d bes>8.-2-3-\tweak #'stencil ##f \p f32-5 ees-4 <d bes>8-2-3( <ees c>-1-4)|
	%LINE 2
		<<{\stemUp<d f>8-3-5 f,-1 bes4-5~|<bes e,>8_\markup{\italic "dimin."}[<a f><bes g d><g e bes>]|}\\{s4 r8 d|s2|}>>
		\set Score.measurePosition = #(ly:make-moment 1 8)
		<g e bes>4( <f a,>8)
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		\stemUp <c' a>8^(-\tweak #'stencil ##f \p
		<d bes>[ <ees c><f d>^)<bes bes,>~\<]|
		<bes bes,>\![ <bes bes,> <bes bes,>] <f d>|
		<bes g>[ <aes f> <g ees> <f d>]|
		<f d>8.^\markup{\halign #-3 \musicglyph #"scripts.turn"}-\tweak #'stencil ##f \turn

		fis16 \autoBeamOff g8 \autoBeamOn <g, f d>|
	%LINE 3
		<g ees>8._\p bes32 aes g8 <a ees>|
		<bes d,> bes, <<{ees4~ <ees c>8[ <d bes> <ees c>8 c]}\\{r8 bes s4}>>
		 c4 s4
	}
}
LessonXXXIVLowerA=\relative c'{
	\key g \minor
	\clef bass
	\time 2/4
	\repeat volta 2{
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 3 8)
		r8
		r \change Staff = "upper" \stemDown <f d>_2_4[-\tweak #'stencil ##f \p <g ees>_1_3] \change Staff = "lower" \setFingeringRight <f,-5>|
		\stemNeutral <d' bes>-4-1 r r <f, a,>|<f bes,>4 d8 bes|f' f,4 fis8|g g'( f[ ees])|
	%LINE 2
		d4. bes8|c[ d bes c]
		\set Score.measurePosition = #(ly:make-moment 1 8)
		f8 f,4
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		\change Staff = "upper" \stemDown 
		f''8_~
		f[ ees! d] \change Staff = "lower" <bes g>-3-2(|
		<a f>^\markup{\finger "4-3"}^\markup{\finger 1}[ <g ees>-4-2 <f d>-5-3]) \change Staff = "upper" bes'_~|
		bes[ bes bes] <aes bes,>|<aes ees>4_( \autoBeamOff <g ees>8) \autoBeamOn \change Staff = "lower" <g, b,>8(|
	%LINE 3
		<g c,>4) r8 <fis fis,>|\stemNeutral <g g,> r r g,| 
		<<{
			a bes
			% stems may overlap the other staff
			\once \override Stem #'cross-staff = ##t
			% extend the stems to reach the other staff
			\once \override Stem #'length = #16
			% do not print extra flags
			\once \override Flag #'style = #'no-flag
			% prevent beaming as needed
			\autoBeamOff
			g'8
			\once \override Stem #'cross-staff = ##t
			\once \override Stem #'length = #16
			\once \override Flag #'style = #'no-flag
			<a ees>8
			\once \override Stem #'cross-staff = ##t
			\once \override Stem #'length = #16
			\once \override Flag #'style = #'no-flag
			\once \override Slur #'control-points = #'( ( 2.117 . 8.966) ( 4.3586 . 8.219) ( 6.4757 . 6.102) ( 7.0984 . 3.237) )
			<a ees>(
			bes,,4  <bes'' d,>8)
		}\\
		{s4 ees,,8  f|bes
		 s8.}>> 
	}
}
