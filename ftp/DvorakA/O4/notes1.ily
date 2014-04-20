\version "2.18.0"

\include "global.ily"

global = {\key bes \major \time 4/4 \tempo "Allegro moderato" s1*40 \tempo "Poco meno mosso" s1*5 \bar "||"}

violin = <<\global \relative c'' {
\repeat volta 2 {
	\once \override DynamicText.stencil = ##f %small hack for midi
	<<s2.\p d2._\pmoltoess\<>> f4 |
	f2\> f,\! |
	bes2. d4 |
	d2\< d, |
	g\f c4( g) |
	bes2\dim a |
	g\p es4(\> g) |
	g2\!\dimin ~ g8\> a( bes c) |
	d2._\ppdolcedyn g8( f) |
	f2 f, |
%11
	bes2. es8(\< d) |
	d2\< d, |
	c\mf\< c'4(\! g) |
	bes2\f a4(\> g) |
	f2\p\> f |
	f2.\pp f4
}
\repeat volta 2 {
	d'2\p f4(\< bes8. as16) |
	as2\fz\< as,4.(\f g8) |
	fis2\> d'4.(\p a8) |
	c4(\dim bes)\! r d |
%21
	e,2\pp f4(\< c'8.) c16 |
	c4( bes) d4.\fz(\> bes8)\! |
	a4--( a--)\p bes4(\> a8. g16)\! |
	f2 ~ f8 r f'4\< |
	ges2\f f4(\> es) |
	f2.\p\dimin f4 |
	ges4.(\f as16 ges)\> f4( es) |
	f2.\p\> f,4 |
	d'2.(\pp g8. f16) |
	f2( f,) |
%31
	bes2.( es8. d16) |
	d2( d,) |
	g\< cis4( g)\! |
	fis(\f d') c8( bes d, e) |
	f2.\> es8. c16 |
}
\alternative {
	{bes2.\p\> f'4\!}
	{bes,2.\p\< bes'4\!}
}
	as'2\mf f4(\< d) |
	d(\> es)\! r es\< |
	ges2\> es4( c8. a16)\! |
%41
	bes2\p\> ges |
	f2.\pp f4 |
	f1 |
	bes,\pppritard ~|
	bes4( bes'2.)\fermata
}>>

pianoUp = <<\global \relative c' {
\repeat volta 2 {
	d8^"Ten." f16 f <bes d>8^"Ten." f16 f d8-- f16 f <bes d>8-- f16 f |
	c8-- f16 f <a c>8-- f16 f c8-- f16 f <a c>8-- f16 f |
	bes,8 d16 d <g bes>8 d16 d bes8 d16 d <g bes>8 d16 d |
	a8 d16 d <f a>8 d16 d a8 d16 d <f a>8 d16 d |
	g,8 bes16 bes <es g>8 bes16 bes g8 c16 c <es g>8 c16 c |
	g8 bes16 bes <bes g'>8 d16 d c8 d16 d <a' d>8 c,16 c |
	bes8 d16 d <g bes>8 d16 d g,8 c16 c <es a>8 c16 c |
	bes8 d16 d <g bes>8 d16 d bes8 d16 d g8 a16 a |
	d,8 f16 f d'8 f,16 f d8 f16 f d'8 f,16 f |
	c8 f16 f c'8 f,16 f c8 f16 f c'8 f,16 f |
%11
	bes,8 d16 d bes'8 d,16 d bes8 d16 d bes'8 d,16 d |
	a8 d16 d a'8 d,16 d a8 d16 d a'8 d,16 d |
	g,8 c16 c g'8 c,16 c g8 c16 c g'8 c,16 c |
	g8 des'16 des g8 des16 des bes8 des16 des g8 des16 des |
	\clef "bass" f,8 bes16 bes c8 bes16 bes f8 a16 a c8 a16 a |
	f8 bes16 bes d8 bes16 bes f8 bes16 bes d8 bes16 bes |
}
\repeat volta 2 {
	\clef "treble" d8 f16 f <bes d>8 f16 f f8 bes16 bes <bes f'>8 f16 f |
	es8 as16 as <as es'>8 es16 es as,8 es'16 es <es as>8 as,16 as |
	a8 c16 c <fis a>8 d16 d a8 c16 c <d a'>8 c16 c |
	bes8 d16 d <g bes>8 d16 d bes8 d16 d <g bes>8 d16 d |
%21
	c8 g'16 g c8 g16 g c,8 f16 f <c' f>8 f,16 f |
	d8 g16 g <bes d>8 g16 g e8 g16 g <bes d>8 e,16 e |
	a,8 c16 c <f a>8 d16 d bes8 d16 d e8 c16 bes |
	a8 c16 c <f a>8 c16 c a8 c16 c <f a>8 c16 c |
	bes8 c16 c <ges' bes>8 c,16 c bes8 c16 c <es bes'>8 c16 c |
	a8 c16 c <f a>8 c16 c a8 c16 c <f a>8 c16 c |
	bes8 c16 c <ges' bes>8 c,16 c bes8 c16 c <es bes>8 c16 c |
	a8 c16 c <f a>8 c16 c a8 c16 c <f a>8 es16 es |
	d8 f16 f d'8 f,16 f d8 f16 f des'8 e,16 e |
	c8 f16 f c'8 f,16 f c8 f16 f ces'8 f,16 f |
%31
	bes,8 d16 d bes'8 d,16 d bes8 d16 d bes'8 es,16 es |
	b8 d16 d as'8 d,16 d bes8 d16 d gis8 d16 d |
	cis8 g'!16 g bes8 g16 g g,8 cis16 cis bes'8 g16 g |
	a,8 c!16 c a'8 c,16 c bes8 d16 d bes'8 <bes, g>16 q |
	<bes d>8 f'16 f d'8 f,16 f <es a,>8 f16 f f'8 f,16 f |
}
\alternative {
	{d8 f16 f <bes d>8 f16 f d8 f16 f <bes d>8 f16 f |}
	{d8 f16 f <bes d>8 f16 f d8 f16 f <bes d>8 f16 f |}
}
	bes,8 f'16 f bes8 f16 f bes,8 f'16 f bes8 f16 f |
	bes,8 es16 es bes'8 es,16 es bes8 es16 es bes'8 es,16 es |
	a,8 es'16 es <ges a>8 es16 es a,8 es'16 es <ges a>8 es16 es |
%41
	bes8 ges'16 ges <bes des>8 ges16 ges ces,8 ges'16 ges <es ces'>8 ges16 ges |
	a,8 f'16 f <es c'!>8 f16 f a,8 f'16 f <es c'>8 f16 f |
	d8 f16 f d'8 f,16 f d8 f16 f d'8 f,16 f |
	\repeat unfold 4 {d'8 f,16 f} |
	<f d'>2 <bes d f bes>\fermata\arpeggio |
}>>

pianoDynamics = \new Dynamics {
	s8\p s s4 s2 |
	s1*2 |
	s4 s8\< s8 s2 |
	s8\f s8 s4 s2 |
	s4 s8 s16\dim s s2 |
	s8\p s s4 s8\> s s4\! |
	s8 s16_\dim s s8 s\> s2 |
	s8\pp s s4 s2 |
	s1*2 |
	s8\< s s4 s2 |
	s8\mf s s4 s2 |
	s8\f s s8 s16 s\dim s2 |
	s8\p s s s16 s\dim s2 |
	s8\pp s s4 s2 |
	s8\pp\< s s4 s8 s16 s\! s4 |
	s8\fz\< s s4 s8\fz s s4 |
	s8 s16\> s s4 s8\p s s4 |
	s8 s16\dim s s4 s2 |
	s8\pp s s4 s4 s8\< s |
	s2 s8\> s16\! s s8 s16\> s |
	s4 s8\p s s\> s s4 |
	s8\pp s s4 s2 |
	s8\f s s4 s2 |
	s8\p s8 s\dim s s\! s s\< s16 s\! |
	s8\f s s4 s8\> s s4 |
	s8\p\> s s4 s8 s16 s\! s4 |
	s8\pp s s4 s2 |
	s1*3 |
	s2 s8 s16\cresc s s4 |
	s8\f s s4 s2 |
	s8 s16\> s s4 s4 s8 s16\! s |
	s8\p s16\> s s4 s4 s8 s16\! s |
	s8\pp s s4 s2 |
	s8\mf s s4 s2 |
	s1 |
	s8 s16 s\dim s4 s2 |
	s8\p\> s s8 s16 s\! s2 |
	s8\pp s s4 s2 |
	s1 |
	s8\pppritard
}

pianoDown = <<\global\clef "bass" \new Voice \relative c' {\voiceOne
\repeat volta 2 {
	r4 bes2. |
	r4 a2. |
	r4 g2. |
	r4 f2. |
	r4 es2. |
	d4 g fis2 |
	r4 g4 r g |
	r g2. |
	\clef "treble" r4 bes'2 bes4 |
	r4 a2 a4 |
%11
	r4 g2 g4 |
	r4 f2 f4 |
	\clef "bass" r4 es2 es4 |
	r4 e2 r4 |
	s f-. s f-. |
	r4 f2. |
}
	<bes, bes,>2 <d d,> |
	<c c,> <c, c,> |
	<d d,> <d fis,> |
	d4 g2. |
%21
	bes2 a |
	g bes4. g8 |
	f4 <d d,> <g g,> <c, c,> |
	<f f,>2. <f, f,>4 |
	<es es,>2 <f f,>4 <ges ges,> |
	<f f,>2. <f f,>4 |
	<es es,>2 <f f,>4 <ges ges,> |
	<f f,>2 f' |
	\clef "treble" r4 bes'2 bes4 |
	r4 a2 <as as,>4 |
%31
	r4 g2 ges4 |
	r f2 \clef "bass" <e e,>4 |
	es,,!8 es' cis' r es,, es' cis' r |
	d,, fis' d' r g,, d' g <c, c,> |
	f, f' bes r <c, f,> a' es' r |
	bes, f' bes r bes, f' bes r |
	bes, f' bes r bes, f' bes r |
	d,,( bes' f'4) as,8( bes as'4) |
	ges,8( bes ges'4) ges,8( bes ges'4) |
	f,8( c' es4) f,8( c' es4) |
%41
	ges,8( des' bes'4) es,,8( es' ges4) |
	f,8( es' a4) f,8( es' a4) |
	s8 \oneVoice\clef "treble" bes( bes'4) r8 bes,( bes'4) |
	bes-. bes -. bes-. bes-. |
	bes2 \clef "bass" <d, bes f bes,>_\fermata\arpeggio |
}
\new Voice \relative c {\voiceTwo
\repeat volta 2 {
	bes1\sustainOn |
	a\sustainOn |
	g\sustainOn |
	f\sustainOn |
	es\sustainOn |
	d2\sustainOn d'\sustainOn |
	g,\sustainOn c\sustainOn |
	g1\sustainOn |
	\clef "treble" bes'\sustainOn |
	a\sustainOn |
%11
	g\sustainOn |
	f\sustainOn |
	\clef "bass" es\sustainOn |
	<<{e2. e4} \\ {e,2.\sustainOn e4}>> |
	f\sustainOn s f\sustainOn s |
	<bes d>1\sustainOn |
}
	s1*3 |
	g1 |
	s1*8 |
	bes'1 |
	a2. s4 |
	g2. s4 |
	f2. s4 |
	\repeat unfold 6 {s2\sustainOn} |
	bes,2\sustainOn bes |
	bes\sustainOn bes |
	d,2\sustainOn as'\sustainOn |
	ges\sustainOn ges |
	f\sustainOn f |
	ges\sustainOn es\sustainOn |
	f\sustainOn f |
	<bes f'>1_\markup{\italic "Ped. sin al Fine"} |
}
>>
