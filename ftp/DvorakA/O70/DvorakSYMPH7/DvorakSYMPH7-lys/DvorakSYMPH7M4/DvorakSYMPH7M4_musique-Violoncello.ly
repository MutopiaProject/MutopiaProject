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
  * Fichier de notes, Violoncelle                                       *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Fichier cité par le cor III IV :
% le \tag #'partscore devient \tag #'partScore \tag #'quoteCornoIII \tag #'quoteCornoIV {

SgMdVioloncello =
\relative c' {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 1 2)
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoIV

  \override DynamicLineSpanner #'outside-staff-priority = #500
  \polyNeutral {
    \leftDynamic a2 \Pespress ( a' )
  }
  {
    \once \override DynamicText #'stencil = ##f s128 \p  s -\tweak #'minimum-length #12 \< s64 s32 s16 s8 s4 s s \!
  }
  \revert DynamicText #'outside-staff-priority
  gis2. \fz ( f4 )
  d ( e \> f d8 a ) \!
  cis2. \dim ( d4 )
  bes! \> ( gis a a-- ) \!
  <d, f>2 \p (<bes  g'!> )
  <a e'>1 \> ~ <<{q}{s4 s s s8 s \!}>>
  <d, a'>2-- \pp ( <cis a'>-- )
  <e a>2.-- ( <f a>4--)
  <e a>2--  ( <f a>-- )
  \poly {
    a1
    a2-- ( a-- )  \<
    <<{a2.-- ( a4-- )}
      {s8 \! \bindDynamics s  -\tweak #'minimum-length #5 \> s4 s s8 s \!}>>
  }
  {
    d,2-- ( cis-- )
    cis1
    cis2 ( d )
  }
  <e a>2 <d a'> ~
  q <e a>
  \TempoIVPPCresc
  cis'8-. \bracketedPP e-. e( cis ) d-. f-. f ( d )
  e-. \fz bes'-. bes \> ( g ) g-. e-. \! e ( cis )
  cis-. e-. e ( cis ) d-. f-. f ( d )

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2

  e-. \fz cis'-. \> cis ( bes ) bes-. g-. \! g ( e )
  cis-. \< e-. e ( cis ) d-. f-. f ( d ) \!
  r4 \times 2/3 {a8 \f ( d e} f4 ) r
  r2 r4 \times 2/3 {a,8 \f ( d f}

  \tag #'partScore
    \dynamicLineSpannerStandard

  a4 ) r r2
  R1 * 5
  r2 r4 \times 2/3 {bes,8 \p ( ees g )}
  bes2 \pp ( bes, ) ~
  bes1 ~
  bes (
  aes2 g )

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3.5

  gis2 ( \pp \< a?
  bes2 \fz -\tweak #'minimum-length #9 \> d, ) \p
  <<{gis2 ( a4 bes )}{s4 s \< s s \!}>>
  b2 ( \f -\tweak #'minimum-length #8 \> d, ) \p
  a'2 \p \<  ( bes4  b ) \!
  c2 ( \f -\tweak #'minimum-length #8 \> d, ) \p
  <<{b'2 ( d )}{s4 \< s s s8 s \!}>>
  a4 \ff r r2

  \tag #'partScore
    \dynamicLineSpannerStandard

  \mark \default

  <d b'>2:16 \ff q:
  <d bes'>2: <d a'>:
  f4 ( a ) f' ( d8 bes )
  g4-. e'8-. d-. cis4-. cis,-.
  \leftDynamic d2-. _\Marcato g,-.
  a-. r
  d-. g,-.
  a-. r
  a-. a'-.
  a,-. r
  a-. fis-.
  b-. r
  bis-. cis-.
  a-. r
  cis-. a-.

  \tag #'partScore {
    fis2:8 \ff fis:
  }
  \elseTag #'partScore {
    fis8 \ff fis fis fis fis fis fis fis
  }

  e8 e' e e <e cis'>2:16
  q: q:
  q4 r r2
  r8 g \ff cis, d e g, a bes!
  gis4-. a-. r bes-.
  r gis8 gis bes4-. a-.

  \TempoIVRit

  r4 g-^ e-^ a-^

  \TempoIVIT

  \tag  #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-2

  \mark \default

  d,8 r \rightDynamic d'4 \ff -\tweak #'minimum-length #7 \< ( bes' ) \! a8 a
  d,4-. e-. f-. a8 ( g )
  f4-. c-. d ( bes )
  a-. d-. a2->
  R1
  r2 r4 a'-. \f
  d,8 r f4-. \ff bes-. a-.
  d,-. e-. f-. g-.
  f-. c-. d-.bes-.
  a-. d-. a2->
  R1
  r4 c,-. \f r2
  f'2-> \ff f,->
  fis <fis' a>:16
  q1:
  q1:
  g2-> \ff g,->
  gis <gis' b>:
  q1:
  q:
  \override DynamicLineSpanner #'staff-padding = #2
  a8 r g!2 ( f4 \dim ~
  f ) e ( d \p f )

  \mark \default

  a,-. \p a'-. a,-. \dim a'-.
  a,-. a'-. a,-. a'-.
  a \f ( bes! \< ) b ( c! ) \!
  \dynamicLineSpannerStandard
  cis4. ( d16  e ) f4-. d-.
  e4.  ( f16 g ) aes4-. ( f-. )
  a!-. \ff c,!-. fis-. a,-.
  dis-. fis,-. b-. b,-.
  e r r e'8-. \f e-.
  a,2-. b-. -\tweak #'minimum-length #7 \dim
  e,4 \rightDynamic gis8-. \mf a-. -\tweak #'minimum-length #8 \> b4 c8-. b-. \!
  a2-. \p -\tweak #'minimum-length #7 \> a-. \!
  gis4 a,-> ( b \dim e, )
  a-> ( b e, ) a-> (
  c2 \pp b4 ) \times 2/3 {b8 ( c b}
  e,4 ) r r2

  \bar "||"

  \mark \default

  \key a \major

  % Citée par les cors III et IV, on transpose d'une octave
  \tag #'quoteCornoIII \tag #'quoteCornoIV {
    \leftDynamic e'2 \MFespressivo fis4 ( e8 d )
    cis2 e4 ( d )
    cis2 ( b4 a )
    gis4 ( fis8 e d'4-. ) d-.
  }
  \elseTag #'quoteCornoIII \elseTag #'quoteCornoIV {
    \leftDynamic e'2 \MFespressivo fis4 ( e8 d )
    cis2 e4 ( d )
    cis2 ( b4 a )
    gis4 ( fis8 e d'4-. ) d-.
  }
    
  cis4 e, -\tweak #'extra-offset #'(0 . -1.5) \Pizz gis, e'
  a, e' b e
  fis, fis' cis e
  cis gis' cis, gis'
  fis r fis \Arco \pp r
  fis r fis, r
  fis' r fis r
  fis r fis, r
  fis' r cis r
  d8 r fis'4 ( -\tweak #'minimum-length #5 \< <<{g fis8 e )}{s4 s16 s \>}>>
  fis4 \! r r2
  r4 fis -\tweak #'minimum-length #5 \< ( <<{g4 fis8 e )}{s4 s16 s \>}>>
  fis8 \! r r4 r2
  r g,4 ( \f fis8 e )
  b'4 r b,8 \fz e fis g
  r e, fis g bes e f g
  a, c \< f a g, a cis! e \!
  fis,! a \< d fis? f, a f' a \!

  \mark \default

  e,8-. \ff cis'! ( e ) r d,-. e ( d' ) r
  cis,-. e ( cis' ) r gis-. e' ( gis ) r
  a,-. e' ( a ) r b,-. e ( b' ) r
  a,-. e' ( a ) r d,,-. e ( d' ) r
  cis,-. e ( cis' ) r gis-. e' ( gis ) r
  a,-. e' ( a ) r d,-. a' ( d ) r
  e,-. cis' ( e ) r e,2
  a,4 r r2
  R1
  a8:16 \ff c: e: fis: a8 r r4
  <e d'>1 \fz
  <a, e' cis'>4 \arpeggio r4 r2
  R1
  aes8:16 \ff c: e: f: b: c: e: f:
  f: e: d: c: b: a: g: d':
  c4 \fz r b, \fz r
  a \fz r g \fz r
  c \fz r d \fz r
  e \fz r e \fz r
  a, \fz r c-. b-.
  a \fz r g \fz r
  c \fz r d \fz r
  e \fz r e \fz r

  \bar "||"

  \mark \default

  \key a \minor
  a,4. \ff c8-. a4.-> c8-.
  a4.-> c8-. a4.-> c8-.
  a1-> \fz \> ~
  <<{a}{s2 s4 s8 s \!}>>
  a4.-> \ff cis8-. a4.-> \> cis8-.
  a4.-> cis8-. a4.-> cis8-. \!
  a1-> \p \> ~
  <<{a ~}{s2 s4 s8 s \!}>>
  a4. \pp ( c8-. a4. c8-. )
  a4. ( c8-. a4. c8-. )
  a4. ( c8-. a4. c8-. )
  a4. ( c8-. a4. c8-. )
  a4. ( c8-. a4. c8-. )
  c8 r r4 r2
  R1 * 2r2 b4 \pp r
  R1

  \TempoIVPRit

  \poly {
    \override Slur #'positions = #'(1 . 2.5) b1 ( ~
    b2 c )
    d1 ~d
  }
  {
    f,!1 \ppp ~
    f ~
    f (
    e )
  }

  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-2.5

  \mark \default

  \TempoIVIT

  <a c>4 r e' \Pizz r
  dis r c r
  a r c r
  R1 * 4
  r2 f, \Arco (

  \tag #'partScore {
    bes4-. ) r f'-. \RndPizz r
  }
  \elseTag #'partScore {
    bes,4-. ) r f'-. -\footnote \markup {"(20)"} #'(1 . 0) \markup {\null} \RndPizz r
  }

  e-. r des-. r
  bes-. r des-. r
  R1 * 4

  \tag #'partScore {
    r2 fis,2 \pp ( \RndArco
  }
  \elseTag #'partScore {
    r2 fis2 \pp ( -\footnote \markup {"(23)"} #'(1 . 0) \markup {\null}  \RndArco
  }

  b16 ) b' b b b2.:16
  b1:
  b:
  b:
  b2: ais:
  b: \pp e,:
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \times 4/6 {
    \repeat tremolo 3 {ais,8 ( cis} \repeat tremolo 3 {ais8 cis}
    \tupletOff
    \repeat tremolo 3 {b8 d} \repeat tremolo 3 {cis8 e )}
    \repeat tremolo 3 {ais,8 \< ( cis}
  }
  \tupletOn
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \times 2/3 {ais8 \! [cis \> ais] b [d b]) \!}
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \times 4/6 {
    \repeat tremolo 3 {c!8 ( ees} \repeat tremolo 3 {d f!}
    \tupletOff
    \repeat tremolo 3 {b,8 d} \repeat tremolo 3 {b8 d )}
    \repeat tremolo 3 {c8 ( ees} \repeat tremolo 3 {d f}
    \repeat tremolo 3 {b,8 d}
  }
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \tupletOn
  \times 2/3 {b \< [d b] \! c \> [ees c] \! )}
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \times 4/6 {
    \repeat tremolo 3 {cis8 \pp ( e} \repeat tremolo 3 {dis fis)}
    \tupletOff
    \repeat tremolo 3 {bis,8 ( dis}
  }
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \tupletOn
  \times 2/3 {bis8 [dis bis] cis [e cis])}
  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \times 4/6 {
    \repeat tremolo 3 {d8 ( f!} \repeat tremolo 3 {ees8 \cresc ges ) \!}
    \tupletOff
    \repeat tremolo 3 {cis,8 ( e! \<}
  }
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \tupletOn
  \times 2/3 {cis8 [e cis] \tupletUp d [f d] \! )}
  \tupletNeutral
  dis8 \cresc ( fis e g d! f! dis fis )
  e ( g fis a dis, fis e g )
  b,4 \mf r b \cresc r
  b r b r \!
  b \f r r2
  R1

  \mark \default

  \leftDynamic e2-> \FFMarcato c'->
  b4-> a-> g-> fis->
  g-> a-> b-> cis->
  d!4.-> d16 ( e fis4 ) d4-.
  e,1 \ffz ~
  e2 e4. e8
  e'1 \fz (
  b ) \fz g,-^ \ff
  r4 b'8 b e,4 g8 g
  r4 b8 b e,4 g8 g
  r4 b8 b e,4 g8 g
  gis,1-^ \ff
  r4 d''8 d d,4-> f8 f
  r4 d'8 d d,4 f8 f
  r4 d'8 d d, e f e
  <a, e' a>4 \arpeggio \ff r <a d a'> \arpeggio r
  <a e' d'> \arpeggio r <a e' c'> \arpeggio r

  \mark \default

  R1 * 2
  cis'8 \fz d c b a b c d
  e \fz f d c b c d e
  f \fz g e d c d e f
  g \fz a f e d e f g
  f1 \fz
  b, \fz
  bes \fz
  e! \fz
  ees, \fz
  a! \fz
  aes \fz
  d! \fz
  cis4 \ff r cis, r
  cis r cis r
  cis'4. ( dis16 eis fis4-. )dis-.
  eis-. \dim cis-. dis-. bis-.
  <<{cis,,4. ( dis16 eis fis4-. ) d-.}{s4 s \dim}>>
  <<{cis4. ( dis16 eis fis4-. ) d-.}{s4. s8 \> s4 s8 s \!}>>
  cis4 \p ( fis gis \dim cis, \! )
  fis \> ( d cis fis \! )
  gis4 \pp ( cis, fis2 )
  d2 \> ( cis \!

  \mark \default

  fis4 ) \ppp r8 a-. fis4-. r8 a
  fis4-. r8 a-. fis4-. r8 d'
  a4 r8 cis \ppp fis4-. r8 cis'
  fis4-. r8 a fis4-. r8 d
  a4-. r8 cis fis,4-. r8 cis
  fis,4-. r8 a fis4-. r8 a
  fis4-. r r2
  r r4 r8 fis \pp
  g4 r8 bes g4 r8 bes
  g4 r8 bes g4 r8 ees'
  bes4-. r8 d \ppp g4-. r8 d'
  g4-. r8 bes g4-. r8 ees
  bes4-. r8 d g,4-. r8 d
  g,4 r8 bes g4 r8 bes
  g4-. r r2
  r r4 r8g \pp
  aes4-. r r2
  r fes'2 \pp (
  ees ) ces (
  aes ) fes' (
  ees ) ces (
  aes ) ges' (
  f ) d (

  % insérer ici un crescendo sur 4 mesures
  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \PocoCrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  b2 \< ) fis' (

  \tag #'partScore
    \noBreak  % Pour ne pas couper le spanner

  eis ) d! (

  \tag #'partScore
    \noBreak  % Pour ne pas couper le spanner

  b2 ) a' (
  gis4 ) d, ( f!4 ) <<{a4 (}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  gis4 ) \< d4 ( f ) a (
  <<{gis ) r f r}{s4 s s s8 s16 s \!}>>
  d4-. \f r bes'-. r

  \bar "||"

  \mark \default

  \key d \minor
  a1 \ff
  a4 r8 f \< a4 r8 d
  f4 r8 a d4 r8 f \!
  a4 r8 f bes4 r8 bes,
  g'4 r8 e cis4 r8 a
  d4 r8 d, g4 r8 g,
  a'4 \ff r8 a, a'4 r8 a,
  a'4-. a,-. r a'-.

  \tag #'partScore {
    <<{
      \repeat unfold 12 {r4 a, r a'}
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeat #'transparent = ##t
        \override PercentRepeatCounter #'staff-padding = #1
        \repeat percent 12 {s1}
    }>>
  }
  \elseTag #'partScore {
    \repeat unfold 12 {r4 a,-. r a'-.}
  }

  \mark \default

  a,4 \times 2/3 {a8 d e} f4 r
  r2 r4 \times 2/3 {a,8 ( \f \< d f}
  a4 ) \! r r2
  R1 * 4
  a,1 \pp ~
  a ~
  a ~
  a
  d, ~
  d
  a' ~
  a4 r r2

  \bar "||"

  \clef tenor

  \key d \major
  \tag #'partScore {
    \polyNeutral {
      \leftDynamic a''2 \MPespress b4 ( a8 g )
    }
    {
      s64 \once \override DynamicText #'stencil = ##f
      s64 \p s32 -\tweak #'minimum-length #6 \< s16 s8 s4 s \!
    }
  }
  \elseTag #'partScore {
    \polyNeutral {
      \leftDynamic a2 \MPespress b4 ( a8 g )
    }
    {
      s64 \once \override DynamicText #'stencil = ##f
      s64 \p s32 \< s16 s8 s4 s \!
    }
  }
  <<{fis2 a4 ( g )}{s2 \< s4 s8 s \!}>>
  fis2 e4 ( d )
  cis ( b8 \> a ) g'4-. ( <<{g-. )}{s8 s \!}>>
  fis4 \p

  \clef bass
  a,,4 ( cis, a' )
  <<{d, ( a' e a )}{s2 \< s4 s8 s \!}>>
  b4 ( b' fis fis, )
  fis ( \> cis' fis ais, ) \!

  \TempoIVTran

  b4 \p ( <fis fis'>2) q4--
  b4 ( <fis fis'>2) q4--
  b4 \pp ( <fis fis'>2) q4--
  b4 ( <fis fis'>2) q4--
  b r fis' r
  <<{g d'  ( ees2}{s8 s \mf \bindDynamics s4 \< s s8 \bindDynamics s \>}>>
  d4 ) \! r r2
  <<{r4 d ( ees2}{s4 s \< s s8 s \!}>>
  d8 ) r r4 r2
  r c4 \fz ( b8 a )
  e'8 r r4
  e,8-. \ff a-. b-. c-.
  e,,-^a b c ees a bes c
  d,-^\< f bes d c,-^d a' d \!
  b, \fz d g d' bes, \fz d gis d'

  \mark \default

  fis,,8-. \ff d' ( fis ) r g,-. a ( g'? ) r
  fis,-. a ( fis' ) r cis-. a' ( cis ) r
  d,-. a' ( d ) r e,-. a ( e' ) r
  d,-. a' ( d ) r g,,-. a ( g' ) r
  fis-. a ( fis' ) r cis,-. a' ( cis ) r
  d,-. a' ( d ) r g,,-. d' ( g ) r
  a,-. d ( a' ) r a,-. cis ( a' ) r
  d,4 r r2
  R1
  d8:16 \f f: a: b: d8 r r4
  a,1 \fz
  d4 r r2
  R1
  des8: \ff f: a: bes: r2
  c,1 \fz
  f4 \ff r e r
  d r c r
  f, r g r
  a r a r
  d r f-. e-.
  d r c r f, r g r
  a r a r

  \bar "||"

  \mark \default

  \key d \minor
  d4.-> \ff f8 d4.-> f8
  d4.-> f8 d4.-> f8

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #1.5

  d1-^ \ffz ~
  <<{d1}{s4 \> s s s8 s \!}>>
  d4.-> \ff fis8 d4.-> fis8
  d4.-> fis8 d4.-> fis8

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2

  d1-^ \ffz ~
  <<{d1}{s4 \> s s s8 s \!}>>
  d4.-> \ff f!8 d4.-> f8
  cis1-^ \fz
  c4.-> ees8 c4.-> ees8
  c1-^ \fz
  b4. \fz d8 b4. \fz d8
  b1-^ \fz
  bes4. \fz d8 bes4. \fz d8
  bes1-^ \fz
  bes-^ \ffz
  e,-^ \ffz

  \tag #'partScore
    \dynamicLineSpannerStandard

  \mark \default

  \set tupletSpannerDuration = #(ly:make-moment 2 4)
  \times 4/6 {a2.:8 \ff a:}
  a4 a'8 \ff a d,4-> e->
  f-> a-> b-> cis->
  d-> e-> f-> fis->
  g2-> c,!4-> bes!->
  a8 cis d e \clef alto f a c! bes
  a2 \ff r

  \clef bass
  a,,2 \ff r
  a4 r bes8 \p bes r bes
  bes bes r bes bes bes r bes
  bes \dim bes r bes bes bes r bes
  bes bes r bes a \pp a r a
  a a r a a a r a
  d4 \ff ( e f g )
  a4. ( \< bes!16 b c4 cis ) \!
  d1-^\ffz ~
  d
  <d, b'>1-^ \ffz ~
  q
  <d bes'>4 d'8 d g,4-> a8 a
  bes4 c8 c d4 e8 e
  fis1 \fz
  g,,2 d'
  g, d'
  g, g4-. bes-.
  r ees-. r g-.
  r bes,-. ees-. g-.
  bes-. r r2

  \mark \default

  g4-^ fis-^ r2
  f4 r e r
  a,-^ a'-^ r2
  \TempoIVPAn
  d,,8 \ff ( a' f' d' d f, a, d, )
  d ( bes' f' d' d f, bes, d, )
  d ( a' f' d' d f, a, d, )
  d ( bes' f' d' d f, bes, d, )
  d'2 \ff bes''
  a2. f4
  d ( e ) f ( d8 a )
  cis4-> d gis,-> a
  e-> f cis-> d
  a-> cis d-> a
  cis-> d-> a-> cis->
  d8-> [d] a [a] d-> [d] a' [a]
  d-> [d] a [a] d,-> [d] a [a]
  d-> [d] a' [a] d-> [d] a [a]
  d,-> [d] a [a] d-> [d] a' [a]

  \TempoIVMMaes

  d,4 r d,2-> \ff
  fis1->
  g -> ~
  g
  d-^
  <d bes'>-^
  <d a'>-^ \fz
  q-^ \fz
  q-^ \fz

  \tag #'partScore {
    q4 \ffz r r2
  }
  \elseTag #'partScore {
    q4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  }

  \bar "|."
}

voiceSgMdVioloncello = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 "Violoncelli"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "Vlc."
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef bass
  \SgMdVioloncello
}

quoteScoreSgMdVioloncello = \SgMdVioloncello
