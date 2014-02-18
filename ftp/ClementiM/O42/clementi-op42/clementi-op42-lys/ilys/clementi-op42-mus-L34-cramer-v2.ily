\version "2.16.1"
\include "definitions.ily"

% LESSON XXXIV. Andante with Variations by Cramer. (Variation 1)

LessonXXXIVUpperC= \relative c''{
	\key g \minor
	\clef treble
	\time 2/4
	\tempo 4=66 \hideTempo
	\repeat volta 2{
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 3 8)
		e32 f g f
		<<{d8 bes32[ c d bes] c8 a32[ bes c a]}
		\\{s4. 	\once \override Stem #'cross-staff = ##t
			\once \override Stem #'length = #16
			\once \override Flag #'style = #'no-flag
			<ees c>8}>>
		\stemNeutral
		bes'8
		%\once \override Slur #'control-points = #'( ( 0.6641 . 2.546) ( 2.1032 . 4.095) ( 5.8669 . 3.652) ( 7.0845 . 2.213) )
		d32([ f d bes)] f8 g32[ a bes g]|f8 g32([ a bes g)] f8-| <d'bes>
	%LINE 2
		<d bes>4( <c a>8) d32[\fz fis a d]|bes8-4 a32[-3\p g-2 f-1 ees-3] d8-2 \grace f32 ees[ d ees g]|
		f8 
		<<{f,32[ g a f] 
		
		bes4->~ <bes e,>8 <a f>}\\{s8 e\rest d s4}>>
		<bes' d,>8 bes,32[( c e g])|
		\set Score.measurePosition = #(ly:make-moment 1 8)
		<g bes,>4^( <f a,>8^)
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		\stemUp c'32 a c a
	%LINE 3
		<d bes>8 ees32[ c ees c] \autoBeamOff<f d>8 \stemNeutral <bes g>^(\fz|
		<a f>^) 
		\once \override Slur #'control-points = #'( ( 0.8966 . 3.586) ( 4.0847 . 4.881) ( 10.361 . 4.881) ( 13.15 . 2.889) )
		<g ees>^(\fz[ <f d>-|]^) \autoBeamOn \grace c'32 bes a bes c|
		\stemUp bes8 \grace c32 bes[ a bes c] bes8 \grace c32 
		<<{bes[ a bes c]}
		\\{	\once \override Stem #'cross-staff = ##t
			\once \override Stem #'length = #16
			\once \override Flag #'style = #'no-flag
			f,,8}>>
		<<{bes'8 aes32[ g aes f] ees8}
		\\{	\once \override Stem #'cross-staff = ##t
			\once \override Stem #'length = #16
			\once \override Flag #'style = #'no-flag
			f,4(
			\once \override Stem #'cross-staff = ##t
			\once \override Stem #'length = #16
			\once \override Flag #'style = #'no-flag
			ees8)
		}>>
		
		<d'b>^(|<ees c>) <d b>
	%LINE 4
		<g c,> 
		<<{a,32[ bes c a]}
		\\{	\once \override Stem #'cross-staff = ##t
			\once \override Stem #'length = #16
			\once \override Flag #'style = #'no-flag
			ees}>>
		<<{bes'8}
		\\{	\once \override Stem #'cross-staff = ##t
			\once \override Stem #'length = #16
			\once \override Flag #'style = #'no-flag
			d,}>>
		c'32[ bes a g] \autoBeamOff f8 <f ees> \autoBeamOn|
		<f d> 
		\once \override Slur #'control-points = #'( ( 0.4981 . -3.5865) ( 3.4869 . -4.782) ( 9.5641 . -4.3835) ( 11.955 . -2.9888) )
		<d bes'>([ <g ees>-|)] a,32\p[ c ees a]|
		\set Score.measurePosition = #(ly:make-moment 1 8)
		\once \override Slur #'control-points = #'( ( 1.8818 . 2.324) ( 6.3097 . 4.206) ( 13.726 . 4.317) ( 17.711 . 2.435) )
		<a ees c>4^( <bes d, bes>8^)
		}
	}
}

LessonXXXIVLowerC = \relative c'{
	\key g \minor
	\clef bass
	\time 2/4
	\repeat volta 2{
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 3 8)
		r8 
		r8 \change Staff = "upper" \stemDown <f d>[ <g ees>] \change Staff = "lower" f,|
		<d' bes> <bes bes,> r <bes~ ees,>|<bes d,> <bes ees,> d, bes32[ c d e]|
	%LINE 2
		f8 e32[ f e f] \autoBeamOff \stemUp f,8 \stemNeutral <a'fis>|
		\autoBeamOn <bes g>4 <bes f>8<a ees>|
		<bes d,>8 r r g,32[ a bes g]|c8 d32[ e f d] bes8[ c]
		\set Score.measurePosition = #(ly:make-moment 1 8)
		r e32[ f e f] f,8
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		\change Staff = "upper" \stemDown f''_~
		f <f ees> <f d> \change Staff = "lower" bes,,32[ bes' bes, bes']
		bes,8 bes32[ bes' bes, bes'] \autoBeamOff bes,8 bes' \autoBeamOn
		\change Staff = "upper" <bes' g>_\p 
		\once \override Slur #'control-points = #'( ( 1.2951 . 0.199) ( 3.4869 . 0.996) ( 8.5679 . 0.996) ( 10.261 . -0.3985) )
		<aes f>[( <g ees>])-| \change Staff = "lower" bes,8
		bes4 g8 \change Staff = "upper" f'32[ g f g]
		ees8 f32[ g f g] \autoBeamOff ees8 \change Staff = "lower" fis,8
		g 
		\once \override Slur #'control-points = #'( ( 0.8966 . 3.486) ( 3.8854 . 4.881) ( 8.5679 . 5.08) ( 11.357 . 3.686) )
		<bes g>[( <a c>)]-| \autoBeamOn \stemUp a,32( bes c a)
		bes8 bes,32[ d f bes] ees,8 f
		\set Score.measurePosition = #(ly:make-moment 1 8)
		r8 a32[ bes a bes] bes,8 
	}
}
