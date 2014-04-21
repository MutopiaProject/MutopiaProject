\version "2.18.0"

hack = {\once \override NoteHead.duration-log = 1}
pococresc = \markup {\italic {poco cresc.}}

global = {\time 2/4 \key a \major
	s2*48 \time 4/4
	s1*23 \time 2/4
	s2*41 \bar "|."}

violin = <<\global \relative c'' {
	\tupletSpan 4
	R2 |
	cis4( e) |
	a,4.( b16 cis |
	d8) cis(-- b-- a)-- |
	b4( e) |
	cis r8 a |
	fis'4( a) |
	d,4.( e16 fis |
	gis8) fis(-- e-- d--) |
	cis2( ~
%11
	cis4 e) |
	a,4.( b16 cis |
	d8) cis(-- b-- a)-- |
	b4( e) |
	\repeat unfold 2 {f( a) |
	dis,4. cis16 dis} |
	fis8 e(-- dis-- d)-- |
	cis4. b16 cis |
%21
	e8( d) cis b |
	e2 |
	r8 e( fis e) |
	a,4.( b16 cis |
	d8) cis(-- b-- a)-- |
	b4( e) |
	cis r8 a |
	fis'4( a) |
	d,4.( e16 fis |
	gis8) fis(-- e-- d)-- |
%31
	cis2(^\markup {2 {\super e} corde} ~
	cis4^\markup {3 {\super e} corde} e) |
	a,4.( b16 cis |
	d8) cis(-- b-- a)-- |
	b4( e) |
	fis( a) |
	cis4.( a16 e) |
	fis4( a) |
	e'4.( cis16 a) |
	cis4.( a16 e) |
%41
	a4.( e16 cis) |
	fis4 e |
	a4.( fis16 d) |
	fis4( e) |
	a,4. r8 |
	R2*2 |
	r4 r8. cis'16\ff |

	fis4. cis16 a d4( cis) |
	b4. gis16 d fis4( eis) |
	\tuplet 3/2 {fis4( gis8) a-> b-> cis->} d4 fis,8.( a16) |
	\afterGrace a2( {gis16[ b16 a16])} gis4 r8. cis16 |
	fis4. cis16 a d4( cis) |
	bis4. a16\dim dis,\! fis4( e) |
	\tuplet 3/2 {d4( e8) fis( gis a)} cis,4 
	 e8.(^\markup {\teeny \override #'(baseline-skip . 1)
	 \center-column{\smaller \natural \larger \musicglyph #"scripts.turn"
	 \smaller \sharp}} dis16) |
	cis4\p r4 d!4.\upbow a16 fis |
	a4( gis) d''4. a16\cresc fis |
	fis'4( e) gis( fis)\! |
	a4. fis16 dis \tuplet 6/4 {fis dis bis dis bis a fis dis bis a fis16. bis,32} |
	dis2( cis4)\fermata \afterGrace s4 {dis32[(\< eis fis gis a b cis dis eis fis gis a b cis dis eis])\!} |
	fis4. cis16 a d4( cis) |
	b4. gis16 d fis4( eis) |
	fis4.\pp d16 a cis4( b) |
	g'4. e16 b d4(-\pococresc cis) |
	a'4. fis16 d a'4. fis16 d |
	a'4.\f fis16 d fis4( eis) |
	a4.\pp fis16 d fis4( eis) |
	\tuplet 3/2 {gis8(\< fis) eis fis gis a} cis4( b)\! |
	e!4.\f dis16 d \tuplet 3/2 {cis8( fis) e cis a e |
	fis b a fis d fis,} a2(\> |
	gis4) fis e d\! |

	\override TextSpanner.bound-details.left.text = \markup {4 \super e corde}
	cis(\startTextSpan e) |
	a,4.( b16 cis |
	d8) cis(-- b-- a--) |
	b4( e) |
	cis r8 a |
	fis'4( a) |
	d,4.( e16 fis |
	gis8) fis(-- e-- d--) cis2 ~|
	cis4( e) |
	a,4.( b16 cis |
	d8) cis(-- b-- a--) |
	b4( e) |
	f( a) |
	dis,4. cis16 d |
	f4(\p a) |
	dis,4. cis16 dis |
	fis8 e(-- dis-- d--) cis4. b16 cis |
	e8( d) cis b |
	e2\stopTextSpan |
	r8 e'( fis e) |
	a,4.( b16 cis |
	d8) cis(-- b-- a--) |
	b4( e) |
	fis( a) |
	cis4.( a16 e) |
	fis4( a) |
	e'4.( cis16 a) |
	cis4.( a16 e) |
	a4.( e16 cis) |
	fis4 e |
	a4.( fis16 d) |
	fis4( e) |
	a,2 |
	cis4( e) |
	a,2 |
	cis,4( e) |
	a2 ~| a ~| a\fermata
}>>

pianoUp = <<\global\clef "bass" \relative c' {
	\tupletSpan 4
	\tuplet 3/2 {\repeat unfold 4 {r8 <a cis>16( e e'8)} |
	r8 <a, cis>16( fis fis'8) r8 <a, cis>16( fis fis'8) |
	r8 <b, d>16( fis fis'8) r8 <b, d>16( fis fis'8) |
	r8 <b, d>16( gis e'8) r8 <b d>16( gis e'8) |
	r8 <a, cis>16( e e'8) r8 <a, cis>16( e e'8) |
	r8 <a, d>16( fis fis'8) r8 <a, d>16( fis fis'8) |
	\repeat unfold 4 {r8 <b, d>16( fis fis'8)} |
	r8 <b, cis>16( gis eis'8) r8 <b cis>16( gis eis'8) |
%11
	r <a, cis>16( e e'8) r <a, cis>16( e e'8) |
	r8 <a, cis>16( fis fis'8) r8 <a, cis>16( fis fis'8) |
	r <b, d>16( fis fis'8) r <b, d>16( fis fis'8) |
	r <b, d>16( gis e'8) r <b d>16( gis e'8) |
	r c16( f, f'8) r c16( f, f'8) |
	r8 <b, dis>16( a fis'8) r <b, dis>16( a fis'8) |
	r c16( f, f'8) r c16( f, f'8) |
	r <a, b>16( fis dis'8) r <a b>16( fis dis'8) |
	r <b d!>16( e, e'8) r <b d>16( e, e'8) |
	r8 <a, cis>16( e e'8) r <a, cis>16( e e'8) |
%21
	r a,16( d, d'8) r <a b>16( d, d'8) |
	r <gis, b>16( e d'8) r <gis, b>16( e d'8) |
	r <a cis>16( e e'8) r <a, cis>16( e e'8) |
	r <a, cis>16( fis fis'8) r <a, cis>16( fis fis'8) |
	r <b, d>16( fis fis'8) r <b, d>16( fis fis'8) |
	r <b, d>16( gis e'8) r <b d>16( gis e'8) |
	r <a, cis>16( e e'8) r <a, cis>16( e e'8) |
	r <a, d>16( fis fis'8) r <a, d>16( fis fis'8) |
	\repeat unfold 4 {r <b, d>16( fis fis'8)} |
%31
	r <b, cis>16( gis eis'8) r <b cis>16( gis eis'8) |
	r <a, cis>16( e e'8) r <a, cis>16( e e'8) |
	r <a, cis>16( fis fis'8) r <a, cis>16( fis fis'8) |
	r <b, d>16( fis fis'8) r <b, d>16( fis fis'8) |
	r <b, d>16( gis e'8) r <b d>16( gis e'8) |
	r <d fis>16( a a'8) r <d, fis>16( a a'8) |
	r <cis, e>16( a a'8) r <cis, e>16( a a'8) |
	r <d, fis>16( a a'8) r <d, fis>16( a a'8) |
	r e16( a, a'8) r e16( a, a'8) |
	\repeat unfold 4 {r <a, cis>16( e e'8)} |
%42
	r <a, d>16( fis fis'8) r <gis, d'>16( e e'8) |
	r a,16( d, d'8) r a16( d, d'8) |
	r b16( e, d'8) r b16( e, d'8) |
	\repeat unfold 4 {r a16( e cis'8)} |
	r8 e,16( cis a'8) r e,16( cis a'8)} |
	a4( gis)\trill |

	\tuplet 3/2 {\hack fis8 \clef "treble" <a'' cis fis> q q q q r8 q q q q q |
	r <b d fis> q q q q r q q <b cis eis> q q |
%51
	r <a cis fis> q q q q r <b d fis> q <a dis fis> q q |
	r <a cis fis> q q q q} <b cis eis> r r4 |
	\tuplet 3/2 {r8 <a cis fis> q q q q r q q q q q |
	r <a bis fis'> q q q q r <a cis e> q q q q |
	r <d, a' d> q q q q r <e gis cis> q r <fis gis bis> q |
	r <e gis cis> q q q q r <fis a d> q q q q |
	r <eis cis' eis> q q q q r <fis a fis'> q q q q |
	r <gis cis gis'> q q q q r <a cis a'> q q q q |
	r <bis dis bis'> q q q q} q2 |
	<cis eis cis'>2.\fermata r4 |
%61
	\tuplet 3/2 {r8 <a cis fis> q q q q r q q q q q |
	r <b d fis> q q q q r q q <b cis eis> q q |
	r d,16( a fis'8) r8 d16( a fis'8) r d16( b g'8) r d16( b g'8) |
	r e16( b g'8) r e16( b g'8) r e16( a, g'8) r e16( a, g'8) |
	\repeat unfold 6 {r <d fis>16( a a'8)} r <d, fis>16( gis, gis'8) r <cis, eis>16( gis gis'8) |
	r <d fis>16( a a'8) r <d, fis>16( a a'8) r <d, fis>16( gis, gis'8) r <cis, eis>16( gis gis'8) |
	r <cis, fis>16( a a'8) r <cis, fis>16( a a'8) r <d, fis>16( b a'8) r <d, fis>16( b a'8) |
	r <d, e gis> q q q q r <cis e a> q q q q |
	r <d fis> q q q q} <<{fis4( f e)} \\ {d2 ~ d4}>> r r2 |
%72

	\clef "bass"
	\tuplet 3/2 {r8 <a cis>16( e e'8) r8 <a, cis>16( e e'8) |
	r8 <a, cis>16( fis fis'8) r8 <a, cis>16( fis fis'8) |
	r8 <b, d>16( fis fis'8) r8 <b, d>16( fis fis'8) |
	r8 <b, d>16( gis e'8) r8 <b d>16( gis e'8) |
	r8 <a, cis>16( e e'8) r8 <a, cis>16( e e'8) |
	r8 <a, d>16( fis fis'8) r8 <a, d>16( fis fis'8) |
	\repeat unfold 4 {r8 <b, d>16( fis fis'8)} |
	r <b, cis>16( gis eis'8) r8 <b cis>16( gis eis'8) |
	r <a, cis>16( e e'8) r <a, cis>16( e e'8) |
%81
	r <a, cis>16( fis fis'8) r8 <a, cis>16( fis fis'8) |
	r <b, d>16( fis fis'8) r <b, d>16( fis fis'8) |
	r b,16( gis e'8) r gis,16( e <d' e>8) |
	r c16( f, f'8) r c16( f, f'8) |
	r <b, dis>16( a fis'8) r <b, dis>16( a fis'8) |
	r c16 f, f'8 r c16 f, f'8 |
	r <a, b>16 fis dis'8 r <a b>16 fis dis'8 |
	r <b d!>16 e, e'8 r <b d>16 e, e'8 |
	<a, cis> e e'8 r <a, cis>16 e e'8 |
	r a,16 d, d'8 r <a b>16 d, d'8 |
%91
	r <gis, b>16( e d'8) r <gis, b>16( e d'8) |
	r <a cis>16( e e'8) r <a, cis>16( e e'8) |
	r <a, cis>16( fis fis'8) r <a, cis>16( fis fis'8) |
	r <b, d>16( fis fis'8) r <b, d>16( fis fis'8) |
	r <b, d>16( gis e'8) r <b d>16( gis e'8) |
	r <d fis>16( a a'8) r <d, fis>16( a a'8) |
	r <cis, e>16( a a'8) r <cis, e>16( a a'8) |
	r <d, fis>16( a a'8) r <d, fis>16( a a'8) |
	r e16( a, a'8) r e16( a, a'8) |
%101
	\repeat unfold 4 {r <a, cis>16( e e'8)} |
	r <a, d>16( fis fis'8) r <gis, d'>16( e e'8) |
	r a,16( d, d'8) r d16( a a'8) |
	r b,16( e, <d' e>8) r b16( e, <d' e>8) |
	r <a cis>16( e e'8) r <a, cis>16( e e'8) |
	r <gis, cis>16( e e'8) r <gis, b>16( e d'8) |
	r a16( e cis'8) r a16( e cis'8) |
	r gis16( e cis'8) r gis16( d b'8) |
	r e,16( cis a'8) r a16( e cis'8) |
%111
	r <a cis>16( e e'8) r <cis e>16( a a'8)} |
	a,2\fermata |
}>>

pianoDynamics = \new Dynamics <<\global {
	s4\p s |
	s2*30 |
	s4\pp s |
	s2*12 |
	s4 s8-"dim." s |
	s2*2 |
	s4\< s\! |
	\tuplet 3/2 {s8\ff s s} s4 s2 |
	s1*4 |
	s4 s-"dim." s2 |
	s1 |
	s8\p s s4 s2 |
	s2 s4\cresc s |
	s1 |
	\tuplet 3/2 {s8\f s s} s4 s2 |
	s1*3 |
	\tuplet 3/2 {s8\pp s s} s4 s2 |
	\tuplet 3/2 {s8 s-\pococresc s} s4 s2 |
	s1 |
	\tuplet 3/2 {s8\mf s s} s4 s2 |
	\tuplet 3/2 {s8\pp s s} s4 s2 |
	\tuplet 3/2 {s8 s s\cresc} s4 s2 |
	\tuplet 3/2 {s8\f s s} s4 s2 |
	s2 s4\> s |
	s s\! s2 |
	s4\p s |
}>>

pianoDown = <<\global \clef "bass" \relative c {
	\tupletSpan 4
	a4. r8 |
	a4. r8 |
	fis4. r8 |
	b4. r8 |
	e,4. r8 |
	a4. r8 |
	<d d,>4. r8 |
	<b b,>4. r8 |
	<gis gis,>4. r8 |
	<cis cis,>4. r8 |
%11
	a4. r8 |
	fis4. r8 |
	b4. r8 |
	e,4. r8 |
	<a a,>4. r8 |
	<b b,>4. r8 |
	a4. r8 |
	b4. r8 |
	gis2( |
	a4 gis |
%21
	fis f |
	e2) |
	a4. r8 |
	fis4. r8 |
	b4. r8 |
	e,4. r8 |
	a4. r8 |
	<d d,>4. r8 |
	<b b,>4. r8 |
	<gis gis,>4. r8 |
%31
	<cis cis,>4. r8 |
	a4. r8 |
	fis4. r8 |
	b4. r8 |
	e4. r8 |
	d4. r8 |
	a4. r8 |
	d4. r8 |
	cis4. r8 |
	a4. r8 |
%41
	e4. r8 |
	d4 e |
	fis4. r8 |
	gis4. r8 |
	a4.( e16 cis) |
	e4.( cis16 a) |
	cis4.( a16 e) |
	a4( gis)\trill |

	\tuplet 3/2 {\hack fis8\sustainOn <cis''' fis> q q q q\sustainOff \hack <a, a,>8\sustainOn <cis' fis> q q q q\sustainOff |
	\hack <gis, gis,>\sustainOn <d'' gis> q q q q\sustainOff \hack <cis, cis,>\sustainOn <cis' gis'> q q q q\sustainOff |
%51
	\hack <a, a,>\sustainOn <cis' fis> q q q q\sustainOff <b, b,>\sustainOn <b' d> q\sustainOff <bis dis> q q |
	\hack <cis, cis,>\sustainOn <cis' fis> q q q q\sustainOff <cis gis'> <d, d,>-> <cis cis,>-> <b b,>-> <a a,>-> <gis gis,>-> |
	\hack <fis fis,>\sustainOn <cis'' fis> q q q q\sustainOff \hack <a, a,>\sustainOn <cis' fis> q q q q\sustainOff |
	\hack <gis, gis,>\sustainOn <gis' dis'> q q q q\sustainOff \hack <a, a,>\sustainOn <a' cis> q q q q\sustainOff |
	\hack <fis, fis,>\sustainOn <fis' a> q q q q\sustainOff <gis, gis,>\sustainOn <gis' cis> q\sustainOff <gis, gis,>\sustainOn <gis' dis'> q\sustainOff} |
	cis,4. gis16 eis gis4( fis) |
	<cis' cis'>4. <gis gis'>16 <eis eis'> <gis gis'>4( <fis fis'>) |
	\tuplet 3/2 {\hack <cis' cis,>8\sustainOn <cis' eis> q q q q\sustainOff \hack <cis, cis,>\sustainOn<cis' fis> q q q q\sustainOff |
	\hack <cis, cis,>\sustainOn <cis' e gis> q q q q\sustainOff} q2 |
	<cis eis gis>2.\fermata r4 |
%61
	\tuplet 3/2 {\hack <fis,, fis,>8\sustainOn <cis'' fis> q q q q\sustainOff \hack <a, a,>\sustainOn <cis' fis> q q q q\sustainOff |
	\hack <gis, gis,>\sustainOn <d''! gis> <d gis> q q q\sustainOff \hack <cis, cis,>\sustainOn <cis' gis'> q q q q\sustainOff} |
	d,!2( d,) |
	d'( d,) |
	d'( cis |
	bis cis) |
	bis,( cis) |
	<cis cis'> <g g'> |
	\tuplet 3/2 {\hack <e' e,>8\sustainOn <e' b'> q q q q\sustainOff \hack <e, e,>\sustainOn <e' a> q q q q\sustainOff |
	\hack <e, e,>\sustainOn <e' a> q q q q} q2\sustainOff |
%71
	<e b'>4 r r2 |

	a,4. r8 |
	fis4. r8 |
	b4. r8 |
	e,4. r8 |
	a4. r8 |
	<d d,>4. r8 |
	<b b,>4. r8 |
	<gis gis,>4. r8 |
	<cis cis,>4. r8 |
%81
	a4( gis |
	fis a) |
	b,4.( cis16 d |
	e8) d cis b |
	a4. r8 |
	b4. r8 |
	a'4. r8 |
	b4. r8 |
	gis2( |
	a4 gis |
%91
	fis f |
	e2) |
	a4( gis) |
	fis4. r8 |
	b,4. r8 |
	e4. r8 |
	d4. r8 |
	a'4. r8 |
	d4. r8 |
	cis4. r8 |
%101
	a4. r8 |
	e4. r8 |
	d4 e |
	fis4. r8 |
	gis4. r8 |
	a2 |
	e |
	a4( cis) |
	e,2 |
	a, |
%111
	a |
	a'\fermata |
}>>
