\version "2.18.2"

capriceOne = {

  \set Staff.midiInstrument = "violin"

  \key e \major
  \time 2/4

  \relative c'
  {
    % Page 1 - Line 1 - Measure (upbeat) 1
    \partial 32*8 e32-.-4^\markup{Andante.}( gis-. b-. e-.)	e-.( b-. gis-. e-.)		| %-Checked
    dis-.( fis-. b-. fis'-.)	fis-.( b,-. fis-. dis-.)	e_\markup{\italic{simile}} gis b e	e b gis e		| %-Checked
    b fis' dis' b'	b dis, fis, b,	e gis b e	e b gis e		| %-Checked
    dis fis b fis'	fis b, fis dis	e gis b e	e b gis e		| %-Checked
    \mbreak

    % Page 1 - Line 2 - Measure 4
    b fis' dis' b'	b dis, fis, b,	gis-1 e'-2 b'-2 gis'-3	gis b, e, gis,		| %-Checked
    a-.-1( e'-. cis'-. a'-.)	cis16-.-3( e-.)	ais,,,32 fis' cis' ais'	ais cis, fis, ais,		| %-Checked
    b-.-1( fis'-. dis'-. b'-.)	dis16-.-3( fis-.)	dis,,32-4 b' fis' dis'	dis fis, b, dis,		| %-Checked
    e-1 b' gis' e'	e gis, b, e,	fis-1 dis' b' fis'	fis b, dis, fis,		| %-Checked
    \mbreak

    % Page 1 - Line 3 - Measure 8
    gis-1 e' b' gis'	gis b, e, gis,	a-1 e' cis' a'	a cis, e, a,		| %-Checked
    \ottava #1 ais-1 g' e' cis'	cis e, g, ais,	cis-1 ais' g' e'	e g, ais, cis,		| %-Checked
    ais-1 g' e' cis'	cis e, g, ais,	\ottava #0 g-1 e' cis' ais'	ais cis, e, g,		| %-Checked
    e-1 cis' ais' g'	g ais, cis, e,	cis-1 ais' g' e'	e g, ais, cis,		| %-Checked
    \mbreak

    % Page 1 - Line 4 - Measure 12
    b-.-1( fis'-. dis'-. b'-.)	dis16-.-3( fis-.)	a,,,!32-2 dis-1 b'-3-2 fis'-3-2	fis b, dis, a		| %-Checked
    gis-1 e'-2 b'-2 gis'-3	b16-.-4( e-.)	a,,,32 dis b' fis'	fis b, dis, a		| %-Checked
    gis e' b' gis'	b16-.( e-.)	a,,,16-.( < e' cis' a' >-.) b-.-1( < gis' e' cis' >-.)		| %-Checked
    cis,-.-1( < a' e' cis' >-.)
    \set fingeringOrientations = #'(left left left)
    c,-.-1( < ais'-3 e'-2 c'!-4 >-.)	b,-.-1( < gis' e' b' >-.)	b, < fis' dis' b' >		| %-Checked
    \mbreak

    % Page 1 - Line 5 - Measure 16
    e8-1_\markup{IV\super{a}}( < b' gis' e' >) \key g \major e,32-.-4( g-.-2 b-. e-.) e-.( b-. g-. e-.)		| %-Checked
    dis-4 fis b fis'	fis b, fis dis	e g b e	e b g e		| %-Checked
    b fis' dis' b'	b dis, fis, b,	e g b e	e b g e		| %-Checked
    dis fis b fis'	fis b, fis dis	e g b e	e b g e		| %-Checked
    \mbreak

    % Page 1 - Line 6 - Measure 20
    b fis' dis' b'	b dis, fis, b,	b fis' d' b'	b d, fis, b,		| %-Checked
    a fis' d' c'	c d, fis, a,	a fis' d' a'	a d, fis, a,		| %-Checked
    g d' b' d'	d b, d, g,	g d' d'-1 g'	g d, d, g,		| %-Checked
    g d' g'-1 b'	b g, d, g,	g d' b''-1 d'	d b, d,, g,		| %-Checked
    \mbreak

    % Page 1 - Line 7 - Measure 24
    c-.( g'-. e'-. c'-.)	cis,,16( < a'-2 g'-3 e'-4 >)	d,32-1 a' fis' d'	dis,,16-1 < b'-2 a'-3 fis'-4 >		| %-Checked
    e,32-1 b' g' e'	fis,,16-1 < d'! a' fis' >	g,16-1 < d' b' g' >	a-1 < fis' d' a' >		| %-Checked
    b,-1 < g' d' b' >	c,-1 < g' e' c' >	\ottava #1 cis,32 bes' g' e'	g16-.-4( \ottava #0 cis,,,,-.-1)		| %-Checked
    \tuplet 3/2 { d16-.-0 < b''!-4 d-2 >-. < a c >-. }	\tuplet 3/2 { < g-4 b-2 >-. < fis a >-. < e-0 g-4 >-. }	\tuplet 3/2 { < d-3 fis-1 >-. < c e >-. < b-3 d-1 >-. }	\tuplet 3/2 { < a-0 c-4 >-. < g-3 b-1 >-. < fis a >-. }		| %-Checked
    \mbreak

    % Page 1 - Line 8 - Measure 28
    g,32-.( d'-. b'-. g'-.)	g-.( b,-. d,-. g,-.)	g-.( ees'-.-1 c'-.-3 fis-.-2)	fis-.( c-. ees,-. g,-.)		| %-Checked
    \tuplet 3/2 { < g d' >16 < b'' d > < a c > }	\tuplet 3/2 { < g b > < fis a > < e g > }	\tuplet 3/2 { < d fis > < c e > < b d > }	\tuplet 3/2 { < a c > < g b > < fis a > }		| %-Checked
    g,32 d' b' g'	g b, d, g,	g ees'-1 c'-3 fis-2	fis c ees, g,		| %-Checked
    \tuplet 3/2 { < g d' >16 < b'' d > < a c > }	\tuplet 3/2 { < g b > < fis a > < e g > }	\tuplet 3/2 { < d fis > < c e > < b d > }	\tuplet 3/2 { < a c > < g b > < fis a > }		| %-Checked
    \mbreak

    % Page 1 - Line 9 - Measure 32
    g,32 d' b' g'	g b, d, g,	g d' bes' g'	g bes, d, g,		| %-Checked
    \tuplet 3/2 { < g ees' >16 < bes''-4 des-2 > < aes c > }	\tuplet 3/2 { < g-4 bes!-2 > < g bes > < f aes! > }	\tuplet 3/2 { < ees-4 g-2 > < des f > < c-4 ees-2 > }	\tuplet 3/2 { < bes des > < aes-4 c-2 > < g bes > }		| %-Checked
    aes,32 ees' c' aes'	aes c, ees, aes,	aes ees' ces' aes'	aes ces, ees, aes,		| %-Checked
    \mbreak

    % Page 1 - Line 10 - Measure 35
    \tuplet 3/2 { < gis e'! >16 < b''!-4 d!-2 > < a! cis > }	\tuplet 3/2 { < gis-4 b-2 > < gis b > < fis! a > }	\tuplet 3/2 { < e!-0 gis-4 > < d-3 fis-1 > < cis e > }	\tuplet 3/2 { < b-3 d-1 > < a-0 cis-4 > < gis-3 b -1 > }		| %-Checked
    a,32 e' cis' a'	a cis, e, a,	a e' c' a'	a c, e, a,		| %-Checked
    \tuplet 3/2 { < a f' >16 < c''!-4 ees-2 > < bes-4 d-2 > }	\tuplet 3/2 { < a c > < a c > < g!-4 bes!-2 > }	\tuplet 3/2 { < f a > < ees-4 g-2 > < d f > }	\tuplet 3/2 { < c-4 ees-2 > < bes d > < a-0 c-4 > }		| %-Checked
    \mbreak

    % Page 2 - Line 1 - Measure 38
    bes,32-1 f' d' bes'	bes d, f, bes,	bes f' des' bes'	bes des, f, bes,		| %-Checked
    bes ges' des' bes'	bes des, ges, bes,	ais-1 fis'!-2 e'!-3 cis'	cis e, fis, ais,		| %-Checked
    b-1 fis' dis' b'	b dis, fis, b,	b fis' d' b'	b d, fis, b,		| %-Checked
    \mbreak

    % Page 2 - Line 2 - Measure 41
    b g' d' b'	b d, g, b,	b g'-2 f'-3 d'	d f, g, b,		| %-Checked
    c-1 g' e' c'	c e, g, c,	c g' ees' c'	c ees, g, c,		| %-Checked
    c aes' ees' c'	c ees, aes, c,	c aes'-2 ges'-3 ees'	ees ges, aes, c,		| %-Checked
    r4	des32-.-4\p( f-.-2 des'-. f-.)	f-.( des-. f,-. des-.)		| %-Checked
    \mbreak

    % Page 2 - Line 3 - Measure 45
    c_\markup{\italic{simile}} ees ees' ges	ges ees ees, c	des f des' f	f des f, des		| %-Checked
    aes ees' c' aes'	aes c, ees, aes,	cis-3 e!-1 cis'-2 e!-0	e cis e, cis		| %-Checked
    bis-3 dis-1 dis'-4 fis!-2	fis dis dis, bis	cis-3 e-1 cis'-2 e-0	e cis e, cis		| %-Checked
    \mbreak

    % Page 2 - Line 4 - Measure 48
    gis-1 dis' bis' gis'	gis bis, dis, gis,	cis-3 e-1 cis'-2 e-0	e cis e, cis		| %-Checked
    b-2 gis'-4 d'!-3 e-0	e d gis, b,	a e' cis' a'	a cis, e, a,		| %-Checked
    ais-1 g'!-2 e' cis'	cis e, g, ais,	b16-.-2( < fis' dis' b' >-.)	a,-.( < fis' dis' b' >-.)		| %-Checked
    gis,-.-1( < e' b' gis' >-.-2)	a,-.( < e' cis' a' >-.)	b-.-1( < gis' e' b' >-.)	b,-.( < fis' dis' bis' >-.)		| %-Checked
    \key e \major
    \mbreak

    % Page 2 - Line 5 - Measure 52
    e8-1( < b' gis' e' >)	e,32-.-4( gis-.-3 b-. e-.)	e-.( b-. gis-. e-.)		| %-Checked
    e-4 a-3 c e	e c a e	e-4 g-2 ais-1 e'-0	e ais, g e		| %-Checked
    e-.-4( gis!-.-3 b-. e-.)	\tuplet 3/2 { < gis! b >16-. < fis a >-. < e gis >-. }	\tuplet 3/2 { < a-0-4 cis-3 >-. < gis-4 b-2 >-. < fis-3 a-1 >-. }	\tuplet 3/2 { < e-0 gis-4 >-. < dis-3 fis-1 > -. < cis e >-. }		| %-Checked
    b,32-.-2( gis'-. e'-. b'-.)	b-.( e,-. gis,-. b,-.)	b fis' dis' b'	b dis, fis, b,		| %-Checked
    \mbreak

    % Page 2 - Line 6 - Measure 56
    e-.-4( gis-.-3 b-.-1 e-.-0)	gis'16-4( e)	e,,32-.-2( b'-. gis'-. e'-.)	e-.( gis,-. b,-. e,-.)		| %-Checked
    e c' a' e'	e a, c, e,	e ais g' e'	e g, ais, e		| %-Checked
    e b' gis'! e'	\tuplet 3/2 { < e,,-2 gis-1 >16 < fis-3 a-1 > < gis b > }	\tuplet 3/2 { < a-3 cis-1 >^\markup{II\super{a} e III\super{a...}} < b dis > < cis-3 e-1 > }	\tuplet 3/2 { < dis fis > < e-3 gis-1 > < fis a > }		| %-Checked
    b,32-.-4(_\markup{IV\super{a}} e-.-3 gis-.-1 e'-.-2)	e-.( gis,-. e-. b-.)	b-4 dis-3 fis-1 dis'-2	dis fis, dis b		| %-Checked
    \mbreak

    % Page 2 - Line 7 - Measure 60
    e,-1 b' gis' e'	gis gis, b, e,	e c' a' e'	a a, c, e,		| %-Checked
    e b' gis' e'	gis a, b, e,	e c' a' e'	a a, c, e,		| %-Checked
    e b' gis' e'	gis gis, b, e,	cis! ais' g' e'	cis,,16( ais-1)		| %-Checked
    \tuplet 3/2 { b < gis''!-4 b-2 > < fis a > }	\tuplet 3/2 { < e-0 gis-4 > < dis-3 fis-1 > < cis e > }	\tuplet 3/2 { < b-3 dis-1 > < a-0 cis-4 > < gis b > }	\tuplet 3/2 { < fis a > < e-4 gis-3 > < dis-4 fis-2 > }		| %-Checked
    \mbreak

    % Page 2 - Line 8 - Measure 64
    e32-4 gis b e	gis b, gis e	e-4 a-3 c e	a c, a e		| %-Checked
    e gis b e	gis b, gis e	e a c e	a c, a e		| %-Checked
    e gis b e	gis b, gis e	c g' ais e'	g16( e)		| %-Checked
    \tuplet 3/2 { b, < b' e > < gis! b > }	\tuplet 3/2 { b' < b,,-2 dis-1 >^\markup{III\super{a} e IV\super{a......}} < cis-3 e-1 > }	\tuplet 3/2 { < dis fis > < e-3 gis-1 > < fis a > }	\tuplet 3/2 { < gis-3 b-1 > < a cis > < b-3 dis-1 > }		| %-Checked
    \mbreak

    % Page 2 - Line 9 - Measure 68
    e32-.-4( gis-.-3 b-.-1 e,-.-0)	e-.-0( b'-. gis-. e-.)	e-4 a-3 c-1 e,-0	e-0 c' a e		| %-Checked
    e gis b e,	e b' gis e	dis-4 fis-2 b-1 e,	e b' fis dis		| %-Checked
    cis e a e	e a e cis	b dis gis e	e gis dis b		| %-Checked
    a cis fis e	e fis cis a	fis a dis e	e dis a fis		| %-Checked
    \mbreak

    % Page 2 - Line 10 - Measure 72
    e gis e' e	e e gis, e	f a dis e	e dis a f		| %-Checked
    \crescTextCresc
    e\< gis e' e	e e gis, e	f a dis e	e dis a f\!		| %-Checked
    \tuplet 3/2 { e16\f < gis e' > e' }	r8	\tuplet 3/2 { e,16 < gis gis' > e' }	r8		| %-Checked
    e,32 gis e' e	e gis-2 b,-1 gis-3	e-3 gis e' e	e gis-2 b, gis		| %-Checked
    e'4-0	< e,-3 gis e' > r4\fermata 				%-End of Piece
    \pageBreak
  }

}
