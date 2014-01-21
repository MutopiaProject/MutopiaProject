%{
  *************************************************************************
  * Dvořák - Symphony nr 7                                                *
  *                                                                       *
  * encodage par J.F. Lucarelli                                           *
  * Ver 0.0 : 04/09/2013                                                  *
  * Ver 1.0 : 01/11/2013                                                  *
  *                                                                       *
  * Symphonie n°7	: mouvement IV - Finale allegro                         *
  * Fichier de notes, bassons 1 et 2, parties                             *
  *                                                                       *
  * Ne pas compiler                                                       *
  *                                                                       *
  *************************************************************************
%}
%{
  *****************************************************************
  * Basson I                                                      *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMdFagottoI = \relative c' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoIV

  a1 \p
  f1 \fz ~
  <<{f1}{s4 \> s s s8 s \!}>>
  bes2 \dim ( a )
  g4 ( f e2 )
  f2 \pp ( bes, )
  a1 ~
  a
  f'2-- ( \pp e-- )
  g2. ( a4 )
  g2-- ( a-- )
  f2 ( e )
  <<{g2 ( \< a g2. f4 )}{s2\< s s8 \! \> s s4 s s8 s \!}>> % 2 mesures
  e2 ( f ~
  f e )
  \TempoIVPPCresc
  e ( f
  \override DynamicLineSpanner #'staff-padding = #2.2
  g1 \fz )
  <<{e2 ( f}{s4 s \< s s8 s \!}>>
  g1 \fz )
  <<{e2 ( f )}{s4 \< s s s8 s \!}>>
  <<{\rightDynamic gis'1 \fz (}{s4 s8 s8 \> s4 s8 s16 s \!}>>
  \dynamicLineSpannerStandard
  a2. \p ) r4
  R1 * 2
  r2 \clef tenor f2 \p (
  g a )
  f ( \dim e )
  ees \pp ~ ees
  d ( ees )
  f4 r r2
  \clef bass
  R1 * 2
  \override DynamicLineSpanner #'staff-padding = #2.2
  r2 r4 \times 2/3 {bes,,8 ( \p ees g )}
  bes2 \p ( a \<
  <<{gis2. ) r4}{s4 \fz -\tweak #'minimum-length #6 \> s s \!}>>
  R1 * 2
  a,2 \p \< ( bes!4 b ) \!
  c2 \f -\tweak #'minimum-length #6 \> d, \p
  b' \< ( d ) \!
  a4 \ff r r2
  \dynamicLineSpannerStandard
  \mark \default
  d1-> \ff
  d2-> d'
  f,4 ( a ) f' ( d8 bes )
  g4 ( e'8 d ) cis4-. cis,!-.
  r8 d-. e16 ([d cis d]) g2-.
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
  cis1 \ff
  cis-^ ~
  cis ~
  cis4 r r2
  R1 * 3

  \noBreak
  \TempoIVRit

  R1

  \mark \default
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 4
  e2-> \f e->
  e-> r
  r4 d2 \ff ( cis4 )
  d2. ( e4 )
  f ( e a, d )
  cis-. d-. e2->
  a,-> bes->
  b4-. c!2-> r4
  f,2-> \ff f->
  fis8 r \times 2/3 {a,8 ( \< c ees} \times 2/3 {fis! a c} ees8. ) \! [ees16-.]
  c4-. r a-. r
  R1
  g2-> \ff g->
  gis8 r \times 2/3 {b,8 ( d f} \times 2/3 {gis! b d} f8. ) [f16-.]
  d4-. r b-. r
  R1 * 3

  \mark \default

  a,4-.\p a'-. a,-. \dim a'-.
  a,-. a'-. a,-. a'-.
  a' \ff r8. g16 g4 r8. f16
  f4 r8. e16 e4 r8. f16
  f4 r8. cis16 cis4 r8. d16
  d4 r8. ees16 ees4 r8. c!16
  c4-. r b-. r
  e,!8 r r4 r2
  R1 * 2
  r4 \times 2/3 {c'8 \p ( d c} dis,4 ) \times 2/3 {b'8 ( c b}
  e,4 ) r r2
  R1 * 2
  r2 r8 gis \p ( a b )

  \bar "||"

  \mark \default

  \key a \major
  e,4-. a-. e-. b'-.
  cis-. a-. gis-. e-.
  a-. fis-. e-. a-.
  gis-. e-. a-. b-.
  cis-. e,-. gis,-.
  e'-.
  a,-. e'-. b-. e-.
  fis,-. fis'-. cis-. e-.
  cis-. b'-. cis,-. b'-.
  cis4 \p r cis r
  cis r cis r
  cis r cis r
  cis r cis r
  cis a \< ( b \! a8 \> g
  fis4 ) \!r4 r2
  R1 * 2
  r2 cis'-> \f
  cis,-> c->
  b1-^ \f ~
  b2 bes
  <<{a g (}{s4 s s \<}>>
  <<{fis!2 f )}{s4 s \!}>>

  \mark \default

  e4 cis'' \f ( b2
  cis d )
  cis ( d
  cis b )
  cis ( d )
  cis ( b )cis ( d )
  e2:8 \ff e:
  e: e:
  e1-^ \fz
  d-^ \fz
  cis8 e e e
  e2:8
  e: e:
  c1-^ \fz
  d-^ \fz
  c4-. \ff r b-. r
  a-. r g-. r c-. r d,-. r
  e-. r e-. r
  a-. r c-. b-.
  a-. r g-. r
  c-. r d-. r
  e-. r e,-. r

  \bar "||"

  \mark \default

  \key a \minor
  a4 r r2
  R1
  a,8-. \f c!-. dis-. e-. fis-. \< a-. c!-. dis-.
  e-. \! dis-. c!-. a-. fis-. e-. dis-. c!-.
  a4-. r r2
  R1
  a8-. \mp c-. dis-. e-. f!-. a-. c!-. dis-.
  e-. dis-. c!-. \dim a-. f!-. e-. dis-. c!-. \!
  a4 r r2
  R1 * 4
  \pageTurn
  c1 \pp ~
  c ~
  c4 r r2
  R1 * 2

  \noBreak
  \TempoIVPRit
  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 4

  \once \override Score.MetronomeMark #'X-offset = #2
  \mark \default
  \TempoIVIT

  a4-. \pp r e'-. r
  dis-. r r c-.
  a-. b-. c-. a8-. e-.
  f4 r r2
  R1 * 3
  r4 a'! \pp ( des c
  bes ) r r2
  R1
  bes4-. c-. des-. bes8-. f-.
  a!4 r r2
  R1 * 3
  r4 ais \pp ( d! cis
  b!1 ) ~
  b ~
  b ~
  b ( ~
  b2 ais )
  b4 \mf ( d cis d8 e
  ais,1 )
  b4 -\tweak #'minimum-length #8 \cresc ( d e \< d8 cis )
  fis4 \! ( e8 d cis4 b )
  g' \f ( f!8 ees f4. d8 )
  g4-. g,-. f!-. \cresc f'-.
  ees-. \! ees,-. d-. d'-.
  r8 d ( d ees f!4 ees )
  aes4-. aes,-. r2
  R1 * 3
  r2 b!8 \f b, b r
  r2 b'8 \f b, b r
  b4 \f r b r
  b r b r
  b \ff r r2
  R1
  \mark \default
  R1 * 8
  r4 b'8-. \ff b-. e4-> g8-. g-.
  r4 b,8-. a-. g4-. r
  r8 g'-. fis-. e-. g4-. r
  r4 ais,8-. b-. r4 dis8-. e-.
  r4 b8-. \ff b-. d,!4-> f!8-. f-.
  r4 aes8-. g-. f4-. r
  r4 d'8-. c-. b4-. r
  r2 gis \trill
  a8-. e'-. c-. a-. c-. d-. b-. g'-.
  e-. b-. gis-. e-. e-. f-. e-. c'-.
  \mark \default
  e,2 \fz ( d
  e1 )
  R1 * 4
  c'4 \f r8 b a4 r8 c
  dis4 r8 gis a4 r8 ees
  f!4 r8 e! d!4 r8 f
  gis4 r r2
  R1 * 4
  \clef tenor
  r4 gis8-. \ff gis-. cis,4 a'!8-. a-.
  gis4 eis8-. eis-. a4 fis8-. fis
  \clef bass
  eis4 cis,-. cis,-. cis'-.
  cis,-. \dim cis'-. cis,-. cis'-. \!
  cis,-. r r2
  R1 * 5
  \mark \default
  
  \oneMMRNumberOff
  \cueDuring #"scoreSgMdFagottoII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Fag. II"} R1 * 6}
  \oneMMRNumberOn
  R1 * 2
  \oneMMRNumberOff
  \cueDuring #"scoreSgMdFagottoII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Fag. II"} R1 * 6}
  \oneMMRNumberOn
  R1 * 2

  r2 ces'' \pp ~
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
  d4 \clef tenor f2 <<{d4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  d4 \< f2 d4 ~
  d f2 f,4 ~
  f aes2 d4 \!
  \bar "||"
  \mark \default
  \key d \minor
  a!4 r r2
  \clef bass
  R1 * 3
  r2 r4 cis \ff
  d2-^ bes-^
  a8 a a,4 r8 a' a,4
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
  \clef tenor
  f''1-> \fz \> ~
  <<{f1}{s4 s s s8 s16 s \!}>>
  <<{f1 ~}{s4 \p -\tweak #'minimum-length #9 \> s s s8 s16 s \!}>>
  <<{f1 ~}{s4 \fp -\tweak #'minimum-length #12 \dim s s  -\tweak #'minimum-length #10 \>}>>
  <<{f1}{s4 s s s8 s16 s \!}>>
  g2 \pp ( f ~
  f e )
  \clef bass
  c! ( d
  bes! c )
  g ( a
  e f
  d1 ~
  d )
  e ~
  e
  \key d \major
  \bar "||"
  a4-. \p d-. a-. e'-.
  fis-. d-. cis-. a-.
  d-. b-. a-. d-.
  cis-. a-. d-. e-.
  fis-. a,-. cis,-. a'-.
  <<{d,-. a'-. e-. a-.}{s4 \< s s s8 s \!}>>
  b,4-. b'-. fis-. fis,-.
  <<{fis-. cis'-. fis-. ais,-.}{s4 \> s s s8 s \!}>>
  b4 r r2
  R1 * 3
  r4 \rightDynamic d' \p \< ( e d8 c \!
  b4 ) r r2
  r4 \rightDynamic d \mf \< ( ees \! d8 \>c \!
  b4 ) r r2
  r fis-> \ff
  fis,-> f->
  e1-^ (
  e'2 ) ees2->
  d-> c'->
  <<{b bes4 ( e, )}{s4 \< s s s8 s \!}>>
  \mark \default
  fis4 \ff r8 fis g4 r8 g
  fis4 r8 fis cis4 r8 cis
  d4 r8 d e4 r8 e
  d4 r8 d g4 r8 g
  fis4 r8 fis cis4 r8 cis
  d4 r8 d g4 r8 g
  a4 r8 a a4 r8 a
  d8 \ff fis fis fis fis2:8
  fis: fis:
  f1 \fz
  g \fz
  fis!2:8 fis:
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
  \pageTurn
  \rightDynamic d8 \f \< f gis a b d f gis \!
  a gis f d b a gis f
  d4 r r2
  R1
  d8 \f \< f gis a \clef tenor bes d f g! \!
  aes g f d \clef bass bes a! aes f
  d4 r r2
  b'1-> \f
  R1 * 2
  b,1-^\ffz ~
  b
  bes-^\ffz ~
  bes
  bes-^ \fz
  e,-^\fz
  \mark \default
  <<{
    \repeat unfold 5 {a1 ~}
    a
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 6 {s1}
  }>>
  r4 ees''8 \ff ees a,4 c8 c
  r4 ees8 ees a,4 c8 c
  a4 r bes2-> \mp (
  d ees )
  f ( \> ees
  <<{d! f, ~}{s4 s8 \! s s \pp}>>
  f2 e!4 g )
  a1 \ff ~
  a
  a \ffz ~
  a
  a \ffz ~
  a
  a \ffz (
  g )
  fis4 \f \< ( g gis a \!)
  bes!4. ( b16 c d4-. ) a-.
  bes!4. ( b16 c d4-. ) a-.
  bes2. bes4
  r bes r bes
  r bes bes bes
  bes r r2
  \mark \default
  g4-^ fis-^ r2
  f4 r e r
  a-> a,-. r2
  \TempoIVPAn
  d1-^\ff
  bes2 bes'
  d,1
  bes2 bes'
  a d
  d1 ~
  d4 r r2
  R1 * 2
  a4 \f r a r
  a r a r
  a-^ e f-^ gis
  a-^ gis a-^ cis
  d-^ e f-^ gis
  a-^ gis a-^ e
  \TempoIVMMaes
  d,2 \ff \< (d'4 cis ) \!
  c2.-> ( a4-. )
  g2.-> a4-\parenthesize->
  bes2->g4-> d->
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
  *	Basson II                                                 *
  *****************************************************************
%}

SgMdFagottoII = \relative c {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 8 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoIV

  a1 \p
  d1 \fz ~
  <<{d1}{s4 \> s s s8 s \!}>>
  g2 \dim ( f )
  e4 ( d cis2 )
  d2 \pp ( g, )
  a1 ~
  a
  d2-- ( \pp cis-- )
  e2. ( f4 )
  e2-- ( f-- )
  d ( cis )
  e ( \< f
  <<{e2. d4 )}{s8 \bindDynamics s \> s4 s s8 s \!}>>
  cis2 ( d ~
  d cis )
  \TempoIVPPCresc
  cis ( d
  \override DynamicLineSpanner #'staff-padding = #2
  e1 \fz )
  <<{cis2 ( d}{s4 s \< s s8 s \!}>>
  e1 \fz )
  <<{cis2 ( d )}{s4 \< s s s8 s \!}>>
  <<{a4 \bracketedF r r2}{s4 s8 s8 %{\>%} s4 s8 s16 s \!}>>
  \dynamicLineSpannerStandard
  R1 * 3
  r2 d'2 \p (
  e f )
  d ( \dim cis )
  c \pp ( bes )
  bes1 ~
  bes4 r r2
  \clef bass
  R1 * 3
  % on place ici dans l'ordre vertical le fz, la liaison puis le soufflet.
  % Il est nécessaire de faire précéder le fz par une nuance (invisible) pour le positionner correctement
  \override DynamicLineSpanner #'staff-padding = #3.5
  \polyNeutral {<<{gis,2 ( a  bes2 d,)}{\hairpinToBarLineFalse s2 \p s \< s16 \bindDynamics s \> s8 s4  s2 \!}>>}
  {
    \override DynamicLineSpanner #'avoid-slur = #'inside \override DynamicLineSpanner #'outside-staff-priority = ##f
    s1 s \fz
  }
  \polyNeutral {<<{gis2 ( a4 bes b2 d, )}{\hairpinToBarLineFalse s2 \p s4 \< s8 s \bindDynamics s8 \> s8 s4  s2 \!}>>}
  {
    \override DynamicLineSpanner #'avoid-slur = #'inside \override DynamicLineSpanner #'outside-staff-priority = ##f
    s1 s \fz
  }
  a'2 \p \< ( bes!4 b ) \!
  c2 \f -\tweak #'minimum-length #6 \> d, \p
  b \< ( d ) \!
  a'4 \ff r r2
  \dynamicLineSpannerStandard

  \mark \default

  d,1-> \ff
  d2-> d'
  f,4 ( a ) f' ( d8 bes )
  g4 ( e'8 d ) cis4-. cis,-.
  r8 d'-. e16 ([d cis d]) g2-.
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
  a,1 \ff
  a-^ ~
  a ~
  a4 r r2
  R1 * 3

  \noBreak
  \TempoIVRit

  R1

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 4
  a2-> \f cis->
  a-> r
  r4 d2 \ff ( cis4 )
  d2. ( e4 )
  f ( e a, d )
  cis-. d-. cis2->
  a-> bes->
  b4-. c!2-> r4
  f,,2-> \ff f->
  fis8 r \times 2/3 {a ( \< c ees} \times 2/3 {fis a c} ees8. ) [ees16-.] \!
  c4-. r a-. r
  R1
  g,2-> \ff g->
  gis8 r \times 2/3 {b8 ( d f} \times 2/3 {gis b d} f8. ) [f16-.]
  d4-. r b-. r
  R1 * 3

  \mark \default

  a,4-.\p a'-. a,-. \dim a'-.
  a,-. a'-. a,-. a'-.
  a' \ff r8. g16 g4 r8. f16
  f4 r8. e16 e4 r8. f16
  f4 r8. cis16 cis4 r8. d16
  d4 r8. ees16 ees4 r8. c!16
  c4-. r b-. r
  e,!8 r r4 r2
  R1 * 6
  r2 r8 e \p ( fis gis! )

  \bar "||"

  \mark \default

  \key a \major
  cis,4-. a-. gis-. r
  a-. e-. b'-. r
  fis'-. cis-. cis-. e-.
  e-. e-. fis-. gis-.
  a-. e-. gis,-.
  e'-.
  a,-. e'-. b-. e-.
  fis,-. fis'-. cis-. e-.
  cis-. gis'-. cis,-. gis'-.
  fis4 \p r fis r
  fis r fis r
  fis r fis r
  fis r fis r
  \override DynamicLineSpanner #'staff-padding = #2.1
  fis fis \< ( g \! fis8 \> e
  \dynamicLineSpannerStandard
  d4 ) \!r4 r2
  R1 * 2
  r2 cis-> \f
  cis,-> c->
  b1-^ \f ~
  b2 bes
  <<{a' g (}{s4 s s \<}>>
  <<{fis!2 f )}{s4 s \!}>>

  \mark \default

  e4 a' \f ( gis2
  a b )
  a ( gis
  a gis )
  a ( b )
  a1
  a2 ( gis )
  a2:8 \ff a:
  a: a:
  a1-^ \fz
  e-^ \fz
  a8 a a a a2:8
  a: a:
  aes1-^ \fz
  g-^ \fz
  c,4-. \ff r b-. r
  a-. r g-. r c-. r d,-. r
  e-. r e-. r
  a-. r c-. b-.
  a-. r g-. r
  c-. r d-. r
  e-. r e,-. r

  \bar "||"

  \mark \default

  \key a \minor
  a4 r r2
  R1
  a8-. \f c!-. dis-. e-. fis-. \< a-. c!-. dis-.
  e-. \! dis-. c!-. a-. fis-. e-. dis-. c!-.
  a4-. r r2
  R1
  a8-. \mp c-. dis-. e-. f!-. a-. c!-. dis-.
  e-. dis-. c!-. \dim a-. f!-. e-. dis-. c!-. \!
  a4 r r2
  R1 * 4
  a1 \pp ~
  a ~
  a4 r r2
  R1 * 2

  \noBreak
  \TempoIVPRit
  \once \override Voice.MultiMeasureRest #'minimum-length = #14

  R1 * 4

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 7
  r4 ges'! \pp ( f ees
  des ) r r2
  R1 * 6
  r4 g! \pp (fis e!
  d!4 )r r2
  R1 * 14

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdCornoI" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1 * 2}
  \oneMMRNumberOn

  r2 b'8 \f b, b r
  r2 b'8 \f b, b r
  b,4 \f r b r
  b r b r
  b \ff r r2
  R1
  \mark \default
  R1 * 8
  r4 b''8-. \ff b-. e4-> g8-. g-.
  r4 g,8-. fis-. e4-. r
  r8 e'-. d-. c-. b4-. r
  r4 ais8-. b-. r4 dis8-. e-.
  r4 b8-. \ff b-. d,!4-> f!8-. f-.
  r4 f8-. e-. d4-. r
  r4 b'8-. a!-. gis4-. r
  r2 gis \trill
  a8-. e'-. c-. a-. c-. d-. b-. g'-.
  e-. b-. gis-. e-. e-. f-. e-. c'-.
  \mark \default
  a,1 \fz ~
  a1
  R1 * 4
  c'4 \f r8 b a4 r8 c
  dis4 r8 gis a4 r8 ees
  f!4 r8 e! d!4 r8 f
  gis4 r r2
  R1 * 4
  %	\clef tenor
  r4 eis8-. \ff eis-. a,4 fis'!8-. fis-.
  eis4 cis8-. cis-. fis4 dis8-. dis
  %	\clef bass
  cis4 cis,-. cis,-. cis'-.
  cis,-. \dim cis'-. cis,-. cis'-. \!
  cis,-. r r2
  R1 * 5
  \mark \default
  fis1 \pp ~
  fis ~
  fis (
  a
  cis2. a4
  fis ) r r2
  R1 * 2
  g1 \p ~
  g ~
  g (
  <<{bes}{s4 \< s s s8 s16 s \!}>>
  d2. bes4 \>
  g ) \! r r2
  R1 * 2
  r2 aes' \pp ~
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
  gis b ~
  b b ~
  b4 d2 <<{b4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff

  b4 \< d2 b4 ~
  b d2 d,4 ~
  d f2 gis4 \!

  \bar "||"

  \mark \default

  \key d \minor
  a!4 r r2
  R1 * 3
  r2 r4 a \ff
  d,2-^ g-^
  a8 a a,4 r8 a' a,4
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

  d'1-> \fz \> ~
  <<{d1}{s4 s s s8 s16 s \!}>>
  <<{d1 ~}{s4 \p -\tweak #'minimum-length #5 \> s s s8 s16 s \!}>>
  <<{d1 ~}{s4 \fp -\tweak #'minimum-length #9 \dim s s \>}>>
  <<{d1}{s4 s s s8 s16 s \!}>>
  e2 \pp ( d ~
  d cis )
  a ( b
  g a )
  e ( f
  cis d
  b1 ~
  b )
  cis ~
  cis
  \key d \major
  \bar "||"
  fis4-. \p d-. cis-. r
  d-. a-. e'-. r
  b'-. fis-. fis-. a-.
  a-. a-. b-. cis-.
  d-. a-. cis,-. a'-.
  <<{d,-. a'-. e-. a-.}{s4 \< s s s8 s \!}>>
  b,4-. b'-. fis-. fis,-.
  <<{fis-. cis'-. fis-. ais,-.}{s4 \> s s s8 s \!}>>
  b4 r r2
  R1 * 3
  r4 \rightDynamic b' \p \< ( c b8 a \!
  g4 ) r r2
  r4 \rightDynamic b \mf -\tweak #'minimum-length #4 \< ( c \! b8 \> a \!
  g4 ) r r2
  r fis-> \ff
  fis,-> f->
  e1-^ ~
  e2 ees->
  d2-> c'->
  <<{b bes4 ( e, )}{s4 \< s s s8 s \!}>>

  \mark \default

  fis4 \ff r8 fis' g4 r8 g
  fis4 r8 fis cis4 r8 cis
  d4 r8 d e4 r8 e
  d4 r8 d g4 r8 g
  fis4 r8 fis cis4 r8 cis
  d4 r8 d g,4 r8 g
  a4 r8 a a4 r8 a
  d8 \ff d' d d d2:8
  d: d:
  d1 \fz
  e \fz
  d2:8 d:
  d: d:
  des1 \fz
  c! \fz
  f,8 \f a a4. a8 a4 ~
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
  a gis f d b a gis f
  d4 r r2
  R1
  d8 \f \< f gis a \clef tenor bes d f g! \!
  aes g f d \clef bass bes a! aes f
  d4 r r2
  gis1-> \f
  R1 * 2
  b,,1-^\ffz ~
  b
  bes-^\ffz ~
  bes
  bes-^ \fz
  e-^\fz

  \mark \default

  <<{
    \repeat unfold 5 {a1 ~}
    a
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 6 {s1}
  }>>
  r4 ees''8 \ff ees a,4 c8 c
  r4 ees8 ees a,4 c8 c

  a4 r bes2-> \mp (
  d ees )
  f ( \> ees
  <<{d! f, ~}{s4 s8 \! s s \pp}>>
  f2 e!4 g )
  f1 \ff ~
  f
  fis \ffz ~
  fis
  fis \ffz ~
  fis
  d \ffz ~
  d
  d4 \f \< ( e eis fis \!)
  g!4. ( gis16 a bes4-. ) fis-.
  g!4. ( gis16 a bes4-. ) fis-.
  g!2. g4
  r g r g
  r g g g
  g r r2

  \mark \default

  g,4-^ fis-^ r2
  f4 r e r
  a-> a-. r2

  \TempoIVPAn

  d,1-^\ff
  bes2 bes'
  d,1
  bes2 bes'
  a d
  d1 ~
  d4 r r2
  R1 * 2
  a4 \f r a r
  a r a r
  a-^ cis d-^ e
  f-^ e f-^ e
  f-^ cis' d-^ e
  f-^ e f-^ cis

  \TempoIVMMaes

  d,2 \ff \< (d'4 cis ) \!
  c2.-> ( a4-. )
  g2.-> a4-\parenthesize->
  bes2->g4-> d->
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

voiceSgMdFagottoI = \new Voice {
  \time 2/2
  \key d \minor
  \set Staff.instrumentName = \markup \fontsize #3 \center-column {"Fagotto" I}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "bassoon"
  \clef bass
  \SgMdFagottoI
}

voiceSgMdFagottoII = \new Voice {
  \time 2/2
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Fagotto" II}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "bassoon"
  \clef bass
  \SgMdFagottoII
}

quoteScoreSgMdFagottoI = \SgMdFagottoI
quoteScoreSgMdFagottoII = \SgMdFagottoII
