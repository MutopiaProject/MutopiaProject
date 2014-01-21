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
  * Fichier de notes, Violons I                                         *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMcViolinoI =
\relative c''' {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 1 2)
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoIII

  r8 a \p a4-. ( a-. )
  a4-. ( r a-. ) r8 a \< a4-. ( g-. ) \!
  f4-. \fp \> ( r f-. \! ) r8 f \<g4-. ( a-. ) \!
  bes4-. ( \fz r bes-. ) r8 bes \> bes4-. ( a-. ) \!
  g4-. ( \p r g-. ) r8 g \< a4-. ( bes-. ) \!
  c2-> \mf f,4.-> \fz f8 \> g4-. ( a-. ) \!

  \tag #'conductorScore \tag #'pocketScore {
    \override TextSpanner #'font-shape = #'upright
    \override TextSpanner #'style = #'dashed-line
    \override TextSpanner #'dash-period = #0
    \override TextSpanner #'bound-details =
      #`((left (text . ,#{ \markup {"[ " \raise #0.6 \musicglyph #"scripts.sforzato"} #})
      (Y . 0)
      (padding . -1.5)
      (attach-dir . 0))
      (right (text . ,#{ \markup\concat {\raise #0.6 \musicglyph #"scripts.sforzato" "]"} #})
      (Y . 0)
      (padding . 0)
      (attach-dir . 0)))
    \override Score.FootnoteItem #'annotation-line = ##f
    \footnote \markup {"13"} #'(-0.5 . 3.8) \markup {\italic "13 - According to N. Simrock 1885"}
    bes2 \fz -\tweak #'extra-offset #'(0 -1.5)
      \startTextSpan e,4. -\tweak #'extra-offset #'(0 . 3.3)-> e8 \> f4-. ( g-.) \!
    a2 \fz -\tweak #'extra-offset #'(0 . 1.9)-> d,4. \fz \stopTextSpan d8 \< e4-. ( f-. ) \!
    \revert TextSpanner #'font-shape
    \revert TextSpanner #'style
    \revert TextSpanner #'dash-period
    \revert TextSpanner #'bound-details
  }
  \elseTag #'conductorScore \elseTag #'pocketScore {
    bes2 -\parenthesize-> \fz e,4. -\parenthesize-> \fz e8 \> f4-. ( g-.) \!
    a2-\parenthesize-> \fz d,4. -\parenthesize-> \fz d8 \< e4-. ( f-. ) \!
  }

  <e a, e>2 \f r4 r2 r4
  R1.

  \tag #'partScore {
    <<{c!4. ( d8 b d) c4. ( d8 b d )}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4
      -\tweak #'minimum-length #4 \> s4 \! s4 \< s4 -\tweak #'minimum-length #4 \> s \! }>>
  }
  \elseTag #'partScore {
    <<{c!4. ( d8 b d) c4. ( d8 b d )}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4 \> s4 \! s4 \< s4 \> s \!}>>
  }
  c4 ( \< f e \bindDynamics d \> c bes! ) \!
  a4. \pp ( bes8 gis a ) a4. ( bes8 gis a )
  a4 ( e' d cis bes g!
  f4 e d cis ) r r
  R1. * 2

  % 2 lignes de nuances dynamiques
  \polyNeutral {
    d'8 \fz ([cis d cis]) f \fz ([e f e]) bes' \fz ([a bes a])
  }
  {
    \once \override DynamicText #'stencil = ##f
    s4 \fz s s \< s s s8 s \!
  }
  a2 \mf -\tweak #'extra-offset #'(0 . 1) _\markup {\italic [espress.]} a \< ( b4 cis ) \!
  d2 ( a4 f2 \< d4 ) \!
  d4 ( g a bes2 \dim b4 )
  c2 ( g4 \< e2 c4 ) \!
  <<{f'2. \PiuF d4 ( e f )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  \tag #'pocketScore
    \break  % Pour assurer la synchronisation avec les \aIIP
  <<{e2. \fz c4 ( d e )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{d2. d2 cis4-.}{s2 \startTrillSpan s s8 s16 s \stopTrillSpan}>>

  \mark \default  % Mark A

  d4 r r r2 a'4-. \mf
  d,4-. r r r2 a'4-.
  f4 \ff r f r8 f f4-. e-.
  f4 r f r8 f f4-. e-.
  d4 r r r2 r4
  r2 \times 2/3 {a8 \p ( gis a} bes4 \> ) a-. c,!-. \!
  b4-. r r r2 r4
  R1.

  <<{d'1.}{s4 \fp \bindDynamics s s8 s \< s4 s s8 s \!}>>
  <<{e1.}{s4 \fp \bindDynamics s s s \< s s8 s \!}>>

  \tag #'partScore {
    <<{fis1.}{s4 \fp s s s \< s s8 \once \override DynamicText #'self-alignment-X = #-1.3 s \ff
      -\tweak #'stencil ##f -\tweak #'minimum-length #3 \<}>>
    \once \override DynamicText #'self-alignment-X = #-0.5 a4-> \fz g!4 fis a-> \fz g gis
  }
  \elseTag #'partScore {
    <<{fis1.}{s4 \fp s s s \< s s8 \once \override DynamicText #'self-alignment-X = #-1.3 s \ff}>>
    \once \override DynamicText #'self-alignment-X = #-0.5 a4-> \fz g!4 fis a-> \fz g gis
  }

  bes!4-> \fz a gis bes-> \fz a gis
  bes4-> \fz a g!-> \fz f ees-> \fz d
  cis4 \fz a f' \fz d cis \fz a
  a'4\fz a, a'\fz a, a'\fz a,
  a'4\fz a, \dim a' a, a' \p a,
  a'4 a, a' \> a, a' a, \!
  a1. \pp
  gis2. \< ( a ) \!
  bes2. ( d2 \> dis4 \! )
  e2. \p  \< ( c ) \!
  <<{f4 ( c a ~ a2. )}{s4 \mf s4. \< s8 s4 \> s s8 s \!}>>
  <<{f'4 ( e bes ~ bes2. )}{s8 s2 \< s8 s4 \> s s8 s \!}>>
  e4 ( d f,2 bes )

  \mark \default  % Mark A

  a8 \mf e e f f4-. r8 e-. \p e-. f-. f4
  r8 e a4-. a,-. r2 r4

  \tag #'partScore {
    r8 a \p a b -\tweak #'minimum-length #8 \> b4-. r8 \! a a b b4-.
  }
  \elseTag #'partScore {
    r8 a \p a b \> b4-. r8 \! a a b b4-.
  }

  r8 e,-. a4-. a,-. r2 r4
  r8 cis' \pp cis cis cis4 r8 c c c c4
  \textSpannerDown
  \override TextSpanner #'style = #'dashed-line
  \override TextSpanner #'(bound-details left text) = #"cresc."
  \override TextSpanner #'(bound-details right text) = #"molto"
  cis8 r e'4 ( d \startTextSpan cis bes! g )
  f4 ( \stopTextSpan e d cis bes g )
  f4 ( e d ) cis8 \f ( a' bes a bes a )
  d8-> ([cis d cis]) \< f-> ([e f e]) bes'-> ([a bes a]) \!
  d,8 \ff \< ( cis f e bes' a ) d ( cis f e bes'-> a )\!

  \mark \default  % Mark A

  a4-. \ff r a-. r8 a a4-. g-.
  f4-. r f-. r8 f g4-. a-.
  bes4-. r bes-. r8 bes bes4-. a-.
  g4-. r g-. r8 g a4-. bes-.
  c2-> \fz f,4.-> \fz f8 g4-. ( a-. )
  bes2-> \fz e,4.-> \fz e8 f4-. ( g-. )
  a2-> \fz d,4.-> f8 f4-. e-.
  d4 r d r8 d d4-. cis-.
  d4 r d r8 d d4-. cis-.
  f4 \ff r f r8 f f4-. e-.
  f4 r f r8 f f4-. e-.
  d4 r r r2 r4
  R1. * 3

  \mark \default  % Mark A

  d4 \ff r \times 2/3 {a'8 ( gis a} bes4-.) a-. d,-.
  cis4-. r \times 2/3 {a'8 ( gis a} bes4-. ) a-. c,!-.
  b4-. r \times 2/3 {g'8 ( fis g} a4-. ) g-. gis-. \fz
  \ottava #1
  \set Staff.ottavation = #"8"
  bes!4-. a-. gis-. \fz bes-. a-. gis-. \fz
  b4 a gis \fz b a fis \fz
  d'4 \fz cis b \fz a gis \fz fis
  \ottava #0
  e4 \fz dis d \fz cis b \fz a
  <gis cis, e,>4 r r <e cis>8 q r4 <cis e,>8 q
  <e, cis' a'>4 \arpeggio a8 \< ( b cis d e fis g! a b cis ) \!
  d8 \ff ( a' ) a-. a-. a-. a-. bes!2.:16
  bes2.: a:
  d,4 r \times 2/3 {a'8 ( gis a} bes!4 ) a-. f-.
  d4 r \times 2/3 {a'8 ( gis a} bes4 ) a-. f-.
  bes4-. \fz a-. f-. \fz d-. bes-. \fz a-.
  f4-. \fz d-. f-. \fz bes-. d-. \fz f-.
  a4 r r <d,,, d' d'> r r

  \tag #'partScore {
    <<{d1.}{s4 -\tweak #'minimum-length #10 \> s2 s s4 \!}>>
  }
  \elseTag #'partScore {
    <<{d1.}{s4 \> s2 s s4 \!}>>
  }

  \bar "||"

  \TempoIIIMM

  \key g \major
  fis1. \pp ^\markup {\italic "sul G"} ~
  fis1.

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.5

  <<{g1.}{s2. \< s2 s4 \!}>>
  <<{g1. ~ (}{s2. \> s2 s4 \!}>>
  g2. \pp d )
  <<{fis1. ~}{s2. \< s2 s8 s \!}>>
  <<{fis1.}{s2. \> s2 s4 \!}>>

  \tag #'partScore {
    <<{gis1.}{s4 \p \bindDynamics s2 \< s s4 \!}>>
    a2. ( c ) \f
    \dynamicLineSpannerStandard
    <<{b2. ( fis2 gis4 )}{s -\tweak #'minimum-length #6 \dim s \> s s s s \!}>>
  }
  \elseTag #'partScore {
    <<{gis1.}{s4 \p \< s2 s s4 \!}>>
    a2. ( c ) \f
    <<{b2. ( fis2 gis4 )}{s \dim s \> s s s s \!}>>
  }

  a2. ( \p \dim e2 fis4 ) \!
  g!2. \pp ( fis2 e4 )

  \mark \default  % Mark A

  \set tupletSpannerDuration = #(ly:make-moment 1 2)
  \times 4/6 {
    \repeat tremolo 3 {ais8 ( b}
    \repeat tremolo 3 {ais8 b}
    \repeat tremolo 3 {ais8 b )}
    \tupletOff
    \repeat tremolo 3 {bes8 ( c}
    \repeat tremolo 3 {bes8 c}
    \repeat tremolo 3 {bes8 c )}
    \repeat tremolo 3 {ais8 ( b}
    \repeat tremolo 3 {ais8 b}
    \repeat tremolo 3 {ais8 b )}
    \repeat tremolo 3 {bes8 ( c}
    \repeat tremolo 3 {bes8 c}
    \repeat tremolo 3 {bes8 c )}
  }
  \tupletOn
  e4-. \pp r gis,-. r e-. gis-.
  gis'4-. r gis,-. r e-. gis-.
  R1. * 4
  dis1. \pp (
  e4 ) b'8 ( f ) e4-. b'8 ( f ) e2-> \dim ~
  e4 c'8 ( b a gis a b d c b a )
  \set tupletSpannerDuration = #(ly:make-moment 3 4)
  \times 6/9 {
    gis8 \ppp ( e f e f e f e f e f e f e f e f e )
    f8 ( e f e f e f e f e f e ees f ees f ees f )
  }

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3

  d4-. a'8 ( ees ) d4-. a'8 ( \< ees ) \! d2-> \fz ~
  d4 bes'8 \dim ( a g fis! g a c bes a g )
  \tag #'partScore
    \dynamicLineSpannerStandard

  \times 6/9 {
    d8 \pp ( ees d ees d ees d ees d ees d ees d ees d ees d ees )
    d8 ( ees d ees d ees d ees d ees d ees d ees d ees d ees )
  }
  ees8 r ees'' \pp ( c ) a4-. r2 r4
  r4 d8 ( bes ) g4-. r2 r4
  r4 bes8 ( g ) e4-. r2 r4
  r4 a8 ( f ) d4-. r2 r4
  R1.

  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-2

  \mark \default  % Mark A

  d'8 \pp ( a ) d,4-. d8 ( a ) d,4-. r r
  R1.
  d''8 \pp ( a ) d,4-. d8 ( a ) d,4-. r r
  R1. * 2
  <<{e''1. ~}{s4 s s s \p \< s s8 s}>>
  e4 \! e,4. ( e'8 \> e4 e, e' ) \!
  e1. \pp ~
  e4 e,4. ( e'8 e4 e, e'
  c4 ) r r r2 r4
  R1.
  f,,4 \pp \Pizz r r r2 r4
  R1. * 8

  \mark \default  % Mark A

  \hairpinToBarLineTrue
  a,1. \Arco \pp \< (
  <<{aes1. )}{s2. \> s2 s4 \!}>>
  a!1. \pp (
  gis1.
  a4 ) r r r2 r4
  R1. * 5

  \TempoIIIAcc

  r4 d4. \pp ( f8 d4 f4. d'8 )
  f,4 ( \<d'4. f8 ) d4 ( f4. d'8 ) \!
  a8 \mf f' a f, d' f d, \cresc f d' a, f' a
  f,8 d' f d, f d' a, f' a a, d f \!

  \TempoIIIViv

  \leftDynamic a,4-> \FFRinfor r b!-> r8 cis d4-> e-> \<
  f8 g gis4 a8 b cis d \! e f g! gis
  \set tupletSpannerDuration = #(ly:make-moment 1 2)
  \times 4/6 {
    \repeat tremolo 3 {a8 \ff ( bes}
    \repeat tremolo 3 {a8 bes}
    \repeat tremolo 3 {a8 bes )}
    \repeat tremolo 3 {a8 \ff ( bes}
    \repeat tremolo 3 {a8 bes}
    \repeat tremolo 3 {a8 bes )}
  }

  \mark \default  % Mark A

  a4-. _\markup {\italic "con forza"} r bes-. r8 b c4-. cis-.

  \tag #'conductorScore \tag #'pocketScore
    \noBreak  % Pour ne pas couper un trille altéré aux 4 bois

  d4 r8 dis-. e4-. r8 fis! g4-. gis-.
  a4 \ff r a r8 a a4-. a-.
  a4 r a r8 a a4-. a-.
  a4 r r r2 r4
  R1.
  r2 r4 r8 a, \pp a4-. a-.

  \bar "||"

  \key d \minor
  a4 r a r8 a a4-. g-.
  f4 r f r8 f \< g4-. a-. \!|
  bes4 \fp r bes r8 bes \> bes4-. a-. \!
  g4 \p r g r8 g \< a4-. bes-. \!
  c2 \fz <<{f,4.->}{s4 s8 \cresc}>> f g4-. a-. \!
  bes2 \fz e,4.-> e8 f4-. g-.
  a2 \fz d,4. \< d8 e4-. f-. \!
  <e cis e,>2 \f r4 r2 r4
  R1.

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.5

  \tag #'partScore {
    <<{c!4. ( d8 b d  c4. d8 b d )}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4
      -\tweak #'minimum-length #4 \> s4 \! s4 \< s4 -\tweak #'minimum-length #4 \> s \! }>>
  }
  \elseTag #'partScore {
    <<{c!4. ( d8 b d  c4. d8 b d )}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4 \> s4 \! s4 \< s4 \> s \!}>>
  }

  c4 ( \< f e d \> c bes! ) \!
  a4. ( \pp bes8 gis a ) a4. ( bes8 gis a )

  \tag #'partScore
    \dynamicLineSpannerStandard

  a4 ( e' d cis bes g! )
  f4 ( e d cis ) r r
  R1. * 2

  % 2 lignes de nuances dynamiques
  \polyNeutral {
    d'8 \fz ([cis d cis]) f \fz ([e f e]) bes' \fz ([a bes a])
  }
  {
    \override DynamicLineSpanner #'outside-staff-priority = #800
    s4 \once \override DynamicText #'stencil = ##f s \fz \< s s s s8 s\!
  }

  \mark \default  % Mark A

  \tag #'partScore {
    <<{\leftDynamic a2 (\MFespressivo <<{a ) ( b4 cis )}{s s -\tweak #'extra-offset #'(0 . 2) \< s s \!}>>}
      {
        \once \override MultiMeasureRest #'stencil = ##f
        \once \override MultiMeasureRest #'minimum-length = #20
        \set restNumberThreshold = #0
        R1.
        \set restNumberThreshold = #1   % ou reset restNumberThreshold
      }>>
    d2 ( a4 ) f2 \< ( d4 ) \!
  }
  \elseTag #'partScore {
    \leftDynamic a'2 \MFespressivo \bindDynamics <<{a ( b4 cis )}{s s \< s s \!}>>
    d2 ( a4 ) f2 \< ( d4 ) \!
  }
  
  <<{d4 ( g a ) bes2 ( b4 )}{s2. s8 s \> s4 s \!}>>
  c2 ( g4 ) e2 \< ( c4 ) \!
  <<{f'2. \ff d4 ( e f )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{e2. \fz c4 ( d e )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{d2. d2 cis4-.}{s2 \startTrillSpan s s8 s16 s \stopTrillSpan}>>
  d4 r r r r a'-. \mf
  d,4-. r r r r a'-.
  \tag #'pocketScore
    \break  % pourassurer la synchronisation avec les \aIIP
  f4 \ff r f r8 f f4-. e-.
  f4 r f r8 f f4-. e-.
  f4-. e-. f-. e-. f-. e-.
  f4-. e-. f-. \dim e-. f-. e-.
  f8 ( \mp d e c d \dim bes c a bes g a f )
  g8 ( e f d e c d bes c a bes g )
  a4 \p r \times 2/3 {a8 ( gis a} c4 bes g )
  r4 r \times 2/3 {g8 \dim ( fis g} bes4 a d, )
  r4 r \times 2/3 {d8 ( cis d} f!2. \pp ~
  f2. e )

  \mark \default  % Mark A

  \tag #'conductorScore \tag #'pocketScore {
    d8 \< d a' a d d a a d d a' a
    d, d a a d, d a' a d, d a a \!
  }
  \elseTag #'conductorScore \elseTag #'pocketScore {
    d4:8 \< a': d: a: d: a':
    d,: a: d,: a': d,: a: \!
  }

  d4 \f r r r2 r4
  R1.
  r4 c' \p ( bes a2 \dim g4 ) \!
  f2 r4 ees2^\markup {\italic ten.} r4
  r2 r4 d2 \dim r4
  r2 r4 d2 \pp r4
  r2 r4 cis2 \dim r4
  d4 r a' \pp ( c bes ) r
  r4 r gis ( \< bes \> a \! ) r
  r2 e4 ( \< g? \> f ) \! r
  r2 e4 ( \dim g f ) \! r
  r2 r4 r2 e4 ( \ppp
  g2. f4 ) r r

  R1. * 3

  \tag #'partScore
    \noBreak
  \TempoIIIPPrB

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #22
  R1. * 6

  \TempoIIIiT

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuring #"scoreSgMcViolinoII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Viol. II"} R1. * 2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1. * 2
  }

  r4 r \times 2/3 {a'8 \mf \< ( gis a} bes4 ) a-. f-. \!
  d4 r \times 2/3 {a'8 \f \< ( gis a} bes4 ) a-. f-. \!

  \mark \default  % Mark A

  d4 r \times 2/3 {a''8 \ff ( gis a} bes4 ) a-. d,-.

  \tag #'pocketScore
    \break  % pourassurer la synchronisation avec les \aIIP

  cis4-. r \times 2/3 {a'8 ( gis a} bes4 ) a-. c,-.
  b4-. r \times 2/3 {g'?8 ( fis g} a4 ) g-. gis-.
  \ottava #1
  \set Staff.ottavation = #"8"
  bes!4 \fz a-. gis-. bes \fz a-. gis-.
  b4 \fz a-. gis-. b \fz a-. fis-.
  d'4 \fz cis b \fz a \ottava #0 gis \fz fis
  e4 \fz dis d \fz cis b \fz a
  <gis cis, e,>4 r r <e cis>8 q r4
  <cis e,>8 q
  <e, cis' a'>4 a8 \< ( b cis d! e fis g! a b cis ) \!
  d8 \fff ( a' ) a a a a bes!2.:16
  bes2.: a:
  d,4 \ff r \times 2/3 {a'8 ( gis a} bes!4 ) a-. f-.
  d4 r \times 2/3 {a'8 ( gis a} bes4 ) a-. f-.
  bes4 \fz a-. f \fz d-. bes \fz a-.
  f4 \fz d-. f \fz bes-. d \fz f-.
  <a,, a''>4-. r q r8 q q4-. q-.
  q4 r r q r r q r r r2 r4

  \bar "|."
}

voiceSgMcViolinoI = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set Staff.instrumentName = \markup {\fontsize #3 "Violini I"}
  \tag #'partScore
  \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
  \set Staff.shortInstrumentName = "1.Viol."
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef treble
  \SgMcViolinoI
}

quoteScoreSgMcViolinoI = \SgMcViolinoI
