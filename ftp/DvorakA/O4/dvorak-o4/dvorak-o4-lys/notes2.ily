\version "2.18.0"

\include "global.ily"

global = {\key d \minor \time 2/4 \tempo "Allegro maestoso" s2*73 \tempo "Meno mosso" s2*2 \tempo "Andante" s2*2 \bar "||"}

violin = <<\global \relative c' {
\repeat volta 2 {
	<d a' f'>4->\ff\arpeggio\downbow <d a' gis'>->\arpeggio\upbow |
	<d a' a'>->\arpeggio\downbow r8 d'16-.\p e-. |
	f8-. f-. f-. e-. |
	d4 r8 d16-.\< e-. |
	<d, a' f'>4->\ff\arpeggio\downbow <d a' gis'>->\arpeggio\upbow |
	<d a' a'>->\arpeggio\downbow r8 d'16-.\p e-. |
	f8-. f-. f-. e-. |
	d4 r8 d16-.\p e-. |
	f8-. f-. f-. es-. |
	d-. f-. f-. es-. |
%11
	d-. d-.\< d-. c-. |
	bes-. d-. d-. c-. |
	<d, bes'>->\mf q <c a'>-> q |
	<bes g'>\< q <bes f'> q |
	<a e' a>4->\ff\arpeggio q->\arpeggio |
}  
\alternative {
	{q4.->\arpeggio a'16 a}
	{q4->\arpeggio r8 a\pp}
}
\repeat volta 2 {
	\acciaccatura a8 f'4 \acciaccatura a,8 gis'4 |
	\acciaccatura a,8 a'4 r8 d,16-. e-. |
	f8-. f-. f-. e-. |
%21
	d4 r8 d16-.\< e-. |
	\acciaccatura a, f'4\mf\< \acciaccatura a,8 gis'4\! |
	\acciaccatura a,8 a'4 r8 d,16-.\f e-. |
	f8-. f-. f-. e-. |
	d4. r8 |
	a16-.\p c-. f-. e-. d-. a'-. e-. g-. |
	f-. c-. f-. e-. d-. a'-. e-. g-. |
	f a,\cresc d c b\! f' cis e |
	d\< a d c b f' cis e |
	d\f f d d' e, g e e' |
%31
	f, a f f' f, c' f, f' |
	<e, e'>4->\ff <cis cis'>-> |
}
\alternative {
	{\acciaccatura d,8 <d' d'>4. a,8\pp}
	{\acciaccatura d8 <d' d'>4 r8 d16 e}
}
	<d, a' f'>4->\ff\arpeggio <d a' gis'>->\arpeggio |
	<d a' a'>->\arpeggio r8 <f d'>16\p <a e'> |
	<d f>8-. <a f'>-.\< <a f'>( <g e'>)\! |
	\acciaccatura a,8 <f' d'>4 r8 d'16 e |
	<d, a' f'>4->\arpeggio <d a' gis'>->\arpeggio |
	<d a' a'>->\arpeggio r8 <f d'>16 <a e'> |
%41
	<d f>8-. <a f'>-.\< <a f'>( <g e'>)\! |
	\acciaccatura a,8 <f' d'>4. r8\fermata |
\repeat volta 2 {
	d16-^\p d'-. a-. f'-. g,,-^ d''-. b-. g'-. |
	c,,-^ c'-. g-. e'-. c-. g-. g,-. g'-. |
	g g, a' g, g' g, f' g, |
	c-^ c' g e' c g e c |
	d-^ d' a\cresc f' g,,-^\! d'' b g' |
	c,,-^ c' g e' c g g, g' |
	g\< g, a' g, g' g, f' g, |
	a'\f a, cis' a, e''\> a,, a'' a,, |
%51
	<f' a>4--\p <d bes'>-- |
	<f a>-- r8 f16-.\pp g-. |
	<c, a'>8-. <d bes'>-. <c a'>-. <bes g'>-. |
	<a f'>4 r8 f'16-. g-. |
	<f a>4\p <g bes> |
	<f a> r8 f16-.\pp g-. |
	<f a>8-. <d bes'>-. <c a'>-. <bes g'>-. |
	<a f'>4. r8 |
}
	<d a' f'>4->\ff\arpeggio <d a' gis'>->\arpeggio |
	<d a' a'>->\arpeggio r8 d'16-. e-. |
%61
	f8-. f-. f-. e-. |
	d4 r8 d16-. e-. |
	<d, a' f'>4->\arpeggio\downbow <d a' gis'>->\arpeggio\upbow |
	<d a' a'>->\arpeggio\downbow r8 d'16-. e-. |
	f8-. g-. f-. e-. |
	d-. a-. d,-. r |
	a'\mf a a( g) |
	f a a( g) |
	f4 e\trill\dimin |
	d4.\> r8 |
%71
	d16\((\p a') a( bes) bes( b) b( cis)\) |
	d16\(( a') a( bes)\dimin bes( b) b(\! cis)\) |
	\ottava #1 d16\(( a')-"rit." a( bes) bes(\> b) b( cis)\) |
	d2\pp ~|
	d2 ~|
	d8 a(-"ritard." g e) |
	d2\fermata
}>>

pianoUp = <<\global \relative c'' {
	<d d,>16-.-> a-. d,-. a-. <e'' e,>-.-> b-. e,-. b-. |
	<f'' f,>-.-> d-. a-. f-. d-. a-. f-. a-. |
	d-. a-. a'-. a,-. g'-. b,-. g'-. cis,-. |
	f-. d-. f-. e-. d-. e-. f-. g-. |
	<d' d,>16-.-> a-. d,-. a-. <e'' e,>-.-> b-. e,-. b-. |
	<f'' f,>-.-> d-. a-. f-. d-. a-. f-. a-. |
	d-. a-. a'-. a,-. g'-. b,-. g'-. cis,-. |
	f-. d-. f-. e-. d-. d'-. r8 |
	bes16-. f-. bes-. a-. g-. d'-. a-. c-. |
	bes f bes a g d' a c |
	bes d, g f e bes' fis a |
	g d g f e bes' fis a |
	g bes g g' a, c a a' g, bes g g' f, bes f f' |
	<e cis a e>4->\arpeggio <f d a f>->\arpeggio |
	<e cis a e>4.->\arpeggio r8 |
	<e cis a e>4.->\arpeggio r8 |
	d'16-. a-. d,-. a-. e''-. b-. e,-. b-. |
	f''-. d-. a-. f-. d-. a-. f-. a-. |
	a'-. a,-. a'-. a,-. g'-. b,-. g'-. cis,-. |
	f-. d-. f-. e-. d-. e-. f-. a-. |
	d16 a d, a e'' b e, b |
	f'' d a f d a f' a |
	a a, a' a, b' b, cis' cis, |
	d' a d, a r8 a'16-. bes-. |
	<c c,>8-. q-. q-. <bes bes,>-. |
	<a a,>-. <c c,>-. q-. <bes bes,>-. |
	<a a,>-. q-. q-. <g g,>-. |
	<f f,>-. <a a,>-. q-.  <g g,>-. |
	<f d a f> q <g e g,> q |
	<a f a,> q <a f c a> q |
	<gis e b gis>4-> <a e cis a>-> |
	<d, a f d>4.\arpeggio r8 |
	<d a f d>4.\arpeggio r8 |

	<d d'>16-.-^ a'-. d,-. a <e' e'>-.-^ b'-. e,-. b-. |
	<f' f'>-.-^ d'-. a-. f-. d-. a-. a'-. a,-. |
	a'-. a,-. a'-. a,-. b'-. b,-. cis'-. cis,-. |
	d'-. a-. d,-. a-. r8 f'16-. a-. |
	<d d,>16-^ a d, a <e' e'>-^ b' e, b |
	<f' f'>-^ d' a f d a a' a, |
	a' a, a' a, b' b, cis' cis, |
	d' a d, a d, \change Staff = "down"\voiceOne a d, r\fermata |
	\change Staff = "up"\oneVoice <f'' a>4 <g b>\prall |
	<e c'> r8 q16-. <g d'>-. |
	<c e>8-. <c f>-. <c e>-. <c d>-. |
	<c e>4 r8 c16-. e,-. |
	<f a>4 <g b>\prall |
	<e c'> r8 q16-. <g d'>-. |
	<c e>8-. <c f>-. <c e>-. <bes! d>-. |
	<cis e,>4 r8 a |
	<d d,>16-. a-. d,-. a-. <d' d,>-. g,-. d-. g,-. |
	<d'' d,>-. a-. d,-. a-. <d' d,>-. a-. d-. e-. |
	<f f,> c q bes q c q d |
	q c q c q c f, c |
	<d' d,> a d, a <d' d,> g, d g, |
	<d'' d,> a d, a <d' d,> a d e |
	<f f,> c q bes q c q des |
	q c f, c f, c f, r |
	<d'' d,> a d, a q gis' d gis, |
	q a' d, a q a' q <d e,> |
	<d, d'> f q g q f q e |
	q a' d, a q a' d, a |
	q a' d, a q gis' d gis, |
	q a' d, a q a' q <d e,> |
	<d, d'> f q g q f q e |
	q a q g q a d, a |
	a( a' bes, bes' b, b' cis, cis') |
	d,( d' a, a' b, b' cis, cis') |
	d,( d' f, f' a, a' a,, a') |
	d,( d' d,, d' a a' a,, a') |
	<d d,>8 <f f,> q( <e e,>) |
	<d d,> <f f,> <f f,>( <e e,>) |
	<d d,>4( <a a,>) |
	<d d,>16-. a-. d,-. a-. <e'' e,>-. b-. e,-. b-. |
	<f'' f,>-. d-. a-. f-. d-. a'-. d-. f-. |
	<f d a>8 q(-- <f d b>-- <e cis g>)-- |
	<d a f>16-. a-. d,-. \change Staff = "down" a-. d,-. a-. d,8_\fermata |
}>>

sstacc = \markup{\italic{sempre stacc.}}

pianoDynamics = \new Dynamics {
	s16\ff s s8 s4 |
	s16 s\> s8 s16 s\p s8 |
	s2 |
	s4 s16\< s s8 |
	s16\ff s s8 s4 |
	s16 s\> s8 s16 s\p s8 |
	s2*2 |
	s16\p s s8 s4 |
	s4-\sstacc s |
	s16\< s s8 s4 |
	s s16\! s s8 |
	s16\mf s s8 s4 |
	s16\< s s8 s s16 s\! |
	s4\ff s |
	s2*2 |
	s16\pp s s8 s4 |
	s2*3 |
	s16\mf s s8-\sstacc s16\< s s8 |
	s4 s16\f s s8 |
	s2 |
	s4 s8 s16\p s |
	s2*2 |
	s8 s-"cresc." s4 |
	s8\< s s s\! |
	s\f s s4 |
	s2 |
	s4\ff s |
	s2*2 |
	s16\ff s s8 s4 |
	s2*5 |
	s16\< s s8 s s16 s\! |
	s\ff s s8 s4 |
	s4\pp s |
	s2*3 |
	s4-"cresc." s |
	s2 |
	s8\< s s s\! |
	s4\f s |
	s16\p s s8 s4 |
	s2 |
	s16\pp s s8 s4 |
	s2 |
	s16\p s s8 s4 |
	s2 |
	s16\pp s s8 s4 |
	s2 |
	s16\ff s s8 s4 |
	s2*7 |
	s16\mf s s8 s4 |
	s2 |
	s8 s-"dim." s4 |
	s16\> s s8 s4 |
	s8\p s s4 |
	s8 s-"dim." s4 |
	s4-"rit."\> s |
	s16\pp s s8 s4 |
	s2 |
	s4-"ritard." s |
	s2 |
}

pianoDown = <<\global\clef "bass" \relative c {
	<d a d,>4->\arpeggio <e a, d,>->\arpeggio |
	<f a, d,>4.->\arpeggio r8 |
	d,16-.\p d'-. f,-. f'-. g,-. g'-. a,-. a'-. |
	d,-. a'-. d,-. a-. d,8-. r8 |
	<d' a d,>4->\arpeggio <e a, d,>->\arpeggio |
	<f a, d,>4.->\arpeggio r8 |
	d,16-. d'-. f,-. f'-. g,-. g'-. a,-. a'-. |
	d,-. a'-. d,-. a-. d,8-. r8 |
	bes'16-. bes'-. d,-. d'-. es,-. es'-. f,-. f'-. |
	
	bes,, bes' d, d' es, es' f, f' |
	
	g,, g' bes, bes' c, c' d, d' |
	g,, g' bes, bes' c, c' d, d' |
	d, <g d'> d q d <fis d'> d q |
	d <g d'> d q d <gis d'> d q |
	<a' e a,>4->\arpeggio <d, a d,>->\arpeggio |
	<a e a,>4.->\arpeggio r8 |
	<a e a,>4.->\arpeggio r8 \clef "treble" |
	<d' a'>8\sustainOn r q\sustainOn r |
	q\sustainOn r r4\sustainOff |
	\clef "bass" d,16-. d'-. f,-. f'-. g,-. g'-. a,-. a'-. |
	d,-. a'-. d,-. a-. d,8-. r \clef "treble" |
	<d' a'>8 r q r |
	q r r4 |
	\clef "bass" d,16 d' f, f' g, g' a, a' |
	d,8 r a16 d, r8 |
	\repeat unfold 2 {f16 f' a,, a' bes, bes' c, c'} |
	\repeat unfold 2 {d, d' f,, f' g, g' a, a'} |
	a, <d a'> a q a <cis a'> a q |
	a <d a'> a q a <dis a'> a q |
	<e' b e,>4-> <a, e a,>-> |
	<f' a, d,>4.\arpeggio r8 |
	<f a, d,>4.\arpeggio r8 |
	<d a d,>4\arpeggio <e a, d,>\arpeggio |
	<f a, d,>4. r8 |
	d,16-. d'-. f,-. f'-. g,-. g'-. a,-. a'-. |
	d,-. a'-. d-. r d-. a-. d,-. r |
	<d a d,>4\arpeggio <e a, d,>\arpeggio |
	<f a, d,>4. r8 |
	d,16 d' f, f' g, g' a, a' |
	\voiceTwo <d, d,>8\sustainOn d'16 a d, a d, r_\fermata \clef "treble" |
	
	\oneVoice <<<f'' a>4 \\ d>> <g b>\mordent |
	<<<g c> \\ c,>> r8 <e c'>16 <g d'> |
	<c e>8-. <c f>-. <c e>-. <c d>-. |
	<c e>4 r8 c16-. e,-. |
	<<<f a>4 \\ d>> <g b>\mordent |
	<<<g c> \\ c,>> r8 <e c'>16-. <g d'>-. |
	<c e>8-. <c f>-. <c e>-. <bes d>\mordent |
	<a, e' cis'>4\arpeggio r |
	\clef "bass" <d,, a' d>8\arpeggio r q\arpeggio r |
	q\arpeggio r d'' r |
	\clef "treble" <f f,> <f c'> q q |
	q4. r8 |
	\clef "bass" <d,, a' d>\arpeggio r q\arpeggio r |
	q\arpeggio r d'' r |
	\clef "treble" <f f,> <f c'> q <f f,> |
	q \noBeam \clef "bass" f16 c f c, f, r |

	<d d,>4-> <e e,>-> |
	<f f,>-> r8 q16-. <g g,>-. |
	<a a,>8-. <bes bes,>-. <a a,>-. <g g,>-. |
	<f f,>4 r8 q16-. <e e,>-. |
	<d d,>4-> <e e,>-> |
	<f f,>-> r8 q16-. <g g,>-. |
	<a a,>8-. <bes bes,>-. <a a,>-. <g g,>-. |
	<f f,>-. <e e,>-. <d d,>-. r |
	<<{
		f' f f( e) |
		d f f( e) |
		d4 cis
	} \\ {
		d,2 |
		d |
		d
	}>> |
	<d d'> |
	<<{
		f'8 a a( g) |
		f a a( g) |
		f4( <e g>)
	} \\ {
		d2 |
		d |
		d
	}>> |
	<d, a' d>4\sustainOn <d gis d'>\sustainOn |
	<d a' d>4.\sustainOn r8\sustainOff |
	d f(-- g-- a--) |
	\voiceTwo q2^\sustainOn_\fermata |
}>>
