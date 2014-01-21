%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7	: mouvement III - Scherzo Vivace                      *
  * Fichier de notes, Cors III et IV, directrice                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ***************************************************************
  *	Cor III                                                     *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMcCornoIII = \relative c'' {

  \include "Common/Properties.ly"

  \TempoIII
  \transposition d
  r2 r4
  g4 \p r r g r r
  g r r g \< r \! r
  c \fp r r c \> r \! r
  f, \p r r f r r
  \override Rest #'Y-offset = #'0
  \partcombineApart
  \override MultiMeasureRest #'staff-position = #0
  bes2-\parenthesize-> \mf bes-\parenthesize-> r
  aes-\parenthesize-> \f aes-\parenthesize-> r
  g-\parenthesize-> \f g-\parenthesize-> r
  \dynamicSpannerOff
  g,4-. \mf g'-. r g,-. \dim g'-. r
  g,-. \p r r r2 r4
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/4
  g'4 \pp r r g r r
  \repeat unfold 12 {R1 * 6/4}
  \mark \default  % Mark A
  c4-. \mf bes-. aes-. g-. f-. g-.
  %\dynamicSpannerOff
  c-. bes-. aes-. \cresc g-. f-. g-.
  c \ff r c r c-. \partcombineApartOnce g-.
  c r c r c-. \partcombineApartOnce g-.
  c r r r2 r4
  \repeat unfold 2 R1 * 6/4
  c4 \pp r c r c r
  \repeat unfold 3 R1 * 6/4
  c2 \ff c4-. c2 c4-.
  c2 c4-. c2 c4-.
  c-. r aes-. r aes-. r
  \partcombineApartOnce g-. r g-. r g-. r
  g-. r g-. r2 r4
  g4 \f \dim r g r8 g g4 \p g
  g r g r8 g \> g4 \! g
  \repeat unfold 7 R1 * 6/4
  \mark \default  % Mark A
  g2 \mf r4 g2 \p r4
  g2 r4 r2 r4
  g2 \p r4 g2 r4
  g r r r2 r4
  g \pp r r g r r
  g r r r2 r4
  \repeat unfold 4 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 4 R1 * 6/4
  g2-> \ff g4.-> bes8 aes4-. g-.
  f2-> f4.-> aes8 g4-. f-.
  ees2-> ees4-. f-. fis-. g-.
  c,-. r r r2 g'4-.
  c,-. r r r2 g'4-.
  c-. \ff bes-. aes-. g-. f8 ( fis g4 )
  c4-. bes-. aes-. g-. f8 ( fis g4 )
  <<{c,1. ~}{s4 %{\fp%} s s %{\dim%}}>>
  c1. %{\pp%} ~
  c ~
  c
  \mark \default  % Mark A
  c4-> \ff d-. ees-. f-> g-. aes-.
  g-> a!-. bes-.
  c-> d-. e-.
  f r r r2 r4|
  R1 * 6/4
  r2 r4 r r e \ff
  e r \partcombineApartOnce a, r \partcombineApartOnce bes r
  \partcombineApartOnce d r c r d r
  d1.-^ \ff
  \partcombineApart
  dis2.-^ e4-\parenthesize-> f!-\parenthesize-> g-\parenthesize->
  \partcombineAutomatic
  g2.-^ \ff ges-^
  f-^ f-^
  ees4-. ees-. ees-. ees-. r ees-.
  ees4-. ees-. ees-. ees-. r ees-.
  ees \fz ees ees \fz ees ees \fz ees
  ees \fz ees ees \fz ees ees \fz ees
  ees4 r r g r r
  <<{c,,1. ~}{s2. \> s2 s4 \!}>>
  \bar "||"
  \TempoIIIMM
  c4 r r r2 r4
  \repeat unfold 11 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 11 R1 * 6/4
  r4 c'-. \pp r c-. r c-.
  r bes-. r bes-. r bes-.
  \repeat unfold 2 R1 * 6/4
  r4 bes-. \pp r bes-. r bes-.
  r aes-. r aes-. r aes-.
  \repeat unfold 2 R1 * 6/4
  \partcombineApart
  r4 r g-. \pp des'-. r r
  r r f,-. c'-. r r
  r r aes-. d!-. r r
  r r c-. c-. r r
  <<{c1.}{s4 \pp \< s s s s s8 s8 \!}>>
  \mark \default  % Mark A
  <<{c1.->}{s4 s s \> s s s8 s16 s \!}>>
  <<{c1.}{s4 \pp \< s s s s s8 s8 \!}>>
  <<{c1.->}{s4 s s s \> s s8 s16 s \!}>>
  e2. \p ~ e4 r r
  \partcombineAutomatic
  R1 * 6/4
  \partcombineApart
  <<{d1.}{s4 \p \< s s s s s8 s8 \!}>>
  <<{d1.}{s4 \fz s s \> s s s8 s16 s \!}>>
  d1. \pp ~
  d ~
  d4 r r r2 r4
  \partcombineAutomatic
  \repeat unfold 10 {R1 * 6/4}
  \mark \default  % Mark A
  \repeat unfold 4 R1 * 6/4
  \partcombineApart
  e,4 %{\p%} ( g4. e'8 ) e4 ( g, c )
  e,4 ( g4. e'8 ) e4 ( g, c )
  ees,4 %{\pp%} ( g4. ees'8 ) ees4 ( g, c )
  ees,4 ( g4. ees'8 ) ees4 ( g, c )
  \partcombineAutomatic
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
  \partcombineApartOnce c4 %{\f%} r r r2 r4
  R1 * 6/4
  \mark \default  % Mark A
  g'4 \ff r g r8 g g4 g
  g r g r8 g g4 g
  g g, r g' g, r
  g' g, r g' g, r
  g' g, r \partcombineApart g-. %{\p%} g,-. r
  g'-. g,-. r g'-. g,-. r
  g'-. g,-. \partcombineAutomatic r r2 r4
  \bar "||"
  g'4 \pp r r g r r
  g r r g \cresc r r
  c \fz r r c \p r r
  bes r r bes r r
  g2-> \mf <<{c1->}{s4 s4 \cresc}>>
  f,2-> bes1->
  ees,2->  aes-> \< f4-. fis-. \!
  \override Rest #'extra-offset = #'(0 . 1)
  g4 \tweak #'staff-position #0 r \tweak #'staff-position #0 r
    \tweak #'staff-position #0 r2 \tweak #'staff-position #0 r4
  \override MultiMeasureRest #'staff-position = #4
  \revert Rest #'extra-offset
  R1.
  \repeat unfold 2 R1 * 6/4
  g4 \pp r r g r r
  \repeat unfold 5 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 7 R1 * 6/4
  c4-. \mf bes-. aes-. g-. f-. g-.
  c4-. bes-. aes-. \cresc g-. f-. g-.
  c4 \ff r c r c-. \partcombineApartOnce g-.
  c r c r c-. \partcombineApartOnce g-.
  g-. g-. g-. g-. g-. g-.
  g-. g-. g-. \dim g-. g-. g-.
  <<{c,1. ~}{s4 \mp \> s s s s s8 s \!}>>
  <<{c1. ~}{s4 \p s \> s s s s8 s \!}>>
  c4 r r r2 r4
  \repeat unfold 3 {R1 * 6/4}
  \mark \default  % Mark A
  c'4-. \pp \< g-. c-. g-. c-.g-.
  c-. g-. c-. g-. c-. g-. \!
  c4 \f r r r2 r4
  \repeat unfold 12 {R1 * 6/4}
  aes1. \pp ~
  <<{aes1.}{s4 \< s s s s s \!}>>
  <<{ees1.-^ ~}{s4 \f \> s s s s s \!}>>
  \TempoIIIPPr
  ees4 r r r2 r4
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
  e r \partcombineApartOnce a, r \partcombineApartOnce bes r
  \partcombineApartOnce d r c r d r
  d1.-^ \ff
  \partcombineApart
  dis2. e4-> f!-> g->
  \partcombineAutomatic
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

  \TempoIII
  \transposition d
  r2 r4
  g4 \p r r g r r
  g r r g \< r \! r
  c \fp r r c \> r \! r
  f, \p r r f r r
  \repeat unfold 3 {R1 * 6/4}
  \override MultiMeasureRest #'staff-position = #-11
  \repeat unfold 4 {R1 * 6/4}
  g4 \pp r r g r r
  \repeat unfold 12 {R1 * 6/4}
  \mark \default  % Mark A
  c'4-. \mf bes-. aes-. g-. f-. g-.
  c-. bes-. aes-. \cresc g-. f-. g-.
  c, \ff r c r c-. g'-.
  c, r c r c-. g'-.
  c, r r r2 r4
  \repeat unfold 2 R1 * 6/4
  c4 \pp r c r c r
  \repeat unfold 3 R1 * 6/4
  c2 \ff c4-. c2 c4-.
  c2 c4-. c2 c4-.
  c-. r f-. r f-. r
  g-. r g,-. r g-. r
  g-. r g-. r2 r4
  g'4 \f \dim r g r8 g g4 \p g
  g r g r8 g \> g4 \! g
  \repeat unfold 7 R1 * 6/4
  \mark \default  % Mark A
  g,2 \mf r4 g2 \p r4
  g2 r4 r2 r4
  g2 \p r4 g2 r4
  g r r r2 r4
  g \pp r r g r r
  g r r r2 r4
  \repeat unfold 4 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 4 R1 * 6/4
  g'2-> \ff g4.-> bes8 aes4-. g-.
  f2-> f4.-> aes8 g4-. f-.
  ees2-> \aIIP ees4-. f-. fis-. g-.
  c,-. \aII r r r2 g'4-.
  c,-. r r r2 g'4-.
  c-. \ff bes-. aes-. g-. f8 ( fis g4 )
  c4-. bes-. aes-. g-. f8 ( fis g4 )
  <<{\once \override Tie #'outside-staff-priority = #200 c,,1. ~}
    {\dynamicSpannerOff s4 \fp s \once \override DynamicLineSpanner #'outside-staff-priority = #150 s8 \dim s \!}>>
  c1. \pp ~
  c ~
  c
  \mark \default  % Mark A
  c'4-> \ff d-. ees-. f-> g-. aes-.
  g-> a!-. bes-. c-> d-. e!-.
  f r r r2 r4
  R1 * 6/4
  r2 r4 r r g, \ff
  g r a r bes r
  d r e, r f r
  fis1.-^ \ff
  g2.-^ ~ g2 g4-.
  g2.-^ \ff aes-^
  aes-^ g-^
  c4-. c-. c-. c-. r c-.
  c4-. c-. c-. c-. r c-.
  c \fz c c \fz c c \fz c
  c \fz c c \fz c c \fz c
  c4 r r c r r
  <<{c,1. ~}{s2. \> s2 s4 \!}>>
  \bar "||"
  \TempoIIIMM
  c4 \aII \aIIP r r r2 r4
  \repeat unfold 11 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 11 R1 * 6/4
  r4 fis-. \pp r fis-. r fis-.
  r g-. r g-. r g-.
  \repeat unfold 2 R1 * 6/4
  r4 e-. \pp r e-. r e-.
  r f-. r f-. r f-.
  \repeat unfold 2 R1 * 6/4
  \override MultiMeasureRest #'staff-position = #-4
  \repeat unfold 5 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 20 {R1 * 6/4}
  \mark \default  % Mark A
  \repeat unfold 4 R1 * 6/4
  c4 \p ( e4. c'8 ) c4 ( e,2 )
  c4 ( e4. c'8 ) c4 ( e,2 )
  c4 \pp ( ees!4. c'8 ) c4 ( ees,2 )
  c4 ( ees!4. c'8 ) c4 ( ees,2 )
  c4 ( ees!4. c'8 ) r2 r4
  c,4 ( ees!4. c'8 ) r2 r4
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
  \mark \default  % Mark A
  g4 \ff r g r8 g g4 g
  g r g r8 g g4 g
  g g, r g' g, r
  g' g, r g' g, r
  g' g, r g'-. \p g,-. \> s
  g'-. g,-. s g'-. g,-. \! s
  g'-. \pp g,-. r r2 r4
  \bar "||"
  g4 \pp r r g r r
  g r r g \cresc r r
  c \fz r r c \p r r
  bes r r bes r r
  g2-> \mf <<{c1->}{s4 s4 \cresc}>>
  f,2-> bes1->
  ees,2-> aes-> \< f4-. fis-. \!
  \partcombineApart
  g4-. \mf g'-. r g,-. g'-. r
  g,-. \p g'-. r r2 r4
  \partcombineAutomatic
  \repeat unfold 2 {R1 * 6/4}
  g,4 \pp r r g r r
  \repeat unfold 5 {R1 * 6/4}
  \mark \default  % Mark A
  \repeat unfold 7 {R1 * 6/4}
  c'4-. \mf bes-. aes-. g-. f-. g-.
  c4-. \aII bes-. aes-. \cresc g-. f-. g-.
  c,4 \ff r c r c-. g'-.
  c, r c r c-. g'-.
  g,-. g-. g-. g-. g-. g-.
  g-. g-. g-. \dim g-. g-. g-.
  <<{c,1. ~}{s4 \mp \> s s s s s8 s \!}>>
  <<{c1. ~}{s4 \p s \> s s s s8 s \!}>>
  c4 r r r2 r4
  \repeat unfold 3 {R1 * 6/4}
  \mark \default  % Mark A
  c'4-. \pp \< g-. c-. g-. c-.g-.
  c-. g-. c-. g-. c-. g-. \!
  c4 \f r r r2 r4
  \repeat unfold 12 {R1 * 6/4}
  aes1. \pp ~
  <<{aes1.}{s4 \< s s s s s \!}>>
  <<{ees1.-^ ~}{s4 \f \> s s s s s \!}>>
  \TempoIIIPPr
  ees4 r r r2 r4
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
  g-> \aIIP \< a! bes c-> d e! \!
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

voiceSgMcCornoIIIAIV = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corni (D)" III+IV}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Cor. (F)" III+IV}}
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \partcombine \SgMcCornoIII \SgMcCornoIV
}

