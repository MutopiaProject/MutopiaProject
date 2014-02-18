\version "2.16.1"
\include "definitions.ily"

% LESSON XXXIX. Waltz, by Beethoven.

LessonXXXIXUpperVoltaA= \relative c'''{
	\key d \major
	\time 3/4
	\clef treble
	\tempo "Presto" 4=145 \hideTempo
	\repeat volta 2 {
		\set Score.measurePosition = #(ly:make-moment 2 4) a8-5\( fis-4
		d-2 a-1 fis'-4 d-2 a'-5 fis-4\)
		cis-2\( a-1 e'-4 cis-2 g'-5 e-4\)|
		cis-2 a-1 g-2 a-3 cis-5 a-3|
		d-5[ a-3 fis-2 a-1] a'-5 fis-4|
		d a fis' d a' fis|
		cis a e'cis g'e|
	%LINE 2
		cis[ a g a cis a]
		\set Score.measurePosition = #(ly:make-moment 1 4)
		<d^5 fis,^2>2
		}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 4)
		d8-5 cis-4
		d-5[ b-3 gis-2 e-1]  d'-5 cis-4|
		d[ b gis e]  d' cis|
		d[ b gis e] e'-5 cis-4|
		gis-2[ a-1 gis a] a'-5 fis-4|
		d-2 a fis'd a' fis|
		cis a e'cis g'e|
		cis[ a g a cis a]|
	}
	%LINE 3
	\alternative{
		{
		\set Score.measurePosition = #(ly:make-moment 1 4)
		<d fis,>2
		}
		{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		<d fis,>4._\markup{\hspace #-1 "Fine"}
		}
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		a8-. b-. cis-.
		d4-. r8 cis-. d-. e-.
		fis4-. r8 fis-. g-. a-.
		a( g) g-. a-. b-. g-.
		e4-1 r8 e-3 fis g
		cis,4-2 r8 cis-2 d e
		a,4-1 r8 a b cis
		d-1[ fis-3 a-5 fis g-4 e]
		\set Score.measurePosition = #(ly:make-moment 3 8)
		d4-1 r8
	}
	%LINE 4
	\set Score.measurePosition = #(ly:make-moment 3 8)
	d8-1 fis-2 a-4
	gis4-3 r8 gis-2 b-4 d
	gis,4-2 r8 b-3 d-5 b-3
	gis-2 b-3 d-5 b gis b
	a-1 cis-4 e-5 cis-4 a-1 cis-4
	gis4-2 r8 gis b d
	gis,4 r8 b d b
	gis b d b gis b-5
	a gis a a,-. b-. cis-.
	%LINE 5
	d4 r8 cis-. d-. e-.
	fis4-. r8 fis-. g-. a-.
	a( g) g-. a-. b-. g-.
	e4 r8 e8 fis g
	cis,4 r8 cis d e
	a,4 r8 a b cis
	d fis a fis g e
	d4 r
	\bar "|."
	s2.
}


LessonXXXIXLowerVoltaA=\relative c'{
	\key d \major
	\time 3/4
	\clef bass
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 2 4) r4
		<<{
			<a >2<a>4
			a2 a4
			<a e>2 <a e>4
			a2 a4
			a2 a4
			a2 a4
			<a e>2 <a e>4
			\set Score.measurePosition = #(ly:make-moment 1 4)
			<a fis>2
		}
		\\{	<fis d>2 <fis d>4
			<g d>2 <g d>4
			\once \override NoteColumn #'force-hshift = #1.6 <g d>2 \once \override NoteColumn #'force-hshift = #1.6 <g d>4
			<fis d>2<fis d>4
			<fis d>2<fis d>4
			<g d>2 <g d>4
			\once \override NoteColumn #'force-hshift = #1.6 <g d>2 \once \override NoteColumn #'force-hshift = #1.6 <g d>4
			\set Score.measurePosition = #(ly:make-moment 1 4)
			d2
		}>>
	}
	\repeat volta 2{
		<<{
			\set Score.measurePosition = #(ly:make-moment 2 4)
			d4\rest s2.*3
			s4 d4\rest d4\rest
			<a' fis>2<a fis>4
			a2 a4
			<a e>2<a e>4
		}\\{
			\set Score.measurePosition = #(ly:make-moment 2 4)
			s4
			<d b e,>2<d b e,>4
			<d b e,>2<d b e,>4
			<d b e,>2<d b e,>4
			<cis a>4 s2
			d,2 d4
			<g d>2<g d>4
			\once \override NoteColumn #'force-hshift = #1.6 <g d>2 \once \override NoteColumn #'force-hshift = #1.6 <g d>4
		}>>
	}
	%LINE 3
	\alternative{
		{
		\set Score.measurePosition = #(ly:make-moment 1 4)
		<<{<a fis>2}\\{d,2}>>
		}
		{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		<<{<a' fis>4.}\\{d,4.}>>
		}
	}
	\repeat volta 2{
		\set Score.measurePosition = #(ly:make-moment 3 8)
		r4 r8
		d a'fis a d,a'
		d, a'fis a d,a'
		a,a'e a a,a'
		a,a'e a a,a'
		a,g'e g a,g'
		a,g'e g a,g'
		d[ a'fis a a,g']
		\set Score.measurePosition = #(ly:make-moment 3 8)
		<<{fis4}\\{d}>>r8
	}
	%LINE 4
	\set Score.measurePosition = #(ly:make-moment 3 8)
	r4 r8
	e d'b d e,d'
	e,d'b d e,d'
	e,d'b d e,d'
	a e'cis e a, e'
	e,d'b d e,d'
	e,d'b d e,d'
	e,d'b d e,d'
	<<{cis4}\\{a4}>> r r
	%LINE 5
	d,8 a'fis a d,a'
	d,a'fis a d,a'
	a,a'e a a, a'
	a,a'e a a, a'
	a,g' e g a, g'
	a,g' e g a, g'
	d a'fis a a, a'
	<<{fis4}\\{d4}>> r
	\bar "|."
	\cadenzaOn
	s2.^\markup{\hspace #1 \larger \bold "D.C."}
}
