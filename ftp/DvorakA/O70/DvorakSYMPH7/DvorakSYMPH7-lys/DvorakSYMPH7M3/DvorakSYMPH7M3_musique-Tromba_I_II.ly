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
  * Fichier de notes, Trompettes 1 et 2, parties                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Trompette I                                                   *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMcTrombaI = \relative c'' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 12 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoIII

  \transposition c'
  r2 r4
  R1 * 6/4 * 7
  a2 \mf r4 a2 \dim r4
  a2 \p r4 r2 r4
  R1 * 6/4 * 12

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni I II"} R1 * 6/4 * 3}
  \oneMMRNumberOn

  \mark \default  % Mark A

  d4 \mf r r r2 a4 \cresc
  d r r r2 a4
  d \ff r d r d-. a-.
  d r d r d-. a-.
  d r r r2 r4
  R1 * 6/4 * 3
  d4 \f r r r2 r4
  a4 r r r2 r4
  d4 r r r2 r4
  d2 \ff d4-. d2 d4-.
  d2 d4-. d2 d4-.
  d4-. r bes-. r bes-. r
  a-. r a-. r a-. r
  a-. r a-. r2 r4
  a4 \f \dim r a4 r8 a a4 \p a
  a r a r8 a \> a4 \! a
  R1 * 6/4 * 7

  \mark \default  % Mark A

  r4 a8 \mf a a4 r a8 \p a a4
  r a-. r r2 r4
  r a8 \p a a4 r a8 a a4
  a r r r2 r4
  a \pp r r a r r
  a r r r2 r4
  R1 * 6/4 * 4

  \mark \default  % Mark A

  d4 \f r d r8 d d4 d
  d4 r d r8 d d4 d
  d4 r d r8 d d4 d
  c4 r c r8 c c4 c
  c2. \f ~ c4 r r
  bes2. ~ bes4 r r
  a2-^ \ff d-^ d4-. a-.
  d-. r r r2 a4-.
  d-. r r r2 a4-.
  d \ff r d r d-. a-.
  d r d r d-. a-.
  d r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  d2 \ff d d
  a4 r a r d r
  d r r r2 r4
  R1 * 6/4
  r2 r4 r2 a4 \ff
  a r a r a r
  e' r a, r a r
  e' r r r2 r4
  a2. \ff ~ a2 a4-.
  d,2.-^ d-^
  d-^ a-^
  d4-. r d-. d-. d-. d-.
  d-. r d-. d-. d-. d-.
  d \fz d d \fz d d \fz d
  d \fz d d \fz d d \fz d
  d r r d r r
  <<{d,1. ~}{s2. -\tweak #'minimum-length #10 \> s2 s4 \!}>>

  \bar "||"

  \TempoIIIMM

  d4 r r r2 r4
  \noBreak
  R1 * 6/4 * 11

  \once \override Score.RehearsalMark #'X-offset = #2
  \mark \default  % Mark A

  R1 * 6/4 * 24

  \mark \default  % Mark A

  R1 * 6/4 * 20

  \mark \default  % Mark A

  R1 * 6/4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni I II"} R1 * 6/4 * 2}
  \oneMMRNumberOn

  \tag #'quoteTimpani \tag #'quoteCornoIV \tag #'quoteFlautoII {  % appel pour citation, différent de la partition normale
    \rightDynamic <bes' d,>4 \pp \< ( <c f,>4. <d bes>8 \! ) <d bes>4 ( \> <c f,>4. <bes d,>8 ) \!
  }
  \elseTag #'quoteTimpani \elseTag #'quoteCornoIV  \elseTag #'quoteFlautoII {
    \rightDynamic bes4 \pp \Solo \< ( c4. d8 \! ) d4 ( \> c4. bes8 ) \!
  }

  d4 r r r2 r4
  R1 * 6/4 * 5

  \noBreak
  \TempoIIIAcc

  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 6/4 * 4

  \noBreak
  \TempoIIIViv

  R1 * 6/4 * 4

  \mark \default  % Mark A

  a4 \f r a r8 a a4 a
  a4 r a r8 a a4 a
  a4 a r a a r
  a a r a a r
  a r r r2 r4
  R1 * 6/4 * 2

  \bar "||"

  R1 * 6/4 * 7
  a2 \mf r4 a2 r4
  a4 \p r r r2 r4
  R1 * 6/4 * 8

  \mark \default  % Mark A

  R1 * 6/4 * 7
  d4 \mf r r r2 a4 \cresc
  d r r r2 a4 \!
  d \ff r d r d-. a-.
  d r d r d-. a-.
  d-. a-. d-. a-. d-. a-.
  d-. a-. d-. \dim a-. d-. a-.
  d r r r2 r4
  R1 * 6/4 * 5

  \mark \default  % Mark A

  d4-. \pp \< a-. d-. a-. d-. a-.
  d-. a-. d-. a-. d-. a-. \!
  d \f r r r2 r4
  R1 * 6/4 * 15

  \noBreak
  \TempoIIIPPrB

  \once \override Voice.MultiMeasureRest #'minimum-length = #20
  R1 * 6/4 * 6
  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #6

  \TempoIIIiT

  \once \override Voice.MultiMeasureRest #'minimum-length = #16

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMcVioloncelloI" #DOWN "bass" {s4 * 0 ^\markup { \fontsize #-3 "Cello"} R1 * 6/4 * 4}
  \oneMMRNumberOn

  \mark \default  % Mark A

  d2 \ff d d
  a4 r a r d r
  d r r r2 r4
  R1 * 6/4
  r2 r4 r2 a4 \ff
  a r a r a r
  e' r a, r a r
  e' r r r2 r4
  a2. \ff ~ a2 a4-.
  d,2.-^ d-^
  d-^ a-^
  d4 r d d d d
  d r d d d d
  d \fz d d \fz d d \fz d
  d \fz d d \fz d d \fz d
  d r d r8 d d4 d
  d r r d r r
  d r r r2 r4

  \bar "|."
}

%{
  *****************************************************************
  * Trompette II                                                  *
  *****************************************************************
%}

SgMcTrombaII = \relative c'{

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 12 4)
  \TempoIII
  \cueEventType  \oneMMRNumberOn

  \TempoIII

  \transposition c'
  r2 r4
  R1 * 6/4 * 7
  a2 \mf r4 a2 \dim r4
  a2 \p r4 r2 r4
  R1 * 6/4 * 12

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni I II"} R1 * 6/4 * 3}
  \oneMMRNumberOn

  \mark \default  % Mark A

  d4 \mf r r r2 a'4 \cresc
  d, r r r2 a'4
  d, \ff r d r d-. a'-.
  d, r d r d-. a'-.
  d, r r r2 r4
  R1 * 6/4 * 3
  d4 \f r r r2 r4
  a'4 r r r2 r4
  d,4 r r r2 r4
  d2 \ff d4-. d2 d4-.
  d2 d4-. d2 d4-.
  d4-. r g-. r g-. r
  a-. r a-. r a-. r
  a-. r a-. r2 r4
  a4 \f \dim r a4 r8 a a4 \p a
  a r a r8 a \> a4 \! a
  R1 * 6/4 * 7

  \mark \default  % Mark A

  r4 a,8 \mf a a4 r a8 \p a a4
  r a-. r r2 r4
  r a8 \p a a4 r a8 a a4
  a r r r2 r4
  a \pp r r a r r
  a r r r2 r4
  R1 * 6/4 * 4

  \mark \default  % Mark A

  d4 \f r d r8 d d4 d
  d4 r d r8 d d4 d
  d4 r d r8 d d4 d
  c4 r c r8 c c4 c
  c2. \f ~ c4 r r
  bes2. ~ bes4 r r
  a2-^ \ff d-^ d4-.a'-.
  d,-. r r r2a'4-.
  d,-. r r r2a'4-.
  d, \ff r d r d-.a'-.
  d, r d r d-.a'-.
  d, r r r2 r4
  R1 * 6/4 * 3

  \mark \default  % Mark A

  d2 \ff d d
  a'4 r a r d, r
  d r r r2 r4
  R1 * 6/4
  r2 r4 r2 a'4 \ff
  a r a r a r
  e r a r a r
  e r r r2 r4
  a2. \ff ~ a2 a4-.
  d,2.-^ d-^
  d-^ e-^
  d4-. r d-. d-. d-. d-.
  d-. r d-. d-. d-. d-.
  d \fz d d \fz d d \fz d
  d \fz d d \fz d d \fz d
  d r r d r r
  <<{d1. ~}{s2. -\tweak #'minimum-length #10 \> s2 s4 \!}>>

  \bar "||"

  \TempoIIIMM

  d4 r r r2 r4
  \noBreak
  R1 * 6/4 * 11

  \mark \default  % Mark A

  R1 * 6/4 * 24

  \mark \default  % Mark A

  R1 * 6/4 * 20

  \mark \default  % Mark A

  R1 * 6/4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMcCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni I & II"} R1 * 6/4 * 2}
  \oneMMRNumberOn

  \rightDynamic d4 \pp \Solo \< ( f4. bes!8 \! ) bes4 ( \> f4. d8 ) \!
  d4 r r r2 r4
  R1 * 6/4 * 5

  \noBreak
  \TempoIIIAcc

  \once \override Voice.MultiMeasureRest #'minimum-length = #17
  R1 * 6/4 * 4

  \noBreak
  \TempoIIIViv

  R1 * 6/4 * 4

  \mark \default  % Mark A

  a'4 \f r a r8 a a4 a
  a4 r a r8 a a4 a
  a4 a r a a r
  a a r a a r
  a r r r2 r4
  R1 * 6/4 * 2

  \bar "||"

  R1 * 6/4 * 7
  a,2 \mf r4 a2 r4
  a4 \p r r r2 r4
  R1 * 6/4 * 8

  \mark \default  % Mark A

  R1 * 6/4 * 7
  d4 \mf r r r2 a'4 \cresc
  d, r r r2 a'4 \!
  d, \ff r d r d-.a'-.
  d, r d r d-.a'-.
  d,-.a'-. d,-.a'-. d,-.a'-.
  d,-.a'-. d,-. \dim a'-. d,-.a'-.
  d, r r r2 r4
  R1 * 6/4 * 5

  \mark \default  % Mark A

  d4-. \pp \<a'-. d,-.a'-. d,-.a'-.
  d,-.a'-. d,-.a'-. d,-.a'-. \!
  d, \f r r r2 r4
  R1 * 6/4 * 15

  \noBreak
  \TempoIIIPPrB

  \once \override Voice.MultiMeasureRest #'minimum-length = #20
  R1 * 6/4 * 6
  \once \override Score.MetronomeMark #'X-offset = #6

  \TempoIIIiT

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMcVioloncelloI" #DOWN "bass" {s4 * 0 ^\markup { \fontsize #-3 "Cello"} R1 * 6/4 * 4}
  \oneMMRNumberOn

  \mark \default  % Mark A

  d2 \ff d d
  a'4 r a r d, r
  d r r r2 r4
  R1 * 6/4
  r2 r4 r2a'4 \ff
  a r a r a r
  e r a r a r
  e r r r2 r4
  a2. \ff ~ a2 a4-.
  d,2.-^ d-^
  d-^ e-^
  d4 r d d d d
  d r d d d d
  d \fz d d \fz d d \fz d
  d \fz d d \fz d d \fz d
  d r d r8 d d4 d
  d r r d r r
  d r r r2 r4

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMcTrombaI = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Tromba I" "in C"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \SgMcTrombaI
}

voiceSgMcTrombaII = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Tromba II" "in C"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \SgMcTrombaII
}

quoteScoreSgMcTrombaI = \SgMcTrombaI
quoteScoreSgMcTrombaII = \SgMcTrombaII
