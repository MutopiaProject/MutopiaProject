\version "2.18.0"

\include "global.ily"

global = {\key bes \major \time 4/4 \tempo "Allegro appassionato" s1*47 \bar "||"}

violin = <<\global \relative c'' {
	d2.(_\mfmoltoess es4) |
	f2. g8.(\<\upbow a16) |
	bes4( f)\! d( bes8.\> es16) |
	f2.\! f,4 |
	d'2.(\p es4) |
	f2.\< g8.(\upbow a16) |
	bes4(\f\downbow d8. bes16) f4\> \tuplet 3/2 {es8( d c)-.} |
	bes2.\! f4\p |
\repeat volta 2 {
	c'2.\< es8.( d16) |
	c2\cresc ~ c8\! f( es8. d16) |
%11
	c2.\mf es8.( d16) |
	c2\> ~ c8 f( \tuplet 3/2 {es d c)\!} |
	bes4(\f d2) es4 |
	f2. g8.(\< a16)\! |
	bes4( d8.\> bes16) f4 \tuplet 3/2 {es8( d c)} |
	bes2.\p bes4 |
}
\repeat volta 2 {
	bes2.(\pp c4) |
	des2.( des4)-- |
	ces2.(\< des4) |
	es2.\! es4 |
%21
	d2.(\cresc es4)\! |
	f2.( f4)-- |
	fis2\mf d4(-- b)-- |
	fis2\cresc fis |
	fis2.\f\< <fis fis'>4 |
	<b b'>2.(\ff <cis cis'>4) |
	<d d'>2.( q4)-- |
	<c c'>2.( <d d'>4) |
	<e e'>2.(\< q4)--\! |
	<dis dis'>2. <e e'>4 |
%31
	<fis fis'>2 <f f'>4.\> <es es'>8 |
	<es es'>4( <d d'>) <bes bes'>( <g g'>)\! |
	<f f'>2\p\> q |
	q2. f4\! |
}
	bes4(_\ppdolcedyn d2) es4 |
	f2. g8.(\< a16) |
	bes4( f) d(\> bes8. es16) |
	f2. f,4\! |
	bes(\< d2) es4\! |
	f2. g8.(\< a16) |
%41
	bes4(\f d8. bes16) f4(\> \tuplet 3/2 {es8 d c)-.} |
	bes2.(\p\> bes4-.) |
	bes2.( bes4-.)\! |
	<d, bes'>1\pp ~|
	<d bes'> ~|
	<d bes'>4 r bes'^"pizz." r |
	bes, r r2 |
}>>

pianoUp = <<\global \relative c' {
	\tupletSpan 4
	\tuplet 3/2 {\repeat unfold 2 {d8( f d bes' d bes f bes f es d c)} |
	d( f d bes' d bes f bes f g es g) |
	\repeat unfold 3 {d( f d bes' d bes f bes f es d c)} |
	d( f bes d f d bes d bes g f es) |
	d( f d bes' d bes f bes f d f bes,) |
	a( c f a c a f a f g c bes) |
	a( f c' a f c a c a g c bes) |
%11
	a( c f a c a f a f g c bes) |
	a( f c' a f c \clef "bass" a c a g f es) |
	d( f d bes' d bes f bes f es d c) |
	d( f d bes' d bes f bes f g es g) |
	d( f bes d f d bes d bes g f es) |
	d( f d bes' d bes f bes f d f bes) |
	\clef "treble" des( ges des bes' des bes ges bes ges es f ges) |
	des( f des bes' des bes f bes f des es f) |
	es( ges es ces' es ces ges ces ges es f ges) |
	es( ges es ces' ges' ces, ges ces ges es f ges) |
%21
	f( b f b as' b, f b f es f ges) |
	d!( b' d, b' f' b, d, b' d, b cis d) |
	d( fis d b' d b f b f d e f) |
	b,( cis b fis' b fis ais, cis ais fis' ais fis) |
	b,( d b fis' b fis d fis d b d b) |
	\clef "bass" d,( g d b' d b g b g e fis g) |
	d( fis d b' d b fis b fis e fis g) |
	e( g e c' e c g c g e fis g) |
	e( g e c' g' c, g c g e fis g) |
	fis( c' fis, c' a' c, fis, c' fis, e fis g) |
%31
	es( c' es, c' ges' c, es, c' es, c' f! f,!) |
	f( bes f bes d bes g es g es bes es) |
	d( f d bes' d bes) c,( es c a' c a) |
	d,( f d bes' d bes) f( bes f d' f d) |
	\clef "treble" d( f d bes' d bes f bes f es d c) |
	d( f d bes' f' d bes d f, es d c) |
	d( f d bes' d bes f bes f g es g) |
	\repeat unfold 3 {d( f d bes' d bes f bes f es d c)} |
	d( f d d' f d bes d f, g f es) |
	\repeat unfold 2 {d( f d bes' d bes f bes f es d c)} |
	d( f d bes' d bes d, f d d' f d)} |
	<<{\tuplet 3/2 {d,\( f bes d bes' f d bes f d \change Staff = "down"\voiceOne bes f} |
	\oneVoice bes,4\)} \new Voice {s1 |
	r2}>> \change Staff = "up" <f'' bes d>4-. r |
	<d f bes>-. r r2 |
}>>

pianoDynamics = \new Dynamics {
	s4\p s s2 |
	s1*3 |
	s4\p s s2 |
	s4\< s2 s4\! |
	s4 s\f s s\dim |
	s2 s4 s\p |
	s1 |
	s4 s\cresc s2 |
	s4\mf s s2 |
	s4 s\cresc s2 |
	s4\f s s2 |
	s1 |
	s4\< s s\> s\! |
	s\p s\> s s\! |s\pp s s2 |
	s1 |
	s4\< s s\! s |
	s1 |
	s2 s4\cresc s |
	s1 |
	s4\mf s s2 |
	s4\cresc s s2 |
	s4\f s s2 |
	s4\ff s s2 |
	s1*4 |
	s2 s4\> s |
	s1 |
	s4\p s s s\> |
	s1 |
	s4\pp s s2 |
	s1*3 |
	s4\< s s s\! |
	s\< s s2 |
	s4\f s s\> s |
	s\p s s s\> |
	s s\! s2 |
	s4\pp s s2 |
}

pianoDown = <<\global\clef "bass" \relative c {
	\repeat unfold 6 {bes4\sustainOn bes'2 bes4} |
	<bes, bes'>\sustainOn <<{f'2 a4\arpeggio} \\ {f,2 f4\arpeggio\sustainOn}>> |
	<bes bes'>2.\sustainOn bes4 |
	<f f'>\sustainOn f''2 c4\sustainOn |
	f,\sustainOn f,2 <c c'>4\sustainOn |
	<f f'>\sustainOn f''2 c4\sustainOn |
	f,\sustainOn f,2 <f f,>4 |
	<<{
		r bes2 bes4 |
		r bes2 bes4
	} \\ {
		bes,1\sustainOn |
		bes\sustainOn
	}>> |
	<bes bes'>4 <f f'>2 f'4 |
	<<{
		r bes2 bes4 |
		\repeat unfold 4 {r bes'2 bes4} |
		r as2 as4 |
		r gis,2 gis4 |
		r fis2 fis4
	} \\ {
		bes,1\sustainOn |
		\repeat unfold 4 {bes'\sustainOff\sustainOn} |
		as\sustainOff\sustainOn |
		gis,\sustainOff\sustainOn |
		fis\sustainOff\sustainOn
	}>> |
	fis4\sustainOn fis' fis,\sustainOn fis' |
	<<{
		r b2. |
		\repeat unfold 4 {r4 b2 b4} |
		r a2 a4 |
		r a2 a4
	} \\ {
		\repeat unfold 5 {b,1\sustainOn} |
		\repeat unfold 2 {a\sustainOn}
	}>>
	bes4( bes' es,, es') |
	f,( f' f, f') |
	<<{
		r bes2 bes4
	} \\ {
		bes,1\sustainOn
	}>> |
	\repeat unfold 6 {bes'4( bes'2) bes4} |
	<bes bes,> <<{
		f2( a4) |
		r4 bes2( \tuplet 3/2 {ges8 f es} |
		f4) bes2( \tuplet 3/2 {ges8 f es)} |
		f1 ~|
		f8
	} \\ {
		f,2. |
		bes1 |
		bes |
		bes\sustainOn ~|
		bes8
	}>> r r4 r r8 s |
	s4 r4\sustainOff <bes bes'>-. r |
	<bes bes,>-. r r2 |
}>>
