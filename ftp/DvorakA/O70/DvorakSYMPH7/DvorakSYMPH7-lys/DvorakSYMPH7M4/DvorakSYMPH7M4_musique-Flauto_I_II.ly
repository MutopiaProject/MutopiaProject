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
  * Fichier de notes, flûtes 1 et 2, parties                            *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Flûte I                                                       *
  *****************************************************************
%}

\include "Common/Version.ly"

% Fichier cité par le cor I II :
% le \tag #'partscore devient \tag #'partScore \tag #'quoteCornoI \tag #'quoteCornoI {


SgMdFlautoI = \relative c''' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoIV

  \once \override MultiMeasureRest #'minimum-length = #32
  R1 * 16

  \TempoIVPPCresc

  r4 a \p r bes
  r cis r2
  <<{r4 a r bes}{s4 s \< s s8 s \!}>>
  r4 e r2
  r4 a, \cresc r bes \!
  f' \fz r r2
  R1
  \override DynamicLineSpanner #'staff-padding = #2.6
  r4 \times 2/3 {a,,8 ( \f \< d f} \times 2/3 {a d f} a8 ) \! [r16 a-.]
  gis2. \fp \> ( f4
  d \! e -\tweak #'minimum-length #8 \dim f d8 \p a
  \dynamicLineSpannerStandard
  cis2. ) d4 (
  bes \dim gis a a ) \!
  fis2 \pp ( g!
  f! ees
  d4 ) r r2
  R1 * 4
  r4 f'8-. \mf f-. bes,4-> c8-. c-.
  d2. r4
  r f8 \cresc f b,!4-> c8 c \!
  d2. r4
  r f8 \f f b,4 c8 c
  d4 \< e8 e f-. fis-. g-. \! gis-.
  a4 \ff r r2

  \once \override Score.RehearsalMark #'X-offset = #-2.5
  \mark \default

  f2.-> \ff f4
  d ( e f d8 a )
  cis2.-> ( d4 )
  bes r a r
  r8 d,-. e16 ([d cis d]) g2-.
  e-. r
  r8 d-. e16 ([d cis d]) bes'2-.
  a-. r
  r8 a-. b16 ([a gis a]) ees'2-.
  d-. r
  r8 a-. b16 ([a gis a]) e'!2-.
  dis-. r
  r8 a-. b16 ([a gis a]) e'2-.
  fis-. r
  r8 a,-. \< b16 ([a gis a]) fis'2-. \!
  a1 \ff
  g2-^ ~ g8 r r4
  R1 * 5

  \noBreak
  \TempoIVRit

  R1

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 4
  g,2-> \f gis->
  a-> r
  r4 d2-> \ff ( cis4 )
  d2. ( e4 )
  f ( e a, d )
  cis-. d-. e2->
  R1 * 2
  f,2-> \ff f'->
  ees2.-> r4
  R1 * 2
  g,2-> \ff g'->
  f!2.-> r4
  R1 * 4

  \mark \default

  a,4 \mp ( bes! b c! )
  cis4. ( d16 e f4-. ) d-.
  a'4 \ff r8. g16 g4 r8. f16
  f4 r8. e16 e4 r8. f16
  f4 r8. cis16 cis4 r8. d16
  d4 r8. ees16 ees4 r8. c!16
  c4-. r b-. r
  e!8 r r4 r2
  r4 \times 2/3 {c8 \mf ( d c} dis,4-. ) \times 2/3 {b'8 ( c b}
  e,4-. ) r r2
  R1
  r4 \times 2/3 {c'8 \mp ( d c} b2 ) \dim
  \times 2/3 {c8 ( d c} b2 \times 2/3 {c8 d c )\!}
  a4 \p ( fis' dis a
  gis8 e' d! b! gis e d e )

  \bar "||"

  \mark \default

  \key a \major
  cis4 r r2
  R1 * 3
  e'2 \mp ( fis4 e8 d )
  cis2 ( e4 d )
  cis2 ( b4 a )
  gis ( fis8 eis! d'4-. ) d-.
  cis r r2
  r4 ais \p ( cis b8 ais )
  ais4 r r2
  r4 a! \pp ( cis b8 a )
  a4 r r2
  R1 * 7
  r2 a \f \< ~
  a1 \!

  \mark \default

  e'2 \ff gis4 ( fis8 e )
  e2 fis4 ( e8 d )
  cis2 ( e4 d )
  cis ( e gis fis8 e )
  e2 ( fis4 e8 d )
  cis4 ( a' fis d )
  cis ( b8 a fis'4. gis,8-. )
  a4 r r2
  R1 * 7
  c4-. \ff r d-. r
  c-. r d-. r
  e-. r d-. r
  c-. r b-. r
  c-. r e-. d-.
  c-. r d-. r e-. r d-. r
  c-. r b?-. r

  \bar "||"

  \mark \default

  \key a \minor
  a4 r r2
  R1
  a,8-. \f c-. dis-. e-. fis-. \< a-. c-. dis-.
  e-. \! dis-. c-. a-. fis-. e-. dis-. c-.
  a4 r r2
  R1
  a8-. \mp c-. dis-. e-. f!-. a-. c-. dis-.
  e-. dis-. c-. \dim a-. f-. e-. dis-. c-. \!
  a4 r r2
  R1 * 9

  \noBreak
  \TempoIVPRit

  \once \override MultiMeasureRest #'minimum-length = #15
  R1 * 4

  \mark \default

  \once \override Score.MetronomeMark #'X-offset = #2
  \noBreak
  \TempoIVIT

  R1 * 4

  % Si appelée par le cor, la flûte est descendue à l'octave inférieure
  \tag #'quoteCornoI \tag #'quoteCornoII {
    f2 \pp ( f'
    ges f4 ees )
    c ( a ges ees
    c a des c )
  }
  \elseTag #'quoteCornoI \elseTag #'quoteCornoII {
    f'2 \pp -\tweak #'positions #'(5 . 6 ) ( f'
    ges f4 ees )
    c ( a ges ees
    c a des c )
  }
  bes'1 \pp ~
  bes ~
  bes4 r r2
  R1
  fis2 \pp -\tweak #'positions #'(5 . 6 ) ( fis'
  g fis4 e )
  cis ( ais g! e
  cis ais d cis
  b ) r r2
  b'2 \p \< ( eis
  fis2. \> d4 ) \!
  cis ( d e d8 cis
  cis2. cis4 )
  b ( \< fis a! g!
  fis e8 d \! cis2 ) \trill
  r8 d \mf ( cis b ais4 b8 cis
  ais2. b4 )
  c!8 ( ees d c d4 ees8 f )
  <<{b,!2. ( b'4 )}{s4 s s \cresc}>>
  c4( ees f \! ees8 d )
  g4 ( f8 ees d4 c )
  gis'-. gis,-. fis'-. fis,-.
  <<{dis'-. fis,-. dis'-.  e!-.}{s4 s8 s \cresc s \!}>>
  bes'4-. \< bes,-. ges'-. ges,-.
  <<{e'!-. g,!-. e'-. f-.}{s4 s8 s \!}>>
  b8-> \f fis-. b-. b,-. b4 r
  b'8-.-> e,-. b'-. b,-. b4 r
  c8-> \fz a r4 fis'8-> \fz dis r4
  a'8-> \fz fis r4 c'8-> \fz a r4
  fis4 \ff r r2
  R1

  \mark \default

  R1 * 8
  r4 b8-. \ff b-. e,4-> g8-. g-.
  r4 b,8-. a-. g4-. r
  r8 g-. fis-. e-. g4-. r
  r ais8-. b-. r4 dis8-. e-.
  r4 b'8-. \ff b-. d,4-> f!8-. f-.
  r4 aes,8-. g-. f4-. r
  r d'8-. c-. b4-. r
  r2 gis' \trill
  a8-. e-. c-. a-. c-. d-. b-. g'?-.
  e-. b-. gis-. e-. e-. f-. e-. c'-.

  \mark \default

  R1 * 10
  bes4 \f r8 a g4 r8 bes
  cis4 r8 fis g4 r8 des
  ees4 r8 d! c!4 r8 ees
  fis4 r8 b? c4 r8 c,
  cis4 r r2
  R1 * 9

  \mark \default

  R1 * 2
  \override DynamicLineSpanner #'staff-padding = #2
  r4 \times 2/3 {cis,,8 \p \< ( fis a} \times 2/3 {cis fis a} cis8. ) [cis16-.] \!
  <<{c!2. ( a4 )}{s4 \fz \> s s s8 s \!}>>
  \dynamicLineSpannerStandard
  fis4 ( gis a fis8 cis
  <<{c!1 ) ~}{\bracketedHairpin \rightDynamic  s4 \p -\tweak #'X-offset #1.5 \> s s s8 s \!}>>
  c1 \pp (
  d
  bes4 ) r r2
  R1
  \override DynamicLineSpanner #'staff-padding = #2
  r4 \times 2/3 {d,8 \bracketedP ( g bes} \times 2/3 {d \< g bes} d8. ) [d16-.] \!
  cis2. \fz \> ( bes4 ) \!
  g ( \p a bes g8 d )
  \dynamicLineSpannerStandard
  <<{des1 ( ~}{s4 s s \>}>>
  <<{des1}{s4 s s \!}>>
  ees1 \pp
  ces4 ) r ces2 \pp ~
  ces ces ~
  ces ces ~
  ces ces ~
  ces b! ~
  b b ~
  b b ~

  % insérer ici un crescendo sur 4 mesures
  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \PocoCrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  \partcombineAutomatic
  b \< b ~
  \noBreak
  b d ~
  \noBreak
  d d ~
  d4 f2 <<{d4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  d4 \< f2 d4 ~
  d f2 d4 ~
  d aes'2 d4 \!

  \bar "||"

  \mark \default

  \key d \minor
  \override DynamicLineSpanner #'staff-padding = #2.7
  f4 \ff \times 2/3 {a,,8 \< ( d f} \times 2/3 {a d f} a8. ) [a16-.] \!
  gis2. \ff ( f4 )
  d \< ( e f  d8 a ) \!
  \dynamicLineSpannerStandard
  cis2. ( d4 )
  bes ( g ) a-. a-.
  f2-^ g-^
  e8 a' a,4 r8 a' a,4
  <<{
    \repeat unfold 13 {r8 a' a,4 r8 a' a,4}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 13 {s1}
  }>>

  \mark \default

  f'4 \ff r r2
  R1
  \override DynamicLineSpanner #'staff-padding = #3.1
  r4 \times 2/3 {a,,8 \f \< ( d f} \times 2/3 {a d f} a8 ) \! [r16 a-.]
  <<{gis2. ( f4 )}{s4 \> s s s8 s16 s \!}>>
  d4 \p \> ( e f d8 a
  cis2. \! d4 )
  \dynamicLineSpannerStandard
  bes!4 ( gis a a-. )
  fis2 ( g!
  e f!
  des c
  bes a
  gis1 ~
  gis )
  g! ( ~
  g

  \bar "||"

  \key d \major
  fis4 ) r r2
  R1 * 11
  r4 \rightDynamic d'' \p \< ( e d8 c \!
  b4 ) r r2
  r4 \rightDynamic d \mf \< ( ees \! d8 \>c \!
  b4 ) r r2
  R1 * 4
  r2 d2 \f ~
  <<{d1}{s4 \< s s s8 s \!}>>

  \mark \default

  d4 \ff r8 d e4 r8 e
  d4 r8 d g4 r8 g
  fis4 r8 fis cis4 r8 cis
  d4 r8 d e4 r8 e
  d4 r8 d g4 r8 g
  fis4 r8 fis e4 r8 e
  fis4 r8 fis cis4 r8 cis
  d8
  \repeat unfold 15 a8	% 2 mesures
  b1 \fz
  cis \fz
  d8
  \repeat unfold 15 a8	% 2 mesures
  bes1 \fz
  bes \fz
  a4 \f r cis! r
  d r e r
  c r bes r
  d r cis! r
  d r c-. cis-.
  d r e r
  f r ees r
  f r e! r

  \bar "||"

  \mark \default

  \key d \minor
  d4 r r2
  R1
  d,8 \f \< f gis a b d f gis \!
  a gis f d b a gis f
  d4 r r2
  R1
  \rightDynamic d8 \f \< f gis a bes d f g! \!
  aes g f d bes a! aes f
  d4 r r2
  R1 * 3
  fis8 \f ( a cis d ) fis2 \startTrillSpan ~
  <<{fis2}{s4 s8 s \stopTrillSpan}>> fis8 ( d a fis! )
  g ( bes! d fis ) g2 \startTrillSpan ~
  <<{g2}{s4 s8 s \stopTrillSpan}>> g8 ( d bes g )
  aes'2 \trill aes8 ( f! d aes )
  gis'2 ^\markup {\raise #2 \center-column{\musicglyph #"scripts.trill" \raise #1.2 \tiny \natural}}
  d8 ( b gis d' )

  \mark \default

  a'4 r r2
  R1 * 2
  r2 r4 a8 \ff a
  d,4 e8 e f f g4->
  a-> ( c8 bes ) a4-. g-.
  fis-. ees8 ees a,4 c8 c
  r4 ees8 ees a,4 c8 c
  fis4 r r8 g \p g g
  r f! f f r ees ees ees
  r d \dim d d r ees \! ees ees
  r gis, gis gis r a \pp a a
  r bes bes bes r a a a
  a1 \ff ~
  a
  a \fz ~
  a
  a \fz ~
  a
  a \fz (
  g )
  d'1 \f
  bes!4. ( b16 c d4-. ) a-.
  bes!4. ( b16 c d4-. ) a-.
  ees'2. ees4
  r bes r bes
  r bes ees d
  cis r r2

  \mark \default

  bes4-^ a-^ r2
  dis4 r e r
  a-> a,-. r2

  \TempoIVPAn

  d2 \ff f
  \noBreak
  f2. d4
  d2 f
  f2. f4
  d2 d
  d1 ~
  d4 r r2
  R1 * 2
  a4 \f r a r
  a r a r
  a r a r
  a r a r
  a' r a r
  a r a r

  \TempoIVMMaes

  a r d,2 \ff
  \noBreak
  d1->
  d-> ~
  d
  d->
  d->
  fis-> \fz
  fis-> \fz
  fis-> \fz
  fis4 \ffz r r2
  \bar "|."
}

%{
  *****************************************************************
  * Flûte II                                                      *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMdFlautoII = \relative c'' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoIV

  \once \override MultiMeasureRest #'minimum-length = #25
  R1 * 16

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdFlautoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Flauto I"} R1 * 5}
  \oneMMRNumberOn

  <<{f1 ~}{\rightDynamic s4 \fz s8 s8 \> s4 s8 s16 s \!}>>
  f2. \p r4
  \override DynamicLineSpanner #'staff-padding = #2.6
  r4 \times 2/3 {a,8 ( \f \< d f} \times 2/3 {a d f} a8 ) \! [r16 a-.]
  d,1 \fp \> ~
  d4 \! r a2 \p (
  bes!2 \> a \! )
  f ( e ) \!
  ees1 \pp
  \dynamicLineSpannerStandard
  bes ~
  bes4 r r2
  R1 * 8
  r4 f''8 \f f b,4 c8 c
  d4 \< e8 e f-. fis-. g-. \! gis-.
  a4 \ff r r2

  \once \override Score.RehearsalMark #'X-offset = #-2
  \mark \default

  d,2.-> \ff f4
  d ( e f d8 a )
  a2.-> ( bes4 )
  bes r a r
  r8 d,-. e16 ([d cis d]) g2-.
  e-. r
  r8 d-. e16 ([d cis d]) bes'2-.
  a-. r
  r8 a-. b16 ([a gis a]) ees'2-.
  d-. r
  r8 a-. b16 ([a gis a]) e'!2-.
  dis-. r
  r8 a-. b16 ([a gis a]) e'2-.
  fis-. r
  r8 a,-. \< b16 ([a gis a]) fis'2-. \!
  fis1 \ff
  cis2-^ ~ cis8 r r4
  R1 * 5

  \noBreak
  \TempoIVRit

  R1

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  \once \override MultiMeasureRest #'minimum-length = #14
  R1 * 4
  g2-> \f gis->
  a-> r
  r4 d2-> \ff ( cis4 )
  d2. ( e4 )
  f ( e a, d )
  cis-. d-. cis2->
  R1 * 2
  f,2-> \ff f'->
  ees2.-> r4
  R1 * 2
  g,2-> \ff g'->
  d2.-> r4
  R1 * 4

  \mark \default

  R1 * 2
  a'4 \ff r8. g16 g4 r8. f16
  f4 r8. e16 e4 r8. f16
  f4 r8. cis16 cis4 r8. d16
  d4 r8. ees16 ees4 r8. c!16
  c4-. r b-. r
  e!8 r r4 r2
  R1 * 7

  \bar "||"

  \mark \default

  \key a \major
  R1 * 4
  cis2 \mp ( d4 b )
  a2 ( gis )
  a2 ( e )
  eis4 ( fis8 eis! b'4-. ) b-.
  ais r r2
  R1 * 11
  r2 a \f \< ~
  a1 \!

  \mark \default

  e'2 \ff gis4 ( fis8 e )
  e2 fis4 ( e8 d )
  cis2 ( e4 d )
  cis ( e gis fis8 e )
  e2 ( fis4 e8 d )
  cis4 ( a' fis d )
  cis ( b8 a fis'4. gis,8-. )
  a4 r r2
  R1 * 7
  c4-. \ff r d-. r
  c-. r b-. r
  c-. r b-. r
  a-. r gis!-. r
  a-. r g-. gis-.
  a-. r b-. r c-. r bes!-. r
  a-. r gis!-. r

  \bar "||"

  \mark \default

  \key a \minor
  a4 r r2
  R1
  a,8-. \f c-. dis-. e-. fis-. \< a-. c-. dis-.
  e-. \! dis-. c-. a-. fis-. e-. dis-. c-.
  a4 r r2
  R1
  a8-. \mp c-. dis-. e-. f!-. a-. c-. dis-.
  e-. dis-. c-. \dim a-. f-. e-. dis-. c-. \!
  a4 r r2
  R1 * 9

  \noBreak
  \TempoIVPRit

  \once \override MultiMeasureRest #'minimum-length = #16
  R1 * 4

  \noBreak
  \mark \default

  \once \override Score.MetronomeMark #'X-offset = #2.5
  \TempoIVIT

  R1 * 4
  ees'2 \pp ( ees' ~
  ees a,!4 c )
  a ( ges ees c
  a ges f ees
  des ) r r2
  R1 * 3
  e'2 \pp ( e' ~
  e ais,4 cis )
  ais ( g! e cis
  ais g! fis e
  d ) r r2
  R1 * 16
  r2 b''8 \f b, b r
  r2 b'8 \f b, b r
  c'8-> \fz a r4 fis'8-> \fz dis r4
  a'8-> \fz fis r4 c'8-> \fz a r4
  dis,4 \ff r r2
  R1

  \mark \default

  R1 * 8
  r4 b'8-. \ff b-. e,4-> g8-. g-.
  r4 g,8-. fis-. e4-. r
  r8 e-. d-. c-. b4-. r
  r ais'8-. b-. r4 dis8-. e-.
  r4 b'8-. \ff b-. d,4-> f!8-. f-.
  r4 f,8-. e-. d4-. r
  r b'8-. a-. gis4-. r
  r2 gis' \trill
  a8-. e-. c-. a-. c-. d-. b-. g'?-.
  e-. b-. gis-. e-. e-. f-. e-. c'-.

  \mark \default

  R1 * 10
  bes4 \f r8 a g4 r8 bes
  cis4 r8 fis g4 r8 des
  ees4 r8 d! c!4 r8 ees
  fis4 r8 b? c4 r8 c,
  cis4 r r2
  R1 * 9

  \mark \default

  R1 * 2

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdFlautoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Flauto I"} R1}
  \oneMMRNumberOn

  R1 * 5
  <<{g,2 ( d'}{s2 \p s4 -\tweak #'minimum-length #5 \< s8 s \!}>>
  des2. \> bes4 \! )
  \override DynamicLineSpanner #'staff-padding = #2.3
  g4 ( a bes \< g8 d! \!
  <<{ees1 )}{\rightDynamic s4 \fp -\tweak #'minimum-length #7 \> s s s \!}>>
  g2 \< ( d'
  f \! ees4 \> d )
  f2 ( ees4 \! des
  bes \pp g ees ees' ~
  \dynamicLineSpannerStandard
  ees4 ) r aes,2 \pp ~
  aes aes ~
  aes aes ~
  aes aes ~
  aes gis! ~
  gis gis ~
  gis gis ~

  % insérer ici un crescendo sur 4 mesures
  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \PocoCrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  gis2 \repeatTie \< gis ~
  \noBreak
  gis b ~
  \noBreak
  b b ~
  b4 d2 <<{b4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  b4 \< d2 b4 ~
  b d2 b4 ~
  b f'2 gis4 \!

  \bar "||"

  \mark \default

  \key d \minor
  \override DynamicLineSpanner #'staff-padding = #2.4
  d'4 \ff \times 2/3 {a,8 \< ( d f} \times 2/3 {a d f} a8. ) [a16-.] \!
  gis2. \ff ( f4 )
  d \< ( e f  d8 a ) \!
  \dynamicLineSpannerStandard
  cis2. ( d4 )
  bes ( g ) a-. a-.
  f2-^ g-^
  e8 a' a,4 r8 a' a,4
  <<{
    \repeat unfold 13 {r8 a' a,4 r8 a' a,4}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 13 {s1}
  }>>

  \mark \default

  d4 \ff r r2
  R1 * 14

  \bar "||"

  \key d \major
  R1 * 4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdOboeI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Oboe I"} R1 * 4}
  \oneMMRNumberOn

  \noBreak
  \TempoIVTran

  fis,,1 ~
  \noBreak
  fis ~
  fis \dim ~
  fis \!
  r4 \rightDynamic b' \p \< ( c b8 a \!
  g4 ) r r2
  r4 \rightDynamic b \mf -\tweak #'minimum-length #7 \< ( c \! b8 \> a \!
  g4 ) r r2
  R1 * 4
  r2 d'2 \f ~
  <<{d1}{s4 \< s s s8 s \!}>>

  \mark \default

  d4 \ff r8 d cis4 r8 cis
  a4 r8 a e'4 r8 e
  d4 r8 d g,4 r8 g
  a4 r8 a cis4 r8 cis
  a4 r8 a e'4 r8 e
  d4 r8 d d4 r8 d
  d4 r8 d cis4 r8 cis
  d8
  \repeat unfold 7 a8
  a2:8 a:
  a1 \fz
  g \fz
  fis8 a a a a2:8
  a: a:
  bes1 \fz
  bes \fz
  a4 \f r cis! r
  d r bes r
  a r bes r
  a r a r
  a r a-. cis-.
  d r bes r
  a r bes r
  d r cis r

  \bar "||"

  \mark \default

  \key d \minor
  d4 r r2
  R1
  d,8 \f \< f gis a b d f gis \!
  a gis f d b a gis f
  d4 r r2
  R1
  \rightDynamic d8 \f \< f gis a bes d f g! \!
  aes g f d bes a! aes f
  \partcombineApartOnce d4 r r2
  R1 * 3
  fis8 \f ( a cis d ) fis2 \startTrillSpan ~
  <<{fis2}{s4 s8 s \stopTrillSpan}>> fis8 ( d a fis! )
  g ( bes! d fis ) g2 \startTrillSpan ~
  <<{g2}{s4 s8 s \stopTrillSpan}>> g8 ( d bes g )
  aes'2 \trill aes8 ( f! d aes )
  gis'2 ^\markup {\raise #2 \center-column{\musicglyph #"scripts.trill" \raise #1.2 \tiny \natural}}
  d8 ( b gis d' )

  \mark \default

  a'4 r r2
  R1 * 2
  r2 r4 a8 \ff a
  d,4 e8 e f f g4->|
  a-> ( c8 bes ) a4-. g-.|
  fis ees8 ees a,4 c8 c|
  r4 ees8 ees a,4 c8 c|
  ees4 r r8 ees4.:8 \p|
  r8 d4.: r8 bes4.:|
  r8 aes4.: \dim r8 g4.: \!|
  r8 f4.: r8 f4.: \pp|
  r8 f4.: r8 e4.:|
  a1 \ff ~|
  a
  a \fz ~
  a
  a \fz ~
  a
  a \fz (
  g )
  d'1 \f
  g,!4. ( gis16 a bes4-. ) fis-.
  g!4. ( gis16 a bes4-. ) fis-.
  bes2. bes4
  r bes r bes
  r g g g
  g r r2

  \mark \default

  bes4-^ a-^ r2
  a4 r gis r
  cis-> a-. r2
  \TempoIVPAn
  d2 \ff d
  d2. d4
  d2 d
  d2. d4
  d2 d
  d1 ~
  d4 r r2
  R1 * 2
  a4 \f r a r
  a r a r
  a r a r
  a r a r
  a' r a r
  a r a r

  \TempoIVMMaes

  d, r d2 \ff
  d1->
  d-> ~
  d
  d->
  d->
  d-> \fz
  d-> \fz
  d-> \fz
  d4 \ffz r r2

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdFlautoI = \new Voice {
  \time 2/2
  \key d \minor
  \set Staff.instrumentName = \markup \fontsize #3 \center-column {"Flauto" I}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "flute"
  \clef treble
  \SgMdFlautoI
}

voiceSgMdFlautoII = \new Voice {
  \time 2/2
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Flauto" II}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "flute"
  \clef treble
  \SgMdFlautoII
}

quoteScoreSgMdFlautoI = \SgMdFlautoI
quoteScoreSgMdFlautoII = \SgMdFlautoII
