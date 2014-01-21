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
  * Fichier de notes, hautbois I et II, parties                         *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ***************************************************************
  *     Hautbois I                                              *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMcOboeI = \relative c'' {

  \include "Common/Properties.ly"
  \oneMMRNumberOn
  \cueEventType

  \TempoIII

  r2 r4
  R1 * 6/4 * 4
  c4 \mf ( f c2 ) r4 r
  bes4 ( e bes2 ) r4 r
  a4 ( d a2 ) r4 r
  R1 * 6/4 * 9
  d4 \f \< ( cis f e bes' a ) \!
  a \mf r a r8 a a4-. g-.
  f r f r8 f \< g4-. a-. \!
  bes r bes r8 bes \> bes4-. a-. \!
  g r g r8 g \< a4-. bes-. \!
  c2-> \f f,4.-> f8 g4-. a-.
  bes2-> e,4.-> e8 f4-. g-.
  a2-> d,4.-> f8 f4-. e-.

  \mark \default  % Mark A

  f4 \f r f r8 f f4-. e-.
  f r f \cresc r8 f f4-. e-. \!
  f2. \trill \ff r8 f8 f4-. e-.
  f2. \trill r8 f8 f4-. e-.
  d4 r r r2 r4
  R1 * 6/4 * 4
  bes8 \f ([a]) \< a ([b]) b ([c]) c ([cis]) cis ([d]) d ([e]) \!
  e ([fis \<]) fis ([g]) g ([a]) a ([bes?]) bes ([b]) b ([c?]) \!
  d2 \ff d,4-. d2 d4-.
  d2 d4-. d2 d4-.
  bes'-. r g-. r g-. r
  e-. r f-. r e-. r
  f-. r e-. r2 r4
  R1 * 6/4 * 2
  a4-. \mp r a-. r8 a a4-. g-.
  f-. r f-. r8 f \< g4-. a-. \!
  bes-. \fz r bes-. r8 bes \> bes4-. a-. \!
  g-. \p r g-. r8 g \< a4-. bes-. \!
  c2-> \fz f,4.-> \fz f8 g4-. a-.
  bes2-> \fz e,4.-> \fz e8 f4-. g-.
  a2-> \fz d,4.-> \fz d8 e4-. f-.

  \mark \default  % Mark A

  e r r r2 r4
  R1 * 6/4 * 8
  r8 a,-. -\tweak #'X-offset #-3.5 \f \< a-. cis-. cis-. f-. f-. a-. a-. cis,-. cis-. a'-. \!

  \mark \default  % Mark A

  a2 \ff a ( b4 cis )
  d2 ( a4 f2 d4 )
  d ( g a bes2 b4 )
  c2 ( g4 e2 c4 )
  f2. \trill d4 ( e f )
  f4 e2 \trill c4 ( d e )
  <<{e4 d2 d2 cis4-.}{s4 s4 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>
  d4-. r r r2 a'4-.
  d,-. r r r2 a'4-.
  f2. \trill r8 f8 f4-. e-.
  f2. \trill r8 f8 f4-. e-.
  d4-. \fp e-. f-. g-. a-. bes-.
  a r r r2 r4
  g-. \mp a-. \< b-. c-. b-. bes-. \!
  a8 \f ( bes a4 ) g8 \dim ( a g4 ) f8 ( a ) a4-. \!

  \mark \default  % Mark A

  d,2-> \ff d-> d->
  e-> e4 fis-. g-. a-.
  b-. c!-. d-. ees-. d-. d-.
  cis2-> d4 cis2-> d4
  ees2-> d4 ees2-> ees,!4
  a4 r fis! r a r
  a r a r e r
  gis cis,8 \< ( dis e fis gis ais bis cis dis, e ) \!
  eis2.-> fis4-. g!-. a-.
  a2.-^ \ff gis-^
  g-^ g-^
  f!4-. r f-. f-. f-. f-.
  f-. r f-. f-. f-. f-.
  f \fz f f \fz f f \fz f
  f \fz f f \fz f f \fz f
  a r r a r r
  <<{d,,1.}{s2. -\tweak #'minimum-length #10 \> s2 s4 \!}>>
 
  \bar "||"

  \TempoIIIMM

  \key g \major
  \override DynamicLineSpanner #'staff-padding = #2
  fis4 _\Solo ( a4. d8 <<{d4 a c )}{s4 \< s s8 s \!}>>
  \noBreak
  c2. ( b2 \> a4 \! )
  g ( \< d'4. g8 \! g4 \> b, e ) \!
  e2 ( d4 \dim b2 g4 )
  g2. ( d ) \pp
  \dynamicLineSpannerStandard
  fis1.
  r4 cis'8 \p ( d ) r4 cis8 ( d ) r4 cis8 ( d )
  r4 cis8 \< ( d ) r4 cis8 ( d ) r4 cisis8 ( dis ) \!
  r4 dis8 ( e ) r4 dis8 \f ( e ) r4 fis8 ( g )
  r4 eis8 \> ( fis ) r4 eis8 ( fis ) r4 dis8 ( e ) \!
  r4 dis8 ( \p \> e ) r4 dis8 ( e ) r4 cis8 ( d ) \!
  r4 ais8 \pp ( b ) r4 dis8 ( e ) r4 fis8 ( g )

  \mark \default  % Mark A

  d!4 r r r2 r4
  <<{bes1. (}{s4 \f  \bindDynamics s \> s s s s8 s \!}>>
  b4 ) r r r2 r4
  \rightDynamic c4 \p \< ( d4. e8 \! e4 \> d4. c8 ) \!
  <<{e2. (  ~ e2 b4 )}{s4 \fz s s s \dim s s \!}>>
  gis4 ( e4. cis'8 cis2 b4 )
  gis1. ( \p \dim ~
  gis2. cis ~
  cis \dim b ) ~
  b4 ( a gis b2 a4 )
  gis2 \pp ( fisis4 a2 gis4 )
  e r r r2 r4
  R1 * 6/4 * 5
  \pageTurn

  \tag #'quoteOboeII {
    d'4-. \p a'8 ( ees ) d4-. a'8 ( ees ) d2-> ~
    d4 bes'8 ( a g fis! g a c bes a g )
  }
  \elseTag #'quoteOboeII {
    d4-. \p \Solo a'8 ( ees ) d4-. a'8 ( ees ) d2-> ~
    d4 bes'8 ( a g fis! g a c bes a g
  }

  fis4 ) r r r2 r4
  R1 * 6/4 * 3
  <<{f1.}{s4 \p -\tweak #'minimum-length #6 \< s s s s s8 s \!}>>

  \mark \default  % Mark A

  fis!4 ( \< b4. a8 \! a4 \> fis d ) \!
  <<{eis1.}{s4 \p -\tweak #'minimum-length #6 \< s s s s s8 s \!}>>
  fis4 ( \< b4. a8 \! a4 \> fis d ) \!
  cis4 r r r2 r4
  R1 * 6/4
  <<{cis1. (}{s4 \p  \bindDynamics  s s -\tweak #'minimum-length #5 \< s s s8 s \!}>>
  <<{d1. )}{s4 s s -\tweak #'minimum-length #5 \> s s s8 s \!}>>
  c!1. \pp
  d (
  c4 ) r r r2 r4
  R1 * 6/4 * 4
  r4 b8 ( \p c ) r4 b8 ( c ) r4 b8 ( c )
  r4 b8 ( c ) r4 b8 \cresc ( c ) r4 c8 ( cis \! )
  r4 cis8 \f ( d ) r4 cis8 ( d ) r4 e8 ( f )
  r4 dis8 ( e ) r4 dis8 \dim ( e ) r4 cis8 ( d )
  r4 cis8 \p ( d ) r4 cis8 \dim ( d ) r4 b8 ( c )
  r4 gis8 \pp ( a ) r4 cis8 ( d ) r4 e8 ( f )

  \mark \default  % Mark A

  c!4 r r r2 r4
  <<{aes1. ^(}{s4 \f \> s s s s s8 s \!}>>
  a4 ) \p r r r2 r4
  <<{aes'1.}{s4 \fz \> s s s s s8 s \!}>>
  <<{a2. ( fis! ~}{s4 \p s s s s \>}>>
  fis2. d2 a4 \! )
  a2. \pp f! ~
  f1.
  R1 * 6/4 * 2

  \noBreak
  \TempoIIIAcc

  R1 * 6/4 * 2
  \noBreak
  r4 f'8 \mf f r4 f8 \cresc f r4 f8 f
  r4 f8 f r4 f8 f r4 f8 f

  \TempoIIIViv

  f4 \ff r r r2 r4
  R1 * 6/4
  d4-. \ff r e-. r8 f g4-. a-.
  bes-. c,8 ( cis d4 ) e8 ( f g a bes gis)

  \once \override Score.RehearsalMark #'X-offset = #-3
  \mark \default  % Mark A

  <<
    {a1.}{
      \once \override TrillSpanner #'outside-staff-priority = #500
      s4 ^\markup {\tiny \flat} \startTrillSpan
    }
  >>
  \noBreak
  <<
    {a1.}{
      s4 s s s s s8 s \stopTrillSpan
    }
  >>
  a4-. a,-. r a'-. a,-. r
  a'-. a,-. r a'-. a,-. r
  a'4 r a \p r8 a a4 a

  \set decrescendoText = \markup { \italic { dimin. } }
  \set decrescendoSpanner = #'text
  a r a \> r8 a a4 a
  \unset decrescendoText
  \unset decrescendoText
  a \pp r a r2 r4

  \bar "||"

  \key d \minor
  R1 * 6/4 * 16
  d,4 \f \< ( cis f e bes' a \! )

  \mark \default  % Mark A

  a4 \mf r a r8 a a4-. g-.
  f r f r8 f \< g4-. a-. \!
  bes r bes r8 bes \> bes4-. a-. \!
  g r g r8 g \< a4-. bes-. \!
  c2-> \f f,4.-> f8 g4-. a-.
  bes2-> e,4.-> e8 f4-. g-.
  a2-> d,4.-> f8 f4-. e-.
  f4 \f r f r8 f f4-. e-.
  f r f \cresc r8 f f4-. e-. \!
  f2. \trill \ff r8 f8 f4-. e-.
  f2. \trill r8 f8 f4-. e-.
  f4-. e-. f-. e-. f-. e-.
  \override DynamicLineSpanner #'staff-padding = #1.5
  f-. e-. f-. \dim e-. f-. e-.
  f ( \mp e d \dim c bes a )
  g' \p ( f \> e d c bes ) \!
  \dynamicLineSpannerStandard
  a r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  f'4 ( \p \< e f e f e )
  f ( e f e f e \! )
  f ( \f  e d \dim c bes a )
  g2 ( \p f4 e2 f4 )
  f r r r2 r4
  R1 * 6/4 * 5
  r2 r4 r2 e4 \pp (
  g f ) r r2 r4
  r2 r4 r2 e4 ( \pp
  g2. f4 ) r r
  R1 * 6/4 * 4

  \TempoIIIPPrB

  r2 r4 gis2. \p ~
  \noBreak
  gis4 ( a8 gis fisis gis b2. ) ~
  b \dim a2 ( f4 )
  d4 ( e8 d cis d e2 f4 )
  f1. \pp ( ~
  f2. e )

  \TempoIIIiT

  \override DynamicLineSpanner #'staff-padding = #2
  d1. \p ~
  \noBreak
  <<{d}{s4 -\tweak #'minimum-length #5 \< s s s s s \!}>>
  <<{d'1. ~}{s4 \mf -\tweak #'minimum-length #8 \< s s s s s \!}>>
  <<{d1.}{s4 -\tweak #'minimum-length #8 \< s s s s \!}>>

  \mark \default  % Mark A

  d2-> \ff d-> d->
  \dynamicLineSpannerStandard
  e-> e4 fis-. g-. a-.
  b-. c-. d-. ees-. d-. d-.
  cis2-> d4-. cis2-> d4-.
  ees2-> d4-. ees2-> ees,4-.
  a r fis r a r
  a r a r e! r
  gis cis,8 \< ( dis e fis gis! ais bis cis dis, e ) \!
  eis2. fis4-. g-. a-.
  a2.-^ \ff gis-^
  g-^ g-^
  f4-. r f-. f-. f-. f-.
  f-. r f-. f-. f-. f-.
  f \fz f f \fz f f \fz f
  f \fz f f \fz f f \fz f
  d' r d r8 d d4 d
  d r r d r r
  d r r r2 r4

  \bar "|."
}

%{
  ***************************************************************
  *     Hautbois II                                             *
  ***************************************************************
%}

SgMcOboeII = \relative c''{

  \include "Common/Properties.ly"

\cueEventType
  \oneMMRNumberOn

  \TempoIII

  r2 r4
  R1 * 6/4 * 7
  \override DynamicLineSpanner #'staff-padding = #2
  <<{a1.-> ~}{s4 \f s s s -\tweak #'minimum-length #7 \dim}>>
  <<{a4}{s8 \< s }>> a4 ( \> g f e d \!
  e ) \p r r r2 r4
  R1 * 6/4 * 6
  d'4 \f \< ( cis f e bes' a ) \!
  f \mf r f r8 f f4-. e-.
  \dynamicLineSpannerStandard
  d r d r8 d \< e4-. f-. \!
  g r g r8 g \> g4-. f-. \!
  e r e r8 e \< f4-. g-. \!
  c,2-> \f f,4.-> f8 g4-. a-.
  bes2-> e,4.-> e8 f4-. g-.
  a2-> d,4.-> d'8 d4-. cis-.

  \mark \default  % Mark A

  d4 \f r d r8 d d4-. cis-.
  d r d \cresc r8 d d4-. cis-. \!
  d2. \ff \trill r8 d8 d4-. cis-.
  d2. \trill r8 d8 d4-. cis-.
  d4 r r r2 r4
  R1 * 6/4 * 4
  bes8 \f ([a]) \< a ([b]) b ([c]) c ([cis]) cis ([d]) d ([e]) \!
  e, ([fis \<]) fis ([g]) g ([a]) a ([bes?]) bes ([b]) b ([c?]) \!
  d2 \ff d4-. d2 d4-.
  d2 d4-. d2 d4-.
  d-. r ees-. r ees-. r
  cis-. r b-. r cis-. r
  b-. r cis-. r2 r4
  R1 * 6/4 * 2
  f4-. \mp r f-. r8 f f4-. e-.
  d-. r d-. r8 d \< e4-. f-. \!
  d-. \fz r d-. r8 d \> d4-. dis-. \!
  \override DynamicLineSpanner #'staff-padding = #2
  e-. \p r e-. r8 e \< f4-. g-. \!
  a2-> \fz a,4.-> \fz d8 e4-. f-.
  f ( \fz e ) g,4.-> \fz c8 d4-. e-.
  e ( \fz d ) f,4.-> \fz bes8 c!4-. d-.
  \dynamicLineSpannerStandard

  \mark \default  % Mark A

  cis r r r2 r4
  R1 * 6/4 * 8
  \pageTurn
  r8 a-. -\tweak #'X-offset #-3.5 \f \< a-. cis-. cis-. f-. f-. a-. a-. cis,-. cis-. a'-. \!

  \mark \default  % Mark A

  a,2 \ff a ( b4 cis )
  d2 ( a4 f2 d4 )
  d ( g a bes2 b4 )
  c2 ( g4 e2 c4 )
  f'2. \trill d4 ( e f )
  f4 e2 \trill c4 ( d e )
  <<{e4 d2 d2 cis4-.}{s4 s4 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>
  d4-. r r r2 a'4-.
  d,-. r r r2 a'4-.
  d,2. \ff \trill r8 d8 d4-. cis-.
  d2. \trill r8 d8 d4-. cis-.
  d4 r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  d2-> \ff d-> d->
  e-> e4 fis-. g-. a-.
  b,-. c!-. d-. ees-. d-. d-.
  cis2-> d4 cis2-> d4
  ees2-> d4 ees2-> ees!4
  fis4 r b, r bis r
  cis r d r cis r
  e cis8 \< ( dis e fis gis ais bis cis dis, e ) \!
  cis2.-> ~ cis2 cis4-.-.
  d!2.-^ \ff d-^
  d-^ cis-^
  d4-. r d-. d-. d-. d-.
  d-. r d-. d-. d-. d-.
  d \fz d d \fz d d \fz d
  d \fz d d \fz d d \fz d
  f r r d r r
  <<{d,1. ~}{s2. -\tweak #'minimum-length #10 \> s2 s4 \!}>>

  \bar "||"
 
  \TempoIIIMM

  \key g \major
  d4 \p r r r2 r4
  \noBreak
  R1 * 6/4 * 11

  \mark \default  % Mark A

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcClarinettoI" #DOWN {s4 * 0 -\tweak #'X-offset #2
    ^\markup { \fontsize #-3 "Clarinetto I"} R1 * 6/4}
  \oneMMRNumberOn

  <<{g1. ~}{s4 \f -\tweak #'minimum-length #8 \> s s s s s8 s \!}>>
  g4 r r r2 r4
  \override DynamicLineSpanner #'staff-padding = #2
  \rightDynamic e4 \p \< ( g4. c8 \! c4 \> g4. e8 ) \!
  <<{e1.-> ~}{s4 \fz s s s \dim s s \!}>>
  e1. ~
  e1. ( \p \dim ~
  e1.
  dis2. \dim d )
  cis ( dis ~
  dis4 ) \bracketedPP r r r2 r4
  \dynamicLineSpannerStandard
  R1 * 6/4 * 6

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcOboeI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2)
    ^\markup { \fontsize #-3 "Oboe I"} R1 * 6/4 * 2}
  \oneMMRNumberOn

  ees'1. \p (
  d )
  e! (
  f )
  R1 * 6/4

  \mark \default  % Mark A

  R1 * 6/4 * 4
  <<{a,1.}{s4 \fz \> s s s s s8 s \!}>>
  \override DynamicLineSpanner #'staff-padding = #1.5
  <<{a1. (}{s4 \p  \bindDynamics s s \< s s s8 s \!}>>
  <<{gis1. )}{s4 s s \> s s s8 s \!}>>
  a1. \pp
  \dynamicLineSpannerStandard
  gis1. (
  g!4 ) r r r2 r4
  R1 * 6/4 * 10

  \mark \default  % Mark A

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcClarinettoI" #DOWN {s4 * 0 -\tweak #'X-offset #2
    ^\markup { \fontsize #-3 "Clarinetto I"} R1 * 6/4}
  \oneMMRNumberOn

  <<{f1. ~}{s4 \f -\tweak #'minimum-length #6 \> s s s s s8 s \!}>>
  f4 \p r r r2 r4
  <<{f'1.}{s4 \fz -\tweak #'minimum-length #7 \> s s s s s8 s \!}>>
  <<{fis!2. ( d ~}{s4 \p s s s s \>}>>
  d2. a2 fis4 \! )
  f2. \pp d ~
  d1.
  R1 * 6/4 * 2

  \noBreak
  \TempoIIIAcc

  R1 * 6/4 * 2
  \noBreak
  r4 d'8 \mf d r4 d8 \cresc d r4 d8 d
  r4 d8 d r4 d8 d r4 d8 d

  \TempoIIIViv

  d4 \ff r r r2 r4
  R1 * 6/4
  d4-. \ff r e-. r8 f g4-. a-.
  bes-. c,8 ( cis d4 ) e8 ( f g a bes gis)

  \once \override Score.RehearsalMark #'X-offset = #-1
  \mark \default  % Mark A

  <<
    {a1.}{
      \once \override TrillSpanner #'outside-staff-priority = #500
      s4 ^\markup {\tiny \flat} \startTrillSpan
    }
  >>
  \noBreak
  <<
    {a1.}{
      s4 s s s s s8 s \stopTrillSpan
    }
  >>
  a4-. a,-. r a'-. a,-. r
  a'-. a,-. r a'-. a,-. r
  a4 r a \p r8 a a4 a
  \set decrescendoText = \markup { \italic { dimin. } }
  \set decrescendoSpanner = #'text
  a r a \> r8 a a4 a
  \unset decrescendoText
  \unset decrescendoText
  a \pp r a r2 r4

  \bar "||"

  \key d \minor
  R1 * 6/4 * 7
  a1.-> \mf ~
  a4 a ( \> g f e d \!
  e ) \p r r r2 r4
  R1 * 6/4 * 6
  d'4 \f \< ( cis f e bes' a \! )

  \mark \default  % Mark A

  f4 \mf r f r8 f f4-. e-.
  d r d r8 d \< e4-. f-. \!
  g r g r8 g \> g4-. f-. \!
  e r e r8 e \< f4-. g-. \!
  c,2-> \f f,4.-> f8 g4-. a-.
  bes2-> e,4.-> e8 f4-. g-.
  a2-> d,4.-> d'8 d4-. cis-.
  d4 \f r d r8 d d4-. cis-.
  d r d \cresc r8 d d4-. cis-. \!
  d2. \ff \trill r8 d8 d4-. cis-.
  d2. \trill r8 d8 d4-. cis-.
  d-. cis-. d-. cis-. d-. cis-.
  \override DynamicLineSpanner #'staff-padding = #2
  d-. cis-. d-. \dim cis-. d-. cis-.
  d ( \mp c! bes \dim a g f )
  e' \p ( d \dim c bes a g \! )
  \dynamicLineSpannerStandard
  f r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  d'4 ( \p \< cis d cis d cis )
  d ( cis d cis d cis \! )
  d ( \f c! bes \dim a g f \! )
  g4 \bracketedP r r r2 r4
  R1 * 6/4 * 6

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcOboeI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Oboe I"} R1 * 6/4 * 4}
  \oneMMRNumberOn

  R1 * 6/4 * 2
  \override DynamicLineSpanner #'staff-padding = #2
  <<{e1.}{\rightDynamic s4 \bracketedPP -\tweak #'minimum-length #10 \< s s s s s8 s \!}>>
  <<{f1.-^ ~}{s4 \f \> s s s s s8 s \!}>>

  \TempoIIIPPrB

  f4 r r r2 r4
  \noBreak
  R1 * 6/4 * 5

  \TempoIIIiT

  d1. \p ~
  \noBreak
  \hairpinToBarLineTrue
  <<{d1.}{s4 -\tweak #'minimum-length #8 \< s s s s \!}>>
  <<{d'1. ~}{s4 \mf -\tweak #'minimum-length #8 \< s s s s s \!}>>
  <<{d1.}{s4 -\tweak #'minimum-length #8 \< s s s s \!}>>
  \hairpinToBarLineFalse

  \mark \default  % Mark A

  d2-> \ff d-> d->
  \dynamicLineSpannerStandard
  e-> e4 fis-. g-. a-.
  b,-. c-. d-. ees-. d-. d-.
  cis2-> d4-. cis2-> d4-.
  ees2-> d4-. ees2-> ees4-.
  fis r b, r bis r
  cis r d r cis r
  e cis8 \< ( dis e fis gis! ais bis cis dis, e ) \!
  cis2. ~ cis2 cis4-.
  d2.-^ \ff d-^
  d-^ cis-^
  d4-. r d-. d-. d-. d-.
  d-. r d-. d-. d-. d-.
  d \fz d d \fz d d \fz d
  d \fz d d \fz d d \fz d
  d r d r8 d d4 d
  d r r d r r
  d r r r2 r4

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMcOboeI = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Oboe" I}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "oboe"
  \clef treble
  \SgMcOboeI
}

voiceSgMcOboeII = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Oboe" II}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "oboe"
  \clef treble
  \SgMcOboeII
}

quoteScoreSgMcOboeI = \SgMcOboeI
quoteScoreSgMcOboeII = \SgMcOboeII
