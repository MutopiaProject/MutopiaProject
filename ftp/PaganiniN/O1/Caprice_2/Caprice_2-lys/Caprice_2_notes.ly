\version "2.18.2"

% ****************************************************************************
% the following lines should be put before the score section where this music
% is used as the Abbreviations are used in this piece.
%
% \markup{Fr. = Am Frosch - \italic{au talon - at the nut}}
% \markup{M. = Mitte - \italic{au milieu - in the middle}}
% \markup{Sp. = An der Spitze - \italic{á la pointe - at the point}}
%
% ****************************************************************************

capriceTwo = {

  \set Staff.midiInstrument = "violin"
  \set Staff.extraNatural = ##f

  \key d \major
  \time 6/8

  \relative c'
  {
    \repeat volta 2
    {
      % Page 3 - Line 1 - Measure 1
      b'16-._\markup{\italic{dolce}} b'^\markup{Moderato.}( ais b) a-. b-.	g-. b-. fis-. b-. e,-. b'-.		| %-Checked
      d, b' cis, b' b, b'	ais, b' b, b' d, b'		| %-Checked
      cis,-. ais'-3( g-1 ais-3) fis-.-1  ais-.	e-. ais-. d,-.-2 ais'-.-3 cis,-.-2 ais'-.		| %-Checked
      b, ais' ais, ais' b, ais'	cis, ais' d,-2 ais' e-4 ais		| %-Checked
      \mbreak

      % Page 3 - Line 2 - Measure 5
      d,-.-2 b'( fis, b') e,,-1 b''-3	d,,-0 b'' cis,,-2 b'' b,, b''		| %-Checked
      g,-.-2 d''( b,-1 d') a,-0 d'	g,,-2 d'' fis,, d'' g,, d''		| %-Checked
      fis,,-.-2 d''( b,-1 d') g,,-2 d''	fis,,-1 d'' eis,,-1 d'' fis,,-1 d''		| %-Checked
      eis,,-.-1 d''( d, d') cis,-2 d'	b, d' g,,-2 d'' eis,,-1 d''		| %-Checked
      \mbreak

      % Page 3 - Line 3 - Measure 9
      fis,,-.-2 cis''( ais,-1 cis') g,-2 cis'	fis,,-1 cis'' fis,, cis'' fis,, cis''		| %-Checked
      g,-.-2 b'( b,-1 d') a,!-0 cis'-4	g,-2 b' fis,-2 b'-3 eis,, b''		| %-Checked
      fis,-. ais'-3( fis-4 fis-1) eis-4 gis	e ais! d,-2 b' ais,^\markup{III\super{a}} cis'		| %-Checked
      b,-.-1 d'( g,,-1 b'-4) g, a'!-4	g, g'-4 g, fis' g, eis'		| %-Checked
      \mbreak

      % Page 3 - Line 4 - Measure 13
      fis,-.-1 fis'-3( fis, ais'-4) g,-.-1 eis'-.-3	fis,-.-1 fis'( fis, ais') g,-. eis'-.		| %-Checked
      fis,-.-1 fis'( fis, ais') fis, cis''-3	fis,, fis'' fis,, cis'' fis,, ais'-4		| %-Checked
      < fis, fis'-3 >4. r4 r8\fermata		| %-Checked
      d'16-.-3 a'( gis a) g a	eis a fis a e a		| %-Checked
      d, a' a, a' g,-2 a'	fis,-2 a' e, a' d,, a''		| %-Checked
      \mbreak

      % Page 3 - Line 5 - Measure 18
      cis,,-.-4 a''-3( gis a) g a	dis,-4 a' e-4 a d, a'		| %-Checked
      cis, a' g,-2 a'-3 fis,-2 a'	e, a' a,-0 a' g,-2 a'-3		| %-Checked
      fis,-.-2 d''-4( a d) gis,-1 d'	a d fis, d' d,-. cis'(		| %-Checked
      g!-1 cis) g-. b-. g,-.-2 b'-.	e,,-.-1 b''-.-3 c,,-.-2 b''-. d,-.-1 b'(		| %-Checked
      \mbreak

      % Page 3 - Line 6 - Measure 22
      fis-1 b) fis a fis, a'	d,, a'' b,, a'' b,-. a'(		| %-Checked
      e a) e g e, g'	cis,,-4 g'' a,, g'' a,-.-0 g'-4(		| %-Checked
      d-1 fis-1) < a fis' >^\markup{Fr.} d,,-.-0 < gis'-3 eis'-4 > d,	< a''-3 fis'-4 > d,, < g' e' > d, < fis' d' > d,		| %-Checked
      < e'-2 cis'-3 >( a,-0) < a,-1 cis'-4 >-.( a'-.-0) < b,-1 d'-4 > a'-0	< cis, e' > a' < d, fis' > a' < e g' > a		| %-Checked
      \mbreak

      % Page 3 - Line 7 - Measure 26
      \set doubleSlurs = ##t < d,-1 fis'-4 >( d-0) \set doubleSlurs = ##f < a''-3 fis'-4 >-.( d,,-.) < gis' eis' > d,	< a'' fis' > d,, < g' e' > d, < fis' d' > d,		| %-Checked
      < e' cis' >( a,-0) < a, cis' >-.( a'-.) < b, d' > a'	< cis, e' > a' < d, fis' > a' < e g' > a		| %-Checked
      \set doubleSlurs = ##t < d, fis' >( d-0) \set doubleSlurs = ##f < fis' a' > ^\markup{Sp.} d, < e' g' > d,	< d' fis'> d, < e' g' > d, < fis' a' > d,		| %-Checked
      g'-1( b'-4) d,,-2^\markup{M.}_\markup{III\super{a} IV\super{a}} b''-4 b,,-3 b''	g,,-2 b'' b,,-2 d''-4 gis,,,-1 d'''		| %-Checked
      \mbreak

      % Page 3 - Line 8 - Measure 30
      a,,-2 cis''-4 b,,-2 d''-4 cis,,-2 e''-4	d,,-2 fis''-4 b,,,-2 d''-4 g,,,!-2 b''-4		| %-Checked
      fis,,-2 a''-4 a,,-1_\markup{III\super{a}} fis''-4 d,,-1_\markup{IV\super{a}} fis''-4	e,,-2 g''-4 g,,-1_\markup{III\super{a}} e''-4 cis,,-1 e''-.(		| %-Checked
      d,,-.-0) < d''-3 fis-2 >^\markup{Fr.} d,, < cis''-3 e-1 > d,, < b''-4 d-2 >	d,, < a'' cis > d,, < g'-4 b-2 > d, < fis' a >		| %-Checked
      < b-4 d-2 >-.( g,,-.) < a'' cis > g,, < g''-4 b-2 > g,,	< fis'' a > a,,-1 < e''-4 g-2 > a,, < cis' e > a,		| %-Checked
      \mbreak

      % Page 3 - Line 9 - Measure 34
      d'-. cis,-4( d) cis'-.-1 d-.-1 cis'(	d g,-2) fis-. e-. d-. cis-.		| %-Checked
    }
    b-.\upbow b,( ais b-1) b''-3 b,,-1	ais''-2 b,, a''-2 b,, gis''-4 b,,		| %-Checked
    g''!-4 b,, f''-4 b,, e'-3 b,	dis'-2 b, d'-2 b, cis'-.-4( b,-.)		| %-Checked
    b'-.-4\downbow b'-3( ais b) b,,-1 b''-3	c,,-2 b''-3 cis,,-2 b'' d,,-0 b''		| %-Checked
    \mbreak

    % Page 3 - Line 10 - Measure 38
    dis,,-1 b'' e,,-1 b'' fis,-1 b'	a,-0 b' g,-2 b' fis,-.-1( b'-.)		| %-Checked
    e-.-4\upbow e,,-2_\markup{IV\super{a}}( dis e-1) e''-3 e,,-1	dis''-2 e,,-1 d''-2 e,, cis''-4 e,,		| %-Checked
    c''-4 e,, b''-4 e,, a'-3 e,	gis'-2 e, g'-2 e, fis'-.-4( e,-.)		| %-Checked
    e'-.-4\downbow e'-3( dis e-) e,,-1_\markup{IV\super{a}} e''-3	f,,-2 e''-3 fis,,-2 e''-3 g,,-0-2 e''-3		| %-Checked
    \mbreak

    % Page 4 - Line 1 - Measure 42
    gis,,-1_\markup{III\super{a}} e'' a,,-1 e'' b,-1 e'	d,-2-0 e' cis,!-2 e' b,-1-.( e'-.)		| %-Checked
    a,-.-3-0\upbow a,-2( gis a) a' a,	a' a, gis' a, g' a,		| %-Checked
    fis'-. d,( cis! d) d'' d,,-0	d'' e,,-1 d'' f,,-1 d'' fis,,-1		| %-Checked
    g'-.-4 g,-2( fis g) g' g,	g' g, fis' g, f' g,		| %-Checked
    \mbreak

    % Page 4 - Line 2 - Measure 46
    e'-. c,( b c) c'' c,,	c'' d,,-0 c'' ees,,-1 c'' e,,-1		| %-Checked
    e'!-.-4 f,-2( e f-1) c''-3 f,,	d''-4 f,, des''-4 f,, c''-4 f,,		| %-Checked
    b'-3 f, bes'-3 f, a'-2 f,	aes'-2 f, g'-4 f, e'-.-3( f,-.)		| %-Checked
    f'-.-4\downbow f,-2( e f-1) f-4 f-1^\markup{M.}	e!-4_\markup{\italic{smorzando}} f-1 ees f d f		| %-Checked
    \mbreak

    % Page 4 - Line 3 - Measure 50
    des f c f b,-2 f'	bes,-1 f' b,-2 f' c-3 e-1		| %-Checked
    cis!\p e d-3 f-1 ees-4 ges-2	e-3 g f aes fis-2 a-0		| %-Checked
    g bes gis-4 b a-3 c	bes des b-3 d c! ees		| %-Checked
    \mbreak

    % Page 4 - Line 4 - Measure 53
    cis!-2 e!-0 d-3 f ees-3 ges	e g f!-3 aes fis a		| %-Checked
    g-3 bes aes ces a-3 c	bes-4 des-2( bes-4)g-.-3 e!-.-1 c'-2(		| %-Checked
    a-4) ges-.-3 ees-.-1 d'!( gis,) f-.-3	d-. bes'( g) e-.-3 cis!-. a'(		| %-Checked
    \mbreak

    % Page 4 - Line 5 - Measure 56
    fis!) ees-.-3 c-. aes'( f) d-.-3	b!-. g'( e) des-.-3 bes-. ges'(		| %-Checked
    ees) c-. a-.-0 f'-3( d!-1) b!-.-4	gis-.-2 eis'-3( d-1) b-.-4 g-.-1 eis'-.-3		| %-Checked
    fis,-.-1 fis'-4( eis-3 fis) e,!-1 ais'-3	d,,-0 b''-3 cis,,-2 cis'' b,,-1 d''		| %-Checked
    \mbreak

    % Page 4 - Line 6 - Measure 59
    ais,,-1 e'''-0 b,,-1 d'' cis,,-2 cis''	d,,-0 b''-3 e,, b'' eis,,-.( b''-.)		| %-Checked
    ais-.-3\upbow fis,( eis fis-2) e''-4 ais,,-1 d'-3 b,-2 cis'-4 cis,-1 b' d,		| %-Checked
    ais'-3 e-4 b'-3 d,-2 cis' cis, d'-3 d,-2 e'-4 b,-2 eis'-.-4( b,-.)		| %-Checked
    ais-.-1\downbow fis''( eis fis) fis,,-2_\markup{IV\super{a}} fis''	g,,-.-2-0 fis''( eis fis) fis,,-2 fis''		| %-Checked
    \mbreak

    % Page 4 - Line 7 - Measure 63
    e,,!-. fis''( eis fis) eis,,-1 fis''	fis,,-. fis''( eis fis) e,, fis''		| %-Checked
    d,,-.-1 fis''( eis fis) d,, fis''	e,,!-1 g''-4 d,,-1 fis''-4 cis,, e''		| %-Checked
    b,, d'' cis,, e'' d,, fis''	cis,, e'' b,, d'' ais,, cis''		| %-Checked
    R2.^\fermataMarkup		| %-Checked
    b,16-. b'( ais b) a b	g b fis b e, b'		| %-Checked
    \mbreak

    % Page 4 - Line 8 - Measure 68
    d, b' cis, b' b, b'	ais, b' b, b' d, b'		| %-Checked
    cis,-. ais'-3( g-1 ais-3) fis-1 ais	e-0 ais d,-2 ais' cis,-2 ais'		| %-Checked
    b, ais' ais, ais' b, ais'	cis, ais' d,-2 ais'-3 e-4 ais-3		| %-Checked
    d,-.-2 b'-4( dis,-3 b'-4) e,-.-0 g-2(	cis,-3 a'-4) d,-.-3 fis( b, g')		| %-Checked
    \mbreak

    % Page 4 - Line 9 - Meausure 72
    cis,-.-3 e-0( ais,-1 fis'-2) b,-.-1 d(	g, b) d-. eis( g b)		| %-Checked
    fis,-2( ais-4) cis-.( fis-.) ais( g)	fis-.( ais-.-1) cis( b) ais-.( cis-.-1)		| %-Checked
    e( d) cis-.( g'-.-4) fis-4( e)	d-.( cis-.) b-2( ais) g-.( fis-.)		| %-Checked
    b-.( cis-.-1 d-.) b-4( cis-1) ais-4(	 c-1) a-4( b-1) gis^\markup{\italic{segue}}( bes) g(		| %-Checked
    \mbreak

    % Page 4 - Line 10 - Measure 76
    a) fis( gis) eis( g) e(	fis) dis( f) d-3( e-0) cis(		| %-Checked
    d-1 eis-3) g-.-4( eis-.-3 fis!-.-4 b,-.-1^\markup{III\super{a}}) \appoggiatura d( cis4.\trill)		| %-Checked
    b16-.( cis-. d-2-.) b-4( cis-1) ais-4(	c-1) a( b_\markup{\italic{segue}}) gis( bes) g(		| %-Checked
    a) fis( aes) f( g) e(	fis) dis( f) d( e) cis-1(		| %-Checked
    \mbreak

    % Page 4 - Line 11 - Measure 80
    d-2 eis-3) g-.-4( eis-. fis!-.-4 b,-.-1)	\appoggiatura d( cis4.\trill)		| %-Checked
    b16-.-1 b'( ais b) fis-. fis'-.	b,-.-1_\markup{III\super{a}} b'( ais b) fis-.-1 fis'-.		| %-Checked
    b,-.-1 b'( ais b) fis,-.-1 fis'-.	b,,-.-1^\markup{III\super{a}} b'( ais b) fis,-.-1 fis'-.-4		| %-Checked
    b,,-.-1 b''( ais b) d,-. b'-.	b,-.-4 b' fis,-. b' d,,-.-0 b''		| %-Checked
    < b,, fis' d' b' >4. r4 r8\fermata		| %-Checked

  }
}

