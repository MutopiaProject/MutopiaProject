\version "2.16.1"
\include "definitions.ily"

% LESSON XXIII. German Hymn - Variation 3, by Pleyel.

LessonXXIIIUpperD = \relative c''{
	\key g \major
	\time 2/4
	\clef treble
	\tempo 4=60
	\hideTempo
	\repeat volta 2{
	%LINE 1
		g32-1[ b-2 d-3 b-2]  g'-5[ d-3 b-2 d-3]  g,[ b d b]  g'[ d b d]|
		a-1[ d-2 fis-4 d]  a[ d fis d]  a[ d fis d]  b-1[ d-2 g-5 d-2]|
		c-1[ e-3 a-5 e-3]  c[ e a e]  a,-1[ c-2 fis-4 c-2]  a[ c fis-4 c]|
		b-1[ b'-5 a g]  fis[ e d-3 c]  b[ g'-5 fis e]  d[ c b-3 a-2]|
	%LINE 2
		g[ b d b]  g'[ d b d]  g,[ b d b]  g'[ d b d]|
		a[ d fis d]  a[ d fis d]  a[ d fis d]  b[ d g d]|
		c[ e a e]  c[ e a e]  a,[ c fis c]  a[ c fis c]|
	}
	\alternative{
		{b-1[ g'-5 fis e]  d[ e-4 d c]  g[ e'-4 d c]  b[ c-4 b a]|} %1st Pass
		{b-1[ g'-5 fis e]  d[ c b-3 a]  g-1[ fis-2 g-1 a-2]  b-3[ a-1 b cis]|} %2nd Pass
	}
	%LINE 3
	\repeat volta 2{
		d32-1[ fis-3 a-5 fis]  d[ fis a fis]  dis-2[ fis-3 b-5 fis]  dis[ fis b fis]|
		e-1[ g-4 b-5 g-4]   e[ g b g]  e[ g b g]  cis,-2[ e-3 a-5 e-1]|
		fis-2[ a-3 d-5 cis]  b[ a g fis-3]  e[ d cis-4 b]  a[ g fis-3 e]|
		d-1[ cis-2 d-1 e-2]  fis-3[ e-1 fis g]  a[ g-1 a b]  \grace d16-5 c16 b32 a|
		g-1[ b d b]  g'[ d b d]
	%LINE 3
		g,[ b d b]  g'[ d b d]|
		a[ d fis d]  a[ d fis d]  a[ d fis d]  b[ d g d]|
		c[ e a e]  c[ e a e]  a,[ c fis c]  a[ c fis c]|
	}
		\alternative{
			{b[ g' fis e]  d[ c b a]  g-1[ fis-2 g-1 a-2]  b-3[ a-1 b-2 cis-3]|}
			{b[ g' fis e]  d[ c b a]  g-1[ g-5 d-3 b-2] 
			%\change Staff = "lower"
			g8-1}
		}
}
LessonXXIIILowerD=\relative c{
	\key g \major
	\time 2/4
	\clef bass
	\repeat volta 2{
	%LINE 1
		g8 r b r|
		d4 r8 b|
		a r d r|
		g,4 r|
	%LINE 2
		g8 r b r|
		d4 r8 b|
		a r d r|
	}
	\alternative{{g,4 r}{g r}}
	\repeat volta 2{
		d'8 r b r|
		e4 r8 a,|
		d r a r|
		<d d,>4 r|
		g,8 r
	%LINE 4
		b r|
		d4 r8 b|
		a r d r|
	}
	\alternative{{g,4 r}{g r}}
}
