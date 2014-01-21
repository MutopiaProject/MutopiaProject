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
  * Fichier de notes, Alto                                              *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMdViola =
\relative c {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 1 2)
  \tag #'partScore 
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoIV

  R1

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3

  <d f>1 \fz \> ~
  <<{q}{s4 s s s8 s \!}>>
  <e g>2 \dim ( <f a>
  <e g>4 \> <d f> <<{<cis e>2 )}{s4 s8 s \!}>>
  d2 \p ( ees )
  cis1 \> ~
  <<{cis}{s4 s s s8 s \!}>>
  <f a>2-- ( \pp <g a>-- )

  \tag #'partScore
    \dynamicLineSpannerStandard

  <g a>2. f4--
  <e! g>2-- ( <f a>-- )
  <d f>-- ( <cis e>-- )
  <e g>-- <f a>-- \<
  <<{<e g>2.-- <d f>4--}{s8 \! \bindDynamics s  \> s4 s s8 s \!}>>
  <cis e>2 <d f> ~
  q <cis e>

  \TempoIVPPCresc

  q-. \bracketedPP <d f>-.

  \tag #'partScore
    \noBreak  % Pour ne pas couper le spanner

  \tag #'partScore {
    \override DynamicLineSpanner #'staff-padding = #3
    <<{<e g>1}{s8 \fz \bindDynamics s s \> s s s s s \!}>>
    <cis e>2-. <d f>-.
    <<{<g bes>1}{s8 \fz \bindDynamics s \> s s s s s s \!}>>
    << {<cis, e>2-. <d f>-.}{s4 \< s s s8 s \!}>>
  }
  \elseTag #'partScore {
    <<{<e g>1}{s8 \fz \bindDynamics s s \> s s s \!}>>
    <cis e>2-. <d f>-.
    <<{<g bes>1}{s8 \fz \bindDynamics s \> s s s s \!}>>
    << {<cis, e>2-. <d f>-.}{s4 \< s s s8 s \!}>>
  }
  <b' d>4-. \f r r2

  \tag #'partScore
    \dynamicLineSpannerStandard

  r2 r4 \times 2/3 {a8 \f ( d f}
  a4 ) r r2
  R1 * 6
  f2 \pp ( ees
  <aes, d> <g ees'> )
  aes1 (
  d,2 ees )
  f2:16 \pp \< f:
  \rightDynamic f2: \f \> f: \p
  <<{f2: f:}{s4 s \< s s \!}>>
  \rightDynamic f2: \f \> f: \p
  <<{f2: f:}{s4 \p \< s s s \!}>>
  \rightDynamic f2: \f \> f: \p
  <<{gis2: b:}{s4 \< s s s8 s \!}>>
  <a d>8 r \times 2/3 {\once \override Hairpin #'rotation = #'(3 0 0) a8 \f \< d, f a d f} a8 \! [r16 a]

  \mark \default

  <a, f' a>2:16 \ff q:
  <d f gis>2: <d f a>:
  f'2.-> \fz f4-.
  d2 e4-. a,-.
  \leftDynamic <d, a'>2-. _\Marcato <bes g'>-.
  <a e'>-. r
  <a f'>-. <g d'>-.
  <e cis'>-. r
  <a a'>-. <g' ees'>-.
  <fis d'>-. r
  <e! c'!>-. <e a>-.
  <fis a>-. r
  q-. <g a>-.
  <fis a>-. r
  <g a>-. <fis a>-.
  q1:32 \ff
  <g a>2: <a, g'>:16
  q1:
  q8 cis: [d: e:] g,: [a: bes: e,:]
  fis: [g: cis,: d:] e: [g: a: bes!:]
  gis4-. \ff a-. r bes-.
  r gis8-. gis-. bes4-. a4-.

  \TempoIVRit

  r g!4-^ e-^ a-^

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #1
  \TempoIVIT

  \mark \default

  d,8 r \rightDynamic f4 \ff  \< ( d' ) \! cis8 cis
  d2. c!4
  f4-. e-. d ( d, )
  <e a>-. <f a>-. <e a>2->
  R1

  \tag #'partScore
    \pageTurn  % pour améliorer la mise en page

  r2 \times 2/3 {\once \override Hairpin #'rotation = #'(10 0 0) a8 \f \< ( cis e} a8-. \! ) [r16 a16-.]
  r4 d,2:16-^ \ff cis4:
  d2.: e4:
  f: e: a,: d:
  cis: d: <cis e>2:
  R1
  r4 \times 2/3 {
    \rightDynamic c,!8 -\tweak #'X-offset #-2.5 \f (
    \bracketedHairpin e -\tweak #'X-offset #-2.2 \< g c e g
  } c8-. \! ) [r16 c16-.]
  <a, f'>1: \ff
  <c, a'>2: <c' ees>:
  q1:
  q2: <c d>:
  <bes d>1: \ff
  <d, b'>2: <d' f>:
  q1:
  q2: <d e>:
  <cis e>8 r \times 2/3 {a8 ( g a )} r4 \times 2/3 {a8 \dim ( f a )}
  r4 \times 2/3 {a8 ( e a )} r4 \times 2/3 {a8 \p ( f a )}
  \mark \default
  a'4 \p ( g2 f4 \dim ~
  f ) e2 ( d4 ) \!
  a16 \f ( g' ) g g g4:16 g2:
  <<{g: bes:}{s4 s \<}>>
  <<{bes2: b:}{s4 s \!}>>

  \tag #'partScore {
    c8 r \times 2/3 {a4.:8} a8 r \times 2/3 {fis4.:8}
    fis8 r \times 2/3 {dis4.:8} dis8 r \times 2/3 {b4.:8}
  }
  \elseTag #'partScore {
    c'8 \ff r \times 2/3 {a8 a a} a8 r \times 2/3 {fis8 fis fis}
    fis8 r \times 2/3 {dis8 dis dis} dis8 r \times 2/3 {b8 b b}
  }

  e,8 r gis'8-. \f a-. b4-> c8-. b-.
  a2-. fis-. \dim
  e4 \rightDynamic b8-. \mf c-. \> d4 e8-. d-. \!
  c2-. \p b-. \!
  \poly {
    b4 ( c b2 ) \dim
    c4 ( b ~ b c )
  }
  {
    b4 a2 ( gis4 )
    a2 ( gis4 a )
  }
  <fis a>1 \pp (
  <e gis>4 ) r r8 <e gis>8 \p ( <fis a> <gis! b> )

  \bar "||"

  \mark \default

  \key a \major
  \leftDynamic <a cis>2 \MFBracketedEspressivo ( d4 b )
  a2 ( gis )
  a ( e )
  e <fis a>4-. \Divisi <gis b>-.
  <a cis>8 <cis e>4 ( <a cis>8 ) r <d b'>4 ( <d fis>8 )
  r <cis e>4 ( <a cis>8 ) r <d gis>4 ( <gis, e'>8)
  r <cis a'>4 ( <a cis>8 ) r <a e'>4 ( <e a>8 )
  r <b' eis>4 ( <gis b>8 ) r <b eis>4 ( <gis b>8 )
  r4 \times 2/3 {fis'8 \pp eis fis} r4 \times 2/3 {fis8 eis fis}
  r4 \times 2/3 {fis8 eis fis} r4 \times 2/3 {fis8 eis fis}
  r4 \times 2/3 {fis8 eis fis} r4 \times 2/3 {fis8 eis fis}
  r4 \times 2/3 {fis8 eis fis} r4 \times 2/3 {fis8 eis fis}
  r8 <a, cis> \bracketedDiv ( <gis b> <fis a> ) r <g b> ( <fis a> <e g!>
  <fis a>8 ) r a4 \< ( <<{bes2}{s4 \bindDynamics s16 s \>}>>
  a4 \! ) r r2
  r4 a ( \< <<{bes2}{s4 \bindDynamics s16 s \>}>>
  a8 ) \! r r4 r2
  g'!4 ( \f fis8 e ) bes2->
  b8-> \fz e fis g r2
  g,4 \f ( fis8 e ) g'4 ( f8 e )
  <<{a4-> f8-. c-. a'4-> e8-. a,-.}{s8 s \< s4 s s8 s \!}>>
  <<{a'4-> d,8-. a-. a'4-> dis,8-. a-.}{s8 s \< s4 s s8 s \!}>>

  \mark \default

  cis!8 \f ( a e ) e'-. b ( gis e ) e'-.
  cis ( a e ) e'-. d ( b e, ) e'-.
  cis ( a e ) e'-. d ( gis, e ) e'
  cis ( a e ) e'-. b ( gis e ) e'-.
  cis ( a e ) e'-. d ( b e, ) e'-.
  cis ( a e ) e'-. d ( a fis ) fis'-.
  cis ( a e ) e'-. <gis, d'>2
  <e cis'>4 r r2
  R1
  a8:16 \ff c: e: fis: a8 r r4 |
  f8: e: d: cis!: b: a: gis: d': |
  cis4 r r2 |
  R1
  aes8: \ff c: e: f: r2

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #1.4

  <b, d>1-> \fz

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #1.8

  <g e'>4 \fz r <gis d'> \fz r
  <a c> \fz r <f b d> \fz r
  <c g' e'> \fz r <f b> \fz r
  <a c> \fz r <gis b> \fz r
  <a c> \fz r <g e'>-. \fz <gis d'>-.<a c> \fz r <f b d> \fz r
  <g e'> \fz r <d bes' f'> \fz r
  <c' a'> \fz r <b! d> \fz r

  \tag #'partScore
    \dynamicLineSpannerStandard

  \bar "||"

  \mark \default

  \key a \minor
  <c e>4. \ff c8-. a4.-> c8-.
  a4.-> c8-. a4.-> c8-.
  a1-> \fz \> ~
  <<{a1}{s2 s4 s8 s \!}>>
  a4.-> \ff cis8-. a4.-> \> cis8-.
  a4.-> cis8-. a4.-> cis8-. \!
  a1-> \p \> ~
  <<{a1}{s2 s4 s8 s \!}>>
  a4 \pp r r2
  R1 * 7
  r2 d,4 \pp r
  R1

  \tag #'partScore
    \noBreak
  \TempoIVPRit

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #15

  R1 * 4


  \mark \default

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  r2 e'4 \pp \Pizz r
  dis r c r
  a r c r
  R1 * 4
  r2 f,2 \Arco \pp (

  \tag #'partScore {
    bes4-. ) r f'-. \RndPizz r
  }
  \elseTag #'partScore {
    bes,4-. ) r f'-. -\footnote \markup {"(20)"} #'(1 . 0) \markup {\null} \RndPizz r
  }

  e-. r r des-.
  bes-. c-. des-. bes8-. f-.
  a4 r r2
  R1 * 3

  \tag #'partScore {
    r2 fis2 \pp ( \RndArco
  }
  \elseTag #'partScore {
    r2 fis2 \pp ( -\footnote \markup {"(23)"} #'(1 . 0) \markup {\italic "23 - See editorial remarks"} \RndArco
  }

  b16 ) d d d d2.:16
  d1:
  d:
  <cis e>:
  cis2: cis:
  fis,: \pp g:

  \tag #'partScore {
    <<{
      fis2 ( g
      fis1 )
      fis2 ( g ~
      g1 )
      g2 ( aes
      g1 )
      g2 ( aes ~
      aes1 )
      a!2 ( bes ~
      bes1 )
      bes2 ( b )
    }
    {
      \override DynamicLineSpanner #'staff-padding = #2.5
      s4 \< s8 s16 s s8 -\tweak #'minimum-length #5 \> s s s8 \!
      s1
      s4 \< s8 s16 s s8 -\tweak #'minimum-length #5 \> s s s8 \!
      s1
      s4 \< s8 s16 s s8 -\tweak #'minimum-length #5 \> s s s8 \!
      s1
      s2 \< s2 \!
      s2 -\tweak #'minimum-length #5 \> s2 \!
      s4 \< s8 s16 s s8 -\tweak #'minimum-length #5 \> s s s8 \!
      s1
      s4 \< s8 s16 s s8 -\tweak #'minimum-length #5 \> s s s8 \!
      \dynamicLineSpannerStandard
    }>>
  }
  \elseTag #'partScore {
    <<{
      fis2 ( g
      fis1 )
      fis2 ( g ~
      g1 )
      g2 ( aes
      g1 )
      g2 ( aes ~
      aes1 )
      a!2 ( bes ~
      bes1 )
      bes2 ( b )
    }
    {
      s4 \< s8 s16 s s8 \> s s s8 \!
      s1
      s4 \< s8 s16 s s8 \> s s s8 \!
      s1
      s4 \< s8 s16 s s8 \> s s s8 \!
      s1
      s2 \< s2 \!
      s2 \> s2 \!
      s4 \< s8 s16 s s8 \> s s s8 \!
      s1
      s4 \< s8 s16 s s8 \> s s s8 \!
    }>>
  }

  b2:32 \cresc b:
  b: b:
  dis4 \mf r fis \cresc r
  a r c r \!
  fis \f r r2
  R1

  \mark \default

  \leftDynamic e,,2-> \FFMarcato c'->
  b4-> a-> g-> fis->
  g-> a-> b-> cis->
  d4.-> d16 ( e fis4 ) d4-.
  e4 b'8-. ( b-. ) e,4-> fis8-. ( fis-. )
  g-. ( g-. ) a4-> b d8 ( c )
  b8-. b-. a4-. g2->
  fis4-> fis8-. e-. dis4-. fis-.
  <g, b>1:16 \ff
  <e g>:
  q:
  q:
  <b' d>:
  <d, f>:
  <d f>:
  <d f>2: <gis b>:
  <e a>4 \ff r <d a'> r
  <e d'> r <e c'> r

  \mark \default

  a'8-> e c a c-> d b g'
  e-> b gis e e-> f e c'
  e \fz f e d c d e f
  g! \fz a f e d e f g
  a \fz b g f e f g a
  b \fz c a g f g a b
  gis4.-> ( a16 b c4-. ) a-.
  gis2-> ( a )
  \clef treble
  cis4. \fz ( d16 e f4-. ) d-.
  cis2 \fz ( d )
  \clef alto
  fis,4. \fz ( g16 a bes4-. ) g-.
  fis2 \fz (g )
  b!4. \fz ( c16 d ees4-. ) c-.
  b2 \fz ( c )
  cis8 r <gis, eis'>4 r <a fis'>
  r <gis eis'> r <dis' fis>
  <cis eis>4. ( dis16 eis! fis4-. ) dis-.
  eis-. \dim cis-. dis-. bis-.
  gis b!8 \dim b a!4 fis8 fis
  gis4 gis8 \> gis fis4 fis8 fis \!
  <<{eis4 ( fis2 eis4 )}{s4 \p s4 s \dim}>>
  fis2 \> ( eis4 ) \! fis ( ~
  fis \pp eis fis2 ~
  fis \> eis ) \!

  \mark \default

  fis4 \pp a8-. a-. fis4 a8-. a-.
  fis4 a8-. a-. fis4 d'8-. d-.
  a4 r8 cis,8 \ppp fis4-. r8 cis'
  fis4-. r8 a fis4-. r8 d
  a4-. r8 cis fis,4-. r8 cis
  fis4-. r r2
  r4 r8 a \pp fis4-. r
  R1
  g4 \pp bes8-. bes-. g4 bes8-. bes-.
  g4 bes8-. bes-. g4 ees'8-. ees-.
  bes4 r8 d, \ppp g4-. r8 d'
  g4 r8 bes g4-. r8 ees
  bes4-. r8 d g,4-. r8 d
  g4 r r2
  r4 r8 bes \pp g4-. r
  R1
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \times 4/6 {
    aes2.:8 \pp aes':
    \tupletOff
    aes: aes,:
    aes: aes':
    aes: aes,:
    aes: aes':
    aes: aes,:
    aes: aes':
    % insérer ici un crescendo sur 4 mesures
    \override TextSpanner #'staff-padding = #3.5
    \set crescendoText = \PocoCrescL
    \set crescendoSpanner = #'text
    \override DynamicTextSpanner #'style = #'dashed-line
    aes: \< aes,:

    \tag #'partScore
      \noBreak  % Pour ne pas couper le spanner

    gis: b':
    b: b,:
  }
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \tupletOn

  \tag #'partScore {
    b4 r \times 2/3 {d'!4.:8} b8 r \!
  }
  \elseTag #'partScore {
    b,4 r \times 2/3 {d'8[d d]} b8 r \!
  }

  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff

  \tag #'partScore {
    \times 2/3 {b4.:8 \<} d8 r \times 2/3 {d4.:8} b8 r
    <<{\times 2/3 {b4.:8} d8 r \times 2/3 {d4.:8} b8 r}{s4 s s s8 s16 s \!}>>
    \times 2/3 {b4.:8 \f} gis8 r \times 2/3 {d'4.:8} d8 r
  }
  \elseTag #'partScore {
    \times 2/3 {b8[\< b b]} d8 r \times 2/3 {d8[d d]} b8 r
    <<{\times 2/3 {b8[b b]} d8 r \times 2/3 {d8[d d]} b8 r}{s4 s s s8 s16 s \!}>>
    \times 2/3 {b8 \f [b b]} gis8 r \times 2/3 {d'8[d d]} d8 r
  }

  \bar "||"

  \mark \default

  \key d \minor
  <d,, f>1:16 \ff
  d'8: e: e: f: d: e: e: f:
  f: \< g: g: a: f: g: g: a \!
  a: g: g: f: f: e: e: d:
  bes: c: c: d: e: f: f: g:
  d: e: e: f: ees,: g: a: bes:
  cis,: \< e!: g: a: bes: a: cis: e: \!
  a \ff d d a bes d d bes
  g cis cis g bes g f a
  e g g e f a a f
  d f f d cis e a cis
  bes des des bes c f f c
  bes des des bes des bes a c
  g bes bes g a d! d a
  f a a f e g g e
  cis e e cis d f f d
  e \< bes' bes g \! \bindDynamics g \>e e cis \!
  cis e e cis d f f d

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2

  g \< cis cis bes \! bes \> g g e \!
  cis \< e e cis d f f d \!

  \mark \default

  <gis b>4 \ff r r \times 2/3 {a,8 d e}

  \tag #'partScore
    \dynamicLineSpannerStandard

  f4 r r2
  R1 * 3
  r8 e \p ( \times 2/3 {g [a bes] ~} bes8 a f d )
  r2 r8 e ( \times 2/3 {g [f e])}
  r2 r8 b ( \dim g' d )
  r2 r8 f, \pp ( c' a )
  R1 * 6

  \tag #'partScore
    \pageTurn  % pour améliorer la mise en page

  \key d \major
  \leftDynamic <d fis>2 \MPespress \bindDynamics ( g4 e )
  <<{d2 ( cis )}{s2 \< s4 s8 s \!}>>
  d2 ( a )
  <<{a <b d>4-. ( \Divisi <cis e>-. )}{s8 s \> s4 s s8 s \!}>>
  <fis, a>8 \p q4 ( <d fis>8 ) r <g e'>4 ( <g b>8 )
  r <fis a>4 \< ( <d fis>8 ) r <g cis>4 ( <cis, a'>8 ) \!
  r <fis d'>4 ( <d fis>8 ) r <fis a>4 ( <d fis>8 )
  r <e ais>4 \> ( <cis e>8 ) r <e ais>4 ( <cis e>8 ) \!

  \TempoIVTran

  <dis fis> \p ( b' dis b cis4. fis,8 )
  fis ( b dis b cis4. fis,8 )
  fis \pp ( b dis b cis4. fis,8 )
  fis ( b d! b cis4. fis,8 )
  fis <d' fis> \< ( <cis e> <b d> ) r <c e> ( <b d> <a c!> ) \!
  <<{<b d> r b'4 ( c b8 a}{s8 s \mf \bindDynamics s4 \< s s8 \! s -\tweak #'minimum-length #7.5 \>}>>
  b4 ) \! r  r2
  r4 b \< ( c b8 a \!
  b ) r r4 r2
  c4 \fz ( b8 a ) ees2
  e!8-. \ff a-. b-. c-. r2
  c,4 \fz ( b8 a ) c'4 \fz ( bes8 a )
  d4 \< ( bes8 f ) d'4 ( a8 d, )
  d'4 ( g,8 d ) d'4 ( gis,8 d ) \!

  \mark \default

  a'16 \ff <fis, a>16 q q q4:16 <e a>2: \fz
  <fis a>: \fz <g a>: \fz
  <fis a>: \fz <g cis>: \fz
  <fis d'>: \fz <e a>: \fz
  <fis a>: \fz <g a>: \fz
  <fis a>: \fz <d b' d>: \fz
  <a' fis'>: \fz <a g'>: \fz
  <a fis'>4 r r2
  R1
  d,8:16 \f f: a: b: d: f: a: b:
  bes: a: g: fis!: e: d: cis: g':
  <a, fis'>4 r r2
  R1
  des,8: \ff \< f: a: bes: e: f: a: bes: \!
  bes: a: g: f: e: d: c: bes':
  <c, f a>4 \ff r <cis g'> r
  <a f'> r <bes e> r
  <c! f!> r <bes! e> r
  <f! d'> r <e cis'> r
  <f a d> r <c' a'>-. <cis g'>-.
  <a f'>r <e' bes'> r
  <c f a> r <g ees' bes'> \arpeggio r
  <a d a'> \arpeggio r <a g'> r

  \mark \default

  \bar "||"

  \key d \minor
  d,4.-> \ff f8 d4.-> f8
  d4.-> f8 d4.-> f8
  d1-^ \ffz ~
  <<{d1}{s4 \> s s s8 s \!}>>
  d4.-> \ff fis8 d4.-> fis8
  d4.-> fis8 d4.-> fis8
  d1^^ \ffz ~
  <<{d1}{s4 \> s s s8 s \!}>>
  d4.-> \ff f8 d4.-> f8
  cis1^^ \fz
  c4.-> ees8 c4.-> ees8
  c1^^ \fz

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #1.8

  b'4. \fz d8 b4. \fz d8
  <d, b'>1:16 \fz
  bes'!4. \fz d8 bes4. \fz d8
  <d, bes'>1:16 \fz
  <d f>1: \ffz

  \tag #'partScore
    \dynamicLineSpannerStandard

  <gis d'>: \ffz

  \mark \default

  <a d>4 r r2
  r4 a8 \ff a d,4-> e->
  f-> a-> b-> cis->
  d-> e-> f-> fis->
  g2-> c,!4-> bes!->
  a8 cis d e f a c! bes
  <c,? fis a>2 \ff r
  <c fis a> \ff r
  <c fis a>4 r r8 bes' \p bes bes

  \tag #'partScore {
    r aes4.:8 r8 g4.:
    r8 f4.: \dim r8 ees4.:
  }
  \elseTag #'partScore {
    r8 aes aes aes r g g g
    r f \dim f f r ees ees ees
  }

  r8 d ( aes' ) aes-. r d, \pp ( a' ) a-.
  r d, ( bes' ) bes-. r a ( e ) e-.
  <f, a>1:16 \ff
  <f a>:
  <fis a>8 r a a d,4-> e8 e
  fis4 g8 g a4 b8 c!
  d4 ( e fis g )
  a4. ( bes!16 b c4 cis )
  <d, d'>1 \ffz ~
  q
  <d c'> \fz
  <d bes'!>2:16 <c fis>:
  <bes g'>: <c fis>:
  <bes g'>2.: ees'4-.
  g4-.-. ees-. bes-. g-.
  ees-. bes-. g'-. g-.
  e!-. r r2

  \mark \default

  cis'4^^ c^^ r2
  <dis, a'>4 r <b gis'> r
  <cis e a>-^ a-^ r2

  \TempoIVPAn

  d,8 \ff ( a' f' d' d f, a, d, )
  d ( bes' f' d' d f, bes, d, )
  d ( a' f' d' d f, a, d, )
  d ( bes' f' d' d f, bes, d, )
  d2 \ff bes''
  a2. f4
  d ( e ) f ( d8 a )
  cis4-> d gis-> a
  e-> f cis-> d
  a-> cis d-> a
  cis-> d a-> cis
  d8-> [d] a [a] d-> [d] a' [a]
  d-> [d] a [a] d,-> [d] a [a]
  d-> [d] a' [a] d-> [d] a [a]
  d,-> [d] a [a] d-> [d] a' [a]

  \TempoIVMMaes

  d,4 r d,2-> \ff a'-> c-> ~
  c bes4-> a->
  <d, g>2.-> <d bes'>4->
  <d a'>1^^
  <d g d'>^^ \arpeggio
  <d a' fis'> \arpeggio \fz
  <d a' fis'> \arpeggio \fz
  <d a' fis'> \arpeggio \fz

  \tag #'partScore {
    q4 \ffz r r2
  }
  \elseTag #'partScore {
    q4  _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  }

  \bar "|."
}

voiceSgMdViola = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 "Viole"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "Vle"
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef alto
  \SgMdViola
}

quoteScoreSgMd = \SgMdViola
