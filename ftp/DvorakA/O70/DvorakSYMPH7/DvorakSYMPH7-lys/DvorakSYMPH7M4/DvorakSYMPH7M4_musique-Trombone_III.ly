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
  * Fichier de notes, Trombone 3                                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

SgMdTromboneIII =
\relative c {

  \include "Common/Properties.ly"

  \tag #'partScore
    \set Staff.minimumPageTurnLength = #(ly:make-moment 4 2)
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoIV

  R1 * 41

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMdViolinoI" #UP "treble" {s4 * 0 ^\markup { \fontsize #-3 "Vl. I"} R1}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1
  }

  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #2
  \mark \default

  d1-^ \ff ~
  d
  f4 r r bes,
  g' r cis, r
  d r g, r
  a r r2
  d4 r g, r
  a r r2
  a4 r a' r
  a, r r2
  a4 r fis r
  b r r2
  bis4 r cis r
  a r r2
  cis4 r a r
  fis'1-^ \ff
  e-^ ~
  e ~
  e4 r r2
  R1 * 3

  \tag #'partScore
    \noBreak
  \TempoIVRit

  R1

  \mark \default

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #16
  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2

  \tag #'partScore
    \noBreak
  \TempoIVIT

  R1 * 6
  r4 f,-. \ff bes-. a-.
  d,-. e-. f-. g-.
  f-. c'-. d-. bes-.
  a-. d-. a2->
  R1 * 2
  f2-> \ff  f'->
  fis2.-> r4
  R1
  r2 d4 \f r
  g,2-> \ff g'->
  gis2.-> r4
  R1
  r2 e4 \f r
  a, r r2
  R1

  \mark \default

  R1 * 15

  \bar "||"

  \mark \default

  \key a \major
  R1 * 22

  \mark \default

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMdOboeI" #UP "treble" {s4 * 0 ^\markup { \fontsize #-3 "Fl & Ob"} R1 * 5}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 5
  }

  a4 \f r d r
  e r e r
  a, r r2
  R1 * 7
  c4 \f r b r
  a r g r
  c r d r
  e r e r
  a, r c-. b-.
  a r g r
  c r d r
  e r e r

  \bar "||"

  \mark \default

  \key a \minor
  a, r r2
  R1
  fis'1-^ \fz \> ~
  <<{fis (}{s4 s4 s4 s8 s8\!}>>
  g!4 ) r r2
  R1
  f!1 ( \pp ~
  f
  e4 ) r r2
  R1 * 9
  \tag #'partScore
    \noBreak

  \TempoIVPRit

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #16
  R1 * 4

  \mark \default

  \tag #'partScore
    \noBreak
  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #19

  R1 * 3

  f,1 \ppp ~
  f ~
  f ~
  f4 r r2
  R1 * 4
  fis1 \ppp ~
  fis ~
  fis ~
  fis4 r r2
  R1 * 7
  fis2 \pp ( g
  fis1 )
  fis2 ( g ~
  g1 )
  g2 ( aes
  g1 )
  g2 ( aes ~
  aes1 )
  a2 ( bes ~
  bes1 )
  bes2 \cresc ( b ~
  b ) \< b-> \! ~
  b b-> ~
  b4-. \mf r r2
  R1 * 3

  \mark \default

  e,1-^ \f ~
  e2 e4. e8
  e'1-^ \fz
  b-^ \fz
  R1 * 4
  g'1-^ \ff
  R1 * 3
  gis1-^ \ff
  R1 * 5

  \mark \default

  R1 * 14
  cis,4 \f r cis r
  cis r cis r
  cis r r2
  R1 * 7

  \mark \default

  fis,1 \ppp ~
  fis ~
  fis4 r r2
  R1 * 5
  g1 \ppp ~
  g ~
  g4 r r2
  R1 * 15

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMdViolinoI" #UP "treble" {s4 * 0 ^\markup { \fontsize #-3 "Vl. I"} R1 * 4}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 4
  }

  \bar "||"

  \mark \default

  \key d \minor
  a1 \ff ~
  a4 r r2
  R1 * 2
  r2 r4 a \f
  d r g r
  a r r2
  R1 * 13

  \mark \default

  R1 * 15

  \bar "||"

  \key d \major

  R1 * 22

  \mark \default

  R1 * 11

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMdViolinoI" #UP "treble" {s4 * 0 ^\markup { \fontsize #-3 "Vl. I"} R1 * 4}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 4
  }

  f4 \f r e r
  d r c r
  f, r g r
  a r a r
  d r f-. e-.
  d r c r
  f r g r
  a r a, r

  \bar "||"

  \mark \default

  \key d \minor
  d4 r r2
  R1 * 7
  d4. \f f8 d4. f8
  cis1-^
  c!4. ees8 c4. ees8
  c1-^
  b4. \f d8 b4. d8
  b1-^
  bes4. \f d8 bes4. d8
  bes1-^
  bes-^ \fz
  e,-^ \fz

  \mark \default

  a4 r r2
  R1 * 5
  a2 \ff r
  a \ff r
  a4 r r2
  R1 * 4
  d1-^ \ffz ~
  d
  c-^ \ffz ~
  c
  b-^ \ffz ~
  b
  bes-^ \ffz ~
  bes
  a2-> d->
  g, d'
  g, d'
  g2. r4
  R1 * 3

  \mark \default

  R1 * 3
  \TempoIVPAn

  d1-^ \ff

  \tag #'partScore
    \noBreak  % pour ne pas couper le texte

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
  fis1 \ff
  g
  d'
  d-^
  bes-^
  a-^ \fz
  a-^ \fz
  a-^ \fz
  \tag #'partScore {
    a4 \ffz r r2
  }
  \elseTag #'partScore {
    a4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  }

  \bar "|."
}

voiceSgMdTromboneIII = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombone" III}}
  \tag #'conductorScore \tag #'pocketScore {\set Staff.shortInstrumentName = \markup {\center-column {"Trbn." III}}}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "trombone"
  \key d \minor
  \clef bass
  \SgMdTromboneIII
}

quoteScoreSgMdTromboneIII = \SgMdTromboneIII
