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
  * Fichier de notes, clarinettes 1 et 2, parties                       *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  *       Clarinette I                                            *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMdClarinettoI = \relative c' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 8 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoIV

  \transposition a
  <<{c2 ( c' )}{s4 \p \< s s s8 s \!}>>
  b2. \fz ( aes4
  f g \> aes f8 \! c )
  e2. ( \dim f4 \!
  des! b c c-- )
  aes2 \pp ( bes!
  g1 ) ~
  g
  aes'2-- \pp ( bes-- )
  g2. ( f4 )
  e2-- ( f-- )
  des ( c )
  bes' \< ( c
  <<{bes2. aes4 )}{s8 \! \> s s4 s s8 s \!}>>
  g2 ( aes
  f e )

  \TempoIVPPCresc

  g ( aes
  \override DynamicLineSpanner #'staff-padding = #1.7
  bes1 \fz )
  <<{g2 ( aes}{s4 s \< s s8 s \!}>>
  bes1 \fz )
  <<{g2 ( aes )}{s4 \< s s s8 s \!}>>
  <<{f'1-^ ~}{\rightDynamic s4 \fz s8 s8 \> s4 s8 s16 s \!}>>
  f2. \p r4
  r4 \times 2/3 {c,8 ( \f \< f aes} \times 2/3 {c f aes} c8 ) \! [r16 c-.]
  b2. \fp \> ( aes4 )
  f \! ( g aes \p f8 c
  e2. f4 )
  des \dim ( b c ) c \!
  a2 ( \pp bes!
  \dynamicLineSpannerStandard
  aes! ges )
  des'4 r r2
  r r4 \times 2/3 {des,8 \mp ( ges bes}
  des2. ) \> r4 \!
  R1 * 8
  r2 r4 c'4 \ff (

  \mark \default

  b2.->  aes4 )
  f ( g aes f8 c )
  e2.-> ( f4 )
  f-. r g-. r
  r8 f,-. g16 ([f e f]) bes2-.
  g-. r
  r8 f-. g16 ([f e f])des'2-.
  c-. r
  r8 c-. d16 ([c b c]) ges'2-.
  f-. r
  r8 c-. d16 ([c b c]) g'!2-.
  fis-. r
  r8 c-. d16 ([c b c]) g'2-.
  a-. r
  r8 c,-. \< d16 ([c b c]) a'2-. \!
  e'1 \ff ~
  e2 g, ~
  g1 ~
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
  g2-> \f g->
  g-> r
  r4 \times 2/3 {c8 ( \ff des c )} f,4 g8-. g-.
  aes4 ( bes ) c ( ees8 des )
  c-. c-. bes4-> aes ( bes )
  g-. aes-. bes2->
  g-> g->
  g4-. g2-> r4
  ees2-> \ff ees->
  ees8 r \times 2/3 {c,8 ( \<ees ges} \times 2/3 {a c ees} ges8. ) \! [ges16-.]
  ees4-. r c-. r
  R1
  f2-> \ff f->
  f8 r \times 2/3 {d,8 ( f aes} \times 2/3 {b d f} aes8. ) [aes16-.]
  f4-. r d-. r
  R1 * 3

  \mark \default

  R1 * 2
  c'4 \ff r8. bes16 bes4 r8. aes16
  aes4 r8. g16 g4 r8. aes16
  aes4 r8. e16 e4 r8. f16
  f4 r8. ges16 ges4 r8. ees!16
  ees4-. r d-. r
  g!8 r r4 r2
  R1 * 2
  r4 \times 2/3 {ees8 \p ( f ees} fis,4 ) \times 2/3 {d'8 ( ees d}
  g,4 ) r r2
  R1 * 2
  r8 g' ( \p f d b g f g )

  \bar "||"

  \mark \default

  \key c \major
  e!4 r r2
  R1 * 7
  <<{r4 e' \bracketedMP ( \< gis  fis8 e )}{s4 \rightDynamic s4 \< s8 s s \> s \!}>>
  e2 r
  r4 e4 \pp ( g! f!8 e
  e2 ) r
  \override DynamicLineSpanner #'staff-padding = #2
  r4 c \< ( d \! c8 \> bes!
  a4 ) \! r r2
  r4 c \< ( des \! c8 \> bes!
  a4 ) \! r r2
  R1 * 4
  r2 c \f \< ~
  c1 \!

  \mark \default

  e2 \f ( d
  \dynamicLineSpannerStandard
  e f )
  e ( f
  e d )
  e ( f )
  e ( d )
  e ( f )
  e8 \ff e e e e2:8
  e: e:
  ees1-^ \fz
  d-^ \fz
  e?8 e e e e2:8
  e: e:
  ees1-^ \fz
  d-^ \fz
  ees4-. \ff r f-. r
  ees-. r aes-. r
  g-. r f-. r
  ees-. r d-. r
  g-. r g-. f-.
  ees-. r aes-. r
  g-. r aes-. r
  g-. r f-. r

  \bar "||"

  \mark \default

  \key c \minor
  ees r r2
  R1
  c,8-. \f ees-. fis-. g-. a-. \< c-. ees-. fis-.
  g-. \! fis-. ees-. c-. a-. g-. fis-. ees-.
  c4 r r2
  R1
  c8-. \mp ees-. fis-. g-. aes-. c-. ees-. fis-.
  g-. \! fis-. ees-. \dim c-. aes-. g-. fis-. ees-. \!
  c4 r r2
  \tag #'quoteClarinettoII {
    r4 \times 2/3 {\once \override Hairpin #'rotation = #'(7 0 -6)
      g8 ( -\tweak #'stencil ##f \p \< c ees} \times 2/3 {g c ees} g8. ) \! [g16-.]
  }
  \elseTag #'quoteClarinettoII {
    r4 \times 2/3 {\once \override Hairpin #'rotation = #'(6 -2.5 0) g,,8 ( \< c ees}
      \times 2/3 {g c ees} g8. ) \! [g16-.]
  }

  <<{fis1}{s4 \fz -\tweak #'minimum-length #7 \> s s s8 s \!}>>
  r4 \times 2/3 {g,,8 ( \dim c ees} \times 2/3 {g \! c ees} g8. ) [g16-.]

  \tag #'quoteClarinettoII {
    <<{fis1}{ s4 \p \> s s s \!}>>
  }
  \elseTag #'quoteClarinettoII {
     <<{fis1}{ s4 \p -\tweak #'minimum-length #7 \> ( s s s \!}>>
  }
 
  \oneMMRNumberOff
  \cueDuring #"scoreSgMdClarinettoII" #DOWN {s4 * 0 _\markup { \fontsize #-3 "Clar. II"} g4 ) \! r r2 R1 * 2}
  \oneMMRNumberOn

  R1 * 2

  \noBreak
  \TempoIVPRit

  \once \override MultiMeasureRest #'minimum-length = #16
  R1 * 4

  \mark \default

  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdClarinettoII" #DOWN {s4 * 0 -\tweak #'X-offset #2 
    ^\markup { \fontsize #-3 "Clar. II"} R1 * 4}
  \oneMMRNumberOn

  R1 * 2
  r4 c, \pp ( a! ges!
  ees ) r r2
  R1 * 6
  r4 cis' \pp ( bes! g
  e ) r r2
  R1 * 3
  g1 \bracketedP ~
  g
  f4 r r2
  R1 * 9

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1 * 2}
  \oneMMRNumberOn

  %%%%%%-
  d''8-. -> \f a-. d-. d,-. d4 r
  d'8-. -> bes!-. d-. d,-. d4 r
  ees8-> \fz c r4 a'8-> \fz fis r4
  c8-> \fz a r4 ees'8-> \fz c r4
  fis \ff r r2
  R1

  \mark \default

  R1 * 8
  r4 d8-. \ff d-. g,4-> bes8-. bes-.
  r4 d8-. c-. bes4-. r
  r8 bes'8-. a-. g-. bes4-. r
  r4 cis,8-. d-. r4 fis8-. g-.
  r4 d8-. \ff d-. f,!4-> aes!8-. aes-.
  r4 ces8-. bes-. aes4-. r
  r f'8-. ees-. d4-. r
  r2 b' \trill
  c8-. g-. ees-. c-. ees-. f-. d-. bes'?-.
  g-. d-. b-. g-. g-. aes-. g-. ees'-.

  \mark \default

  R1 * 9
  b4 \f r8 e f4 r8 ces
  des4 r8 c bes?4 r8 des
  e4 r8 a bes4 r8 fes
  ges4 r r2
  R1 * 11

  \mark \default

  \override DynamicLineSpanner #'staff-padding = #2
  a,2 ( \mf \< e'
  ees2. \> c4 \! )
  a ( \> b c \< a8 e \! )
  <<{f1}{s4 \fz -\tweak #'minimum-length #5 \> s s s \!}>>
  <<{a2 ( e'}{s4 \< s s s8 s \!}>>
  g2 \p \> ) ( f4 e \!
  g2 \pp f4 \dim ees ) \!
  \dynamicLineSpannerStandard
  c ( a f f' ~
  f ) r r2
  R1
  r4 \times 2/3 {f,8 \bracketedP ( bes des}
  \times 2/3 {f \< bes des} f8. ) [f16-.] \!
  e2. \fz \> ( des4 ) \!
  bes ( \p c des bes8 f )
  fes1 \fp ~
  <<{fes1 ~}{s4 \> s s s8 s \!}>>
  fes1 \pp (
  eeses4 ) r d,!2 \pp ~
  d d ~
  d d ~
  d d ~
  d d ~
  d d ~
  d d ~

  % insérer ici un crescendo sur 4 mesures
  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \PocoCrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  d \< d ~
  d f ~
  \noBreak
  f f ~
  f4 aes2 <<{f4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  f4 \< aes2 f4 ~
  f4 aes2 f4 ~
  f4 b2 f'4 \!

  \bar "||"

  \mark \default

  \key f \minor
  aes4 \ff \times 2/3 {c,,8 \< ( f aes} \times 2/3 {c f aes} c8. ) [c16-.] \!
  b2. \ff ( aes4 )
  f \< ( g aes f8 c ) \!
  e2. ( f4 )
  des ( bes ) c-. c-.
  aes2-^ bes-^
  g8 c c,4 r8 c' c,4
  <<{
    \repeat unfold 13 {r8 c' c,4 r8 c' c,4}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 13 {s1}
  }>>

  \mark \default

  f'1-> \fz \> ~
  <<{f1}{s4 s s s8 s16 s \!}>>
  f8-. r \times 2/3 {\once \override Hairpin #'rotation = #'(5.5 -2 0) c,8 \f \< ( f aes}

  \tag #'quoteCornoI {
    \times 2/3 {c8 f aes} c8 ) \! [ \tweak #'extra-offset #'(0 . 3 ) r16 c-.]
  }
  \elseTag #'quoteCornoI {
    \times 2/3 {c,8 f aes} c8 ) \! [r16 c-.]
  }
  <<{b2. ( aes4 ) ~}{s4 \> s s s8 s16 s \!}>>
  aes1 \p
  bes?2 \pp ( aes ~
  aes g )
  ges ( f
  fes ees )
  des ( c
  bes aes
  aes1 ~
  aes )
  g ~
  g

  \bar "||"

  \key f \major
  a4
  \oneMMRNumberOff
  \cueDuring #"scoreSgMdClarinettoII" #DOWN {s4 * 0 _\markup { \fontsize #-3 "Clar. II"} r4 r2}
  \oneMMRNumberOn

  R1 * 3
  \override DynamicLineSpanner #'staff-padding = #2.5
  c2 \mp ( d4 c8 bes )
  <<{a2 ( \< c4 bes}{s4 \< s s s8 s \!}>>
  a2 g4 f )
  e ( \> d8 cis bes'4-. ) \! bes-.
  \dynamicLineSpannerStandard

  \TempoIVTran

  a4 r r2
  r4 fis' \p ( a g8 fis
  fis4 ) r r2
  R1
  r4 f \bracketedP \< ( g f8 ees!\!
  d4 ) r r2
  r4 \rightDynamic f4 \mf -\tweak #'minimum-length #5 \< ( ges \! f8 \> ees! \!
  d4 ) r r2
  r2 a-> \ff
  a,-> aes->
  g2. r4
  r2 ees'' \f (
  des ) f ~
  <<{f2. f4}{s4 \< s s s8 s \!}>>

  \mark \default

  f4 \ff r8 f g4 r8 g
  f4 r8 f bes4 r8 bes
  a4 r8 a e4 r8 e
  f4 r8 f g4 r8 g
  f4 r8 f bes4 r8 bes
  a4 r8 a g4 r8 g
  a4 r8 a g4 r8 g
  a8 \ff f f f f2:8
  f: f:
  aes1 \fz
  g \fz
  a!8 f f f f2:8
  f: f:
  des1 \fz
  des1 \fz
  c4 \f r bes'! r
  aes r g r
  ees r g r
  aes r g r
  aes r c-. bes-.
  aes r g r
  aes r ges r
  aes r bes r

  \bar "||"

  \mark \default

  \key f \minor
  aes4 r r2
  R1
  \rightDynamic f,8 \f \< aes b c d f aes b \!
  c b aes f d c b aes
  f4 r r2
  R1
  f8 \f \< aes! b c des! f aes bes! \!
  ces bes aes f des c! ces aes
  f4 r r2
  d1-> \f
  ges-> ~
  ges
  c-^\ffz ~
  c
  f-^ \ffz ~
  f
  f \fz
  f \fz

  \mark \default

  aes4 r r2
  R1 * 2
  r2 r4 c8 \ff c
  f,4 g8 g aes aes bes4->
  c-> ( ees8 des ) c4-.bes-.
  a4-. \ff ges8 ges c,4 ees8 ees
  r4 ges8 ges c,4 ees8 ees
  r2 bes'2-> \mp (
  aes ges )
  f ( \dim ges \!
  ces, c ) \pp
  des ( c )
  aes'1 \ff ~
  aes
  a \fz ~
  a
  a \fz ~
  a
  c \fz (
  bes )
  f \f
  des!4. ( d16 ees f4-. ) c-.
  des!4. ( d16 ees f4-. ) c-.
  ges'2. ges4
  r ges r ges
  r ges ges f
  e r r2

  \mark \default

  g4-^ fis-^ r2
  fis4 r f r
  e-> c-. r2

  \TempoIVPAn

  aes'!2 \ff aes
  aes2. aes4
  aes2 aes
  aes2. aes4
  aes2 f
  f1 ~
  f4 r r2
  R1 * 2
  c'4 \f r c r
  c r c r
  c-^ g, aes-^ b
  c-^ b c-^ e
  f-^ g aes-^ b
  c-^ b c-^ g

  \TempoIVMMaes

  f,2 ( \ff \< f'4 e ) \!
  ees2.-> ( c4-. )
  bes2.-> c4-\parenthesize->
  des2-> bes4-> f->
  a1->
  bes->
  c \fz
  c \fz
  c \fz
  c4 \ffz r r2

  \bar "|."
}

%{
  *****************************************************************
  * Clarinette II                                                 *
  *****************************************************************
%}

SgMdClarinettoII = \relative c' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 8 4)
\cueEventType  \oneMMRNumberOn

  \TempoIV

  \transposition a
  c1 \p
  b \fz  ~
  <<{b2 c}{s4 s \> s s \!}>>
  e2. \dim ( f4 \!
  des! b c c-- )
  f,2 \pp ( ges!
  e1 ) ~
  e
  f'2-- \pp ( g-- )
  e2. ( c4 )
  c2-- ( c-- )
  f, ( e )
  g' \< ( aes
  <<{g2. f4 )}{s8 s \> s4 s s8 s \!}>>
  e2 ( f
  des c )

  \TempoIVPPCresc

  e ( f
  \noBreak
  \override DynamicLineSpanner #'staff-padding = #2
  g1 \fz )
  \noBreak
  <<{e2 ( f}{s4 s \< s s8 s \!}>>
  \noBreak
  g1 \fz )
  <<{e2 ( f )}{s4 \< s s s8 s \!}>>
  <<{d'1-^ \fz -\tweak #'minimum-length #7 \> (}{s4 s8 s8 s4 s8 s16 s \!}>>
  c2. ) \p r4
  r4 \times 2/3 {c,8 ( \f \< f aes} \times 2/3 {c f aes} c,8 ) \! [r16 c-.]
  b1 \fp \> ~
  b2 \! ( c \p )
  des!2 ( c
  aes \dim g ) \!
  \dynamicLineSpannerStandard
  c,2 ( \pp des ) ~
  des1 ~
  des4 r r2
  R1 * 8

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdOboeI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Fl & Ob"} R1 * 2}
  \oneMMRNumberOn

  r2 r4 c'4 \ff (

  \mark \default

  b2.->  aes4 )
  f ( g aes f'8 c )
  c2.-> ( des4 )
  des-. r c-. r
  r8 f,-. g16 ([f e f]) bes2-.
  g-. r
  r8 f-. g16 ([f e f])des'2-.
  c-. r
  r8 c-. d16 ([c b c]) ges'2-.
  f-. r
  r8 c-. d16 ([c b c]) g'!2-.
  fis-. r
  r8 c-. d16 ([c b c]) g'2-.
  a-. r
  r8 c,-. \< d16 ([c b c]) a'2-. \!
  e1 \ff ~
  e2 e ~
  e1 ~
  e4 r r2
  R1 * 3

  \noBreak
  \TempoIVRit

  R1

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 4
  e2-> \f e->
  e-> r
  r4 \times 2/3 {c8 ( \ff des c )} f,4 g8-. g-.
  aes4 ( bes ) c ( ees8 des )
  c-. c-. bes4-> aes ( bes )
  g-. aes-. bes2->
  e-> ees->
  d4-. des2-> r4
  c2-> \ff c->
  c8 r \times 2/3 {c,8 ( \<ees ges} \times 2/3 {a c ees} ges8. ) \! [ges16-.]
  ees4-. r c-. r
  R1
  des2-> \ff des->
  d8 r \times 2/3 {d,8 ( f aes} \times 2/3 {b d f} aes8. ) [aes16-.]
  f4-. r d-. r
  R1 * 3

  \mark \default

  R1 * 2
  c4 \ff r8. bes16 bes4 r8. aes16
  aes4 r8. g16 g4 r8. aes16
  aes4 r8. e16 e4 r8. f16
  f4 r8. ges16 ges4 r8. ees!16
  ees4-. r d-. r
  g!8 r r4 r2
  R1 * 6

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdClarinettoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Clar I"} R1}
  \oneMMRNumberOn

  \bar "||"

  \mark \default

  \key c \major

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdClarinettoI" #UP {R1}
  \oneMMRNumberOn

  R1 * 7
  a,1 \fp ~
  a ~
  a ~
  a
  \override DynamicLineSpanner #'staff-padding = #2
  r4 a' \< ( bes \! a8 \> g
  f4 ) \! r r2
  r4 a \< ( bes \! a8 \> g
  f4 ) \! r r2
  R1 * 4
  r2 c' \f \< ~
  c1 \!

  \mark \default

  c2 \f ( b
  \dynamicLineSpannerStandard
  c d )
  c ( b
  c b )
  c ( d )
  c ~ c
  c ( b )
  c8 \ff c c c c2:8
  c: c:
  a1-^ \fz
  b-^ \fz
  c8 c c c c2:8
  c: c:
  aes1-^ \fz
  aes-^ \fz
  bes4-. \ff r b-. r
  c-. r f-. r
  ees-. r d-. r
  c-. r b-. r
  ees-. r ees-. b-.
  c-. r f-. r
  ees-. r f-. r
  ees-. r d-. r

  \bar "||"

  \mark \default

  \key c \minor
  c r r2
  R1
  c,8-. \f ees-. fis-. g-. a-. \< c-. ees-. fis-.
  g-. \! fis-. ees-. c-. a-. g-. fis-. ees-.
  c4 r r2
  R1
  c8-. \mp ees-. fis-. g-. aes-. c-. ees-. fis-.
  g-. \! fis-. ees-. \dim c-. aes-. g-. fis-. ees-. \!
  c4 r r2

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdClarinettoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Clar I"}
    \override MultiMeasureRest #'staff-position = #7 R1 * 4}
  \oneMMRNumberOn

  <<{g1-> ~}{s4 \pp -\tweak #'minimum-length #8 \> s s s8 s \!}>>
  g1 ~
  g4 r r2
  R1 * 2

  \noBreak
  \TempoIVPRit

  \once \override MultiMeasureRest #'minimum-length = #14
  R1 * 4

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  c4-. \pp r g'-. r
  fis-. r r ees-.
  c-. d-. ees-. c8-. g-.
  b4 r r2
  R1 * 2
  r4 a' \pp ( ges ees!
  c ) r r2
  R1 * 6
  r4 ais' \pp ( g! e
  cis ) r r2
  f!1 \p ~
  f ~
  f (
  e ) ~
  e
  d4 r r2
  R1 * 9

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1 * 2}
  \oneMMRNumberOn

  r2 d'8 \f d, d r
  r2 d'8 \f d, d r
  ees'8-> \fz c r4 a'8-> \fz fis r4
  c8-> \fz a r4 ees'8-> \fz c r4
  fis \ff r r2
  R1

  \mark \default

  R1 * 8
  r4 d8-. \ff d-. g,4-> bes8-. bes-.
  r4 bes8-. a-. g4-. r
  r8 g'8-. f-. ees-. d4-. r
  r4 cis8-. d-. r4 fis8-. g-.
  r4 d8-. \ff d-. f,!4-> aes!8-. aes-.
  r4 aes8-. g-. f4-. r
  r d'8-. c-. b4-. r
  r2 b \trill
  c8-. g-. ees-. c-. ees-. f-. d-. bes'?-.
  g-. d-. b-. g-. g-. aes-. g-. ees'-.

  \mark \default

  g,2 \fz ( a
  g1 )
  R1 * 7
  b'4 \f r8 e f4 r8 ces
  des4 r8 c bes?4 r8 des
  e4 r8 a bes4 r8 fes
  ges4 r r2
  R1 * 11

  \mark \default

  R1 * 10

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdClarinettoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Clar I"} R1 * 3}
  \oneMMRNumberOn

  des1 \fp ~
  <<{des1 ~}{s4 \> s s s8 s \!}>>
  des1 \pp (
  ces4 ) r b,!2 \pp ~
  b b ~
  b b ~
  b b ~
  b b ~
  b b ~
  b b ~

  % insérer ici un crescendo sur 4 mesures
  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \PocoCrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  b \< b ~
  b d ~
  d d ~
  d4 f2 <<{d4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  d4 \< f2 d4 ~
  d4 f2 d4 ~
  d4 aes'2 b4 \!

  \bar "||"

  \mark \default

  \key f \minor
  f'4 \ff \times 2/3 {c,8 \< ( f aes} \times 2/3 {c f aes} c8. ) [c16-.] \!
  b2. \ff ( aes4 )
  f \< ( g aes f8 c ) \!
  e2. ( f4 )
  des ( bes ) c-. c-.
  aes2-^ bes-^
  g8 c c,4 r8 c' c,4
  <<{
    \repeat unfold 13 {r8 c' c,4 r8 c' c,4}
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
  c8-. r r4 r c8 \bracketedF [r16 c-.]
  b1 ( \fp \> ~
  <<{b2 c )}{s4 s s s8 s16 s \!}>>
  g'2 \pp ( f ~
  f e )
  ees ( d
  des! c )
  bes ( aes
  g f )
  f1 ~
  f
  e ~
  e

  \bar "||"

  \key f \major
  \tag #'quoteClarinettoI {
    f4 \< c' ( d \! c8 bes )
  }
  \elseTag #'quoteClarinettoI {
    f4 -\tweak #'stencil ##f \p \< ( c' d \! c8 bes )
  }
  a2 \< ( c4 \! bes )
  a2 ( g4 f )
  e( d8 \> c bes'4-. ) bes-. \!
  a2 \bracketedMP ( bes4 g )
  <<{f2 ( e}{s4 \< s s s \!}>>
  f2 c )
  cis4 \>( d8 cis g'4-. ) \! g-.

  \TempoIVTran

  fis4 r r2
  r4 a \p ( cis2
  d4 ) r r2
  a,1-> ~
  a4 d' ( \< ees d8 c \!
  bes4 ) r r2
  r4 \rightDynamic d4 \mf \< ( ees \! d8 \> c \!
  bes4 ) r r2
  r2 a-> \ff
  a,-> aes->
  g2. r4
  r2 ees' \f (
  des ) f ~
  <<{f2. d'4}{s4 \< s s s8 s \!}>>

  \mark \default

  c4 \ff r8 c e4 r8 e
  c4 r8 c g'4 r8 g
  f4 r8 f bes,4 r8 bes
  c4 r8 c e4 r8 e
  c4 r8 c g'4 r8 g
  f4 r8 f f4 r8 f
  f4 r8 f e4 r8 e
  f8 \ff c c c c2:8
  c: c:
  d1 \fz
  e \fz
  f8 c c c c2:8
  c: c:
  aes1 \fz
  bes!1 \fz
  aes4 \f r e'! r
  f r des r
  c r des r
  f r e! r
  f r ees-. e!-.
  f r des r
  c r des r
  f r e! r

  \bar "||"

  \mark \default

  \key f \minor
  f4 r r2
  R1
  \rightDynamic f,8 \f \< aes b c d f aes b \!
  c b aes f d c b aes
  f4 r r2
  R1
  f8 \f \< aes! b c des! f, aes bes! \!
  ces8 bes aes f des' c! ces aes
  f4 r r2
  b,1-> \f
  c!-> ~
  c
  a'-^\ffz ~
  a
  bes-^ \ffz ~
  bes
  b \fz
  b \fz

  \mark \default

  f'4 r r2
  R1 * 5
  ees4 \ff ges8 ges c,4 ees8 ees
  r4 ges8 ges c,4 ees8 ees
  r2 des2-> \mp (
  ces bes )
  ces ( \dim bes \!
  <<{aes1 )}{s2 s \pp}>>
  f2 ( e )
  f'1 \ff ~
  f
  f \fz ~
  f
  f \fz ~
  f
  f \fz ~
  f
  f \f
  des!4. ( d16 ees f4-. ) c-.
  des!4. ( d16 ees f4-. ) c-.
  des2. des4
  r des r des
  r des des des
  bes r r2

  \mark \default

  e4-^ dis-^ r2
  c!4 r b r
  c-> c-. r2

  \TempoIVPAn

  f2 \ff f
  f2. f4
  f2 f
  f2. f4
  f2 f
  f1 ~
  f4 r r2
  R1 * 2
  c4 \f r c r
  c r c r
  c-^ e, f-^ g
  aes-^ g aes-^ g
  aes-^ e' f-^ g
  aes-^ g aes-^ e

  \TempoIVMMaes

  f,2 ( \ff \< f'4 e ) \!
  ees2.-> ( c4-. )
  bes2.-> c4-\parenthesize->
  des2-> bes4-> f->
  a1->
  bes->
  a \fz
  a \fz
  a \fz
  a4 \ffz r r2

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdClarinettoI = \new Voice {
  \time 2/2
  \key f \minor
  \set Staff.instrumentName = \markup \fontsize #3 \center-column {"Clarinetto" I}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "clarinet"
  \clef treble
  \SgMdClarinettoI
}

voiceSgMdClarinettoII = \new Voice {
  \time 2/2
  \key f \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Clarinetto" II}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "clarinet"
  \clef treble
  \SgMdClarinettoII
}

quoteScoreSgMdClarinettoI = \SgMdClarinettoI
quoteScoreSgMdClarinettoII = \SgMdClarinettoII
