\version "2.18.2"

capriceThree = {

  \set Staff.midiInstrument = "violin"

  \key g \major
  \time 4/4

  \relative c'
  {
    % Page 5 - Line 1 - Measure 1
    % the dots after the 'IIIa e IVa' should continue through measure 9
    < e-1 e'-3 >2\f^\markup{III\super{a} e IV\super{a}.............}^\markup{Sostenuto} < fis-1 fis'-3 >4 < g-1 g'-3 >		|
    < b,-1 b'-3 >2.\trill r4		|
    < g'-1 g'-3 >2 < a-1 a'-3 >4 < b-1 b'-3 >		|
    < d,-1 d'-3 >2.\trill r4		|
    \dimHairpin
    < c'-1 c'-3 >4( < b b' >16 < a a' >-> < g g' > < fis fis' >->	< e e' > < dis dis' >-> < c c' > < b b' >-> < a a' >8) < c'-1 c'-3 >		|
    < b b' >4( < a a' >16 < g g' >-> < fis fis' > < e e' >->	< d d' > < c c' >-> < b b' > < a a' >-> < g g' >8) < b' b' >		|
    \mbreak

    % Page 5 - Line 2 - Measure 7
    < a a' >4( < g g' >16 < fis fis' >-> < e e' > < dis dis' >->)	< g g' >4( < fis fis' >16 < e e' >-> < c c' > < ais ais' >->)		|
    \set doubleSlurs = ##t
    \appoggiatura < ais ais' >( < b b' >2.\trill) r4		|
    \set doubleSlurs = ##f
    < e'-1 e'-3 >2 < fis fis' >4 < g g' >		|
    < b, b' >2.\trill r4		|
    < g' g' >2 < a a' >4 < b b' >		|
    < d, d' >2.\trill r4		|
    < dis dis' >2( < c' c' >)		|
    < b b' >4 < e, e' >4. < fis-2 fis'-4 >16( < e-1 e'-3 >	\tuplet 5/4 {< fis-2 fis'-4 > < g-1 g'-3 > < a-2 a'-4 > < b-1 b'-3 > < c-2 c'-4 >) }		|
    \appoggiatura < c c' >\downbow( < e, e' >2 \appoggiatura < g g'-3 >16) < fis fis'-3 >2\trill
    \mbreak

    % Page 5 - Line 3 - Measure 16
    % dots continue to half-way through measure 20
    < e e' >2 r4 < gis,, gis' >4_\markup{III\super{a} e IV\super{a}...}		|
    < a a' >16( < b b' > < c c' > < d d' >	< e e' > < fis! fis'! > < gis gis' > < a a' >)	\set doubleSlurs = ##t < b b' >2\trill(		|
    < c c' >4) < a, a' >->(\( \tuplet 3/2 { < a a' >8) \set doubleSlurs = ##f < c' c' >\) < b b' >( }	\tuplet 3/2 { < c c' > < a a' > < f f' >) }		|
    \set doubleSlurs = ##t < e e' >2( \appoggiatura < g g'-3 >16) < fis! fis'! >2\trill		|
    < e e' > < c'-1 c'-3 >\trill_\markup{I\super{a}}_\markup{II\super{a}}		|
    <  a-0 a'-2 >\trill\p < b-1 b'-3 >\trill		|
    < e-0 e-3 >\trill < c, c' >\trill\pp		|
    < a a' >\trill < b b' >\trill		|
    < e-1 e >2.\trill\fermata r4		|
    \key e \major
    \time 3/8
    \mbreak

    % Page 5 - Line 4 - Measure 25
    \repeat volta 2
    {
      \set doubleSlurs = ##f
      e16-4\downbow^\markup{Presto.}( gis-3 b e-0 gis e	|
      ais,-1 b-1 ais' b fisis a				|
      gis dis fis! e bis dis					|
      cis gis b! a eis-2 fis)					|
      dis-1( fis-3 c-4 b dis-1 fis				|
      a-0 c-2 b dis fis gis					|
      b a eis-1 fis-1 dis-4 c					|
      \mbreak

      % Page 5 - Line 5 - Measure 32
      ais-1 cis!-3 b-2 gis-4 dis-1 e-1)			|
      gis'( fis dis cis bis a'				|
      fisis gis dis e bis cis					|
      fis! e cis-3 b!-2 ais-4 gis'-3				|
      eis-1 fis-2 cisis-3 dis-4 ais-1 b-2)			|
      gis'-3_\markup{II\super{a}}( e!-1 b' gis fis) dis,-.	|
      e'-3( cis gis' e dis) b,-.				|
      \mbreak

      % Page 5 - Line 6 - Measure 39
      e->( b'-4 gis fis eis-> cis'		|
      ais-4 gis fis-1-> dis' b ais)		|
      gis->( e' cis b ais-> fis'		|
      dis-3 cis b-1-> b' ais a)		|
      fis( g b g d b				|
      g b fis b eis,-2) b''(			|
      fis-2 dis-4 fis,-3 dis-1 e-2 cis-4	|
      b-3) b''( ais b gisis-3 ais		|
      \mbreak

      % Page 5 - Line 7 - Measure 47
      fisis-2 gis! eis fis!-1 dis e		|
      cisis-3 dis bis-2 cis ais b-1		|
      fisis-3 gis fis-3 dis-1 e-2 cis		|
      b8) b'\downbow r8			|
    }


    % Page 5 - Line 7 - Measure 51 (Line Continued)
    b,16( dis-4 fis b dis b		|
    fis'-4 dis b' fis dis b)	|
    b,( d fis b d b			|
    \mbreak

    % Page 5 - Line 8 - Measure 54
    fis'-3 d b'-4_\markup{II\super{a}} fis-1 d b)	|
    c( d' b,-2 d' a,-1 d' 				|
    g,, d'' fis,, d'' e,, d''			|
    d,,-0 e d b c a					|
    g) d'''->( cis d b g				|
    e c'-> b c a fis				|
    dis!-2 b'-> ais b g e-0				|
    \mbreak

    % Page 5 - Line 9 - Measure 61
    cis-2 a'-> gis! a f d		|
    b g'-> fis! g f d)		|
    c( e b e a, e'			|
    g, e' f, e' e, e')		|
    a,( c g c f, c'			|
    e, c' d,-0 c'-4 c,! c'		|
    f,-.-1) f'!->( e f c a		|
    \mbreak

    % Page 5 - Line 10 - Measure 68
    fis! ees'-> d ees c a-0		|
    g-1 g'!-> fis g d b		|
    gis! f'-> e f d b)		|
    a-0( e'-3 cis! a-0 f' d		|
    a-0 g'-3 e a,-0 a' f)		|
    g,-1( d'-4 b g e' c		|
    g f' d g, g' ees)		|
    \mbreak

    % Page 6 - Line 1 - 75
    f,-1\upbow( c'-4 a f d' bes	|
    f ees' d a ees c)		|
    bes-1\downbow( d f bes d bes	|
    e,!-1 f-1 e' f! cis! ees	|
    d a-0 c-2 bes fis! a		|
    g d f ees c bes			|
    a-1) c( ees ges f a-0		|
    \mbreak

    % Page 6 - Line 2 - Measure 82
    c ees-2 ges f a c			|
    ees c a f ges ees			|
    cis!-1 ees d) a-0\downbow( c-2 bes	|
    fis! a g b! d c				|
    gis!-4 bes a cis! ees d			|
    a-0 c bes aes' f d)			|
    bes'-1\upbow( g ees bes g ees)		|
    \mbreak

    % Page 6 - Line 3 - Measure 89
    bes''( ges ees bes ges ees)	|
    b''( fis! dis! b! fis! dis!	|
    b b'-4 ais-3 b a fis)		|
    e-4( gis-3 b-1 e-0 gis e	|
    ais, b ais' b fisis a		|
    gis dis fis! e bis-2 dis-4	|
    cis-3 ais-1 g-4 e-2 c-4 b	|
    \mbreak

    % Page 6 - Line 4 - Measure 96
    ais)( cis\upbow e-2 g-4 ais-1 cis-3	|
    e-2 g ais cis ais e'-3			|
    cis g' e cis-1 ais-1 cis		|
    b) e-4( dis e cisis-3 dis		|
    bis cis! ais b-1 gis a)			|
    fisis-2( gis eis fis-1 dis e^\markup{III\super{a}}	|
    ais,-1 cis-2 b gis a^\markup{IV\super{a}} fis)		|
    \key g \major
    \time 4/4
    \mbreak

    % Page 6 - Line 5 - Measure 103
    < e-1 e'-3 >2\f^\markup{III\super{a} e IV\super{a}.............}^\markup{Sostenuto} < fis-1 fis'-3 >4 < g-1 g'-3 >		|
    < b,-1 b'-3 >2.\trill r4		|
    < fis'-1 fis'-3 >2 < a a' >4 < g g' >	|
    < e e' >2.\trill r4		|
    < e'-1 e'-3 >2 < fis fis' >4 < g g' >	|
    < a a' >\upbow < a,-4 a'-2 >_\markup{IV\super{a}} \tuplet 6/4 { < c'-1 c'-3 >8( < b b' > < d d' > < c c' > < a a' > < f f' >) }	|
    < e e' >2\f < b b' >\trill		|
    \grace e2.\trill e\trill r4				|
    < b-1 b'-3 >2\p\trill^\markup{III\super{a}} < b,-1 b'-3 >\trill^\markup{IV\super{a}.....}	|
    \grace e2.\trill e-1\trill r4\fermata	|


  }
}

