%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement III - Scherzo Vivace                      *
  * Fichier de notes, clarinettes I et II, parties                      *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ****************************************************************
  *       Clarinette I                                           *
  ****************************************************************
%}

\include "Common/Version.ly"

% Fichier cité par le cor I II :
% le \tag #'partscore devient \tag #'partScore \tag #'quoteCornoI \tag #'quoteCornoII {

SgMcClarinettoI = \relative c''' {

  \include "Common/Properties.ly"
  \oneMMRNumberOn
  \cueEventType
  \TempoIII

  \transposition a
  r2 r4
  R1 * 6/4 * 7
  \tag #'quoteClarinettoII {
    g4.-> \mf ( aes8 f aes ) g4.-> \dim ( aes8 f aes )\!
  }
  \elseTag #'quoteClarinettoII {
    g4.-> \mf ( aes8 f aes ) g4.-> \dim ( aes8 f aes )
  }
  <<{g4}{s8 \< s16 s32 s64 \!}>> c4 ( \f \> bes aes g f \!
  ees \p ) r r r2 r4
  R1 * 6/4
  g,2. \pp ( aes
  g4 ) r r r des'!2-> \p ~
  des2. \> ~ des4 \! r r
  R1 * 6/4 * 2
  f,4 \f \< ( e aes g des' c \! )
  c \mf r c r8 c c4-. bes-.
  aes r aes r8 aes \< bes4-. c-. \!
  des r des r8 des \> des4-. c-. \!
  bes r bes r8 bes \< c4-. des-. \!
  ees2-> \f aes,4.-> aes8 bes4-. c-.
  des2-> g,4.-> g8 aes4-. bes-.
  c2-> f,4.-> aes8 aes4-. g-.

  \mark \default  % Mark A

  aes \f r aes' r8 aes aes4-. g-.
  aes r aes \cresc r8 aes aes4-. g-.
  aes2. \trill \ff r8 aes8 aes4-. g-.
  aes2. \trill r8 aes8 aes4-. g-.
  f4 r r r2 r4
  R1 * 6/4 * 3
  f,4 \f f8 ([g!]) g ([aes]) aes ([bes]) bes ([c]) c ([des])
  des ([c \<]) c ([d]) d ([ees]) ees ([e]) e ([f]) f ([g]) \!
  g, ([a]) \< a ([bes]) bes ([c]) c ([des]) des ([d]) d ([ees]) \!
  d2 \ff ees4-. d2 des4-.
  des!-> c-. b-. des-> c-. b-.
  des-> \fz c bes'!-> \fz aes ges-> \fz f
  e-. r d-. r e-. r
  d-. r e-. r2 r4
  R1 * 6/4 * 2
  c4-. \mp r c-. r8 c c4-. bes-.
  \override DynamicLineSpanner #'staff-padding = #2
  aes-. r aes-. r8 aes \< bes4-. c-. \!
  des-. \fz r des-. r8 des \> des4-. c-. \!
  bes-. \p r bes-. r8 bes \< c4-. des-. \!
  ees2-> \fz aes,4.-> aes8 bes4-. c-.
  des2-> g,4.-> g8 aes4-. bes-.
  c2-> f4.-> f8 g4-. aes-.
  \dynamicLineSpannerStandard

  \mark \default  % Mark A

  g4. \mf ( aes8 f aes ) g4. \p ( aes8 f aes )
  g4 \< ( c bes \dim aes g \> f \! )
  ees!4. \p ( f8 d f ) ees4. ( f8 d f )
  ees4 ( aes \> g f ees des! ) \!
  c4. \pp ( des8 c des ) c4. ( des8 c des )
  c4 r r r2 r4
  R1 * 6/4 * 3
  \pageTurn
  r8 c,-. \f \< c-. e-. e-. aes-. aes-. c-. c-. e-. e-. c'-. \!

  \mark \default  % Mark A

  c,2 \ff c ( d4 e )
  f2 ( c4 aes2 f4 )
  f ( bes c des?2 d4 )
  ees2 ( bes4 g2 ees4 )
  aes'2. \trill f4 ( g aes )
  aes g2 \trill ees4 ( f g )
  <<{g4 f2 ~ f e4-.}{s4 s4 \startTrillSpan s8 s \stopTrillSpan}>>
  f4-. r r r2 c4-.
  f-. r r r2 c4-.
  aes'2. \trill r8 aes8 aes4-. g-.
  aes2. \trill r8 aes8 aes4-. g-.
  f4 r r r2 r4
  c4-. \p d-. \< ees!-. f-. g-. a-. \!
  bes \f r r r2 r4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcClarinettoII" #UP {s4 * 0 ^\markup { \fontsize #-3 "Clar II"} R1 * 6/4}
  \oneMMRNumberOn

  \mark \default  % Mark A

  f,2-> \ff f-> f->
  g-> g4 a-. bes-. c-.
  d-. ees-. f-. ges-. f-. f-.
  e2-> f4 e2-> f4
  ges2-> f4 ges2-> ges4
  a r a r a r
  g r f r g r
  g e,8 \< ( fis g a b cis dis e fis g ) \!
  gis2.-> a4-. bes!-. c!-.
  c2.-^ \ff des!-^
  des-^ c-^
  f,4-. r aes-. aes-. aes-. aes-.
  aes-. r aes-. aes-. aes-. aes-.
  aes \fz aes aes \fz aes aes \fz aes
  aes \fz aes aes \fz aes aes \fz aes
  aes r r f r r
  <<{f,1. ~}{s2. -\tweak #'minimum-length #10 \> s2 s4 \!}>>

  \bar "||"

  \TempoIIIMM

  \key bes \major
  f4 r r r2 r4
  R1 * 6/4 * 11

  \mark \default  % Mark A

  \tag #'quoteCornoI \tag #'quoteCornoII \tag #'quoteOboeII {
    f!4 \bracketedPP \<  ( bes4. d8 d4 f4. bes8 ) \!
  }
  \elseTag #'quoteCornoI \elseTag #'quoteCornoII \elseTag #'quoteOboeII {
    \override DynamicLineSpanner #'staff-padding = #2
    f,!4 \Solo \bracketedPP \<  ( bes4. _\markup {\italic "legato"} d8 d4 f4. bes8 ) \!
  }

  <<{bes1. ~}{\rightDynamic s4 \f \bindDynamics s \> s s s s8 s \!}>>
  bes4 \bracketedP r r r2 r4
  <<{bes1.}{s4 \fz -\tweak #'minimum-length #6 \> s s s s s8 s \!}>>
  <<{b1.-> ~}{s4 \< s4. s8 \! s4 \> s s8 s \!}>>
  b2 \p r4 r2 r4
  \dynamicLineSpannerStandard
  e,2 \p ( d4 b2 g4 )
  g2. ( b )
  a \dim gis \!
  a ~ a
  fis1. \pp (
  g4 ) r r r2 r4
  R1 * 6/4
  r4 f'-. \p r f-. r f-.
  r ees-. r ees-. r ees-.
  ees r r r2 r4
  R1 * 6/4
  r4 ees-. \p r ees-. r ees-.
  r des-. r des-. r des-.
  R1 * 6/4 * 4
  \override DynamicLineSpanner #'staff-padding = #2
  f,4 \mp \< ( b4. f'8 f4 f,4. d'8 ) \!

  \mark \default  % Mark A

  <<{d2 ( c4 f2. )}{s2. s4 -\tweak #'minimum-length #5 \> s s8 s \!}>>
  f,4 \p \< ( b4. f'8 f4 f,4. d'8 ) \!
  <<{d2 \f ( c4 f2.)}{s2. s4 -\tweak #'minimum-length #5 \> s s8 s \!}>>
  c4 \p \< ( e4. c'8 c4 e,4. b'8 ) \!
  <<{b2. ( a )}{s2. \f s4 \> s s8 s16 \! s}>>
  <<{g1.}{s4 \p \bindDynamics s s -\tweak #'minimum-length #5 \< s s s8 s \!}>>
  <<{g1.}{s2 s4 \> s2 s4 \!}>>
  g1. \pp
  \dynamicLineSpannerStandard
  g1.
  ees4 r r r2 r4
  R1 * 6/4
  aes,4 \Solo \p \< -\tweak #'positions #'(3 . 0) ( ees'4. aes8 \! aes4-> c,4. f8 )
  f2 ( ees4 \> c aes2 \! )
  g4 r r r2 r4
  R1 * 6/4 * 6

  \mark \default  % Mark A

  ees4 \p \< ( aes4. c8 ) c4 ( ees4. aes8 \! )
  <<{aes1. ~}{s2. \f -\tweak #'minimum-length #5 \> s4 s s8 s \!}>>
  aes4 \p r r r2 r4
  R1 * 6/4 * 3
  aes2 \pp ( f4 c aes4. des8 )
  des2 ( c4 aes2 f4 )
  aes,1.-> ~
  aes

  \TempoIIIAcc

  r4 aes'-. \p r aes-. r aes-.
  r4 aes-. \< r aes-. r aes-. \!
  r4 aes8 \mf aes r4 aes8 \cresc aes r4 aes8 aes \!
  r4 aes8 aes r4 aes8 aes r4 aes8 aes

  \TempoIIIViv

  aes4 r r r2 r4
  R1 * 6/4
  f4-. \ff r g-. r8 aes bes4-. c-.
  des-. ees8 ( e f4 ) g8 ( aes bes c des b )

  \mark \default  % Mark A

  <<{c4 c,2 ~ c2.}{
      s4 \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
      \once \override TrillSpanner #'outside-staff-priority = #500
      s ^\markup {\lower #0.6 \tiny \flat} \startTrillSpan
  }>>
  \noBreak
  <<{c1.}{s4 s s s s s8 s \stopTrillSpan}>>
  c'4-. c,-. r c'-. c,-. r
  c'-. c,-. r c'-. c,-. r
  c' r r r2 r4
  R1 * 6/4 * 2

  \bar "||"

  \key f \minor
  R1 * 6/4 * 7
  g4.-> \mf ( aes8 f aes ) g4.-> ( aes8 f aes )
  g4 c ( \> bes aes g f \!
  ees4 ) r r r2 r4
  R1 * 6/4
  g,2. \pp ( aes
  g4 ) r r r des'2-\parenthesize-> \p ~
  des2. \> ~ des4 \! r r
  R1 * 6/4 * 2
  f,4 \f \< -\tweak #'positions #'(2 . 0) ( e aes g des' c \! )

  \mark \default  % Mark A

  c4 \mf r c r8 c c4-. bes-.
  \override DynamicLineSpanner #'staff-padding = #2
  aes r aes r8 aes \< bes4-. c-. \!
  des r des r8 des \> des4-. c-. \!
  bes r bes r8 bes \< c4-. des-. \!
  \dynamicLineSpannerStandard
  ees2-> aes,4.-> aes8 bes4-. c-.
  des2-> g,4.-> g8 aes4-. bes-.
  c2-> f,4.-> aes8 aes4-. g-.
  aes4 \f r aes' r8 aes aes4-. g-.
  aes r aes \cresc r8 aes aes4-. g-.
  aes2. \trill \ff r8 aes aes4-. g-.
  aes2. \trill r8 aes aes4-. g-.
  aes4-. g-. aes-. g-. aes-. g-.
  aes-. g-. aes-. \dim g-. aes-. g-.
  aes4 \mp ( g f \dim ees des c ) \!
  bes ( \p ( aes \> g f ees des ) \!
  c \p r r ges' r r
  r2 r4 f \pp r r
  \override DynamicLineSpanner #'staff-padding = #2
  r2 r4 des \pp r r
  <<{c1.}{s4 \> s s s s s8 s \!}>>

  \mark \default  % Mark A

  f'4 ( \< e f e f e )
  f ( e f e f e ) \!
  f ( \f ees! des \dim c bes aes ) \!
  bes \bracketedP r r r2 r4
  \dynamicLineSpannerStandard
  R1 * 6/4 * 6

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcClarinettoII" #DOWN {s4 * 0 _\markup { \fontsize #-3 "Clar II"} R1 * 6/4 * 4}
  \oneMMRNumberOn

  ees,1. \pp (
  fes )
  \override DynamicLineSpanner #'staff-padding = #2.8
  des2. \< ( ees2 fes4 ) \!
  <<{fes1.-^ ~}{s4 \f -\tweak #'minimum-length #7 \> s s s s s8 s \!}>>

  \TempoIIIPPrB

  fes2. f ~
  \noBreak
  f1. ~
  <<{f1.}{s4 \> s s s s s \!}>>
  des1.
  c1. \pp \> (
  e \! )
  \dynamicLineSpannerStandard

  \TempoIIIiT

  f4 r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  f2-> \ff f-> f->
  g-> g4 a-. bes-. c-.
  d-. ees-. f-. ges-. f-. f-.
  e2-> f4-. e2-> f4-.
  ges2-> f4-. ges2-> ges4-.
  a r a r a r
  g r f r g r
  g e,8 \< ( fis g a b cis dis e fis g ) \!
  gis2. a4-. bes!-. c!-.
  c2.-^ \ff des!-^
  des-^ c-^
  f,4-. r aes!-. aes-. aes-. aes-.
  aes-. r aes-. aes-. aes-. aes-.
  aes \fz aes aes \fz aes aes \fz aes
  aes \fz aes aes \fz aes aes \fz aes
  c r c r8 c c4 c
  c r r c r r
  c r r r2 r4

  \bar "|."
}

%{
  ***************************************************************
  *     Clarinette II                                           *
  ***************************************************************
%}

SgMcClarinettoII = \relative c'''{

  \include "Common/Properties.ly"

  \oneMMRNumberOn
  \cueEventType
  \TempoIII

  \transposition a
  r2 r4
  R1 * 6/4 * 7

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcClarinettoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Clar I"} R1 * 6/4}
  \oneMMRNumberOn

  r4 aes ( \f \> g f ees d \!
  c \p ) r r r2 r4
  R1 * 6/4
  e,2. \pp ( ees
  e4 ) r r r2 r4
  R1 * 6/4 * 3
  f4 \f \< -\tweak #'positions #'(2 . 0) ( e aes g des' c \! )
  aes \mf r aes r8 aes aes4-. g-.
  f r f r8 f \< g4-. aes-. \!
  bes r bes r8 bes \> bes4-. aes-. \!
  g r g r8 g \< aes4-. bes-. \!
  ees2-> \f aes,4.-> aes8 bes4-. c-.
  des2-> g,4.-> g8 aes4-. bes-.
  c2-> f,4.-> f8 f4-. e-.

  \mark \default  % Mark A

  f \f r f' r8 f f4-. e-.
  f r f \cresc r8 f f4-. e-.
  f2. \ff \trill r8 f8 f4-. e-.
  f2. \trill r8 f8 f4-. e-.
  f r r r2 r4
  c,4-. \p r ees-. r g-. a-.
  bes1.
  bes4 \dim ( aes! ) aes ( ges ) f ( e ) \!
  f4 \f f8 ([g!]) g ([aes]) aes ([bes]) bes ([c]) c ([des])
  des ([c \<]) c ([d]) d ([ees]) ees ([e]) e ([f]) f ([g]) \!
  g, ([a]) \< a ([bes]) bes ([c]) c ([des]) des ([d]) d ([ees]) \!
  d2 \ff ees4-. d2 des4-.
  des!-> c-. b-. des-> c-. b-.
  des-> \fz c bes'!-> \fz aes ges-> \fz f
  c-. r c-. r c-. r
  c-. r c-. r2 r4
  R1 * 6/4 * 2
  aes4-. \mp r aes-. r8 aes aes4-. g-.
  f-. r f-. r8 f \< g4-. aes-. \!
  f-. \fz r f-. r8 f \> f4-. fis-. \!
  g-. \p r g-. r8 g \< aes4-. bes-. \!
  \override DynamicLineSpanner #'staff-padding = #2.7
  c2-> \fz \bindDynamics c,4.-> \fz f8 g4-. aes-.
  aes \fz ( g ) bes,4. \fz ees8 f4-. g-.
  g \fz ( f ) aes4. \fz des8 ees4-. f-.
  \dynamicLineSpannerStandard

  \mark \default  % Mark A

  e4. \mf ( f8 d f ) e4. \p ( f8 d f )
  e4 \< ( aes g \dim f ees \> d \! )
  g,4. \p ( aes8 f aes ) g4. ( aes8 f aes )
  c4 ( c \> ees aes, g bes ) \!
  e,2. \pp ( ees
  e4 ) r r r2 r4
  R1 * 6/4 * 3
  r8 c-. -\tweak #'X-offset #-3.5 \f \< c-. e-. e-. aes-. aes-. c-. c-. e-. e-. c'-. \!

  \mark \default  % Mark A

  c,2 \ff c ( d4 e )
  f2 ( c4 aes2 f4 )
  f ( bes c des?2 d4 )
  ees2 ( bes4 g2 ees4 )
  aes'2. \trill f4 ( g aes )
  aes g2 \trill ees4 ( f g )
  <<{g4 f2 ~ f e4-.}{s4 s4 \startTrillSpan s s \stopTrillSpan}>>
  f4-. r r r2 c4-.
  f-. r r r2 c4-.
  f2. \trill r8 f8 f4-. e-.
  f2. \trill r8 f8 f4-. e-.
  f,4-. \fp g-. aes-. \dim bes-. c-. des-. \!
  c4 r r r2 r4
  bes4-. \mp c-. \< d-. ees-. d-. des-. \!
  c8[ \f \< ( des c f] bes,[ \dim c bes f'] aes,[ \> c g c] \! )

  \mark \default  % Mark A

  f,2-> \ff f-> f->
  g-> g4 a-. bes-. c-.
  d-. ees-. f-. ges-. f-. f-.
  e2-> f4 e2-> f4
  ges2-> f4 ges2-> ges4
  c, r c r c r
  e r c r e r
  e e,8 \< ( fis g a b cis dis e fis g ) \!
  e2.-> ~ e2 e4-.
  c2.-^ des!-^
  des-^ c-^
  aes4-. r f'-. f-. f-. f-.
  f-. r f-. f-. f-. f-.
  f \fz f f \fz f f \fz f
  f \fz f f \fz f f \fz f
  f r r c r r
  <<{f,,1. ~}{s2. -\tweak #'minimum-length #10 ^\> s2 s4 \!}>>

  \bar "||"

  \TempoIIIMM

  \key bes \major
  f4 r r r2 r4
  \noBreak
  R1 * 6/4 * 5
  r4 e'!8 \p ( f ) r4 e8 ( f ) r4 e8 ( f )
  r4 e8 \< ( f ) r4 e8 ( f ) r4 f8 ( fis ) \!
  r4 fis8 ( g ) r4 fis8 \f ( g ) r4 a8 ( bes )
  r4 gis8 \> ( a ) r4 gis8 ( a ) r4 fis8 ( g ) \!
  r4 fis8 \p \> ( g ) r4 fis8 ( g ) r4 e8 ( f ) \!
  r4 cis8 \pp ( d ) r4 fis8 ( g ) r4 a8 ( bes )

  \mark \default  % Mark A

  \override DynamicLineSpanner #'staff-padding = #2.2
  \rightDynamic f!4 \Solo \bracketedPP \<  ( d4. _\markup {\raise #1 \italic "legato"} bes'8 bes4 d4. d8 ) \!
  <<{bes1. ~}{\rightDynamic s4 \f \> s  s s s s8 s \! }>>
  bes4 \bracketedP r r r2 r4
  R1 * 6/4
  <<{b4 ( d4. g8 ) g2. ~}{s4 \fz \< s4. s8 \! s4 \> s s8 s \!}>>
  g2 \p r4 r2 r4
  \dynamicLineSpannerStandard
  r2 r4 g,2 \bracketedP ( b,4 )
  e2. ( g )
  fis \dim ( f ) \!
  e ( fis )
  c1. \pp (
  b4 ) r r r2 r4
  R1 * 6/4
  r4 d'-. \p r d-. r d-.
  r c-. r c-. r c-.
  c r r r2 r4
  R1 * 6/4
  r4 c-. \p r c-. r c-.
  r bes-. r bes-. r bes-.
  R1 * 6/4 * 5

  \mark \default  % Mark A

  R1 * 6/4 * 3
  \override DynamicLineSpanner #'staff-padding = #2
  c4 \p \< ( c4. e8 e4 c4. g'8 ) \!
  <<{g2. ( f )}{s2. \f s4 \> s s8 s16 \! s}>>
  <<{g,4 ( c4. e8 e4 g,4. e'8 )}{s4 \p s s \< s s s8 s \!}>>
  g2 \f r4 r2 r4
  g,4 \pp ( c4. ees!8 ees4 g,4. ees'8 )
  \dynamicLineSpannerStandard
  g2 r4 r2 r4
  R1 * 6/4 * 3
  r2 r4 r des, \p ( c )
  bes4 ( des4. \< f8 ) f4 ( bes, des ) \!
  des2. \< ( c2 bes4 ) \!
  a4 ( ees'4. \< ges8 ) ges4 \! ( f4. e8 )
  e4 \f ( f aes ~aes ) g ( f )
  e2. ( ees \dim ~
  ees2 d4 ) \dim des2.
  c \pp ( aes )

  \mark \default  % Mark A

  c4 r r r2 r4
  R1 * 6/4 * 5
  f'2 \pp ( c4 aes f4. f8 )
  f2 r4 r2 r4
  f,1.-> ~
  f

  \TempoIIIAcc

  r4 f'-. \p r f-. r f-.
  r4 f-. \< r f-. r f-. \!
  r4 f8 \mf f r4 f8 \cresc f r4 f8 f \!
  r4 f8 f r4 f8 f r4 f8 f

  \TempoIIIViv

  f4 r r r2 r4
  R1 * 6/4
  f4-. \ff r g-. r8 aes bes4-. c-.
  des-. ees8 ( e f4 ) g8 ( aes bes c des b )

  \mark \default  % Mark A

  <<{c4 c,2 ~ c2.}{
      s4 \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
      \once \override TrillSpanner #'outside-staff-priority = #500
      s ^\markup {\lower #1 \tiny \flat} \startTrillSpan
  }>>
  \noBreak
  <<{c1.}{s4 s s s s s8 s \stopTrillSpan}>>
  c4-. c,-. r c'-. c,-. r
  c'-. c,-. r c'-. c,-. r
  c' r r r2 r4
  R1 * 6/4 * 2

  \bar "||"

  \key f \minor
  R1 * 6/4 * 7

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcClarinettoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2)
    ^\markup { \fontsize #-3 "Clar I"} R1 * 6/4 r4 \mf}
  \oneMMRNumberOn

  aes' ( \> g f ees d \!
  c4 \p ) r r r2 r4
  R1 * 6/4
  e,2. \pp ( ees
  e4 ) r r r2 r4
  R1 * 6/4 * 3
  \override DynamicLineSpanner #'staff-padding = #2
  f4 \f \< -\tweak #'positions #'(3 . 1) ( e aes g des' c \! )

  \mark \default  % Mark A

  aes4 \mf r aes r8 aes aes4-. g-.
  f r f r8 f \< g4-. aes-. \!
  bes r bes r8 bes \> bes4-. aes-. \!
  g r g r8 g \< aes4-. bes-. \!
  \dynamicLineSpannerStandard
  ees2-> aes,4.-> aes8 bes4-. c-.
  des2-> g,4.-> g8 aes4-. bes-.
  c2-> f,4.-> f8 f4-. e-.
  f4 \f r f' r8 f f4-. e-.
  f r f \cresc r8 f f4-. e-.
  f2. \trill \ff r8 f f4-. e-.
  f2. \trill r8 f f4-. e-.
  f-. e-. f-. e-. f-. e-.
  f-. e-. f-. \dim e-. f-. e-.
  f4 \mp ( ees des \dim c bes aes ) \!
  \override DynamicLineSpanner #'staff-padding = #2.8
  g ( \p ( f \> ees des c bes ) \!
  aes \p r r des r r
  r2 r4 c \pp r r
  r2 r4 des \pp r r
  <<{bes1.}{s4 \> s s s s s8 s \!}>>

  \mark \default  % Mark A

  aes'4 ( \< g aes g aes g )
  aes ( g aes g aes g ) \!
  aes ( \f g f \dim ees des c ) \!
  \dynamicLineSpannerStandard
  bes \bracketedP r r r2 r4
  R1 * 6/4 * 6
  r2 r4 c2. ( \pp
  aes1. ) ~
  aes ~
  aes4 r r r2 r4
  c1. \pp (
  g )
  <<{g1.}{s2. \< s2 s4 \!}>>
  <<{des'1.-^ ~}{s4 \f \> s s s s s8 s \!}>>

  \TempoIIIPPrB

  des2. d ~
  \noBreak
  d b (
  <<{c1. )}{s4 \> s s s s s \!}>>
  f,1. ~
  f4 \pp r r r2 r4
  R1 * 6/4

  \noBreak
  \TempoIIIiT

  R1 * 6/4 * 4

  \mark \default  % Mark A

  f'2-> \ff f-> f->
  g-> g4 a-. bes-. c-.
  d-. ees-. f-. ges-. f-. f-.
  e2-> f4-. e2-> f4-.
  ges2-> f4-. ges2-> ges4-.
  c, r c r c r
  e r c r e r
  e e,8 \< ( fis g a b cis dis e fis g ) \!
  e2. ~ e2 e4-.
  c2.-^ \ff des!-^
  des-^ c-^
  aes4-. r f'-. f-. f-. f-.
  f-. r f-. f-. f-. f-.
  f \fz f f \fz f f \fz f
  f \fz f f \fz f f \fz f
  aes r aes r8 aes aes4 aes
  aes r r aes r r
  aes r r r2 r4

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMcClarinettoI = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \key f \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Clarinetto" I}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "clarinet"
  \clef treble
  \SgMcClarinettoI
}

voiceSgMcClarinettoII = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \key f \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Clarinetto" II}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "clarinet"
  \clef treble
  \SgMcClarinettoII
}

quoteScoreSgMcClarinettoI = \SgMcClarinettoI
quoteScoreSgMcClarinettoII = \SgMcClarinettoII
