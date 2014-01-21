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
  * Fichier de notes, Cors III et IV, parties                           *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ***************************************************************
  * Cor III                                                     *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMcCornoIII = \relative c'' {

  \include "Common/Properties.ly"

  \oneMMRNumberOn
  \cueEventType
  \TempoIII

  \transposition d
  r2 r4
  g4 \p r r g r r
  g r r g -\tweak #'minimum-length #4 \< r \! r
  c \fp r r c -\tweak #'minimum-length #4 \> r \! r
  f, \p r r f r r
  bes2-\parenthesize-> \mf bes-\parenthesize-> r
  aes-\parenthesize-> \f aes-\parenthesize-> r
  g-\parenthesize-> \f g-\parenthesize-> r
  g,4-. \mf g'-. r g,-. \dim g'-. r
  g,-. \p r r r2 r4
  R1 * 6/4 * 2
  g'4 \pp r r g r r
  R1 * 6/4 * 12

  \mark \default  % Mark A

  c4-. \mf bes-. aes-. g-. f-. g-.
  c-. bes-. aes-. \cresc g-. f-. g-.
  c \ff r c r c-. g-.
  c r c r c-. g-.
  c r r r2 r4
  R1 * 6/4 * 2
  c4 \pp r c r c r
  R1 * 6/4 * 3
  c2 \ff c4-. c2 c4-.
  c2 c4-. c2 c4-.
  c-. r aes-. r aes-. r
  g-. r g-. r g-. r
  g-. r g-. r2 r4
  g4 \f \dim r g r8 g g4 \p g
  g r g r8 g \> g4 \! g
  R1 * 6/4 * 7

  \mark \default  % Mark A

  g2 \mf r4 g2 \p r4
  g2 r4 r2 r4
  g2 \p r4 g2 r4
  g r r r2 r4
  g \pp r r g r r
  g r r r2 r4
  R1 * 6/4 * 4

  \mark \default  % Mark A

  R1 * 6/4 * 4
  g2-> \ff g4.-> bes8 aes4-. g-.
  f2-> f4.-> aes8 g4-. f-.
  ees2-> ees4-. f-. fis-. g-.
  c,-. r r r2 g'4-.
  c,-. r r r2 g'4-.
  c-. \ff bes-. aes-. g-. f8 ( fis g4 )
  c4-. bes-. aes-. g-. f8 ( fis g4 )
  <<{c,1. ~}{\rightDynamic s4 \fp s \leftDynamic s \dim}>>
  c1. \pp ~
  c ~
  c

  \mark \default  % Mark A

  c4-> \ff d-. ees-. f-> g-. aes-.
  g-> a!-. bes-.
  c-> d-. e-.
  f r r r2 r4|
  R1 * 6/4
  r2 r4 r r e! \ff
  e r a, r bes r
  d r c r d r
  d1.-^ \ff
  dis2.-^ e4-\parenthesize-> f!-\parenthesize-> g-\parenthesize->
  g2.-^ \ff ges-^
  f-^ f-^
  ees4-. ees-. ees-. ees-. r ees-.
  ees4-. ees-. ees-. ees-. r ees-.
  ees \fz ees ees \fz ees ees \fz ees
  ees \fz ees ees \fz ees ees \fz ees
  ees4 r r g r r
  <<{c,,1. ~}{s2. -\tweak #'minimum-length #10 \> s2 s4 \!}>>

  \bar "||"

  \TempoIIIMM

  c4 r r r2 r4
  \noBreak
  R1 * 6/4 * 11

  \mark \default  % Mark A

  R1 * 6/4 * 11
  r4 c'-. \pp r c-. r c-.
  r bes-. r bes-. r bes-.
  R1 * 6/4 * 2
  r4 bes-. \pp r bes-. r bes-.
  r aes-. r aes-. r aes-.
  R1 * 6/4 * 2
  r4 r g-. \pp des'-. r r
  r r f,-. c'-. r r
  r r aes-. d!-. r r
  r r c-. c-. r r
  <<{c1.}{s4 \pp -\tweak #'minimum-length #5 \< s s s s s8 s8 \!}>>

  \mark \default  % Mark A

  <<{c1.->}{s4 s s s \> s s8 s16 s \!}>>
  <<{c1.}{s4 \pp -\tweak #'minimum-length #5 \< s s s s s8 s8 \!}>>
  <<{c1.->}{s4 s s s \> s s8 s16 s \!}>>
  e2. \p ~ e4 r r
  R1 * 6/4
  <<{d1.}{s4 \p \< s s s s s8 s8 \!}>>
  <<{d1.->}{\rightDynamic s4 \fz s s \> s s s8 s16 s \!}>>
  d1. \pp ~
  d ~
  d4 r r r2 r4
  R1 * 6/4 * 10

  \mark \default  % Mark A

  R1 * 6/4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni I & II"} R1 * 6/4 * 2}
  % Citation rajoutée par rapport à la version de référence
  \cueDuring #"scoreSgMcTrombaI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Trombe"} R1 * 6/4}
  \oneMMRNumberOn

  e,4 \p ( g4. e'8 ) e4 ( g, c )
  e,4 ( g4. e'8 ) e4 ( g, c )
  ees,4 \pp ( g4. ees'8 ) ees4 ( g, c )
  ees,4 ( g4. ees'8 ) ees4 ( g, c )
  ees,4 ( g4. ees'8 ) r2 r4
  ees,4 ( g4. ees'8 ) r2 r4

  \TempoIIIAcc

  c4-. \bracketedP g-. c-. g-. c-. g-.
  c4-. \< g-. c-. g-. c-. g-. \!
  c4-. \mf g-. c-. g-. \cresc c-. g-.
  c4-. g-. c-. g-. c-. g-.

  \TempoIIIViv

  a2.:8 \f a:
  a: a:
  c4 \f r r r2 r4
  R1 * 6/4

  \mark \default  % Mark A

  g'4 \ff r g r8 g g4 g
  g r g r8 g g4 g
  g g, r g' g, r
  g' g, r g' g, r
  g' g, r g-. \p g,-. \> r
  g'-. g,-. r g'-. g,-. \! r
  g'-. \pp g,-. r r2 r4

  \bar "||"

  g'4 \pp r r g r r
  g r r g \cresc r r
  c \fz r r c \p r r
  bes r r bes r r
  g2-> \mf <<{c1->}{s4 s4 \cresc}>>
  f,2-> bes1->
  ees,2-> aes-> \< f4-. fis-. \!
  g4 \mf r r r2 r4
  R1 * 6/4 * 3
  g4 \pp r r g r r
  R1 * 6/4 * 5

  \mark \default  % Mark A

  R1 * 6/4 * 4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcCornoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Corni I & II"} R1 * 6/4 * 3}
  \oneMMRNumberOn

  c4-. \mf bes-. aes-. g-. f-. g-.
  c4-. bes-. aes-. \cresc g-. f-. g-.
  c4 \ff r c r c-. g-.
  c r c r c-. g-.
  g-. g-. g-. g-. g-. g-.
  g-. g-. g-. \dim g-. g-. g-.
  <<{c,1. ~}{s4 \mp -\tweak #'minimum-length #7 \> s s s s s8 s \!}>>
  <<{c1. ~}{s4 \p -\tweak #'minimum-length #5 \> s s s s s8 s \!}>>
  c4 r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  c'4-. \pp \< g-. c-. g-. c-.g-.
  c-. g-. c-. g-. c-. g-. \!
  c4 \f r r r2 r4
  R1 * 6/4 * 8

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcCornoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Corni I & II"} R1 * 6/4 * 2}
  \oneMMRNumberOn

  R1 * 6/4 * 2
  aes1. \pp ~
  \override DynamicLineSpanner #'staff-padding = #2.2
  <<{aes1.}{s4 \< s s s s s \!}>>
  <<{ees1.-^ ~}{s4 \f -\tweak #'minimum-length #5 \> s s s s s \!}>>
  \dynamicLineSpannerStandard

  \TempoIIIPPrB

  ees4 r r r2 r4
  \noBreak
  c'1. \p ~
  c \dim ~
  c ~
  c \pp \>
  g \!

  \TempoIIIiT

  c \p ~
  <<{c1. ~}{s4 \< s s s s s8 s \!}>>
  <<{c1. ~}{s4 \< s s s s s8 s \!}>>
  <<{c1.}{s4 \< s s s s s8 s \!}>>

  \mark \default  % Mark A

  c,4 \ff d ees f-> g aes
  g-> \< a! bes c-> d e! \!
  f4 r r r2 r4
  R1 * 6/4
  r2 r4 r r e! \ff
  e r a, r bes r
  d r c r d r
  d1.-^ \ff
  dis2. e4-> f!-> g->
  g2.-^ ges-^
  f-^ f-^
  ees4-. ees-. ees-. ees-. r ees-.
  ees4-. ees-. ees-. ees-. r ees-.
  ees \fz ees ees \fz ees ees \fz ees
  ees \fz ees ees \fz ees ees \fz ees
  c4 r c r8 c c4 c
  c r r c r r
  c r r r2 r4

  \bar "|."
}

%{
  ***************************************************************
  *     Cor IV                                                  *
  ***************************************************************
%}

SgMcCornoIV = \relative c'{

  \include "Common/Properties.ly"

  \oneMMRNumberOn
\cueEventType
  \TempoIII

  \transposition d
  r2 r4
  g4 \p r r g r r
  \override DynamicLineSpanner #'staff-padding = #3
  g r r g -\tweak #'minimum-length #3.4 \< r \! r
  c \fp r r c -\tweak #'minimum-length #4 \> r \! r
  \dynamicLineSpannerStandard
  f, \p r r f r r
  R1 * 6/4 * 7
  g4 \pp r r g r r
  R1 * 6/4 * 9
  \oneMMRNumberOff
  \cueDuring #"scoreSgMcCornoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Corni I & II"} R1 * 6/4 * 3}
  \oneMMRNumberOn

  \mark \default  % Mark A

  c'4-. \mf bes-. aes-. g-. f-. g-.
  c-. bes-. aes-. \cresc g-. f-. g-.
  c, \ff r c r c-. g'-.
  c, r c r c-. g'-.
  c, r r r2 r4
  R1 * 6/4 * 2
  c4 \pp r c r c r
  R1 * 6/4 * 3
  c2 \ff c4-. c2 c4-.
  c2 c4-. c2 c4-.
  c-. r f-. r f-. r
  g-. r g,-. r g-. r
  g-. r g-. r2 r4
  g'4 \f \dim r g r8 g g4 \p g
  g r g r8 g \> g4 \! g
  R1 * 6/4 * 7

  \mark \default  % Mark A

  g,2 \mf r4 g2 \p r4
  g2 r4 r2 r4
  g2 \p r4 g2 r4
  g r r r2 r4
  g \pp r r g r r
  g r r r2 r4
  R1 * 6/4 * 4

  \mark \default  % Mark A

  R1 * 6/4 * 4
  g'2-> \ff g4.-> bes8 aes4-. g-.
  f2-> f4.-> aes8 g4-. f-.
  ees2-> ees4-. f-. fis-. g-.
  c,-. r r r2 g'4-.
  c,-. r r r2 g'4-.
  c-. \ff bes-. aes-. g-. f8 ( fis g4 )
  c4-. bes-. aes-. g-. f8 ( fis g4 )
  <<{c,,1. ~}{\rightDynamic s4 ^\fp s \leftDynamic s ^\dim}>>
  c1. ^\pp ~
  c ~
  c

  \mark \default  % Mark A

  c'4-> \ff d-. ees-. f-> g-. aes-.
  g-> a!-. bes-. c-> d-. e-.
  f r r r2 r4
  R1 * 6/4
  r2 r4 r r g,! \ff
  g r a r bes r
  d r e,! r f! r
  fis1.-^ \ff
  g2.-^ ~ g2 g!4-.
  g2.-^ \ff aes-^
  aes-^ g-^
  c4-. c-. c-. c-. r c-.
  c4-. c-. c-. c-. r c-.
  c \fz c c \fz c c \fz c
  c \fz c c \fz c c \fz c
  c4 r r c r r
  <<{c,1. ~}{s2. -\tweak #'minimum-length #10 \> s2 s4 \!}>>

  \bar "||"

  \TempoIIIMM

  c4 r r r2 r4 \noBreak
  R1 * 6/4 * 11

  \mark \default  % Mark A

  R1 * 6/4 * 11
  r4 fis-. \pp r fis-. r fis-.
  r g-. r g-. r g-.
  R1 * 6/4 * 2
  r4 e-. \pp r e-. r e-.
  r f-. r f-. r f-.
  R1 * 6/4 * 7

  \mark \default  % Mark A

  R1 * 6/4 * 20

  \mark \default  % Mark A

  R1 * 6/4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni I & II"} R1 * 6/4 * 2}
  \cueDuring #"scoreSgMcTrombaI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Trombe"} R1 * 6/4}
  \oneMMRNumberOn

  c4 \p ( e4. c'8 ) c4 ( e,2 )
  c4 ( e4. c'8 ) c4 ( e,2 )
  c4 \pp ( ees4. c'8 ) c4 ( ees,2 )
  c4 ( ees4. c'8 ) c4 ( ees,2 )
  c4 ( ees4. c'8 ) r2 r4
  c,4 ( ees4. c'8 ) r2 r4

  \TempoIIIAcc

  c,4-. \bracketedP g-. c-. g-. c-. g-.
  c4-. \< g-. c-. g-. c-. g-. \!
  c4-. \mf g-. c-. g-. \cresc c-. g-.
  c4-. g-. c-. g-. c-. g-.
  \TempoIIIViv
  g'2.:8 \f g:
  g: g:
  c4 \f r r r2 r4
  R1 * 6/4
%  \pageTurn

  \mark \default  % Mark A

  g4 \ff r g r8 g g4 g
  g r g r8 g g4 g
  g g, r g' g, r
  g' g, r g' g, r
  g' g, r g'-. \p g,-. \> r
  g'-. g,-. r g'-. g,-. \! r
  g'-. \pp g,-. r r2 r4

  \bar "||"

  g4 \pp r r g r r
  g r r g \cresc r r
  c \fz r r c \p r r
  bes r r bes r r
  g2-> \mf <<{c1->}{s4 s4 \cresc}>>
  f,2-> bes1->
  ees,2-> aes-> \< f4-. fis-. \!
  g4-. \mf g'-. r g,-. g'-. r
  g,-. g'-. r r2 r4
  R1 * 6/4 * 2
  g,4 \pp r r g r r
  R1 * 6/4 * 5

  \mark \default  % Mark A

  R1 * 6/4 * 7
  \pageTurn
  c'4-. \mf bes-. aes-. g-. f-. g-.
  c4-. bes-. aes-. \cresc g-. f-. g-.
  c,4 \ff r c r c-. g'-.
  c, r c r c-. g'-.
  g,-. g-. g-. g-. g-. g-.
  g-. g-. g-. \dim g-. g-. g-.
  <<{c,1. ~}{s4 ^\mp -\tweak #'minimum-length #8 ^\> s s s s s8 s \!}>>
  <<{c1. ~}{s4 ^\p -\tweak #'minimum-length #6 ^\> s s s s s8 s \!}>>
  c4 r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  c'4-. \pp \< g-. c-. g-. c-.g-.
  c-. g-. c-. g-. c-. g-. \!
  c4 \f r r r2 r4
  R1 * 6/4 * 12
  aes1. ^\pp ~
  <<{aes1.}{s4 ^\< s s s s s \!}>>
  <<{ees1.-^ ~}{s4 ^\f -\tweak #'minimum-length #5 ^\> s s s s s \!}>>

  \TempoIIIPPrB

  ees4 r r r2 r4
  \noBreak
  c'1. \p ~
  c \dim ~
  c ~
  c \pp \>
  g \!

  \TempoIIIiT

  c \p ~
  <<{c1. ~}{s4 \< s s s s s8 s \!}>>
  <<{c1. ~}{s4 \< s s s s s8 s \!}>>
  <<{c1.}{s4 \< s s s s s8 s \!}>>

  \mark \default  % Mark A

  c4 \ff d ees f-> g aes
  g-> \< a! bes c-> d e! \!
  f4 r r r2 r4
  R1 * 6/4
  r2 r4 r r g, \ff
  g r a r bes r
  d r e, r f r
  fis1.-^ \ff
  g2. ~ g2 g4
  g2.-^ aes-^
  aes-^ g!-^
  c4-. c-. c-. c-. r c-.
  c4-. c-. c-. c-. r c-.
  c \fz c c \fz c c \fz c
  c \fz c c \fz c c \fz c
  c,4 r c r8 c c4 c
  c r r c r r
  c r r r2 r4

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMcCornoIII = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno III" "in D"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMcCornoIII
}

voiceSgMcCornoIV = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno IV" "in D"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMcCornoIV
}

quoteScoreSgMcCornoIII = \SgMcCornoIII
quoteScoreSgMcCornoIV = \SgMcCornoIV
