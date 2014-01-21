%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7	: mouvement IV - Finale allegro                       *
  * Fichier de notes, hautbois 1 et 2, parties                          *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Hautbois I                                                    *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMdOboeI = \relative c'' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoIV

  \once \override MultiMeasureRest #'minimum-length = #28
  R1 * 16

  \TempoIVPPCresc

  r4 a \p  r bes
  r cis r2
  <<{r4 a r bes}{s4 s \< s s8 s \!}>>
  r4 e r2
  r4 a, \cresc r bes \!
  <<{f'1-^ ~}{\rightDynamic s4 \fz s8 s8 -\tweak #'minimum-length #7 \> s4 s8 s16 s \!}>>
  f2. \p r4
  R1
  d1-> \fp \> (
  d2 \! f \p )
  g ( f
  d \dim cis ) \!
  c! \pp ( bes
  aes g
  f4 ) r r2
  R1 * 4
  r4 f'8-. \mf f-. bes,4-> c8-. c-.
  d2. r4
  r f8 \cresc f b,4-> c8 c \!
  d2. r4
  r f8 \f f b,4 c8 c
  d4 \< e8 e f-. fis-. g-. \! gis-.
  a4 \ff r r2

  \mark \default

  f2.-> \ff f4
  d ( e f d8 a )
  cis2.-> ( f4 )
  f-. g-. e2
  r8 d-. e16 ([d cis d]) g2-.
  e-. r
  r8 d-. e16 ([d cis d]) bes'2-.
  a-. r
  r8 a,-. b16 ([a gis a]) ees'2-.
  d-. r
  r8 a-. b16 ([a gis a]) e'!2-.
  dis-. r
  r8 a-. b16 ([a gis a]) e'2-.
  fis-. r
  r8 a,-. \< b16 ([a gis a]) fis'2-. \!
  a1 \ff
  g!1-^ ~
  g ~
  g4 r r2
  R1 * 3

  \noBreak
  \TempoIVRit

  R1

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 4
  g2-> \f gis->
  a-> r
  r4 d,2 \ff ( cis4 )
  d2. ( e4 )
  f ( e a, d )
  cis-. d-. e2->
  g-> g->
  g4-. g2-> r4
  f2-> \ff a->
  a2.-> r4
  R1 * 2
  g2-> \ff bes->
  b2.-> r4
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
  gis ) r r2

  \bar "||"

  \mark \default

  \key a \major
  R1 * 4
  e'2 \mp ( fis4 e8 d )
  cis2 ( e4 d )
  cis2 ( b4 a )
  gis ( fis8 eis! d'4-. ) d-.
  cis r r2
  r4 cis \p ( eis2
  fis4 ) r r2
  r4 cis \pp ( eis2
  fis4 ) a \< ( b \! a8 \> g!
  fis4 \! ) r r2
  r4 a \< ( bes \! a8 \> g!
  fis4 \! ) r r2
  R1 * 3
  r2 c \f ~
  c4 b ( c cis \<
  d cis \! d dis )

  \mark \default

  \tag #'partScore {
    e2 \ff gis!4 ( fis8 e )
  }
  \elseTag #'partScore {
    e2 \ff gis4 ( fis8 e )
  }

  e2 fis4 ( e8 d )
  cis2 ( e4 d )
  cis ( e gis fis8 e )
  e2 ( fis4 e8 d )
  cis4 ( a' fis d )
  cis ( b8 a fis'4. gis,8-. )
  a8 \ff e' e e e2:8
  e: e:
  e1-^ \fz
  gis-^ \fz
  a8 e e e e2:8
  e: e:
  f1-^ \fz
  f-^ \fz
  e4-. \ff r gis!-. r
  a-. r b-. r
  g-. r b-. r
  a-. r gis!-. r
  a-. r g-. gis-.
  a-. r b-. r
  c-. r bes-. r
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

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 4
  f2 \pp ( f'
  ges f4 ees! )
  c r r2
  R1
  bes1 \pp ~
  bes ~
  bes4 r r2
  R1
  fis2 \pp -\tweak #'positions #'(2.5 . 0) ( fis'
  g fis4 e )
  cis r r2
  R1 * 10

  % Si cité par les cors, on redescend d'une octave
  \tag #'quoteCornoIII
  {
    c4 \mf ( g bes aes
    g f8 ees d2 ) \trill \cresc
    r8 \! ees ( d c b4 c8 d
    b2. c4 )
  }
  \elseTag #'quoteCornoIII
  {
    c''4 \mf ( g bes aes
    g f8 ees d2 ) \trill \cresc
    \noBreak
    r8 \! ees ( d c b4 c8 d
    b2. c4 )
  }

  r8 cis ( dis e ) fis4 ( e8 dis )
  bis4 cis8-. dis-. fis4 \cresc ( e ) \!
  r8 d!-. ees-. f!-. ges4 ( f8 \< ees )
  cis4 d8-. e!-. \! g!4 ( f )
  r2 b8 \f b, b r
  r2 b'8 \f b, b r
  c8-> \fz a r4 fis'8-> \fz dis r4
  a'8-> \fz fis r4 c'8-> \fz a r4
  a4 \ff r r2
  R1

  \mark \default

  R1 * 8
  r4 b8-. \ff b-. e,4-> g8-. g-.
  r4 b8-. a-. g4-. r
  r8 g-. fis-. e-. g4-. r
  r ais,8-. b-. r4 dis8-. e-.
  r4 b'8-. \ff b-. d,4-> f!8-. f-.
  r4 aes8-. g-. f4-. r
  r d8-. c-. b4-. r
  r2 gis' \trill
  a8-. e-. c-. a-. c-. d-. b-. g'-.
  e-. b-. gis-. e-. e-. f-. e-. c'-.

  \mark \default

  R1 * 6
  c4 \f r8 b a4 r8 c
  dis4 r8 gis a4 r8 ees
  f!4 r8 e! d!4 r8 f
  gis4 r8 cis d4 r8 aes
  bes4 r r2
  R1
  ees,4 \f r8 d c!4 r8 ees
  fis4 r8 b c4 r8 c,
  cis4 \ff gis'8-. gis-. cis,4 a'8-. a-.
  gis4 eis8-. eis-. a4 fis!8-. fis-.
  eis4 r r2
  R1 * 7

  \mark \default

  R1 * 2
  \override DynamicLineSpanner #'staff-padding = #2
  r4 \times 2/3 {cis,8 \p \< ( fis a} \times 2/3 {cis fis a} cis8. ) [cis16-.] \!
  <<{c!2. ( a4 )}{s4 \fz -\tweak #'minimum-length #6 \> s s s8 s \!}>>
  fis4 ( gis a fis8 cis
  <<{c!1 ) ~}{\bracketedHairpin \rightDynamic  s4  \p -\tweak #'X-offset #2 \> s s s8 s \!}>>
  c1 \pp ~
  c
  g2 \p ( d' \<
  <<{des2. bes4 )}{s4 \bindDynamics s \> s s \!}>>
  g4 ( a bes \< g8 d! \!
  <<{ees1 )}{s4 \fp -\tweak #'minimum-length #8 \> s s s \!}>>
  g2 ( \< d'
  f\! ees4 \> d )
  f2 ( ees4 \! des
  bes \pp g ees ees' ~
  \dynamicLineSpannerStandard
  ees ) r ces2 \pp ~
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
  b \< b ~
  \noBreak
  b d ~
  \noBreak
  d d ~
  d4  f2 <<{d4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  d4 \< f2 d4 ~
  d f2 d4 ~
  d aes'2 d4 \!

  \mark \default

  \bar "||"

  \key d \minor
  a!4 \ff r r2
  R1 * 3
  r2 r4 a \ff
  f2-^ g-^
  e!8 a a,4 r8 a' a,4
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

  gis'1 -\parenthesize-> \fz ( \> ~
  <<{gis1}{s4 s s s8 s16 s \!}>>
  <<{a1}{s4 \p \> s s s8 s16 s \!}>>
  <<{f1 ~}{s4 \fp -\tweak #'minimum-length #10 \dim s s  -\tweak #'minimum-length #10 \> s8 s16 s \!}>>
  f1 ) \pp
  R1 * 10

  \bar "||"

  \key d \major

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdClarinettoII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Clar II"} R1 * 4}
  \oneMMRNumberOn

  a2 \mp ( b4 a8 g )
  <<{fis2 ( a4 g )}{s4 \< s s s8 s \!}>>
  fis2 ( e4 d )
  cis ( \> b8 ais g'4-. ) \! g-.
  fis r r2
  R1 * 2
  r4 d! \p ( fis e8 d )
  d4 r r2
  R1 * 6
  r2 f ( \f ~
  f4 e f fis )
  <<{g ( fis g gis )}{s4 \< s s s8 s \!}>>

  \mark \default

  a4 \ff r8 a a4 r8 a
  \repeat unfold 4 {a4 r8 a a4 r8 a}
  a4 r8 a b4 r8 b
  a4 r8 a a4 r8 a
  a8 \ff fis fis fis fis2:8
  fis: fis:
  f1 \fz
  g \fz
  fis!8 fis fis fis fis2:8
  fis: fis:
  f1 \fz
  e \fz
  f8 \f a, a4. a8 a4 ~
  a8 a a4. c8 c4 ~
  c8 c c4. bes8 bes4 ~
  bes8 a a4. a8 a4 ~
  a8 a a4. a8 a4 ~
  a8 a a4. bes8 d4 ~
  d8 c c4. bes8 bes4 ~
  bes8 a a4. a8 a4

  \bar "||"

  \mark \default

  \key d \minor
  d,4 r r2
  R1
  \rightDynamic d'8 \f \< f gis a b \! r r4
  a8 gis f d b! a gis f
  d4 r r2
  R1
  \rightDynamic d'8 \f \< f! gis a bes! \! r r4
  aes8 g? f d bes' a aes f
  d4 r r2
  f,1-> \ff
  fis-> ~
  fis
  a-^ \ffz ~
  a
  d-^ \ffz ~
  d
  d \fz
  d \fz

  \mark \default

  f4 \ff r r2
  R1
  r4 a8 \ff a d,4 e
  f8 f g4 a r
  R1 * 2
  r4 ees8 \ff ees a,4 c8 c
  r4 ees8 ees a,4 c8 c
  c'4 r r8 bes \p bes bes
  r8 aes4.:8 r8 g4.:
  r8 f4.: \dim r8 g4.: \!
  r8 f4.: r8 f4.: \pp
  r8 f4.: r8 e4.:
  a1 \ff ~
  a
  a \fz ~
  a
  a \fz ~
  a
  a \fz (
  g )
  fis4 \f \< ( g gis a ) \!
  g!4. ( gis16 a bes4-. ) fis-.
  g!4. ( gis16 a bes4-. ) fis-.
  g!2. g4
  r g r g
  r bes bes bes
  g r r2

  \mark \default

  e4-^ ees-^ r2
  a4 r gis r
  a-> a,-. r2

  \TempoIVPAn

  a'2 \ff a
  \noBreak
  gis2. gis4
  a2 a
  gis2. gis4
  a2 d,
  d1 ~
  d4 r r2
  R1 * 2
  a'4 \f r a r
  a r a r
  a r a r
  a r a r
  d r d r
  d r d r

  \TempoIVMMaes

  d,2 ( \ff \<  d'4 cis ) \!
  c2.-> ( a4-. )
  g2.-> a4-\parenthesize->
  bes2->
  g4-> d->
  fis1->
  g->
  a \fz
  a \fz
  a \fz
  a4 \ffz r r2

  \bar "|."
}

%{
  *****************************************************************
  * Hautbois II                                                   *
  *****************************************************************
%}

SgMdOboeII = \relative c'' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 4)
\cueEventType  \oneMMRNumberOn

  \TempoIV

  \once \override MultiMeasureRest #'minimum-length = #28
  R1 * 16

  \TempoIVPPCresc

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdOboeI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Oboe I"} R1 * 5}
  \oneMMRNumberOn

  \override DynamicLineSpanner #'staff-padding = #2
  <<{d1-^ ~}{\rightDynamic s4 \fz s8 s8 -\tweak #'minimum-length #5 \> s4 s8 s16 s \!}>>
  d2. \p r4
  R1
  b1-> \fp \> ~
  b2 ( \! a \p )
  \dynamicLineSpannerStandard
  R1 * 9

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdOboeI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Oboe I"} R1 * 4}
  \oneMMRNumberOn

  r4 f'8 \f f b,4 c8 c
  d4 \< e8 e f-. fis-. g-. \! gis-.
  a4 \ff r r2

  \mark \default

  d,2.-> \ff f4
  d ( e f d8 a )
  a2.-> ( d4 )
  d-. d-. a2
  r8 d-. e16 ([d cis d]) g2-.
  e-. r
  r8 d-. e16 ([d cis d]) bes'2-.
  a r
  r8 a,-. b16 ([a gis a]) ees'2-.
  d-. r
  r8 a-. b16 ([a gis a]) e'!2-.
  dis-. r
  r8 a-. b16 ([a gis a]) e'2-.
  fis-. r
  r8 a,-. \< b16 ([a gis a]) fis'2-. \!
  fis1 \ff
  cis1-^ ~
  cis ~
  cis4 r r2
  R1 * 3

  \noBreak
  \TempoIVRit

  R1

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 4
  cis2-> \f cis->
  cis-> r
  r4 d2 \ff ( cis4 )
  d2. ( e4 )
  f ( e a, d )
  cis-. d-. cis2->
  cis-> c->
  b4-. bes2-> r4
  a2-> \ff f'->
  ees2.-> r4
  R1 * 2
  bes2-> \ff g'->
  f2.-> r4
  R1 * 4

  \mark \default

  R1 * 2
  a4 \ff r8. g16 g4 r8. f16
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
  a ( e )
  eis4 ( fis8 eis b'4-. ) b-.
  ais r r2
  R1 * 3
  r4 \rightDynamic fis' \bracketedPP -\tweak #'minimum-length #9 \< ( g \! fis8 \> e
  d4 \! ) r r2
  r4 fis \< ( g \! fis8 \> e
  d4 \! ) r r2
  R1 * 6

  \mark \default

  R1 * 7
  a8 \ff cis cis cis cis2:8
  cis: cis:
  c1-^ \fz
  d-^ \fz
  cis?8 cis cis cis cis2:8
  cis: cis:
  c1-^ \fz
  b-^ \fz
  c4-. \ff r d-. r
  c-. r f-. r
  e-. r f-. r
  e-. r e-. r
  e-. r e-. d-.
  c-. r f-. r
  e-. r d-. r
  c-. r b-. r

  \bar "||"

  \mark \default

  \key a \minor
  a4 r r2
  R1
  a8-. \f c-. dis-. e-. fis-. \< a-. c-. dis-.
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

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 4
   ees2 \pp -\tweak #'positions #'(1.5 . 0) ( ees' ~
  ees a,4 c )
  a r r2
  R1 * 5
  e2 \pp -\tweak #'positions #'(1.5 . 1) ( e' ~
  e ais,4 cis )
  ais r r2
  R1
  fis1 \p (
  g!
  fis
  g ~
  g2 fis ~
  fis4 ) r r2
  R1 * 11

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdOboeI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Oboe I"} R1 * 2}
  \oneMMRNumberOn

  c'8-> \fz a r4 fis'8-> \fz dis r4
  a'8-> \fz fis r4 c'8-> \fz a r4
  fis4 \ff r r2
  R1

  \mark \default

  R1 * 8
  r4 b8-. \ff b-. e,4-> g8-. g-.
  r4 g8-. fis-. e4-. r
  r8 e-. d-. c-. b4-. r
  r ais8-. b-. r4 dis8-. e-.
  r4 b'8-. \ff b-. d,4-> f!8-. f-.
  r4 f8-. e-. d4-. r
  r b8-. a-. gis4-. r
  r2 gis' \trill
  a8-. e-. c-. a-. c-. d-. b-. g'-.
  e-. b-. gis-. e-. e-. f-. e-. c'-.

  \mark \default

  R1 * 6
  c4 \f r8 b a4 r8 c
  dis4 r8 gis a4 r8 ees
  f!4 r8 e! d!4 r8 f
  gis4 r8 cis d4 r8 aes
  bes4 r r2
  R1
  ees,4 \f r8 d c!4 r8 ees
  fis4 r8 b c4 r8 c,
  cis4 \ff eis8-. eis-. a,4 fis'8-. fis-.
  eis4 cis8-. cis-. fis4 dis8-. dis-.
  cis4 r r2
  R1 * 7

  \mark \default

  R1 * 2

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdOboeI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Oboe I"} R1}
  \oneMMRNumberOn

  R1 * 2
  <<{a1 ~}{\rightDynamic s4 \p \> s s s8 s \!}>>
  a1 \pp ~
  a
  g4 r r2
  R1 * 7
  r2 aes \pp ~
  aes aes ~
  aes aes ~
  aes aes ~
  aes gis ~
  gis gis ~
  gis gis ~
  % insérer ici un crescendo sur 4 mesures
  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \PocoCrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  gis \< gis ~
  \noBreak
  gis b ~
  \noBreak
  b b ~
  b4  d2 <<{b4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  b4 \< d2 b4 ~
  b d2 b4 ~
  b f'2 gis4 \!

  \mark \default

  \bar "||"

  \key d \minor
  f \ff r r2
  R1 * 3
  r2 r4 cis \ff
  d2-^ ees-^
  cis8 a' a,4 r8 a' a,4
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

  d1 -\parenthesize-> \fz ( \> ~
  <<{d1}{s4 s s s8 s16 s \!}>>
  <<{a1}{s4 \p -\tweak #'minimum-length #5 \> s s s8 s16 s \!}>>
  <<{d1 ~}{s4 \fp -\tweak #'minimum-length #9 \dim s s  -\tweak #'minimum-length #10 \> s8 s16 s \!}>>
  d1 ) \pp
  R1 * 10

  \bar "||"

  \key d \major
  R1 * 4
  \override DynamicLineSpanner #'staff-padding = #1.5
  fis2 \mp ( g4 e )
  <<{d2 ( cis )}{s4 \< s s s8 s \!}>>
  d2 ( a )
  ais4 ( \> b8 ais! e'4-. ) \! e-.
  \dynamicLineSpannerStandard
  dis r r2
  R1 * 2
  r4 fis, \p ( ais2
  b4 ) r r2
  R1 * 6
  r2 a ( \f
  bes a )
  <<{d2. ( b4)}{s4 \< s s s8 s \!}>>

  \mark \default

  a4 \ff r8 a a4 r8 a
  \repeat unfold 4 {a4 r8 a a4 r8 a}
  a4 r8 a b4 r8 b
  a4 r8 a a4 r8 a
  a8 \ff a a a a2:8
  a: a:
  a1 \fz
  cis \fz
  d8 a a a a2:8
  a: a:
  bes1 \fz
  bes \fz
  a8 \f a a4. a8 a4 ~
  a8 a a4. c8 c4 ~
  c8 c c4. bes8 bes4 ~
  bes8 a a4. a8 a4 ~
  a8 a a4. a8 a4 ~
  a8 a a4. bes8 d4 ~
  d8 c c4. bes8 bes4 ~
  bes8 a a4. a8 a4

  \bar "||"

  \mark \default

  \key d \minor
  d,4 r r2
  R1
  \rightDynamic d8 \f \< f gis a b d f gis \!
  a8 gis f d b! a gis f
  d4 r r2
  R1
  \rightDynamic d8 \f \< f! gis a bes! \! d f g!
  aes8 g? f d bes a aes f
  d4 r r2
  f1-> \ff
  fis-> ~
  fis
  fis-^ \ffz ~
  fis
  g-^ \ffz ~
  g
  gis \fz
  gis \fz

  \mark \default

  d'4 a8 \ff a d,4 e8 e
  f4 g a c8 bes
  a1 \f ~
  a4 r r2
  R1 * 2
  r4 ees'8 \ff ees a,4 c8 c
  r4 ees8 ees a,4 c8 c
  fis4 r r8 g \p g g
  r f! f f r ees ees ees
  r d \dim d d r ees ees ees \!
  r d d d r d \pp d d
  r d d d r cis cis cis
  f1 \ff ~
  f
  fis \fz ~
  fis
  fis \fz ~
  fis
  d \fz ~
  d
  d4 \f \< ( e eis fis! ) \!
  g!4. ( gis16 a bes4-. ) fis-.
  g!4. ( gis16 a bes4-. ) fis-.
  ees2. ees4
  r ees r ees
  r g g g
  e! r r2

  \mark \default

  cis4-^ c-^ r2
  dis4 r d r
  cis-> a-. r2

  \TempoIVPAn

  f'!2 \ff f
  d2. d4
  f2 f
  d2. d4
  f2 d
  d1 ~
  d4 r r2
  R1 * 2
  <<{
    a4 \f r a r
    \repeat unfold 3 {a r a r}
    }
    \new Voice {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 4 {s1}
  }>>
  d4 r d r
  d r d r

  \TempoIVMMaes

  d2 ( \ff \<  d'4 cis ) \!
  \noBreak
  c2.-> ( a4-. )
  g2.-> a4-\parenthesize->
  bes2->
  g4-> d->
  fis1->
  g->
  fis \fz
  fis \fz
  fis \fz
  fis4 \ffz r r2

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdOboeI = \new Voice {
  \time 2/2
  \key d \minor
  \set Staff.instrumentName = \markup \fontsize #3 \center-column {"Oboe" I}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "oboe"
  \clef treble
  \SgMdOboeI
}

voiceSgMdOboeII = \new Voice {
  \time 2/2
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Oboe" II}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "oboe"
  \clef treble
  \SgMdOboeII
}

quoteScoreSgMdOboeI = \SgMdOboeI
quoteScoreSgMdOboeII = \SgMdOboeII
