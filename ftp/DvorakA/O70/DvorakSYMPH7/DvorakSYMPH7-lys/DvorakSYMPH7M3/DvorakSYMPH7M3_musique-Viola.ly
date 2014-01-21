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
  * Fichier de notes, Alto                                              *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Fichier cité par les violons II :
% le \tag #'partscore devient \tag #'partScore \tag #'quoteViolinoII {

SgMcViola =
\relative c'' {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 1 2)
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoIII

  r8 a \p a4-. ( a-. )
  a-. ( r a-. ) r8 a \< a4-. ( g-. ) \!
  f-. \fp \> ( r f-. \! ) r8 f \<g4-. ( a-. ) \!
  bes-. ( \fz r bes-. ) r8 bes \> bes4-. ( a-. ) \!
  g-. ( \p r g-. ) r8 g \< a4-. ( bes-. ) \!
  c2-> \mf <a, f'>2.-> r4
  bes'2-> <g, e'>2.-> r4
  a'2-> <f, d'>2.-> r4
  <e cis'>2 \f r4 r2 r4
  R1.

  \tag #'partScore {
    <<{a2. a ~}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4
      -\tweak #'minimum-length #4 \> s4 \! s4 \< s4 -\tweak #'minimum-length #4 \> s \! }>>
  }
  \elseTag #'partScore {
    <<{a2. a ~}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4 \> s4 \! s4 \< s4 \> s \!}>>
  }

  a4 r r r2 r4
  e2.-- \pp ( f-- )
  e2 r4 r2 r4
  r2 r4 cis' \pp ( bes g
  f e d ) cis8 ^( a' \cresc bes a bes a ) \!
  d-\parenthesize -> ([cis d cis]) f-\parenthesize -> ([e f e]) bes'-\parenthesize -> ([a bes a]) \!
  R1.
  <f a>4 \Div r q r8 q q4-. <e g>-.
  <d f> r q r8 q \< <e g>4-. <f a>-. \!
  <g bes> r q r8 q \> q4-. <f a>-. \!
  <e g> r q r8 q \< <f a>4-. <g bes>-. \!
  c2-> \PiuF f,4.-> f8 g4-. a-.
  bes2-> \fz e,4.-> e8 f4-. g-.
  a2-> d,4.-> f8 f4-. e-.

  \mark \default  % Mark A

  d8 \mf e c d bes c a bes g gis a a'
  d, e c d bes c a bes g! gis a a'
  d, \ff e c d bes c a bes g! gis a a'
  d, e c d bes c a bes g! gis a a'
  d,,4 \f d8 ([e]) e ([f]) f \dim ([g?]) g ([a]) a ([bes])
  bes \p ([a]) a ([b]) b ([c!]) \dim c ([d]) d ([e]) e ([fis])
  fis \pp ([g]) g ([a]) a ([b]) b ([c]) c ([b]) b ([bes])
  a ( bes a gis bes a g! a fis g e f! )
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  d4 \f r \times 2/3 {a8 _\markup {\italic "con forza"} ( gis a} bes4 ) a-. d,-.
  cis r \times 2/3 {a'8 ( gis a} bes4 ) a-. cis,-.
  c! r \times 2/3 {a'8 ( gis a} bes4 ) a-. c,-.
  <d b'>2 \ff <d c'>4-. <d b'>2 <d bes'>4-.
  <d bes' d>2 \arpeggio <bes' d>4-. <d, bes' d>2 \arpeggio <bes' d>4-.
  <bes d>-. r <bes ees>-. r <bes g'>-. r
  <cis e!>-. r <b f' a>-. r <cis e a>-. r
  <b f' a>-. r <cis e a>-. r2 r4
  R1. * 2
  r4 <d, a'> \Pizz \p <f d'> <a f'> r e'
  r <f, bes> \< <bes d> <a f'> \! r q
  r <g bes> \< <bes d> <bes g'> \! r q \p
  r <e, g> <g c> <g e'> r q
  r <a c> \mf <a f'> <f' a> <d f> <a d>
  r <d, bes'> <g e'> <e' g> <c e> <g c>
  r <d a'> <f d'> <d' f> <bes d> <f bes>

  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-1.2  % Arco doit tomber précisément sur la note
  \mark \default  % Mark A

  a8 \mf \Arco a' a a a4-. r8 a \p a a a4-.
  r8 a a4-.a,-. r2 r4
  r8 c! \p c d \> d4-. r8 \! c c d d4-.
  a4 r r r2 r4
  r8 cis \pp cis cis cis4 r8 c c c c4
  \textSpannerDown
  \override TextSpanner #'style = #'dashed-line
  \override TextSpanner #'(bound-details left text) = #"cresc."
  \override TextSpanner #'(bound-details right text) = #"molto"
  cis8 r e4 ( d \startTextSpan cis bes! g ) \noBreak  % pour ne pas couper le spanner
  f ( \stopTextSpan e d cis bes' g )
  f ( e d ) cis8 \f ( a' bes a bes a )
  d-> [cis d cis] \< f-> [e f e] bes'-> [a bes a] \!
  R1.

  \mark \default  % Mark A

  <f a>4-. \ff r-. q-. r8 q q4-. <e g>-.
  <d f>-. r-. q-. r8 q-. <e g>4-. <f a>-.
  <g bes>-. r-. q-. r8 q-. q4-. <f a>-.
  <e g>-. r-. q-. r8 q-. <f a>4-. <g bes>-.
  <<{f2. d4 ( e f )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{f4 e2 c4 ( d e )}{s4 s4 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{e4 d2 ( d2 ) cis4-.}{s4 s4 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>
  d8 e c! d bes c a bes g gis a a'
  d, e c d bes c a bes g! gis a a'
  \leftDynamic d, \bracketedFFconForza e c d bes c a bes g! gis a a'
  d, e c d bes c a bes g! gis a a'
  d,4 r \times 2/3 {\bracketedHairpin a'8 \p -\tweak #'X-offset #2 \< ( gis a} bes4-.) a-. d,-. \!
  cis-. r r r2 r4
  r r \times 2/3 {g'8 \p \< ( fis g} a4-. ) g-. d-. \!
  g \( ( f! ) f \dim ( e ) d ( cis ) \) \!

  \mark \default  % Mark A

  \tag #'partScore {
    d,8 \ff [d] e [e] f [f] g [g] a [a] bes [bes]
    a [a] b [b] c! [c] d [d] e [e] fis [fis]
    g [g] a [a] b [b] c [c] b [b] bes [bes]
    f2:8 bes8 \fz bes f2: b8 \fz b
    fis2: b8 \fz b fis2: bis8 \fz bis
  }
  \elseTag #'partScore {
    d,,8 \ff d e e f f g g a a bes bes
    a a b b c! c d d e e fis fis
    g g a a b b c c b b bes bes
    f8 [f f f] bes \fz bes f [f f f] b \fz b
    fis [fis fis fis] b \fz b fis [fis fis fis] bis \fz bis
  }

  <a,fis'>8 \fz q r4 q8 \fz q r4 <bis fis'>8 \fz q r4
  <cis e>8 \fz q r4 <a d>8 \fz q r4 <cis e>8 \fz q r4
  <cis e>8 q r4 r q8 q r4 q8 q
  <cis e a>4 a8 ( \< b cis d e fis g! a b cis ) \!
  d \ff <a, a'> q q q q <bes! aes'>2.:16
  <bes g'>2.: <a g'>:
  <d f!>1.:
  <d f>:
  q4-. \fz q-. q-. \fz q-. q-. \fz q-.
  q-. \fz q-. q-. \fz q-. q-. \fz q-.
  <f a> r r <a, d a'> r r

  \tag #'partScore {
    <<{d,1.}{s4 -\tweak #'minimum-length #10 \> s2 s s4 \!}>>
  }
  \elseTag #'partScore {
    <<{d1.}{s4 \> s2 s s4 \!}>>
  }

  \bar "||"

  \TempoIIIMM

  \key g \major
  a'1. \pp

  \tag #'partScore
    \noBreak
  a2. ( d, )

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #3.6

  <<{d1.}{s4 \< s2 s2 s4 \!}>>
  d2. \> ( g2 e4 ) \!
  e2 \pp ( d4 a'2 g4 )

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.5

  fis4 ( c'4. \< e8 ) e4 ( a,4. c8 ) \!
  c2. ( \> b2 a4 ) \!

  \tag #'partScore {
    <<{gis1.}{\rightDynamic s4 \p \< s2 s2 s4 \!}>>
  }
  \elseTag #'partScore {
     <<{gis1.}{s4 \p \< s2 s2 s4 \!}>>
  }

  a2. c \f

  \tag #'partScore {
    <<{fis,2. ( ~ fis2 d4 )}{s4 -\tweak #'minimum-length #6 \dim s \> s4 s s s \!}>>
  }
  \elseTag #'partScore {
    <<{fis2. ( ~ fis2 d4 )}{s4 \dim s \> s4 s s s \!}>>
  }
  e2. \p \dim ( c ) \!
  e1. \pp

  \tag #'partScore
    \dynamicLineSpannerStandard

  \mark \default  % Mark A

  \set tupletSpannerDuration = #(ly:make-moment 1 2)
  \times 4/6 {
    \repeat tremolo 3 {d'8 ( g8} \repeat tremolo 3 {d8 g8} \repeat tremolo 3 {d8 g8 )}
    \tupletOff
    \repeat tremolo 3 {e8 ( g8} \repeat tremolo 3 {e8 g8} \repeat tremolo 3 {e8 g8 )}
    \repeat tremolo 3 {d8 ( g8} \repeat tremolo 3 {d8 g8} \repeat tremolo 3 {d8 g8 )}
    \repeat tremolo 3 {e8 ( g8} \repeat tremolo 3 {e8 g8} \repeat tremolo 3 {e8 g8 )}
  }
  \tupletOn
  e4 r r r2 r4
  R1.
  <e gis>4-. \p r <e, gis>-. r e-. <e gis>-.
  e r r r2 r4
  R1. * 3

  \tag #'partScore {
    r4 d''? \Pizz \pp gis, d gis, r
  }
  \elseTag #'partScore {
    r4 d''? ^\footnote \markup {"(16)"} #'(1 . 0)
    \markup {\italic "16 - According to N. Simrock 1885"} \Pizz \pp gis, d gis, r
  }

  r e'' a, e a, r
  R1. * 2
  r4 c' \bracketedPP fis, c fis, r
  r d'' g, d g, r
  R1. * 2
  <fis! a>4 \Arco r r r2 ees'8 \pp ( c )
  <d, g>4-. r r r2 d'8 ( bes )
  <bes g'>4-. r r r2 bes8 ( g )
  f4-. r r r2 a8 ( f )
  d'4 ( \<  -\tweak #'extra-offset #'(3.4 . 4.3 ) _\markup {\italic "legato"}
  gis4. d'8 ) d4 ( d,4. b'8 ) \!

  \mark \default  % Mark A

  <<{b2 ( a4 d2. )}{s2 s4 \> s4 s4 s4 \!}>>
  d,4 ( \<gis4. d'8 ) d4 ( d,4. b'8 ) \!
  <<{b2  ( a4 d2.}{s2 s4 \> s4 s4 s4 \!}>>
  cis4 ) cis,,8 \p cis fis fis a a cis cis fis fis
  R1.
  cis,8 \p cis e e a a cis cis e e a a
  gis4 r r r2 r4
  c,,!8 \pp c e e a a c c e e a a
  gis4 r r r2 r4
  <g? bes>1.:16 \pp
  <g bes>:
  a:
  f2.: c4: bes: a:
  g r r r2 r4
  R1. * 5
  f1. \pp

  \mark \default  % Mark A

  <<{f1.}{s4 s2 \< s2 s4 \!}>>
  <<{f1.}  {s4 s2 \> s s8 s \!}>>
  f1. \pp
  f1. (
  a4 ) r r r2 r4
  R1. * 5

  \TempoIIIAcc

  <d, f>4 \pp ( f4. d'8 ) f,4 ( d'4. f8 )
  f,4 ( \< d'4. f8 ) d4 ( f4. d'8 ) \!
  a8 \mf f' a f, d' f d, \cresc f d' a, f' a
  f, d' f d, f d' f, d' f f, d' f \!
  \TempoIIIViv
  <d, f>4 \ff r r r2 r4
  R1.

  \tag #'partScore
    \pageTurn

  <d bes'>1.^^ \ff ~
  q

  \mark \default  % Mark A

  <a' a'>4-. _\markup {\italic "con forza"} r g'-. r8 fis! f4-. e-.
  ees r8 d-. cis4-. r8 c b4-. bes-.
  a4 \ff r a r8 a a4-. a-.
  a4 r a r8 a a4-. a-.
  a4 r r r2 r4
  R1.
  r2 r4 r8 a' \pp a4-. a-.

  \bar "||"

  \key d \minor
  a4 r a r8 a a4-. g-.
  f r f r8 \< f g4-. a-. \!
  bes4 \fz r bes r8 \> bes bes4-. a-. \!
  g \p r g r8 g \< a4-. bes-. \!
  c2 \fz <<{f,4.->}{s4 s8 \cresc}>> f8 g4-. a-. \!
  bes2 \fz e,4.-> e8 f4-. g-.
  a2 \fz d,4. \< d8 e4-. f-. \!
  <cis e>2 \f r4 r2 r4
  R1.

  \tag #'partScore {
    <<{a2. a ~}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4
      -\tweak #'minimum-length #4 \> s4 \! s4 \< s4 -\tweak #'minimum-length #4 \> s \! }>>
  }
  \elseTag #'partScore {
    <<{a2. a ~}{\rightDynamic s4 \p -\tweak #'minimum-length #5 \< s4 \> s4 \! s4 \< s4 \> s \!}>>
  }

  a4 r r r2 r4
  e2.-- \pp( f-- )
  e2 r4 r2 r4
  r2 r4 cis'4 \pp ( bes g )
  f ( e d ) cis8 ( a' \cresc bes a bes a \! )
  d-> ([cis d cis]) f-> \cresc ([e f e]) \! bes'-> ([a bes a])
  R1.

  \mark \default  % Mark A

  <f a>4 \mf r q r8 q q4-. <e g>-.
  <d f> r q r8 q \< <e g>4-. <f a>-. \!
  <g bes> r q r8 q \> q4-. <f a>-. \!
  <e g> r q r8 q \< <f a>4-. <g bes>-. \!
  \leftDynamic c2-> \PiuF f,4.-> f8 g4-. a-.
  bes2-> \fz e,4.-> e8 f4-. g-.
  a2-> d,4.-> f8 f4-. e-.
  d8 \mf e c d bes c a bes g gis a a'
  d, e c d bes \bracketedCresc c a bes g! gis a a'
  d, \ff e c d bes c a bes g! gis a a'
  d, e c d bes c a bes g! gis a a'
  <d, f>4-. <cis e>-. <d f>-. <cis e>-. <d f>-. <cis e>-.
  <d f>-. <cis e>-. <d f>-. \dim <cis e>-. <d f>-. <cis e>-.
  d'8 \mp ( f c! e bes \dim d a c g bes f a )
  e ( g d f c e bes d a c g bes )
  <<
    {\acciaccatura {\once \override Slur #'positions = #'(-1.5 . -3.5) a8 } d,1. ~}
    {s2. \fp \> s4 s s8 s \!}
  >>
  d1. \p \dim ~
  d \pp ~
  d2. ~ d4 ( cis2 )

  \mark \default  % Mark A

  d8 \< d a' a d d a a d d a' a
  d, d a a d, d a' a d, d a' a \!
  d,4 \f r r r2 r4
  R1.

  \tag #'partScore
    \override DynamicLineSpanner #'staff-padding = #2.9

  r4 c' ( \p des c2 \dim bes4 )
  \acciaccatura a8 d,1. \fp ~

  \tag #'partScore {
    <<{d1.}{s2. s -\tweak #'minimum-length #7 \dim}>>
  }
  \elseTag #'partScore {
    <<{d1.}{s2. s \dim}>>
  }
  <<{d1. ~}{s2. \pp s \>}>>
  d2. ( cis ) \ppp

  \tag #'partScore
    \dynamicLineSpannerStandard

  f1. \pp ~
  f
  d1. \ppp (
  des )
  c ~
  c4 r r r2 f'4 \p (
  bes2. ) des \< ~
  des c2 ( bes4 ) \!
  f'2. \f \> des2 ( bes4 ) \!

  \tag #'partScore
    \TempoIIIPPrB
  \elseTag #'partScore
    \TempoIIIPPr

  f2. \>( aes ) \! ( gis4 ) ( a8 \> gis! fisis gis \! ) b2. \p ~
  b \> a2 ( f!4 ) \!
  d4 \dim ( e8 d cis d ) e2 ( f4 ) \!

  % Si appelé pour citation (par ViolinoII ou autres, à vérifier), seule une voix subsiste, car la citation polyphonique
  % ne fonctionne pas. L'autre voix est introduite artificiellement par la voix appelante
  \tag #'quoteViolinoII {
    f2. \pp ( a ~ a1. )
  }
  \elseTag #'quoteViolinoII {
    \poly {
      \tweak Dots #'extra-offset #'(-2.9 . -1.8) f2. \pp ( a ~
      <<{a1. )}{s4 \> s s s s s \!}>>
    }
    {
      \once \override NoteColumn #'force-hshift = #0.75 f1. ( ~
      f2. e )
    }
  }

  \TempoIIIiT

  \tag #'partScore {
    \repeat tremolo 3 {d,8 d'8} \repeat tremolo 3 {d,8 d'8}
    \allowPageTurn
    \repeat tremolo 3 {d,8 \< d'8} \repeat tremolo 3 {d,8 d'8 \!}
    \allowPageTurn
    \repeat tremolo 3 {d,8 \mf \< d'8} \repeat tremolo 3 {d,8 d'8 \!}
    \allowPageTurn
    \repeat tremolo 3 {d,8 \< d'8} \repeat tremolo 3 {d,8 d'8 \!}
  }
  \elseTag #'partScore {
    d,8 d' d, d' d, d' d, d' d, d' d, d'
    d, d' d,\<  d' d, d' d, d' d, d' d, d' \!
    d, \mf \< d' d, d' d, d' d, d' d, d' d, d' \!
    d, d' \< d, d' d, d' d, d' d, d' d, d' \!
  }

  \mark \default  % Mark A

  d8 \ff d, d e e f f g g a a bes
  bes a a b b c! c d d e e fis
  fis g g a a b b c c b b bes
  e, \ff ( f e f ces' bes ) e, ( f e f c'! b )
  eis, ( fis eis fis c'! b ) eis, ( fis eis fis cis' bis )
  <a, fis'> \f q r4 q8 q r4 <bis fis'>8 q r4
  <cis a'>8 q r4 <a d>8 q r4 <cis e>8 q r4
  q8 q r4 r q8 q r4 q8 q
  <cis e a>4 a8 ( \< b cis d! ) e ( fis g a b cis ) \!
  d8 \fff <a, a'> q q q q
  <bes! bes'>2.:16
  <bes g'>: <a! g'>:
  <d f!>1.: \ff
  <d f>:
  q4 q8 q q4 q8 q q4 q8 q
  q4 q8 q q4 q8 q q4 q8 q
  <f a>4-. r q-. r8 q q4-. q-.
  q r r q r r
  <a, f' a> r r r2 r4

  \bar "|."

}

voiceSgMcViola = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set Staff.instrumentName = \markup {\fontsize #3 "Viole"}
  \tag #'partScore
    \set Staff.shortInstrumentName = ""
  \elseTag #'partScore
    \set Staff.shortInstrumentName = "Vle"
  \set Staff.midiInstrument = "string ensemble 1"
  \key d \minor
  \clef alto
  \SgMcViola
}

quoteScoreSgMcViola = \SgMcViola
