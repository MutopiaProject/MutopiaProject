\version "2.16.1"
\include "definitions.ily"

% LESSON XLVI. Prelude in A flat, Major.

LessonXLVIUpperPrel= \relative c''{
	\key aes \major
	\time 3/4
	\clef treble
	\tempo 4=100 \hideTempo

		\set tupletSpannerDuration = #(ly:make-moment 1 4)
		\times 2/3 { 
			\once \override Voice.TextScript #'extra-offset = #'(-14.3 . -0.4 )
			b8\rest^\markup{"Moder. e legato"}-\tweak #'stencil ##f \p c,-1[ ees-2]  aes-4[\< ees-2 c-1]  aes'[ ees c]\!
		}
		\override TupletNumber #'stencil = ##f
		\override TupletBracket #'stencil = ##f
		\times 2/3 {
			c'-5[\(\> f,-2 des-1] bes'-4[ f-2 des-1]\)\!  bes'[ f des]
			b'\rest des,-1[ ees-2]  bes'-4[\< ees, des] bes'[ ees, des]\!
			des'-5[\(\> aes-2 ees-1]  c'-4[ aes ees]\)\!  c'[ aes ees]
			b'\rest_\ff aes-1[ ces-2]  d-3[ ces aes]  d[ ces aes]
			f'-5[\( c!-2\> aes-1] ees'-4[ c aes]\)\!  ees[ c aes]
			b'\rest des,!-1[\p ees-2]  g-4[_"rallentando" ees des]  g[ ees des]
			bes'-5[\( ees, c]  aes'-4[ ees-2 c-1]\) } aes4-2
			r1*3/4
			\bar "|."
}

LessonXLVILowerPrel=\relative c{
	\key aes \major
	\time 3/4
	\clef bass
	<aes aes'>2.
	<aes aes'>
	<g g'>
	<ges ges'>
	<fes fes'>
	<ees ees'>
	<ees^5 bes'^2 ees^1>
	<aes^3 c^2 ees^1>2  \times 2/3 { r8 ees'-1[\( c-2]\)}
	aes2.-3
	
}
