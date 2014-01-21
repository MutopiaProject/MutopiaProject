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
  * Fichier de notes, Violons I                                         *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMdViolinoI =
\relative c' {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 1 2)
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoIV

  R1 * 8
  f2-- \pp ( g--
  e2.-- d4 )
  cis2-- ( d-- )
  bes-- ( a-- )
  g'-- ( a-- \<
  <<{g2.-- f4-- )}{s8 \! \bindDynamics s  \> s4 s s8 s \!}>>
  e2-- ( f--
  d-- cis--)

  \TempoIVPPCresc

  a'-. \pp bes-.
  cis1 \fp
  a2-. bes-.

  \tag #'partScore {
    \override DynamicLineSpanner #'staff-padding = #2.5
    \oneMMRNumberOff
    <<{e1 }{s8 \fz \> s s s s s \!}
      {
        \once \override MultiMeasureRest #'stencil = ##f
        \once \override MultiMeasureRest #'minimum-length = #12
        R1}>>
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    <<{e1}{s8 \fz s \> s s s s \!}>>
  }

  <<{a,2-. \< bes-.}{s4 \< s s s8 s \!}>>
  <d f>4-. \f r r2

  \tag #'partScore
    \dynamicLineSpannerStandard

  r4 \times 2/3 {a8 \f ( d e} f4 ) r
  R1 * 7
  d2 \pp ( ees
  ces bes )
  g ( ges
  f ees )
  \override DynamicLineSpanner #'staff-padding = #2
  d1 \pp \< ~

  \tag #'partScore {
    <<{d1}{s4 \f -\tweak #'minimum-length #6 \> s4 s \p}>>
    <<{d1 ~}{s4 s \< s s \!}>>
    <<{d1}{s4 \f -\tweak #'minimum-length #6 \> s s \p}>>
    <<{d1 ~}{s4 \p -\tweak #'minimum-length #3 \< s s s\!}>>
    <<{d1}{s4 \f -\tweak #'minimum-length #5 \> s4 s s8 s \p}>>
    <<{f2:16 gis:}{s4 \< s s s8 s \!}>>
  }
  \elseTag #'partScore {
    <<{d1}{s4 \f \> s4 s \p}>>
    <<{d1 ~}{s4 s \< s s \!}>>
    <<{d1}{s4 \f \> s s \p}>>
    <<{d1 ~}{s4 \p \< s s s\!}>>
    <<{d1}{s4 \f \> s4 s s8 s \p}>>
    <<{f2:16 gis:}{s4 \< s s s8 s \!}>>
  }

  \dynamicLineSpannerStandard
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \tag #'partScore \tag #'conductorScore \tag #'pocketScore {
    <f a>8 r \times 2/3 {\once \override Hairpin #'rotation = #'(5 -2.5 0)  a8 \f \< d f a d f} a8 \! [r16 a16]
  }
  \elseTag #'partScore \tag #'conductorScore \tag #'pocketScore {
    <f,, a>8 r \times 2/3 {\once \override Hairpin #'rotation = #'(5 -2.5 0)  a8 \f \< d f a d f} a8 \! [
    \tweak #'extra-offset #'(0 . 4) r16 a16]
  }

  \mark \default

  gis2.-> \ff f4
  d ( e ) f ( d8 a )
  cis2.-> ( d4 )
  bes ( g ) a-> a->
  \leftDynamic <a, f'>2-. _\Marcato <bes g'>-.
  <e, cis' e>2-. r
  <a f'>-. \acciaccatura {\slurUp \once \override Slur #'positions = #'(0 . 5) d,8 \slurNeutral} <bes' bes'>2-.
  \acciaccatura {\slurUp \once \override Slur #'positions = #'(1 . 4.5) e,8 \slurNeutral} <cis' a'>2-. r
  <a a'>-. ees''-.
  \acciaccatura {\slurUp \once \override Slur #'positions = #'(0 . 6) d,,8 \slurNeutral} <d' d'>2-. r
  <e! c'>-.
  <a, e''!>-.
  <a fis''>-. r
  <dis dis'>-. <e e'>-.
  <fis fis'>-. r
  <a, eis''>-.
  <a fis''>-.
  <a a''>1:32 \ff
  q2:32 a''8:16 fis: g: e:
  d: cis: e: g,: a: bes!: e,: fis:
  g: cis,: d: e: g,: a: bes: e,:
  fis: g: cis,: d: e: g,: a: bes!:
  gis4-. \ff a-. r bes!-.
  r gis8-.gis-. bes4-. a-.

  \tag #'partScore
    \noBreak
  \TempoIVRit

  R1

  \mark \default

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  r4 \leftDynamic a'8-. \FFMarcato a-. d,4-> e8-. e-.
  f-. ( f-. g4-> ) a-> ( c8 bes )
  a-. ( a-. g4-> ) f ( g )
  <a, e'>4-. <a f'>-. <a g'>2->
  R1
  r4 \times 2/3 {\once \override Hairpin #'rotation = #'(7 -1.5 0) a'8 \f \< ( cis e a cis e} a8-. ) \! [r16 a-.]
  r4 \times 2/3 {a8 \ff ( bes a )} d,4-> e8-. ( e-. )
  f-. ( f-. g4-> ) a c8 ( bes )
  a-. ( a-. ) g4-> f-. g-.
  e-. f-. g2->
  R1
  r4 \times 2/3 {\rightDynamic c,,,8 ( -\tweak #'X-offset #-2.5 \f \< e g c e g} c8-. \! ) [r16 c-.]
  f,2-> \ff f'->
  ees2. ( \fz c4 )
  a ( bes c ) a8-> c,-.
  ees-> a, c-> ees, d-> a' d c
  bes4 r r2
  r4 \times 2/3 {b,8 ( d f gis b d} f8. )[f16-.]
  d4 r b r
  r2 \afterGrace gis'2 \fz \startTrillSpan {fis16 \stopTrillSpan [gis]}
  a1 \f \> ~
  <<{a1}{s4 s s \p}>>

  \mark \default

  \tupletOn
  r4 \times 2/3 {g8 \p ( a, g' )} r4 \times 2/3 {f8 \dim ( a, f' ) \!}
  r4 \times 2/3 {e8 ( a, e' )} r4 \times 2/3 {f8 ( a, f' )}
  a'4-. \f g2-> f4
  ~f e2-> \< f4 ~
  f cis2-> \! d4 ~
  d \ff ees2-> c!4 ~
  c a8-. fis-. dis-. b-. b'-. b-.
  e, r f'! \f e d! b gis e
  f2-> dis-> \dim
  e4 \! r r2
  R1 * 5

  \bar "||"

  \mark \default

  \key a \major
  r8 e4 \pp ( a,8 ) r b'4 ( fis8 )
  r e4 ( a,8 ) r gis'4 ( e8 )
  r a4 ( cis,8 ) r e4 ( a8 )
  r e4 ( e,8 ) r e'4 ( e,8 )
  e ( a cis ) r fis, ( b d ) r
  e, ( a cis ) r e, ( gis d' ) r
  a ( cis fis ) r e ( e, a ) r
  cis ( gis b ) r b ( eis, gis ) r
  ais2 \pp ( b
  ais b )
  cis ( b
  a! b )
  r8 cis ( b a ) r b ( a g )
  r4 \times 2/3 {d'8 ( a d)} r4 \times 2/3 {cis8 ( g cis)}
  r4 \times 2/3 {d8 ( a d)} r4 \times 2/3 {bes8 ( g bes)}
  r4 \times 2/3 {d8 ( a d)} r4 \times 2/3 {cis8 ( g cis)}
  <<{d8 r a'4 ( bes2-> )}{s4 s \f \< s s8 s \!}>>
  R1
  b!2 \f b,
  b, c''! ~
  <<{
    c4 b ( c cis )
    d ( cis ) d ( dis \! )
    }
    {
      s8 s \< s4 s s8 s \!
      s8 s \< s4 s s8 s \!
  }>>

  \mark \default

  \leftDynamic
  e2 \Fespressivo gis4 ( fis8 e )
  e2 fis4 ( e8 d )
  cis2 e4 ( d ) cis ( e ) gis ( fis8 e )
  e2 fis4 (e8 d )
  cis4 ( a' ) fis ( d )
  cis ( b8 a ) fis'4. ( gis,8-. )
  a2 a,4. \ffz ( cis8-. )
  e4. \fz (a8-.) cis4. \fz (e8-.)
  fis2. \fz ( e4 )
  d ( b ) gis ( e )
  a2 a,4. \fz (cis8-.)
  e4. \fz (a8-.) cis4. \fz (e8-.)
  f2. \fz c4
  d b g4. g'8
  c,4. \fz d8 e4. \fz e8
  e4. \fz e8 g4. \fz f8
  e4. \fz c8 b4. \fz d8
  c4. \fz a8 gis!4. \fz b8
  a4. \fz c8 e4. \fz e8
  e4. \fz e8 a4. \fz f8
  e4. \fz c8 f4. \fz d8
  c4. \fz a8 gis!4. \fz b8

  \bar "||"

  \mark \default

  \key a \minor
  a4. \ff c,,8-. a4.-> c8-.
  a4.-> c8-. a4.-> c8-.
  a1-> \fz \> ~
  <<{a}{s2 s4 s8 s \!}>>
  a4.-> \ff cis8-. a4.-> \> cis8-.
  a4.-> cis8-. a4.-> cis8-.\!
  a1-> \p \> ~
  <<{a}{s2 s4 s8 s \!}>>
  a4. \pp ( c8-. a4. c8-. )
  a4. ( c8-. a4. c8-. )
  a4. ( c8-. a4. c8-. )
  a4. ( c8-. a4. c8-. )
  a4. ( c8-. a4. c8-. )
  a8 r \times 2/3 {a'8 ( \ppp c dis} e4. e8-. )
  r4 \times 2/3 {e,8 ( gis a} c4. c8-. )
  r4 \times 2/3 {a,8 ( c e} f4. f8-. )
  f1 (
  e2 dis ) ~

  \TempoIVPRit

  dis1 (
  d!2. ) c4
  c1 ( ~
  c2 b

  \mark \default

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #1
  \TempoIVIT

  a4 ) r e' \Pizz r
  dis r c r
  a r r2
  r4 bes' \Arco \pp ( ces aes8 ees
  g!2 aes4 ) r
  R1 * 3

  \tag #'partScore
    \allowPageTurn

  \tag #'conductorScore \tag #'pocketScore {
    bes4-. \ppp r f'-. -\footnote \markup {"(20)"} #'(1 . 0)
    \markup {\italic "20 - See editorial remarks"} \RndPizz r
  }
  \elseTag #'conductorScore \elseTag #'pocketScore {
    bes,4-. \RndPizz \ppp r f'-. r
  }

  e-. r r des-.
  bes!-. r r2

  \tag #'conductorScore \tag #'pocketScore {
    r4 b ( \pp -\footnote \markup {"(21)"} #'(1 . 0)
    \markup {\italic "21 - See editorial remarks"} \RndArco c a8 e
  }
  \elseTag #'conductorScore \elseTag #'pocketScore {
     r4 b' ( \pp \RndArco c a8 e
  }

  gis2 a4 ) r
  R1 * 3
  b2 \pp \< ( fis'
  eis2. \> d4 \! )
  b \p ( cis d b8 fis )
  ais2. \dim ( b4 )
  g ( e fis fis-- )
  d2 \pp ( e
  cis1 )
  <<{
    d2 ( e
    cis2. d4 )
    ees2 ( f
    d1 )
    ees2 ( f
    d2. ees4 )
    e!2 ( fis
    dis2. e4 )
    }
    {
      \tag #'partScore {
        s4 s s \< s8 s \!
        s4 \> s s \! s
      }
      \elseTag #'partScore {
        s4 s s \< s8 s \!
        s4 \> s s \! s
      }

      s4 \< s s \! s8 s \>
      s4 s s \! s4
      s4 \< s s s8 s \!
      s4 \> s s s \!
      s4 \< s s s8 s \!
      s4 \> s s s \!
  }>>
  f!2 ( ges \cresc
  e!2. \< f4 ) \!
  fis4 ( g eis \< fis )
  g ( a fis \! g )
  a8-> \mf c gis a dis-> \< fis cisis dis
  fis-> a \! eis fis a-> c gis a \!
  dis-> \f e dis g! fis dis c! a
  g fis b-> a g fis dis b

  \mark \default

  <g b e>4 \ff b'8-. ( b-. ) e,4-> fis8-. ( fis-.)
  g-. ( g-. ) a4-> b d8 ( c )
  b-. b-. a4-. g2->
  fis4-> fis8 -. e-. d4 -. fis -.
  e2-> c'->
  b4-> a-> g-> fis->
  g-> a-> b-> cis->
  dis4.-> dis16 ( e fis4-. ) dis-.
  e4-. b'8-. \ff b-.
  e,4-> g8-. g-.
  b,4.-> ( cis16 dis e4-. ) b-.
  g4.-> ( a16 ais b4-. ) g-.

  \tag #'pocketScore
    \break  % Pour assurer la synchronisation avec les \aIIP

  dis8 e g e ais, b e b
  r4 b''8-. b-. d,!4-> f!8-. f-.
  b,4.-^ ( c!16 cis d4-. ) b-.
  d,4.-^( dis16 e f!4-. ) d-.
  b8 c d b f e d e
  c'4-> \ff r <d, d'>-> r
  <e b' e> \arpeggio r <e c' e> \arpeggio r

  \mark \default

  e' \< ( f ) fis ( g! ) \!
  gis4. \fz ( a16 b c4-. ) a-.
  gis4. \fz ( a16 b c4-. ) b-.
  a4. \fz ( b16 c d4-. ) c-.
  b4. \fz ( c16 d e4-. ) d-.
  c4. \fz ( d16 e f4-. ) e-.
  ees1 \fz
  ees, \fz
  cis'4. \fz ( d16 e f4-. ) d-.
  cis2 \fz ( d )
  des1 \fz
  des, \fz
  b'!4. \fz ( c16 d! ees4-. ) c-.
  b2 \fz ( c )
  cis4. \ff ( dis16 eis fis4-. ) dis-.
  eis-. cis-. dis-. bis-.
  cis gis8 gis cis,4-> a'!8 a
  gis4-> \dim eis8 eis fis4-> dis8 dis
  cis4 gis8 \dim gis a4 fis8 fis
  eis4 cis8 \> cis d!4 bis8 bis \!
  cis4 \p ( d bis \dim cis! )
  d( \> bis cis d) \!
  bis \pp ( cis d2 )
  bis \> ( b \! |

  \mark \default

  a4 ) r r2
  R1
  r4 cis-. \ppp fis-. cis'-.
  fis-. a-. fis-. d-.
  a-. cis-. fis,-. cis-.
  R1 * 2
  r4 r8 a'' \pp fis4-. r
  R1 * 2
  r4 d,-. \ppp g-. d'-.
  g-. bes-. g-. ees-.
  bes-. d-. g,-. d-.
  R1 * 2
  r4 r8 bes'' \pp g4-. r
  r2 fes \pp (
  ees ces
  aes )

  \tag #'partScore {
    fes'2 (
    ees ces
    aes2 ) ges' (
    f! d
    b ) fis' ( -\tweak #'stencil ##f \p
    % insérer ici un crescendo sur 4 mesures
    \override TextSpanner #'staff-padding = #3.5
    \set crescendoText = \PocoCrescL
    \set crescendoSpanner = #'text
    \override DynamicTextSpanner #'style = #'dashed-line
    eis2 \< d!
    \noBreak
    b )
  }
  \tag #'conductorScore \tag #'pocketScore {
    fes'2 (
    ees ces
    aes2 ) ges' (
    f! d
    b ) fis' (
    % insérer ici un crescendo sur 4 mesures
    \override TextSpanner #'staff-padding = #3.5
    \set crescendoText = \PocoCrescL
    \set crescendoSpanner = #'text
    \override DynamicTextSpanner #'style = #'dashed-line
    eis2 \< d!
    b )
  }
  \elseTag #'partScore \elseTag #'conductorScore \elseTag #'pocketScore {
    fes'2
    ees ces
    aes2 ges' (
    f! d
    b ) fis' ( -\tweak #'stencil ##f \p
    % insérer ici un crescendo sur 4 mesures
    \override TextSpanner #'staff-padding = #3.5
    \set crescendoText = \PocoCrescL
    \set crescendoSpanner = #'text
    \override DynamicTextSpanner #'style = #'dashed-line
    eis2 \< d!
    b ) \!
  }

  \tag #'partScore {
    a'2 (
    gis2 f!
    \noBreak  % Pour ne pas couper le spanner
    d4 ) c'! ( b <<{f}{s8 s \!}>>
    \revert TextSpanner #'staff-padding
    \unset crescendoText
    \unset crescendoSpanner
    \dynamicSpannerOff
    d4 ) \< c' ( b f
    <<{d ) c' ( b f )}{s4 s s s8 s16 s \!}>>
    e'4-> \f ( d gis, ) f'
  }
  \tag #'quoteCornoIII \tag #'quoteCornoIV {
    a,2
    gis2 f!
    \noBreak  % Pour ne pas couper le spanner
    d,4 c'! ( b <<{f4}{s8 s \!}>>
    \revert TextSpanner #'staff-padding
    \unset crescendoText
    \unset crescendoSpanner
    \dynamicSpannerOff
    d4 ) -\tweak #'stencil ##f \p \< c' ( b f
    <<{d ) c' ( b f )}{s4 s s s8 s16 s \!}>>
    e'4-> \f ( d gis, ) f'
  }
  \elseTag #'quoteCornoIII \elseTag #'quoteCornoIV \elseTag #'partScore {
    a2
    gis2 f!
    \noBreak  % Pour ne pas couper le spanner
    d4 c'! ( b <<{f4}{s8 s \!}>>
    \revert TextSpanner #'staff-padding
    \unset crescendoText
    \unset crescendoSpanner
    \dynamicSpannerOff
    d4 ) -\tweak #'stencil ##f \p \< c' ( b f
    <<{d ) c' ( b f )}{s4 s s s8 s16 s \!}>>
    e'4-> \f ( d gis, ) f'
  }

  \bar "||"

  \mark \default

  \key d \minor
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  f4 \ff \times 2/3 {a,,8 ( d f a d f} a8. ) [a16-.]
  gis2. ( f4 )
  d ( \< e ) f ( d8 a ) \!
  cis2. d4
  bes ( g ) <a, a'>-. q-.
  <a f'>2-> <bes g'>->
  <e, e'>1-^
  f'2-> \ff ( g-> )
  e2. ( d4 )
  cis2-> ( d-> )
  bes ( a )
  g' ( a )
  g2. ( f4 )
  e2 ( f )
  d ( cis )
  <<{a' ( bes )}{s4 \< s s s8 s \!}>>
  cis1 \fz
  <<{a2 ( bes )}{s4 \< s s s8 s \!}>>
  e1->-> \fz
  <<{a,2 (bes )}{s4 \< s s s8 s \!}>>

  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-1

  \mark \default

  f'4 \ff r r2
  r4 \times 2/3 {a,,8 \f d e} f4 r
  R1
  r8 \once \override DynamicText #'self-alignment-X = #1.4 a,, \mf ( d \> e f  bes d e
  f e f e d e f a ) \!
  R1

  \tag #'partScore
    \allowPageTurn  % pour améliorer la mise en page

  r8 d, \p ( \times 2/3 {f8 [e d])} r2
  r8 a ( \dim ees' c ) r2
  r8 g ( des' bes ) \! r2
  r8 \rightDynamic e, \pp \dim ( bes' g ) r c, ( a' f ) \!
  r bes, ( g' e ) r a, ( f' d )
  r2 r4 \times 2/3 {a'8 \pp ( d f}
  a4 ) r r2
  r4 \times 2/3 {cis,,8 ( e g} bes4 ) r
  r \times 2/3 {cis,8 ( e g bes e g} bes8. [a16])

  \bar "||"

  \key d \major
  r8 a4 \pp ( d,8) r e'4 ( b8 )
  r a4 \< ( d,8 ) r cis'4 ( a8 ) \!
  r d4 ( fis,8 ) r a4 ( d8 )
  r a4 \> ( a,8 ) r a'4 ( a,8 \! ~
  a4 ) r r2
  R1 * 3

  \TempoIVTran

  dis,2 \p ( e
  dis e )
  dis ( \pp e
  d! e )
  d8 fis' \< ( e d ) r e ( d c ) \!
  b r \mf \times 2/3 {g'8 ( d g )} r4 \times 2/3 {fis8 ( c fis )}
  r4 \times 2/3 {g8 ( d g )} r4 \times 2/3 {ees8 ( c ees )}
  r4 \times 2/3 {g8 ( d g )} r4 \times 2/3 {fis8 ( c fis}
  g8 ) r d'4 \f ( ees2-> )
  R1
  e!2 \ff e,->
  e,-> f'' \f ( ~
  f4 \< e ) f ( fis )
  <<{g ( fis ) g ( gis ) \!}{s2 s4 s8 s \!}>>

  \mark \default

  \ottava #1
  \set Staff.ottavation = #"8"
  a2 \ff cis4 ( b8 a )
  a2 b4 ( a8 g )
  fis2 a4 ( g )
  fis ( a \< ) cis ( b8 \! a )
  a2 b4 ( a8 g )
  fis4 ( d' ) b ( g )
  fis ( d )
  b'4. \ottava #0 cis,8
  d2 d,4.-> \fz fis8-.

  % 2 lignes de nuances dynamiques
  \polyNeutral {
    \once \override DynamicText #'Y-offset = #-0.5
    \once \override Hairpin #'Y-offset = #-0.5
    a4. \fz \< d8 fis4. a8 \!
  }
  {
    s2 \once \override DynamicText #'extra-offset = #'(0 . 4.5)  s2 \fz
  }

  \tag #'conductorScore
    \noBreak  % pour ne pas couper le décalage des nuances aux cors I II

  b2. \fz ( a4 )
  g ( e ) cis ( a )
  d2 d,4. \fz fis8
  a4. \fz d8 fis4. \fz a8
  bes2. \fz f4
  g4 ( e ) c4. ( c'8 )
  f,4. \fz g8 a4. \fz a8
  \ottava #1
  \set Staff.ottavation = #"8"
  a4. \fz a8 c4. \fz bes8
  a4. \fz f8 e4. \fz g8
  f4. \fz d8 cis!4. \fz e8
  d4. \fz f8 a4. \fz a8
  a4. \fz a8 d4. \fz bes8
  a4. \fz f8 bes4. \fz g8
  f4. \fz d8 cis4. \fz e8
  \ottava #0
  \bar "||"
  \mark \default
  \key d \minor
  d4. \ff f,,8 d4.-> f8
  d4.-> f8 d4.-> f8
  d1^^ \ffz ~
  <<{d}{s4 \> s s s8 s \!}>>
  d4.-> \ff fis8 d4.-> fis8
  d4.-> fis8 d4.-> fis8
  d1^^ \ffz ~
  <<{d}{s4 \> s s s8 s \!}>>
  d8:16 \ff \< f!: a: cis: d: f: a: cis:
  d: cis: b: gis: \! eis: \> d: b!: eis,: \!
  fis \< ( a c! d ees fis a \! c? )
  ees ( d c a fis \> ees c a ) \!
  fis: \< a: cis: d: fis: a: cis: d: \!
  \once \override Hairpin #'rotation = #'(-6 1.2 0 ) fis: \> d: cis: a: fis: d: a: fis: \!
  g ( bes! d fis g bes d fis )
  g ( d bes a g d bes g )
  aes'': f!: d: aes: f: d: aes: f:
  gis'': d: b: gis: d: b: gis: d'':

  \mark \default

  <d,, d' a'>4 \arpeggio a'8 \ff a d,4-> \fz e8 e
  f f g4-> a c8 bes
  a4 a'8 \fz a d,4-> e8 e
  f f g4-> a a'8 \fz a
  d,4 e8 e f f g4->
  a-> c!8 ( bes ) a4-> g->
  <a,, fis''>2 \ff r
  q \ff r
  q4 r r8 bes \p ( bes' ) bes-.
  r bes, ( aes' ) aes-. r bes, ( g' ) g-.
  r aes, \dim ( f' ) f-. r g, ( ees' ) ees-.
  r f, ( d' ) d-. r f, \pp ( d' ) d-.
  r f, ( d' ) d-. r e, ( cis' ) cis-.
  <d, d'>4 \ff r4 r2
  R1
  r4 a'8 \ff a d,4-> e8 e
  fis4 g8 g a4 b8 c!
  d4 \ff ( \< e fis g ) \!
  a4. ( bes!16 b c4 cis4 )
  \acciaccatura {\slurUp \once \override Slur #'positions = #'(0 . 5) d,,8 \slurNeutral} <d' d'>1 \ffz ~
  q
  d'4 \ff \< ( e ) f! ( fis ) \!
  g!4. ( gis16 a bes!4-. ) fis-.
  g!4. ( gis16 a bes!4-. ) fis-.
  g!4. ( gis16 a bes4-. ) g!-.
  ees-. bes-. g-. ees-.
  bes-. g-. ees'-. d-.
  cis-. r r2

  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-2

  \mark \default

  bes'4-^ a-^ r2
  dis4 r e! r
  a-^ a,-^ r2

  \TempoIVPAn

  d2-> \ff a'->
  gis2. f4-.
  d2-> a'->
  gis2. f4-.
  d2 \ff bes'
  a2. f4
  d ( e ) f ( d8 a )
  cis4-> d gis,-> a
  e-> f cis-> d
  a-> cis d-> a
  cis-> d a-> cis
  d-> e f-> gis
  a-> gis a-> cis
  d-> e f-> gis
  a-> gis a-> cis

  \TempoIVMMaes

  d r
  \ottava #1
  \set Staff.ottavation = #"8"
  <d, d'>2:32 \ff
  q1:
  q:
  q:
  q:
  q:
  q: \fz
  q: \fz
  q: \fz

  \tag #'conductorScore \tag #'pocketScore
  {
    q4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\italic "24 - See editorial remarks"} \ffz \ottava #0
  }
  \elseTag #'conductorScore \elseTag #'pocketScore {
    q4 \ffz \ottava #0
  }

  r4 r2

  \bar "|."
}

voiceSgMdViolinoI = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 "Violini I"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "1.Viol."
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef treble
  \SgMdViolinoI
}

quoteScoreSgMdViolinoI = \SgMdViolinoI
