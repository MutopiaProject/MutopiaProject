\version "2.16.1"
\include "definitions.ily"

% LESSON XXVIII. Rondo in the Gipsy stile, by Dr. Haydn.

LessonXXVIIIUpper = \relative c''{
	\key g \major
	\clef treble
	\tempo "Presto" 4=133 \hideTempo
	\time 2/4
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 3 8)
		b16-3 c-4|
		d-5 b-3 c-4 a-2  b-3 g-1 a-4 fis-2|
		g8-3( b-5) d,-1\staccatissimo c'16-3[ d-4]|
		e16-5 c-3 d-4 b-2 c-3 a-1 b-3 g-1|
		fis8-2( a-4) d,-1\staccatissimo e16 fis|
		g16-4 d e fis g-4 e-1 fis gis|
	%LINE 2
		a e fis gis a-1 gis-2 a-1 b-2|
		c-3 b-2 c d e-5 c-3 a-1 fis-2|
		g-3 d-1 g b \autoBeamOff g8 \autoBeamOn b'16 c|
		d b c a b g a fis|
		g8( b) \autoBeamOff d,\staccatissimo \autoBeamOn c'16 d|
		e c d b c a b g|
		fis8( a) d,\staccatissimo e16[ fis] |
	%LINE 3
		g d e fis g e fis gis|
		a e fis gis a gis a b|
		c b c d e c a fis|
		g16 d g b g8
	\repeat volta 2{
		c16-5\fz b-4 |
		a-3 g-2 c-5 b a g b-5\fz a-4|
		g-3 fis b-5 a g fis d'-5 cis|
	%LINE 4
		b16-3 a-2 g-1 fis-3 e d cis-2 e-4|
		d-3 cis-2 e-4 d-1 fis-3 e-1 g-3 fis-2|
		a-4 fis-2 d-1 a'-4 b-5 g d b'|
		a-4 fis-2 g-3 e-1 fis-2 d-1 g-3 e-1|
		a-4 fis d a' b g d b' |
		a fis g e fis d g e|
	%LINE 5
		a-4 fis d a'-3 b-4 g-2 d-1 b'-4|
		c!-5 d, e fis g-1 a b c|
		d b c a b g a fis|
		g8( b) \autoBeamOff d,\staccatissimo \autoBeamOn c'16 d|
		e c d b c a b g|
		fis8( a) \autoBeamOff d,\staccatissimo \autoBeamOn e16 fis|
	%LINE 6
		g d e fis g e fis gis|
		a e fis gis a fis a b|
		c b c d e c a fis|
		g d g b d,8
	}
		r8|
		<g, d b>4.-1-2-4\fz <g b>8-3-5|
		<a fis>-2-4[ <g e>-1-3 <fis d>-2-4 <e c>-1-3]|
		<b d>4-1-2 <fis' c a>4-4|
	%LINE 7
		b,16 d g d b8 d|
		<g d b>4.\fz <g b>8|
		<a fis>[ <g e> <fis d> <e c>]|
		<b d>4 <fis' c a>|
		b,16 d g d b8 d|
		<g d b>4.\fz <g b>8|
		<a fis>[ <g e> <fis d> <e c>]|
		<b d>4 <fis' c a>|
	%LINE 8
		b,16 d g d b8 d|
		<g d b>4. <g b>8|
		<a fis>[ <g e> <fis d> <e c>] |
		<b d>4 <fis' c a>|
		b,16 d g d b8 d|
		b'\rest\ff <b g d> r <d b g d>|
		r <c a fis d> r <c a fis d>|
		r <c a fis d> r <c a fis d>|
		r <b g d> r <b g d>|
	%LINE 9
		r <b g d> r <d b g d>|
		r <c a fis d> r <c a fis d>|
		r <c a fis d> r <c a fis d>|
		r <b g d> r <b g d>|
		
		r <b g d> r <d b g d>|
		r <c a fis d> r <c a fis d>|
		r <c a fis d> r <c a fis d>|
		r <b g d> r <b g d>|
		r <b g d> r <d b g d>|
	%LINE 10
		r <c a fis d> r <c a fis d>|
		r <c a fis d> r <c a fis d>|
		r <d b d,> r d-1|
		\key bes \major
		g4-2 d'8-5 d-3|
		\grace {c16-2[ d-3]} ees8-4\fz c-1 \grace{bes16-2[ c-3]}d8-4\fz bes-2|
		c16-3 ees-5 d c bes a g-3 fis|
		g-3 d e fis g d-1 e fis|
	%LINE 11
		g4-1 d'8-3 d-3|
		\grace {c16[ d]} ees8\fz c \grace{bes16[ c]}d8\fz bes|
		c16 ees d c bes a g fis|
		g d e fis g d e fis|
		g4 d'8 d|
		\grace {c16[ d]} ees8\fz c \grace{bes16[ c]}d8\fz bes|
	%LINE 12
		c16 ees d c bes a g fis|
		g d e fis g d e fis|
		g4 d'8 d|
		\grace {c16[ d]} ees8\fz c \grace{bes16[ c]}d8\fz bes|
		c16 ees d c bes a g fis|
		g d e fis g8 g|
	%LINE 13
		<<{
			bes16-3 d-5 c-4 bes-3 a8-3 a|
			bes-3 bes16-3 d-5 c8-4 c|
			bes16 d c bes a8 a|
			bes16 a bes d c8 c|
		}\\{
			g16-1 bes-3 a-2 g-1  fis8-2 fis|
			g-1 g-1 a-2 a|
			g16 bes a g fis8 fis|
			g g a a|
		}>>
		c16-3 ees-5 d c bes a g fis|
		g d e fis g8 g|
	%LINE 14
		<<{
			bes16 d c bes a8 a|
			bes bes16 d c8 c|
			bes16 d c bes a8 a|
			bes16 a bes d c8 c|
		}\\{
			g16 bes a g  fis8 fis|
			g g a a|
			g16 bes a g fis8 fis|
			g g a a|
		}>>
		c16 ees d c bes a g fis|
		g d e fis g a b c|
		\key g \major
	%LINE 15
		d b c a b g a fis|
		g8( b) \autoBeamOff d,\staccatissimo \autoBeamOn c'16 d|
		e c d b c a b g|
		fis8( a) d,\staccatissimo e16 fis|
		g d e fis g e fis gis|
		a e fis gis a gis a b|
		c b c d e c a fis|
	%LINE 16
		g16 d g b \autoBeamOff d,8 \autoBeamOn c'16\fz b|
		a g c b a g b\fz a|
		g fis b a g fis d'cis|
		b16 a g fis e d cis e|
		d cis e d fis e g fis|
		a fis d a' b g d b'|
		a fis g e fis d g e|
	%LINE 17
		a fis d a' b g d b' |
		a fis g e fis d g e|
		a fis d a' b g d b'|
		c d, e fis g a b c|
		d b c a b g a fis|
		g8( b) \autoBeamOff d,\staccatissimo \autoBeamOn c'16 d|
		e c d b c a b g|
	%LINE 18
		fis8( a) \autoBeamOff d,\staccatissimo \autoBeamOn e16 fis|
		g d e fis g e fis gis|
		a e fis gis a gis a b|
		c b c d e c a fis|
		g d g b \autoBeamOff d,8 d, \autoBeamOn|
	\repeat volta 2{
		\key bes \major
		g8.( a16) bes\staccatissimo a\staccatissimo bes8\staccatissimo c8.-1( d16 ees\staccatissimo) d\staccatissimo ees8\staccatissimo
	%LINE 19
		fis8 fis8.\fz d16-1 e fis|
		g-1 a bes a g8 d,|
		g8.( a16) bes\staccatissimo a\staccatissimo bes8\staccatissimo c8.( d16) ees\staccatissimo d\staccatissimo ees8\staccatissimo
		fis fis8.\fz d16 e fis|
	}
	\alternative{
		{g a bes a g8 d,}
		{g'16 a bes a g8 g}
	}
	%LINE 20
		bes16-2\ff d-4 f-5 d-4  bes-2 d f d|
		c-3 d c bes a g-2 f8-1|
		bes16-2 d f d  bes d f d|
		c d c bes a g f8-1|
		d'8.-3 cis16-2 d8. cis16|
		d-3 ees-4 d-3 c-1 bes-3 a-2 g8-1|
		fis fis\fz~ fis16 d e fis|
	%LINE 21
		g16 fis g a bes a bes c|
		d8. cis16 d8. cis16|\noBreak
		d ees d c bes a g8|
		fis fis\fz~ fis16 d e fis|
		g4 g|
		bes16\ff d f d bes d f d|
		c d c bes a g f8|
	%LINE 22
		bes16 d f d  bes d f d|
		c d c bes a g f8|
		d'8. cis16 d8. cis16|\noBreak
		d ees d c bes a g8|
		fis fis~ fis16 d e fis|
		g16 fis g a bes a bes c|
		d8. cis16 d8. cis16|
		\noBreak d ees d c bes a g8|
	%LINE 23
		fis fis~ fis16 d e fis|
		g d e fis g a b c|
		\key g \major
		d\p b c a b g a fis|
		g8( b) \autoBeamOff d,\staccatissimo \autoBeamOn c'16 d|
		e c d b c a b g|
		fis8( a) \autoBeamOff d,\staccatissimo \autoBeamOn e16 fis|
		g d e fis g e fis gis|
	%LINE 24
		a e fis gis a gis a b|
		c b c d e c a fis|
		g16 d g b \autoBeamOff g8 \autoBeamOn c16\fz b|
		a g c b a g b\fz a|
		g fis b a g fis d'cis|
		b16 a g fis e d cis e|
		d cis e d fis e g fis|
	%LINE 25
		a fis d a' b g d b'|
		a fis g e fis d g e|
		a fis d a' b g d b' |
		a fis g e fis d g e|
		a fis d a' b g d b'|
		c! d, e fis g a b c|
		d b c a b g a fis|
	%LINE 26
		g8( b) \autoBeamOff d,\staccatissimo \autoBeamOn c'16 d|
		e c d b c a b g|
		fis8( a) \autoBeamOff d,\staccatissimo \autoBeamOn e16 fis|
		g d e fis g e fis gis|
		a e fis gis a gis a b|
		c b c d e c a fis|
		g8\ff[ g g g] |
		g[ g g g] |
	%LINE 27
		g16 b d e  b a g fis|
		e d c b a g fis a|
		g8 g g g|
		g g g g|
		g16 b d c b a g fis|
		\stemUp e d \change Staff = "lower" c b a g fis a|
		g8 b\rest <c a fis> <c a fis>|
	%LINE 28
		<b g>8 \change Staff = "upper" r <fis' c a> <fis c a>|
		<g d b> r <c a fis><c a fis>|
		<b g> r \stemDown <fis'c a><fis c a>|
		<g d b>4 r8 <a fis>|
		<b g>4 <fis c a>|
		<g d b> r|
		<d'a fis d> r|
		<b g d> r|
		\bar "|."
}
LessonXXVIIILower = \relative c'{
	\key g \major
	\time 2/4
	\clef bass
	%LINE 1
		\set Score.measurePosition = #(ly:make-moment 3 8)
		r8|
		<<{
			b4 s4|
			b s4|
			<a c,> s4|
		}\\{
			g d8\rest <c' d,>8|
			g4 d\rest|
			a d8\rest <cis a'>8|
		}>>
		<a' d,>4 r8 c!8|
		b8 c b d|
	%LINE 2
		c8 d c b|
		a4 r8 <c d,>|
		<b g>4 r \clef treble|
		<<{
			b'4 b8\rest <c d,>|b4 b4\rest|
		}\\{
			g4 s4|g s|
		}>>
		<a c, a> r8 <a cis,>8|
		<a d,>4 \clef bass r8 c,!8(|
	%LINE 3
		b c) b\staccatissimo d( |
		c d) c b|
		a4 r8 <c d,>|
		<<{b4 d,8\rest}\\{g4 s8}>>
	\repeat volta 2{
		<dis' dis,>8\fz|
		<e e,>8 <dis dis,> <e e,> <cis cis,>\fz|
		<d! d,!> <cis cis,> <d d,> <fis, fis,>|
	%LINE 4
		<g g,>4 <a a,>|
		<d, d,> r \clef treble|
		<<{
			fis' g|
			fis b\rest|
			fis g|
			fis b\rest|
		}\\{
			d,d|
			d s|
			d d|
			d s|
		}>>
	%LINE 5
		<<{
			fis g|
			<a fis d> d\rest|
			<g,, b g'> b'8\rest <c d,>|
			b4 b\rest|
		}\\{
			d,d|
			d s|
			s s|
			g s|
		}>>
		<a c, a>4 r8 <a cis,>|
		<a d,>4 \clef bass r8 c,!(|
	%LINE 6
		b c) b\staccatissimo d(|
		c d) c b|
		a4 r8 <c d,>|
		<<{b4 d8\rest}\\{g,4 s8}>>
	}				%end volta
		r8
		<<{
			f8\rest \stemDown g[ g g]|
			f\rest g[ g g]|
			f\rest g[ g g]|
		}\\{
			g,2|
			g|
			g|
		}>>
	%LINE 7
		<<{
			f'8\rest \stemDown g[ g g]|
			f\rest g[ g g]|
			f\rest g[ g g]|
			f\rest g[ g g]|
			f\rest g[ g g]|
			f\rest g[ g g]|
			f\rest g[ g g]|
			f\rest g[ g g]|
		}\\{
			g,2|
			g|
			g|
			g|
			g|
			g|
			g|
			g|
		}>>
	%LINE 8
		<<{
			f'8\rest \stemDown g[ g g]|
			f\rest g[ g g]|
			f\rest g[ g g]|
			f\rest g[ g g]|
			f\rest g[ g g]|
		}\\{
			g,2|
			g|
			g|
			g|
			g|
		}>>
		<g' g,>8 r <g g,> r|
		<a a,> r <a a,> r|
		<a d,> r <a d,> r|
		<g g,> r <g g,> r|
	%LINE 9
		<g g,>8 r <g g,> r|
		<a a,> r <a a,> r|
		<a d,> r <a d,> r|
		<g g,> r <g g,> r|
		
		<g d b g> r <g d b g> r|
		<a fis c a> r <a fis c a> r|
		<a fis d> r <a fis d> r|
		<g d b g> r <g d b g> r|
		<g d b g> r <g d b g> r|
	%LINE 10
		<a fis c a> r <a fis c a> r|
		<a fis d> r <a fis d> r|
		<g d b g> r <g d b g> r|
		\key bes \major
		<d' bes g>8[ <d bes g>  <d bes g>  <d bes g>]|
		<ees c g>[ <ees c g>  <d bes g>  <d bes g>]|
		<c fis, d>[ <c fis, d> <c fis, d> <c fis, d>]|
		<bes g>[ <bes g> <bes g> <bes g>]|
	%LINE 11
		<d bes g>8[ <d bes g>  <d bes g>  <d bes g>]|
		<ees c g>[ <ees c g>  <d bes g>  <d bes g>]|
		<c fis, d>[ <c fis, d> <c fis, d> <c fis, d>]|
		<bes g>[ <bes g> <bes g> <bes g>]|
		<d bes g>8[ <d bes g>  <d bes g>  <d bes g>]|
		<ees c g>[ <ees c g>  <d bes g>  <d bes g>]|
	%LINE 12
		<c fis, d>[ <c fis, d> <c fis, d> <c fis, d>]|
		<bes g> <bes g>[ <bes g> <bes g>]|
		<d bes g>8[ <d bes g>  <d bes g>  <d bes g>]|
		<ees c g>[ <ees c g>  <d bes g>  <d bes g>]|
		<c fis, d>[ <c fis, d> <c fis, d> <c fis, d>]|
		<bes g>[ <bes g> <bes g> <bes g>]|
	%LINE 13
		 <d g,> <d g,> <d d,> <d d,>|
		 <d g,> <d g,> <d d,> <d d,>|
		 <d g,> <d g,> <d d,> <d d,>|
		 <d g,> <d g,> <d d,> <d d,>|
		 <c fis,d>[ <c fis,d> <c fis,d> <c fis,d>]|
		 <bes g>[ <bes g> <bes g> <bes g>]|
	%LINE 14
		 <d g,> <d g,> <d d,> <d d,>|
		 <d g,> <d g,> <d d,> <d d,>|
		 <d g,> <d g,> <d d,> <d d,>|
		 <d g,> <d g,> <d d,> <d d,>|
		 <c fis,d> <c fis,d> <c fis,d> <c fis,d>|
		 <bes g>4 r|
		 \clef treble
		 \key g \major
	%LINE 15
		<<{
			b'4 b8\rest <c d,>|
			b4 b4\rest|
		}\\{
			g4 s4|
			g s|
		}>>
		<a c, a> r8 <a cis,>8|
		<a d,>4 \clef bass r8 c,! |
		b[ c b d] |
		c[ d c b] |
		a4 r8 <c d,>|
	%LINE 16
		<<{b4 d,8\rest}\\{g4 s8}>>
		<dis' dis,>8\fz|
		<e e,>8 <dis dis,> <e e,> <cis cis,>\fz|
		<d d,> <cis cis,> <d d,> <fis, fis,>|
		<g g,>4 <a a,>|
		<d, d,> r \clef treble|
		<<{
			fis' g|
			fis b\rest|
		}\\{
			d, d|
			d s|
		}>>
	%LINE 17
		<<{
			fis4 g|
			fis b\rest|
			fis g|
			<a fis> b\rest|
		}\\{
			d,d|
			d s|
			d d|
			d s|
		}>>
		<g b, g> r8 <c d,>|
		<<{b4 b\rest|}\\{g s|}>>
		<a c,a> r8 <a cis,>|
	%LINE 18
		<a d,>4 \clef bass r8 c,8|
		b[ c b d] |
		c[ d c b] |
		a4 r8 <c d,>|
		<<{b4 d,\rest}\\{g4 s8}>>
	\repeat volta 2{
		\key bes \major
		<<{
			<g d bes>8[ <g d bes> <g d bes> <g d bes>] |
			<g ees c>[ <g ees c> <g ees c> <g ees c>] |
		}\\{
			g,2|
			g|
		}>>
	%LINE 19
		<<{
			<a' ees c>8[ <a ees c> <a ees c> <a ees c>] |
			<g d bes>[ <g d bes> <g d bes> <g d bes>] |
			<g d bes>[ <g d bes> <g d bes> <g d bes>] |
			<g ees c>[ <g ees c> <g ees c> <g ees c>] |
			<a ees c>[ <a ees c> <a ees c> <a ees c>] |
		}\\{
			g,2|
			g|
			g|
			g|
			g|
		}>>
		}
	\alternative{
		{<<{<g' d bes>8[ <g d bes> <g d bes> <g d bes>] |}\\{g,2}>>}
		{<g'd bes g>2}
	}
	%LINE 20
		<f'd bes>8\ff[ <f d bes> <f d bes> <f d bes>] |
		<f c a f>[ <f c a f> <f c a f> <f c a f>] |
		<f d bes>[ <f d bes> <f d bes> <f d bes>] |
		<f c a f>[ <f c a f> <f c a f> <f c a f>] |
		<d bes g>\staccatissimo <d bes g>4 <d bes g>8~|
		\noBreak <d bes g>[ <d bes g> <d bes g> <d bes g>] |
		<c a fis d>[ <c a fis d> <c a fis d> <c a fis d>] |
	%LINE 21
		<d bes g>[ <d bes g> <d bes g> <d bes g>] |
		<d bes g>8 <d bes g>4 <d bes g>8~|
		<d bes g>[ <d bes g> <d bes g> <d bes g>] |
		<c a fis d>[ <c a fis d> <c a fis d> <c a fis d>] |
		<d bes g>[ <d bes g> <d bes g> <d bes g>] |
		<f d bes>\ff[ <f d bes> <f d bes> <f d bes>] |
		<f c a f>[ <f c a f> <f c a f> <f c a f>] |
	%LINE 22
		<f d bes>[ <f d bes> <f d bes> <f d bes>] |
		<f c a f>[ <f c a f> <f c a f> <f c a f>] |
		<d bes g> <d bes g>4 <d bes g>8~|
		<d bes g>[ <d bes g> <d bes g> <d bes g>] |
		<c a fis d>[ <c a fis d> <c a fis d> <c a fis d>] |
		<d bes g>[ <d bes g> <d bes g> <d bes g>] |
		<d bes g>8 <d bes g>4 <d bes g>8~|
		<d bes g>[ <d bes g> <d bes g> <d bes g>] |
	%LINE 23
		<c a fis d>[ <c a fis d> <c a fis d> <c a fis d>] |
		<<{bes4 d,\rest|}\\{g s|}>>
		\clef treble
		\key g \major
		<<{
			b'4 b8\rest <c d,>|b4 b\rest|
		}\\{
			g4 s|g s|
		}>>
		<a c,a> r8 <a cis,>|
		<fis d>4 \clef bass r8 c!8|
		b[ c b d] |
	%LINE 24
		e[ d c b] |
		a4 r8 <c d,>|
		<<{b4 d,8\rest}\\{g4 s8}>>
		<dis' dis,>8\fz|
		<e e,>8[ <dis dis,> <e e,> <cis cis,>\fz] |
		<d d,>[ <cis cis,> <d d,> <fis, fis,>] |
		<g g,>4 <a a,>|
		<d, d,> r \clef treble|
	%LINE 25
		<<{
			fis' g|
			fis b\rest|
		}\\{
			d,d|
			d s|
		}>>
		<<{
			fis4 g|
			fis b\rest|
			fis g|
		}
		\\{
			d d|
			d s|
			d d|
		}>>
		<a' fis d> b\rest
		<g b, g> r8 <c d,>|
	%LINE 26
		<<{b4 b\rest|}\\{g4 s|}>>
		<a c,a> r8 <a cis,>|
		<a d,>4 \clef bass r8 c,!8|
		b[ c b d] |
		c[ d c b] |
		a4 r8 <c d,>|
		g16-4 b-2 a-3 c-1  b-3 d-1 c-3 e-1|
		g,-4 b a c b d c e|
	%LINE 27
		g,4 r8 b|
		c4 d|
		g,,16 b a c b d c e|
		g, b a c b d c e|
		g,4 r8 b|
		c4 d|
		\stemDown g,,16 g'g,g'g,g'g,g'|
		\ignoreClashNote
		\stemUp g,g'g,g'g,g'g,g'|
		g,g'g,g' g,g'g,g'|
		g,g'g,g' g,g'g,g' \stemNeutral|
		g,4 r8 <d'''d,>|
		<d g,>4 <c a fis d>|
		<b g> r|
		<c a fis d> r|
		<g d b g> r|
}
