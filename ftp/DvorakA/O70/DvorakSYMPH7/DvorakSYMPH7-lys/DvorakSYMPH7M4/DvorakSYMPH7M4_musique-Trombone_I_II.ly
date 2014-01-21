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
  * Fichier de notes, Trombone 1 et 2, parties                          *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Trombone I                                                    *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMdTromboneI = \relative c' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoIV

  R1 * 41

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdViolinoI" #UP "treble"
    {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Violini"} R1}
  \oneMMRNumberOn

  \once \override Score.RehearsalMark #'X-offset = #3
  \mark \default

  f1-^ \ff ~
  f
  cis4 r r d
  d r cis r
  f r ees r
  cis r r2
  f4 r d r
  cis r r2
  e4 r ees r
  d r r2
  c4 r e! r dis r r2
  dis4 r e r
  cis r r2
  a4 r cis r
  cis1-^ \ff
  cis-^ ~
  cis ~
  cis4 r r2
  R1 * 3

  \noBreak
  \TempoIVRit

  R1

  \mark \default

  \noBreak
  \TempoIVIT

  \once \override Score.MetronomeMark #'X-offset = #2
  R1 * 6
  r4 d2-> \ff ( cis4 )
  d2. ( e4 )
  f ( e ) a, ( d )
  cis4-. d-. cis2->
  R1 * 2
  c2-> \ff c->
  ees2.-> r4
  R1
  r2 d4 \f r d2-> \ff d->
  d2.-> r4
  R1
  r2 e4 \f r
  cis4 r r2
  R1

  \mark \default

  R1 * 15

  \mark \default

  \bar "||"

  \key a \major
  R1 * 22

  \once \override Score.RehearsalMark #'X-offset = #-2
  \mark \default

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdOboeI" #UP "treble" {s4 * 0 ^\markup { \fontsize #-3 "Fl & Ob"} R1 * 5}
  \oneMMRNumberOn

  cis4 \f r b r
  cis r d r
  cis r r2
  R1 * 7
  c4 \f r d r
  c r d r
  e r b r
  c r b r
  c r e-. d-.
  c r d r
  c r f r
  a r gis! r

  \mark \default

  \bar "||"

  \key a \minor
  a4 r r2
  R1
  dis,1-^ ( \fz \> ~
  <<{dis1}{s4 s4 s4 s8 s8 \!}>>
  e4 ) r r2
  R1
  dis1 \pp ( ~
  dis
  e4 ) r r2
  R1 * 9

  \noBreak
  \TempoIVPRit

  \once \override MultiMeasureRest #'minimum-length = #16

  R1 * 4

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT
  R1 * 3
  aes,1 \ppp (
  ces2. aes4
  a1 ~
  a4 ) r r2
  R1 * 4
  a1 \ppp (
  c2. a4
  ais1 ~
  ais4 ) r r2
  R1 * 22

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdViolinoI" #UP "treble"
    {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Violino I"} R1 * 2}
  \oneMMRNumberOn

  \mark \default

  e1-^ \f ~
  e2 e4. e8
  e'1-^ \fz
  b-^ \fz
  R1 * 4
  e1-^ \ff
  R1 * 3
  f!1-^ \ff
  R1 * 5

  \mark \default

  R1 * 6
  f,1 \fz
  b \fz
  bes \fz
  e! \fz
  R1 * 14

  \mark \default

  a,1 \ppp ~
  a ~
  a4 r r2
  R1 * 5
  bes1 \ppp ~
  bes ~
  bes4 r r2
  R1 * 15

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdViolinoI" #UP "treble"
    {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Violini"} R1 * 4}
  \oneMMRNumberOn

  \bar "||"

  \mark \default

  \key d \minor
  d1 \ff ~
  d4 r r2
  R1 * 2
  r2 r4 cis \f
  d r ees r
  cis r r2
  R1 * 13

  \mark \default

  R1 * 15

  \bar "||"

  \key d \major
  R1 * 22

  \mark \default

  R1 * 11

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdViolinoI" #UP "treble"
    {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Violini"} R1 * 4}
  \oneMMRNumberOn

  c4 \f r cis r
  d r e r
  f r e r
  d r cis! r d r c-.cis-.
  d r e r
  f r ees r
  f r cis! r

  \mark \default

  \bar "||"

  \key d \minor
  d4 r r2
  R1
  gis1 ( \fz ~
  <<{gis1}{s4 \> s s s8 s8 \!}>>
  a4 \p ) r r2
  R1
  <<{gis1 ( ~}{s4 \fz -\tweak #'minimum-length #7 \> s s s8 s \!}>>
  gis1
  a4 ) \f r8 f d4. f8
  cis1-^
  c!4. ees8 c4. ees8
  c1-^
  b4. \f d8 b4. d8
  b1-^
  bes!4. \f d8 bes4. d8
  bes1-^
  d1-^ \fz
  b-^ \fz

  \mark \default

  a4 r r2
  R1 * 5
  ees'2 \ff r
  ees \ff r
  ees4 r r2
  R1 * 4
  d1 -^ \ffz ~
  d
  c!-^ \ffz ~
  c
  b-^ \ffz ~
  b
  bes-^ \ffz ~
  bes
  a2-> d->
  bes c
  bes c
  ees2. r4
  R1 * 3

  \mark \default

  R1 * 3

  \TempoIVPAn

  d1-^\ff
  bes-^
  d-^
  bes-^
  d2 r
  R1 * 6
  d4 \f r d r
  d r d r
  d r d r
  d r d r

  \TempoIVMMaes

  d r r2
  a2-^ \ff c-^ ~
  c bes4-^ a-^
  bes1-^
  a-^
  bes-^
  d-^ \fz
  d-^ \fz
  d-^ \fz
  d4 \ffz r r2
  \bar "|."
}

voiceSgMdTromboneI = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombone" I}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "trombone"
  \key d \minor
  \clef bass
  \SgMdTromboneI
}

quoteScoreSgMdTromboneI = \SgMdTromboneI


%{
  *****************************************************************
  * Trombone II                                                   *
  *****************************************************************
%}

SgMdTromboneII = \relative c' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 4)
\cueEventType  \oneMMRNumberOn

  \TempoIV

  \once \override MultiMeasureRest #'minimum-length = #22

  R1 * 41

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdViolinoI" #UP "treble"
    {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Violini"} R1}
  \oneMMRNumberOn

  \once \override Score.RehearsalMark #'X-offset = #3
  \mark \default

  b1-^ \ff
  bes2 -^ a-^
  a4 r r bes
  bes r a r
  a r bes r
  e,4 r r2
  a4 r bes r
  e, r r2
  cis'4 r c r
  c r r2
  a4 r c r
  a r r2
  a4 r a r
  a r r2
  g4 r a r
  a1-^ \ff
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

  R1 * 6
  r4 f-. \ff bes-. a-.
  d,-. e-. f-. g-.
  f-. c'-. d-. bes-.
  a-. a-. a2->
  R1 * 2
  a2-> \ff a->
  c2.-> r4
  R1
  r2 d4 \f r
  bes2-> \ff bes->
  b2.-> r4
  R1
  r2 e,4 \f r
  e r r2
  R1

  \mark \default

  R1 * 15

  \mark \default

  \bar "||"

  \key a \major
  R1 * 22

  \mark \default

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdOboeI" #UP "treble"
    {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Fl & Ob"} R1 * 5}
  \oneMMRNumberOn

  a4 \f r a r
  a r gis r
  a r r2
  R1 * 7
  g4 \f r gis r
  a r f r
  g r f r
  a r gis r
  a r g?-. gis-.
  a r f r
  g r bes r
  c r b! r

  \mark \default

  \bar "||"

  \key a \minor
  c! r r2
  R1
  bis1-^ \fz \> ( ~
  <<{bis1}{s4 s4 s4 s8 s8 \!}>>
  cis4 ) r r2
  R1
  c!1 \pp ~
  c1 ~
  c4 r r2
  R1 * 9

  \noBreak
  \TempoIVPRit

  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 4

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 3
  ces,1 \ppp ~
  ces (
  c ) ~
  c4 r r2
  R1 * 4
  c1 \ppp ~
  c (
  cis ) ~
  cis4 r r2
  R1 * 22

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdViolinoI" #UP "treble"
    {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Violini"} R1 * 2}
  \oneMMRNumberOn

  \mark \default

  e1-^ \f ~
  e2 e4. e8
  e'1-^ \fz
  b-^ \fz
  R1 * 4
  b1-^ \ff
  R1 * 3
  d1-^ \ff
  R1 * 5

  \mark \default

  R1 * 6
  \oneMMRNumberOff
  \cueDuring #"scoreSgMdTromboneI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Trombone I"} R1 * 4}
  \oneMMRNumberOn

  ees,1 \fz
  a! \fz
  aes \fz
  d! \fz
  cis4 \f r cis r
  cis r cis r
  cis r r2
  R1 * 7
  \mark \default
  cis,1 \ppp (
  d
  cis4 ) r r2
  R1 * 5
  d1 \ppp (
  ees
  d4 )r r2
  R1 * 15

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdViolinoI" #UP "treble"
    {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Vl I"} R1 * 4}
  \oneMMRNumberOn

  \bar "||"

  \mark \default

  \key d \minor
  f1 \ff ~
  f4 r r2
  R1 * 2
  r2 r4 a \f
  a r bes r
  a r r2
  R1 * 13
  \mark \default
  R1 * 15
  \bar "||"
  \key d \major
  R1 * 22
  \mark \default
  R1 * 11

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdViolinoI" #UP "treble"
    {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Vl I"} R1 * 4}
  \oneMMRNumberOn

  a4 \f r g r
  f r g r
  a r bes r
  f r e r
  f r a-. g-.
  f r g r
  a r bes r
  d r a r
  \mark \default
  \bar "||"
  \key d \minor
  a r r2
  R1
  b1 \fz ( ~
  <<{b1}{s4 \> s s s8 s \!}>>
  c4 \p ) r r2
  R1
  <<{bes! ( ~}{s4 \fz -\tweak #'minimum-length #6 \> s s s8 s \!}>>
  bes1
  a4 ) \f r8 f' d4. f8
  cis1-^
  c4. ees8 c4. ees8
  c1-^
  b4. \f d8 b4. d8
  b1-^
  bes!4. \f d8 bes4. d8
  bes1-^
  f-^ \fz
  gis-^ \fz
  \mark \default
  a4 r r2
  R1 * 5
  c2 \ff r
  c2 \ff r
  c4 r r2
  R1 * 4
  d1-^ \ffz ~
  d
  c!-^ \ffz ~
  c
  b-^ \ffz ~
  b
  bes-^ \ffz ~
  bes
  a2-> d->
  g, fis
  g fis
  bes2. r4
  R1 * 3
  \mark \default
  R1 * 3
  \TempoIVPAn
  d1-^\ff
  bes-^
  d-^
  bes-^
  d2 r
  R1 * 6
  d,4 \f r d r
  d r d r
  d r d r
  d r d r
  \TempoIVMMaes
  d r r2
  fis2-^ \ff a-^
  g1-^
  g1-^
  fis-^
  g-^
  fis-^ \fz
  fis-^ \fz
  fis-^ \fz
  fis4 \ffz r r2
  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdTromboneII = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombone" II}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "trombone"
  \key d \minor
  \clef bass
  \SgMdTromboneII
}

quoteScoreSgMdTromboneII = \SgMdTromboneII
