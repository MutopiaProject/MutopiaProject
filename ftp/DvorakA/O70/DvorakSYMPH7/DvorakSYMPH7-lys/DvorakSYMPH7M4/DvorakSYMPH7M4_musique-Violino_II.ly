%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement IV - Finale allegro                       *
  * Fichier de notes, Violons II                                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMdViolioII =
\relative c' {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 1 2)
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoIV

  R1
  gis1 \fz \> ( ~
  gis2 \! a \>
  bes2 \dim a \! )
  <<{R1 * 4}{s4 * 0 \!}>>
  d2-- \pp ( e-- )
  cis2.-- ( a4 )
  a2-- ( a-- )
  bes-- ( a-- )
  e'-- ( f-- \<
  <<{e2.-- d4-- )}{s8 \bindDynamics s  \> s4 s s8 s \!}>>
  cis2-- ( d--
  bes-- a-- )

  \TempoIVPPCresc

  cis8-. \bracketedPP e-. e ( cis ) d-. f-. f ( d )
  e-. \fz bes'-.  bes \> ( g ) g-. e-. \! e ( cis )
  cis-. e-. e ( cis ) d-. f-. f ( d )
  e-. \fz cis'-. \> cis ( bes ) bes-. g-. \! g ( e )
  cis-. \< e-. e ( cis ) d-. f-. f ( d ) \!
  <gis b>4-. \f r r \times 2/3 {a,8 ( d e}
  f4 ) r r2
  R1 * 7
  aes2 \pp ( g
  f ees )
  d1 (
  ces2 bes )

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #4.5

  bes2:16 \pp \< a:

  \tag #'partScore {
    gis2: \f -\tweak #'minimum-length #6 \> gis: \p
    <<{bes2: a4: gis:}{s4 s \< s s \!}>>
    gis2: \f -\tweak #'minimum-length #6 \> gis: \p
  }
  \elseTag #'partScore {
     gis2: \f \> gis: \p
    <<{bes2: a4: gis:}{s4 s \< s s \!}>>
    gis2: \f \> gis: \p
  }

  <<{a2: gis:}{s4 \p \< s s s \!}>>
  <<{aes2: aes:}{s4 \f \> s4 s \p}>>
  <<{d2: f:}{s4 \< s s s8 s \!}>>

  \tag #'partScore
    \dynamicLineSpannerStandard

  <a, f'>8 r
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \times 2/3 {\once \override Hairpin #'rotation = #'(8 -1.3 0) a8 \f \< d f a [d f]} a8[ r16 \! a]

  \mark \default

  gis2.-> \ff f4
  d ( e ) f ( d8 a )
  a'2.-> ( bes4 )
  f ( bes, ) a-. e'-.
  \leftDynamic d2-. _\Marcato <g, ees'>-.
  <e! cis'>-. r
  <f d'>-. <e d' e>-.
  <e cis' e> r
  <cis' e>-. <c g'>-.
  <c fis>-. r
  <c a'>-. <e! c'>-.
  <dis b'>-. r
  <fis a>-. <g a>-.
  <a cis>-.r
  <g a>-. <fis cis'>-.
  <cis a'>1:32 \ff
  q2: a'8:16 fis: g: e:
  d: cis: e: g,: a: bes!: e,: fis:
  g: cis: d: e: g,: a: bes: e,:
  fis: g: cis,: d: e: g,: a: bes!:
  gis4-. \ff a-. r bes-.
  r gis8-. gis-. bes4-. a-.

  \tag #'partScore
    \noBreak

  \TempoIVRit

  R1

  \mark \default

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #1.5

  \TempoIVIT

  r4 f'8-. \ff f-. d4-> ( e )
  f8-. ( f-. g4 -> ) a-> ( e )
  c8-. ( c-. c4-. ) a ( d )
  cis-. d-. <cis e>2->
  R1
  r4 \times 2/3 {\once \override Hairpin #'rotation = #'(7 -1.3 0) a8 \f \< ( cis e a cis e} a8-. ) \! [r16 a-.]
  r4 \times 2/3 {a8 \ff ( bes a )} d,4-> e8-. ( e-. )
  f-. ( f-. g4-> ) a c8 ( bes )
  a-. ( a-. ) g4-> f-. g-.
  e-. f-. g2->
  R1

  \override DynamicLineSpanner #'staff-padding = #0

  r4 \times 2/3 {
    \rightDynamic c,,8 ( \f
    \bracketedHairpin e \< g c e g
  } c8-. \! ) [r16 c-.]

  \dynamicLineSpannerStandard
  f,,2-> \ff f'->
  ees8 r \times 2/3 {a,,8 ( c ees fis [a c]} ees8.-> ) ees16-.
  c4-. r a-. r
  r2 \afterGrace fis'2-> \fz \startTrillSpan {e!16 \stopTrillSpan [fis]}
  g2-> \ff g'->
  f2. \fz ( d4 )
  b ( c d ) b8-> d,-.
  f-> b, d-> f, e-> b' e d
  a4 \f ( bes! b c! \dim )
  cis4. ( d16 e f4-. ) \p d-.

  \mark \default

  a'4 \p ( g2 f4 ) \dim ~
  f e2 ( d4 ) \!
  <a, a'>2:16 \f q:
  <<{q: <bes a'>:}{s4 s \<}>>
  <<{<bes g'>2: <b f'>:}{s4 s \!}>>

  \tag #'partScore {
    <a fis'>8 \ff r \times 2/3 {fis''4.:8} c8 r \times 2/3 {dis4.:8}
    a8 r \times 2/3 {c4.:8} fis,8 r \times 2/3 {b4.:8}
  }
  \elseTag #'partScore {
    <a, fis'>8 \ff r \times 2/3 {fis''8 fis fis} c8 r \times 2/3 {dis8 dis dis}
    a8 r \times 2/3 {c8 c c} fis,8 r \times 2/3 {b8 b b}
  }

  <b, gis'>8 r b'-. \f c-. d!4-> e8-. d-.
  c2-. a-. \dim
  gis4 f'!8 \mf e d b \> gis e \!
  f2-.-> \p \> dis-.-> \!
  e4 ( f!-> dis \dim e )
  f-. ( dis e f-> )
  dis1 \pp (
  e4 ) r r2

  \bar "||"

  \mark \default

  \key a \major
  e8 \pp ( a cis ) r fis, ( b d ) r
  e, ( a cis )r d, ( e gis ) r
  a ( cis fis ) r e ( e, a ) r e ( b' d ) r e, ( b' d ) r
  cis4 r r2
  R1 * 3

  \tag #'partScore
    \pageTurn

  \acciaccatura cis,8 fis2 \pp \acciaccatura cis8 gis'2
  \acciaccatura cis,8 fis2 \acciaccatura cis8 gis'2
  \acciaccatura cis,8 ais'2 \acciaccatura cis,8 gis'2
  \acciaccatura cis,8 fis2 \acciaccatura cis8 gis'2
  r8 a! ( gis fis ) r g ( fis e )
  r4 \times 2/3 {fis8 ( a fis)} r4 \times 2/3 {e8 ( g e)}
  r4 \times 2/3 {fis8 ( a fis)} r4 \times 2/3 {cis8 ( g' cis,)}
  r4 \times 2/3 {fis8 ( a fis)} r4 \times 2/3 {e8 ( g e)}
  fis8 r fis'4 \f g ( fis8 e )
  bes2-> r
  g'4 \f ( fis8 e ) g,4 ( fis8 e )
  b2 g''4 ( f8 e )
  <<{a4-> f8-.  c-. a'4-> e8-. a,-.}{s8 s \< s4 s s8 s \!}>>
  <<{a'4-> d,8-. a-. a'4-> dis,8-. a-.}{s8 s \< s4 s s8 s \!}>>

  \mark \default

  cis!8 \f (a e) e'-. b (gis e) e'-.
  cis (a e) e'-. d (b e,) e'-.
  cis (a e) e'-. d (gis, e) e'-.
  cis (a e) e'-. b (gis e) e'-.
  cis (a e) e'-. d (b e,) e'-.
  cis (a e) e'-. d (a fis) fis'-.
  cis (a e) e'-. fis4. ( gis,8-. )
  a2 a,4. \ffz ( cis8-. )
  e4. \fz ( a8-.) cis4. \fz ( e8-. )
  fis4 r a,8:16 \ff c: e: fis:
  f: e: d: cis!: b: a: gis: d':
  <a, e' cis'>4 \arpeggio r a4. \fz ( cis8-. )

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #1.8

  e4. \fz ( a8-. ) cis4. \fz ( e8-. )
  f2 \bracketedFz b,8: \ff c: e: f:
  f: e: d: c: b: a: g: g':
  e4 \fz r e4. \fz e8
  e4. \fz e8 g4. \fz f8
  e4. \fz c8 b4. \fz d8
  c4. \fz a8 gis!4. \fz b8
  a4. \fz c8 e4. \fz e8
  e4. \fz e8a4. \fz f8
  e4. \fz c8 f4. \fz d8
  c4. \fz a8 gis!4. \fz b8

  \bar "||"

  \mark \default

  \key a \minor
  a4.-> \ff c,8-. a4.-> c8-.

  \tag #'partScore
    \dynamicLineSpannerStandard

  a4.-> c8-. a4.-> c8-.
  a1-> \fz \> ~
  <<{a}{s2 s4 s8 s \!}>>
  a4.-> \ff cis8-. a4.-> \> cis8-.
  a4.-> cis8-. a4.-> cis8-.\!
  a1-> \p \> ~
  <<{a}{s2 s4 s8 s \!}>>
  a4 \pp r r2
  R1 * 7
  r2 gis4 \pp r
  R1

  \TempoIVPRit

  gis1 \ppp ~
  gis
  ~gis
  ~gis (

  \mark \default

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #1.5

  \TempoIVIT

  a4 ) r e' \Pizz r
  dis r c r
  a4 r r2
  R1 * 2
  r4 b'! \pp \Arco ( c! a!8 ees )
  ges1 ( ~
  ges2 g4 a )

  \tag #'partScore {
    bes4-. r f'-. \RndPizz r
  }
  \elseTag #'partScore {
    bes,4-. r f'-. -\footnote \markup {"(20)"} #'(1 . 0) \markup {\null} \RndPizz r
  }

  e-. r r des-.
  bes-. r r2
  R1 * 2

  \tag #'partScore {
    r4 bis \pp ( \RndArco cis ais8 e
  }
  \elseTag #'partScore {
    r4 bis' \pp ( -\footnote \markup {"(22)"} #'(1 . 0) \markup {\italic "22 - See editorial remarks"}
    \RndArco cis ais8 e
  }

  g!1 ~
  g2 gis4 ais
  b16 ) fis fis fis fis2.:16
  g!1:
  fis:
  g:
  e2: e:
  b: \pp cis:
  ais1

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.5

  <<{
    b2 ( cis
    ais2. b4 )
    c!2 ( d
    b1 )
    c2 ( d
    b2. c4 )
    cis2 ( dis
    bis2. cis4 )
    }
    {
      s4 s s \< s8 s \!
      s4 \> s s \! s
      s4 \< s s \! s8 s \>
      s4 s s \! s4
      s4 \< s s s8 s \!
      s4 \> s s s \!
      s4 \< s s s8 s \!
      s4 \> s s s \!
  }>>
  d!2 ( ees \cresc
  cis2. \< d4 ) \!
  dis4 ( e! cisis \<  dis )

  \tag #'partScore
    \dynamicLineSpannerStandard

  e ( fis \! dis e )
  fis4 \mf r a \cresc r
  c r dis r \!
  a' \f r r2
  R1

  \mark \default

  <g, b>4-> \ff b8-. ( b-. ) e,4-> fis8-. ( fis-. )
  g-. ( g-. ) a4-> b d8 ( c )
  b1 \fz ~
  b
  e,4-. r r2
  R1
  e'4-> fis-> g2->
  b4.-> b16 ( cis dis4-. ) b-.
  e,-. b'8-. \ff b-. e,4-> g8-. g-.
  b,4.-> ( cis16 dis e4-.) b-.
  g'4.-> ( a16 ais b4-. ) g-.
  dis8 e g e ais, b e b
  r4 b'8-. b-. d,4-> f!8-. f-.
  b,4.^^ ( c16 cis d4-. ) b-.
  d4.^^ ( dis16 e f!4-. ) d-.
  b8 c d b f e d e
  e4 \ff \< ( f ) fis ( g ) \!
  gis4. \fz ( a16 b c4-. ) a-.

  \mark \default

  c2-> d->
  b-> a->
  b4. \fz ( c16 d e4-. ) d-.
  c4. \fz ( d16 e f4-. ) e-.
  d4. \fz ( e16 f g4-. ) f-.
  e4. \fz ( f16 g a4-. ) g-.
  gis4.-> (a16 b c4-. ) a-.
  gis2-> ( a )
  aes1 \fz
  aes, \fz
  fis'4. \fz ( g!16 a! bes4-. ) g-.
  fis2 \fz (g )
  fis1 \fz
  fis, \fz
  cis'4. \ff ( dis16 eis fis4-. ) dis-.
  eis-. cis-. dis-. bis-.
  cis eis8 eis a,!4-> fis'8-. fis-.
  cis4-> \dim gis8 gis gis4-> fis8 fis
  eis4 cis8 \dim cis8 cis4 bis8 bis
  cis4 b!8 \> b a4 gis8 gis \!
  gis4 \p ( a gis2 \dim )
  a4 \> ( gis2 a4 ) \!
  gis2 \pp ( a )
  bis \> ( cis \! ~

  \mark \default

  cis4 ) r r2
  R1
  r4 cis-. \ppp fis-. cis'-.
  fis-. a-. fis-. d-.
  a-. cis-. fis,-. cis-.
  R1
  r2 r4 r8 a'8 \pp
  fis4-. r r2
  R1 * 2
  r4 d-. \ppp g-. d'-.
  g-. bes-. g-. ees-.
  bes-. d-. g,-. d-.
  R1
  r2 r4 r8 bes' \pp
  g4-. r r2
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \times 4/6 {
    ces,2.:8 \pp ces':
    \tupletOff
    ces: ces,:
    ces2.: ces':
    ces: ces,:
    ces2.: ces':
    ces: ces,:
    ces2.: ces':
  }

  % insérer ici un crescendo sur 4 mesures
  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \PocoCrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  \times 2/3 {b!: \< b,!:} \times 2/3 {b: d':}

  \tag #'partScore
    \noBreak  % Pour ne pas couper le spanner

  \times 2/3 {d: d,:} d4
  \tupletOn
  \times 2/3 {f'8 f f}
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  f8 r \times 2/3 {d8 d d \!}
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  d8 \< r \times 2/3 {f8 f f} f8 r \times 2/3 {d8 d d}
  d8 r \times 2/3 {f8 f f} f8 r \times 2/3 {d8 d d \!}
  f8 \f r \times 2/3 {f8 f f} f8 r \times 2/3 {gis8 gis gis \!}

  \bar "||"

  \mark \default

  \key d \minor
  a8 \ff r \times 2/3 {a,,8 ( d f a [d f]} a8. ) a16-.
  f8:16 e: e: d: f: e: e: d:
  a': \< g: g: f: a: g: g: f: \!
  f: g: g: a: f: e: e: d:
  d: c: c: bes: g': f: f: e:
  f: e: e: d: ees: bes: a: g:
  cis,: \< e!: g: a: bes: a: cis: e?: \!
  a, \ff d d a bes d d bes
  g cis cis g bes g f a
  e g g e f a a f
  d f f d cis e a cis
  bes des des bes c! f f c
  bes des des bes des bes a c
  g bes bes g a d! d a
  f a a f e g g e
  cis' e e cis d f f d
  e \< bes' bes g \!
  g \> e e cis \!
  cis e e cis d f f d
  g \< cis cis bes \! bes \> g g e \!
  cis \< e e cis d f f d \!

  \mark \default

  <d, f' d'>4 \arpeggio \ff r r \times 2/3 {a8 d e}
  f4 r r2
  R1 * 9
  r4 \times 2/3 {a,8 \pp ( d f} a4 ) r
  r \times 2/3 {a,8 ( d f a d f} a8. ) [a16-.]
  r2 r4 \times 2/3 {cis,8 ( e g}
  bes4 ) r r2

  \bar "||"

  \key d \major
  a,8 \pp ( d fis ) r b, ( e g ) r
  a, ( \< d fis ) r g, ( a cis )  r \!
  d ( fis b ) r a ( a, d ) r
  a ( e' \> g ) r a, ( e' g )  r \!
  a,, \p ( d fis ) r b, ( e g ) r
  a, \< ( d fis ) r a, ( cis g' ) r \!
  d ( fis b ) r a ( a, d ) r
  fis ( \> cis e ) r e ( ais, cis ) \! r

  \TempoIVTran

  b2 \p ( cis
  b cis )
  b \pp ( cis
  b cis )
  d8 d' \< ( cis b ) r c ( b a ) \!
  g r \mf \times 2/3 {b8 ( d b )} r4 \times 2/3 {a8 ( c a )}
  r4 \times 2/3 {b8 ( d b )} r4 \times 2/3 {fis8 ( c' fis, )}
  r4 \times 2/3 {b8 ( d b )} r4 \times 2/3 {a8 ( c a}
  b8 ) r b'4 \f \< ( c b8 a ) \!
  ees2 r
  c'4 \ff ( b8 a ) c,4 ( b8 a )
  e2-> c''4 \fz ( bes8 a )
  d4 \< ( bes8 f ) d'4 ( a8 d, )
  d'4 ( g,8 d ) d'4 ( gis,8 d ) \!

  \mark \default

  a'2 \ff cis4 ( b8 a )
  a2 b4 ( a8 g )
  fis2 a4 ( g )
  fis ( a ) \< cis ( b8 a \! )
  a2 b4 ( a8 g )
  fis4 ( d' ) b ( g )
  fis ( d ) b'4. cis,8
  d2 d,4. \fz -> fis8
  % 2 lignes de nuances dynamiques
  \polyNeutral {
    \once \override DynamicText #'Y-offset = #-1.5
    \once \override Hairpin #'Y-offset = #-1.5
    a4. \fz \< d8 fis4. a8 \!
  }
  {
    s2 \once \override DynamicText #'extra-offset = #'(0 . 3.5) s2 \fz
  }
  \once \override DynamicText #'Y-offset = #-1.7
  b2 \fz d,8:16 f: a: b:
  bes: a: g: fis!: e: d: cis: g':
  <d, a' fis'>4 \arpeggio r d4. \fz fis8
  a4. \fz d8 fis4. \fz a8
  bes2 \fz e,8: \< f: a: bes: \!
  bes: a: g: f: e: d: c: bes':
  a4 r a4. \fz a8
  a4. \fz a8 c4. \fz bes8
  a4. \fz f8 e4. \fz g8
  f4. \fz d8 cis!4. \fz e8
  d4. \fz f8 a4. \fz a8
  a4. \fz a8 d4. \fz bes8
  a4. \fz f8 bes4. \fz g8
  f4. \fz d8 cis4. \fz e8

  \bar "||"

  \mark \default

  \key d \minor
  d4. \ff f,8 d4.-> f8
  d4.-> f8 d4.-> f8
  d1 ^^ \ffz ~
  <<{d}{s4 \> s s s8 s \!}>>
  d4.-> \ff fis8 d4.-> fis8
  d4.-> fis8 d4.-> fis8
  d1 ^^ \ffz ~
  <<{d}{s4 \> s s s8 s \!}>>
  \once \override Voice.TextScript #'extra-offset = #'(3.4 . 4.0 )
  d8 \ff \< _\markup {\italic "legato"} ( f! a cis d f a cis )
  d ( cis b gis \! eis \> d b eis, ) \!
  fis: \< a: c!: d: ees: fis: a: c?: \!
  ees: d: c: a: fis: \> ees: c: a: \!
  fis \< ( a cis d fis a cis d ) \!
  \once \override Hairpin #'rotation = #'(-8 1.3 0 ) fis ( \> d cis a fis d a fis ) \!
  g: bes!: d: fis: g: bes: d: fis:
  g: d: bes: a: g: d: bes: g:
  aes': f!: d: aes: f: d: aes: f':
  gis': d: b: gis: d: b: gis: d'':

  \mark \default

  <d, a' f'>4 \arpeggio \ff r r cis8 cis
  d d e4-> f-> g->
  f a2-> a4
  a8 f' e d cis d c a
  b g c bes a f' e d
  cis e f g f4-> e->
  <ees ees'>2 \ff r
  q \ff r
  q4 r r8 bes ( g' ) g-.
  r bes, ( f' ) f-. r bes, ( ees ) ees-.
  r f, \dim ( d' ) d-. r ees, ( g ) g-.
  r d ( f ) f-. r d \pp ( f ) f-.
  r d ( f ) f-. r e ( g ) g-.
  d4 \ff ( e f g )
  a4. \< ( bes!16 b c!4 cis ) \!
  <d, d'>1^^ \ff ~
  q
  q ~
  q
  q4 d'8 d g,4-> a8 a
  bes4 c8 c d4 e8 e
  fis4 \ff \< ( g ) gis ( a ) \!
  bes4. ( b16 c d4-. ) a-.
  bes!4. ( b16 c d4-. ) a-.
  bes!4. ( gis16 a bes4-. ) g-.
  bes-. g-. ees-. bes-.
  g-. ees-. bes'-. bes-.
  g-. r r2

  \mark \default

  e'!4^^ ees^^ r2
  <c a'>4 r <d gis> r
  <e, cis' a'>-^ a-^ r2

  \TempoIVPAn

  d,8 \ff ( a' f' d' d f, a, d, )
  d ( bes' f' d' d f, bes, d, )
  d ( a' f' d' d f, a, d, )
  d ( bes' f' d' d f, bes, d, )
  <d d'>2 \ff bes''
  a2. f4
  d ( e ) f ( d8 a )
  cis4-> d gis-> a
  e-> f cis-> d
  a-> cis d-> a
  cis-> d a-> cis
  d-> cis f-> e
  f-> e f-> e
  f-> cis' d-> e
  f-> e f-> e

  \TempoIVMMaes

  f r \acciaccatura { \slurUp d,8 \slurDown } d'4 \ff ( cis )
  c!2.-> a4
  g2.-> a4->
  bes2-> g4-> d->
  \acciaccatura d,8 <a' fis'>1-^
  \acciaccatura d,8 <d' g>1-^
  \acciaccatura d,8 <a' fis'>1 \fz
  \acciaccatura d,8 <a' fis'>1 \fz
  \acciaccatura d,8 <a' fis'>1 \fz

  \tag #'partScore {
    <d, a' fis'>4 \ffz r r2
  }
  \elseTag #'partScore {
    <d a' fis'>4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  }

  \bar "|."
}

voiceSgMdViolinoII = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 "Violini II"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "2.Viol."
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef treble
  \SgMdViolioII
}

quoteScoreSgMdViolinoII = SgMdViolinoII
