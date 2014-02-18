\version "2.16.1"
\include "definitions.ily"

% LESSON XXXIV. Andante with Variations by Cramer. (Variation 3)

LessonXXXIVUpperD= \relative c''{
	\key g \minor
	\clef treble
	\time 2/4
	\tempo 4=66 \hideTempo
	\repeat volta 2{
	%LINE 1
		\autoBeamOn
		\set Score.measurePosition = #(ly:make-moment 3 8)
		\set tupletSpannerDuration = #(ly:make-moment 2 16)
		\override TupletNumber #'stencil = ##f
		\stemUp \times 2/3 {f16-5(\f d-4 f,-1}
		\times 2/3 {
			d'-4[ bes-2 f-1] bes-4[ f-2 d-1)] c'-5[ g-3 c,-1] a'-4[ f-2 c-1]
			bes'-4[ f-2 d-1]  d'-5[ bes-4 f-2]  bes-4[ f-2 d-1]  f-4[ ees-3 c-1]
			f-5[ d-3 a-1]  bes-2[ d-3 f-5]   d-1([ f-2 bes-4)]  g-2[ bes-3 d-5]
			d-5[( bes-3 f-1]  b-3[ gis-2 f-1]  c'-4[ a-2 f-1)]  d'-5[_\markup{\italic "rf"} c-4 a-2]
		}
	%LINE 2
		\times 2/3 {
			d-5\fz[ bes-3 g-1]  c-4[ a-2 g-1] d'-5[ bes-2 g-1]  ees'-5 c-3 g-1]
			f'-5[_\markup{\italic "dimin."} bes,-2 f-1] a-3[ f-1 ees-2]  bes'-5[ f-2 d-1] d'-5[ bes-4 d,-1]
			des'-5[ bes-4 e,-1]  c'-5[ a-4 f-2]  bes-5[ g-3 d-1]  g-5[ e-4 bes-2]
		}
		\set Score.measurePosition = #(ly:make-moment 1 8)
		\times 2/3 {g'-5[ e-4 bes-2] g'[ e bes]} <f' a,>8
	}
	\repeat volta 2{
		\times 2/3{
			\stemNeutral
			c''16-3[ a-2 f-1]-\tweak #'stencil ##f \f  d'-4[ bes-2 f-1]  ees'-5[ c-3 f,-1]  f'-5[ d-4 a-1]  bes-2[ c-4 bes-3]
	%LINE 3
			a-2[ bes-4 a-3]  g-2[ a-4 g-3]  f-2[ d-1 ees-2]  
			\once \override Slur #'control-points = #'( ( 0.9132 . 2.988) ( 9.0494 . 6.309) ( 28.974 . 5.479) ( 39.352 . 2.905) )
			f-1[( g-2 a-3]
			bes-4[ c-5 bes-4]  aes-3[ bes-4 aes-3]  g-2[ aes-4 g-3]  f-2[ g-4 f-3])
			ees-2[ d-1 c-3]  bes-2[ c-3 d-4]  ees-5[ bes-2 g-1]  bes-5[ g-4 ees-2]
			g-4[ ees-2 bes-1]  g'-4[ f-3 b,-1]  g'-4[ ees-2 c-1]  a'-5[\fz ees-2 c-1]
			bes'-5[ d,-2 bes-1]  g'-5[ d-3 bes-2] \stemUp f'-5[ c-2 \change Staff = "lower" a-1] \change Staff = "upper" \stemUp e'-5[ \change Staff = "lower" bes-3 g-1]
	%LINE 4
			\change Staff = "upper" ees'-5[ \change Staff = "lower" c-3 a-1]
			\change Staff = "upper" d-4[ \change Staff = "lower" bes-2 g-1]
			\change Staff = "upper" ees'-5[ \change Staff = "lower" c-3 g-1]  c-5[ a-4 ees-2]
			
			\set Score.measurePosition = #(ly:make-moment 1 8)
			c'[ a ees]  c'[ a ees] 
		}
		 <bes' d,>8
	}
	\set Score.measurePosition = #(ly:make-moment 3 8)
	\change Staff = "upper"
	f''8-\tweak #'stencil ##f \f
	<<{d <bes' bes,>[ <c c,> <a a,>]}
	\\{s4.                     
		\once \override Stem #'cross-staff = ##t
		\once \override Stem #'length = #16
		\once \override Flag #'style = #'no-flag
		<ees, c>8}>>
	\grace bes'16 \stemDown bes'8.( d32 c) bes( a g f ees d c bes)
	<<{<g'bes,>8 bes,\rest <a f ees c> bes\rest}
	\\{g8 s4.}>>
	\set Score.measurePosition = #(ly:make-moment 1 8)
	<bes f d bes>4 r8
	\bar "|."
}
LessonXXXIVLowerD= \relative c{
	\key g \minor
	\clef bass
	\time 2/4
	\repeat volta 2{
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 3 8)
		r8
		r8 d[ ees f]
		d bes r <f'a,>(
		<f bes,>) r bes e,
		f f, r fis'
	%LINE 2
		<g g,>4 f8 ees
		d c bes4
		g8[ a] bes[ c]
		\set Score.measurePosition = #(ly:make-moment 1 8)
		f[ f, f']
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		<c'f,>8
		<d bes>[ <c f,> <bes d,>] \clef treble 
		<<{ \ignoreClashNote g'  %{LINE 3  %}  <a f>8[ <g ees> <f d>]}
		\\{
			\stemUp
			\once \override Flag #'style = #'no-flag
			bes,~ \stemDown bes4.}>> r8
		r c'-.[ bes-. aes-.]
		<aes f bes,>4^( <g ees>8) r
		\clef bass ees,[( d c]) fis,
		g4 \stemDown c8 c,
		fis g ees[ f]
		\set Score.measurePosition = #(ly:make-moment 1 8)
		bes[ bes,] bes'
	}
		\set Score.measurePosition = #(ly:make-moment 3 8)
		r8
		r \change Staff = "upper" <f'' d>_([ <g ees>)] \change Staff = "lower" fis, 
		<d' bes g>4 r4
		<des bes g e>8_\ff r \stemNeutral <f,c f,> r
		\set Score.measurePosition = #(ly:make-moment 1 8)
		<bes, bes,>4 r8
}
