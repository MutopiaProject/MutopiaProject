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
  * Fichier de notes, Cors I et II, directrice                          *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ***************************************************************
  *     Cor I                                                   *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMcCornoI = \relative c'' {

  \include "Common/Properties.ly"
  \oneMMRNumberOn
  \cueEventType
  \TempoIII

  \transposition f
  r2 r4
  R1 * 6/4 * 3
  g4 \p r r g r r
  c2-> \mf c-> r
  c-> \f b-> r
  b-> \f a-> r
  r4 b-. \mf c-. r b-. \dim c-.
  b-. \p r r r2 r4
  R1 * 6/4 * 12
  c2.-> \f a4-. b-. c-.
  b2.-> g4-. a-. b-.
  a2.-> ~ a2 gis4

  \mark \default  % Mark A

  a4 r r r2 r4
  R1 * 6/4
  c4 \ff r c r8 c c4-. b-.
  c r c r8 c c4-. b-.
  a r r r2 r4
  R1 * 6/4 * 3
  a1.-> \f
  b->
  cis->
  e4-> \ff d-. cis-. e-> d-. dis-.
  f-> e-. dis-. f-> e-. dis-.
  f-> \fz e d!-> \fz c bes-> \fz a gis-. r c!-. r b-. r
  c-. r b-. r2 r4
  R1 * 6/4 * 6
  g'2-> \f c,4.-> c8 d4-. e-.
  f2-> b,4.-> b8 c4-. d-.
  e2-> a,4.-> a8 b4-. c-.

  \mark \default  % Mark A

  b r r r2 r4
  R1 * 6/4 * 9

  \mark \default  % Mark A

  e4 \f r e r8 e e4-. d-.
  c r c r8 c d4-. e-.
  f r f r8 f f4-. e-.
  d r d r8 d e4-. f-.
  g2-> \ff c,4.-> c8d4-. e-.
  f2-> b,4.-> b8 c4-. d-.
  e2-> a,4.-> c8 c4-. b-.
  c-. r r r2 e4-.
  a,-. r r r2 e'4-.
  c \ff r c r8 c c4-. b-.
  c r c r8 c c4-. b-.
  a r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  a2-> \ff a-> a->
  b-> b4 cis-. d-. e-.
  d-. e-. fis-. g-. fis-. f-.
  c! c f \fz c c fis \fz
  cis cis fis \fz cis cis g'! \fz
  e r e r e r
  e r e r e r
  dis1.-^ \ff
  e2.-^ ~ e2 e4-.
  e2.-^\ff f!-^
  f-^ e-^
  c!4-. c-. c-. c-. r c-.
  c4-. c-. c-. c-. r c-.
  c \fz c c \fz c c \fz c
  c \fz c c \fz c c \fz c
  c r r e r r
  <<{a,1. ~}{s2. -\tweak #'minimum-length #10 \> s2 s4 \!}>>

  \bar "||"

  \TempoIIIMM

  a4 r r r2 r4
  \noBreak
  R1 * 6/4 * 11

  \mark \default  % Mark A

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcClarinettoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2)
    ^\markup { \fontsize #-3 "Clar. I"} R1 * 6/4}
  \oneMMRNumberOn

  \rightDynamic g4 \pp \< ( a4. b8  b4 \> a4. g8 \! )
  a2 r4 r2 r4
  R1 * 6/4 * 10
  dis2-. \pp dis-. dis-.
  e-. e-. d!-.
  a4 r r r2 r4
  R1 * 6/4
  cis2-. \pp cis-. cis-.
  d-. d-. d-.
  r4 r cis-. \pp e-. r r
  r r a,-. d-. r r
  r r d-. f-. r r
  r r c!-. e-. r r
  <<{dis1. (}{s4 \p -\tweak #'minimum-length #6 \< s s s s s8 s \!}>>

  \mark \default  % Mark A

  fis2 e4 ~ <<{e2. )}{s4 -\tweak #'minimum-length #5 \> s s8 s \!}>>
  <<{dis1. (}{s4 \pp -\tweak #'minimum-length #7  \< s s s s s8 s \!}>>
  fis2 e4 ~ <<{e2. )}{s4 \> s s8 s \!}>>
  e2. \p ~ e4 r r
  R1 * 6/4 * 5
  g,4 \p \Solo ( d'4. g8 g4 d f )
  f2. ( e2 d4 )
  c4-. c,-. r r2 r4
  \override DynamicLineSpanner #'staff-padding = #2
  r2 r4 r a' \p ( g )
  b1. ~
  <<{b}{s4 \< s s s s s8 s \!}>>
  <<{cis1. (}{s4 \fz \bindDynamics s s s -\tweak #'minimum-length #4 \< s s \!}>>
  <<{d2. f )}{\rightDynamic s4 \f s4 \< s s s s \!}>>
  e2. ( b2 \dim cis4 )
  d2. \p ( a2 \dim b4 )
  c!2. \pp ( b2 a4 )
  \dynamicLineSpannerStandard

  \mark \default  % Mark A

  g r r r2 r4
  % appel pour citation : combinaison des cors I et II
  \tag #'partScore {
    f4 \p \< ( g4. a8 ) \! a4 ( \> g4. f8 \! )
    e4 r r r2 r4
  }
  \elseTag #'partScore {
    <f a,>4 \p \< ( <g c,>4. <a f>8 ) \! <a f>4 ( \> <g c,>4. <f a,>8 \! )
    <e c>4 r r r2 r4
  }
  R1 * 6/4 * 7

  \noBreak
  \TempoIIIAcc

  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 6/4 * 4

  \TempoIIIViv

  a2.:8 \f a:
  a: a:
  a4-. \f r b-. r8 c d4-. e-.
  f-. r r r2 r4

  \mark \default  % Mark A

  e4 \ff r e r8 e e4 e
  e r e r8 e e4 e
  e e, r e' e, r
  e' e, r e' e, r
  e' e, r r2 r4
  R1 * 6/4 * 2

  \bar "||"

  R1 * 6/4 * 4
  c'2. \mf a4 \cresc ( b c )
  c ( b2 ) g4 ( a b )
  b a2 \< ~ a c4 \!
  b2-> \mf ( c4 ) b2-> ( c4 )
  b4 \p r r r2 r4
  R1 * 6/4 * 8

  \mark \default  % Mark A

  R1 * 6/4 * 4
  c2.-> \ff a4-. b-. c-.
  b2.-> g4-. a-. b-.
  a2.-> ~ a2 gis4
  a r r r2 r4
  R1 * 6/4
  c4 \ff r c r8 c c4-. b-.
  c r c r8 c c4-. b-.
  c-. b-. c-. b-. c-. b-.
  c-. b-. c-. \dim b-. c-. b-.
  c \mp r r r2 r4
  R1 * 6/4 * 5

  \mark \default  % Mark A

  c4-. \pp \< b-. c-. b-. c-. b-.
  c-. b-. c-. b-. c-. b-. \!
  c4 \f r r r2 r4
  R1 * 6/4 * 8
  r2 r4 r r b4 \pp (
  d c ) r r2 r4
  R1 * 6/4 * 4
  <<{c1.-^ ~}{s4 \f -\tweak #'minimum-length #5 \> s s s s s8 s \!}>>

  \TempoIIIPPrB

  c4 r r r2 r4
  \noBreak
  R1 * 6/4 * 3
  r2 r4 e2. \pp \> ~
  <<{e1.}{s4 s4 s4 \!}>>

  \TempoIIIiT

  a,4 r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  a2-> \ff a-> a->
  b-> b4 cis-. d-. e-.
  d-. \ff e-. fis-. g-. fis-. f!-.
  c! c f \fz c c fis \fz
  cis cis fis \fz cis cis g' \fz
  e r e r e r
  e r e r e r
  dis1.-^ \ff
  e2. ~ e2 e4
  e2.-^ f!-^
  f-^ e-^
  c!4-. c-. c-. c r c-.
  c-. c-. c-. c-. r c-.
  c \fz c c \fz c c \fz c
  c \fz c c \fz c c \fz c
  e r e r8 e e4 e
  e r r e r r
  e r r r2 r4

  \bar "|."
}

%{
  ***************************************************************
  *     Cor II                                                  *
  ***************************************************************
%}

SgMcCornoII = \relative c'{

  \include "Common/Properties.ly"

\cueEventType  \oneMMRNumberOn

  \TempoIII

  \transposition f
  r2 r4
  a4 \p r r a r r
  \override DynamicLineSpanner #'staff-padding = #3.5
  a r r a -\tweak #'minimum-length #4 \< r \bindDynamics r
  d \fp r r d -\tweak #'minimum-length #4 \> r \! r
  \dynamicLineSpannerStandard
  g,4 \p r r g r r
  e'2-> \mf e-> r
  d-> \f d-> r
  c-> \f c-> r
  r4 gis'-. \mf a-. r gis-. \dim a-.
  gis-. \p r r r2 r4
  R1 * 6/4 * 12
  c2.-> \f a4-. b-. c-.
  b2.-> g4-. a-. b-.
  a2.-> ~ a2 gis4

  \mark \default  % Mark A

  a4 r r r2 r4
  R1 * 6/4
  a4 \ff r a r8 a a4-. gis-.
  a r a r8 a a4-. gis-.
  a r r r2 r4
  R1 * 6/4 * 3
  a1.-> \f
  b->
  cis->
  e4-> \ff d-. cis-. e-> d-. dis-.
  f-> e-. dis-. f-> e-. dis-.
  \override DynamicLineSpanner #'staff-padding = #2
  f-> \fz e d!-> \fz c bes-> \fz a
  \dynamicLineSpannerStandard
  gis-. r fis-. r gis-. r
  fis-. r gis-. r2 r4
  R1 * 6/4 * 6
  e'2-> \f e,4.-> a8 b4-. c-.
  c4 ( b ) d,4.-> g8 a4-. b-.
  b4 ( a ) c,4.-> f8 g4-. a-.

  \mark \default  % Mark A

  gis r r r2 r4
  R1 * 6/4 * 9
  \pageTurn

  \mark \default  % Mark A

  c4 \f r c r8 c c4-. b-.
  a r a r8 a b4-. c-.
  d r d r8 d d4-. c-.
  b r b r8 b c4-. d-.
  e2-> \ff a,4.-> a8 b4-. c-.
  c ( b ) g4.-> g8 a4-. b-.
  b ( a ) a4.-> a8 a4-. gis-.
  a-. r r r2 e4-.
  a-. r r r2 e4-.
  a \ff r a r8 a a4-. gis-.
  a r a r8 a a4-. gis-.
  a r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  a2-> \ff a-> a->
  b-> b4 cis-. d-. e-.
  d,-. e-. fis-. g-. fis-. f-.
  \override DynamicLineSpanner #'staff-padding = #2
  c! c f \fz c c fis \fz
  cis cis fis \fz cis cis g'! \fz
  \dynamicLineSpannerStandard
  cis r cis r cis r
  gis r a r gis r
  gis1.-^ \ff
  gis2.-^ ~ gis2 gis4-.
  a2.-^\ff a-^
  a-^ gis-^
  a!4-. a-. a-. a-. r a-.
  a4-. a-. a-. a-. r a-.
  a \fz a a \fz a a \fz a
  a \fz a a \fz a a \fz a
  a r r a r r
  <<{a1. ~}{s2. -\tweak #'minimum-length #10 \> s2 s4 \!}>>

  \bar "||"

  \TempoIIIMM

  a4 r r r2 r4
  \noBreak
  R1 * 6/4 * 11

  \mark \default  % Mark A

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcClarinettoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Clar."} R1 * 6/4}
  \oneMMRNumberOn

  \rightDynamic b,4 \pp \< ( d4. g8 \! g4 \> d4. b8 \! )
  d2 r4 r2 r4
  R1 * 6/4 * 10

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcCornoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2) 
    ^\markup { \fontsize #-3 "Corno I"} R1 * 6/4 * 3}
  \oneMMRNumberOn

  R1 * 6/4
 
  \oneMMRNumberOff
  \cueDuring #"scoreSgMcCornoI" #UP R1 * 6/4 * 2
  \oneMMRNumberOn

  r4 r bes'-. \pp bes-. r r
  r r f-. f-. r r
  r r b!-. d-. r r
  r r e,-. c'-. r r
  R1 * 6/4

  \mark \default  % Mark A

  R1 * 6/4 * 19
  c,1. \pp

  \mark \default  % Mark A

  g'4 r r r2 r4
  a,4 \p \< ( c4. f8 ) \! f4 ( \> c4. a8 \! )
  c4 r r r2 r4
  R1 * 6/4
  e4 \p ( a4. e8 ) e2.
  e4 ( a4. e8 ) e2.
  e4 \pp ( a4. e8 ) e2.
  e4 ( a4. e8 ) e2.
  R1 * 6/4 * 2

  \noBreak
  \TempoIIIAcc

  \once \override Voice.MultiMeasureRest #'minimum-length = #15
  R1 * 6/4 * 4

  \TempoIIIViv

  c2.:8 \f c:
  c: c:
  a'4-. \f r b-. r8 c d4-. e-.
  f-. r r r2 r4

  \mark \default  % Mark A

  e,4 \ff r e r8 e e4 e
  e r e r8 e e4 e
  e e r e' e, r
  e' e, r e' e, r
  e e r r2 r4
  R1 * 6/4 * 2

  \bar "||"

  a,4 \pp r r a r r
  a r r a \cresc r r
  d \fz r r d \p r r
  d r r d r r
  c'2. \mf a4 \cresc ( b c )
  c ( b2 ) g4 ( a b )
  b a2 \< ~ a a4 \!
  gis2-> \mf ( a4 ) gis2-> ( a4 )
  gis4 \p r r r2 r4
  R1 * 6/4 * 8

  \mark \default  % Mark A

  R1 * 6/4 * 4
  c2.-> \ff a4-. b-. c-.
  b2.-> g4-. a-. b-.
  a2.-> ~ a2 gis4
  a r r r2 r4
  R1 * 6/4
  a4 \ff r a r8 a a4-. gis-.
  a r a r8 a a4-. gis-.
  a-. gis-. a-. gis-. a-. gis-.
  a-. gis-. a-. \dim gis-. a-. gis-.
  a \mp r r r2 r4
  R1 * 6/4 * 5

  \mark \default  % Mark A

  a4-. \pp \< e-. a-. e-. a-. e-.
  a-. e-. a-. e-. a-. e-. \!
  a4 \f r r r2 r4
  R1 * 6/4 * 8

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcCornoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2) 
    ^\markup { \fontsize #-3 "Corno I"} R1 * 6/4 * 2}
  \oneMMRNumberOn
  R1 * 6/4 * 4

  <<{c,1.-^ ~}{s4 \f \> s s s s s8 s \!}>>

  \TempoIIIPPrB

  c4 r r r2 r4
  \noBreak
  R1 * 6/4 * 5

  \noBreak
  \TempoIIIiT

  R1 * 6/4 * 4

  \mark \default  % Mark A

  a'2-> \ff a-> a->
  b-> b4 cis-. d-. e-.
  d,-. \ff e-. fis-. g-. fis-. f!-.
  c! c f \fz c c fis \fz
  cis cis fis \fz cis cis g' \fz
  cis r cis r cis r
  gis r a r gis r
  gis1.-^ \ff
  gis2. ~ gis2 gis4
  a2.-^ a-^
  a-^ gis-^
  a4-. a-. a-. a r a-.
  a-. a-. a-. a-. r a-.
  a \fz a a \fz a a \fz a
  a \fz a a \fz a a \fz a
  c r c r8 c c4 c
  c r r c r r
  c r r r2 r4

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMcCornoI = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno I" "in F"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMcCornoI
}

voiceSgMcCornoII = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno II" "in F"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMcCornoII
}

quoteScoreSgMcCornoI = \SgMcCornoI
quoteScoreSgMcCornoII = \SgMcCornoII

