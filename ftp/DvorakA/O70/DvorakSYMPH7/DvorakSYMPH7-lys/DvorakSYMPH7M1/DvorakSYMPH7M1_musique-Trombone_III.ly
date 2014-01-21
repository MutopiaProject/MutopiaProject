%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n° 7 mouvement I, Allegro maestoso                        *
  * Fichier de notes, Trombone 3                                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}

\include "Common/Version.ly"

% Fichier cité par les timbales :
% le \tag #'partscore devient \tag #'partScore \tag #'quoteTimpani {

SgMaTromboneIII =
\relative c, {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \tag #'partScore {
    \set Staff.minimumPageTurnLength = #(ly:make-moment 16 8)
  }
  \tag #'partScore
    \cueEventType
  \tag #'partScore
    \oneMMRNumberOn

  \TempoI

  R1 * 6/8 * 16

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMaCornoI" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1 * 6/8 * 2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/8 * 2
  }

  r4 r8 r d4 \pp ~
  d8 r r r4 r8
  R1 * 6/8 * 4

  \mark \default    % Mark A - mesure 25

  R1 * 6/8 * 17

  \mark \default    % Mark B - mesure 42

  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #16

  R1 * 6/8 * 12

  \mark \default    % Mark C - mesure 54

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMaViolinoII" #UP "treble"
    {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Violini"} R1 * 6/8}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/8
  }

  d'2. \ff ~
  d4. ~ d8. a16-. a8-.
  f4.-^ ~ f8 [r16 a-. a8-.]
  f4.-> ~f8 r r
  f'2. \fz
  f \fz
  f8-. r r r4 r8
  R1 * 6/8 * 10

  \tag #'partScore
    \noBreak
  \TempoIRit

  R1 * 6/8

  \tag #'partScore
    \noBreak
  
  \TempoIinTempo

  \mark \default    % Mark D - mesure 73

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #3
  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #16
  R1 * 6/8 * 20

  \mark \default    % Mark E - mesure 93

  R1 * 6/8 * 20

  \mark \default    % Mark F - mesure 113

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMaViolinoI" #DOWN "treble"
    {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Vl I"} R1 * 6/8 * 2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/8 * 2
  }
  e,!2.\pp ~
  e4 r8 r4 r8
  R1 * 6/8 * 6
  bes'4. \f bes'
  a,2.
  bes4.-> f'->
  fis4. ~ fis8 r8 r

  \mark \default    % Mark G - mesure 127

  ges,2.-^ ~
  ges4. ~ ges4 ges8
  f \ff r r bes r r
  bes r r bes r r
  bes r r bes r r
  bes r r r4 r8
  bes8 r r r4 r8
  bes8 r r r4 r8
  bes8 r r bes r r
  bes r r bes r g
  a r r a r r
  a r r a r r

  \mark \default    % Mark H - mesure 139

  a r r r4 r8
  R1 * 6/8 * 5
  ges2. \ppp ~
  ges ~
  ges8 r r r4 r8
  R1 * 6/8

  \bar "||"    % mesure 149

  \key a \minor
  R1 * 6/8 * 16

  \mark \default    % Mark I forcé - mesure 165

  R1 * 6/8 * 21

  \tag #'partScore
    \once \override Score.RehearsalMark #'X-offset = #-1
  \mark \default    % Mark J - mesure 186

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMaTrombaI" #UP "treble" {s4 * 0 ^\markup { \fontsize #-3 "Trombe"} R1 * 6/8 * 6}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/8 * 6
  }

  c4 \f r8 r4 r8
  c4 r8 r4 r8
  cis4 r8 r4 r8
  cis4 s8 s4 s8

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  d2.-> \ff ~
  d4. ~ d4 a'8
  f4. -^ \fz ~ f8 [r16 a16 a8]
  f4. -^ \fz ~ f8 [r16 f16 f8]
  f2. \ff ~
  f
  f8 r r r4 r8
  R1 * 6/8 * 11

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  \tag #'partScore
    \once \override MultiMeasureRest #'minimum-length = #20
  R1 * 6/8 * 23

  \mark \default    % Mark M - mesure 237

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMaViolinoII" #UP "treble"
    {s4 * 0 -\tweak #'extra-offset #'(0 . -1) ^\markup { \fontsize #-3 "Violini"} R1 * 6/8 * 6}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/8 * 6
  }

  R1 * 6/8

  \tag #'partScore {
    \oneMMRNumberOff
    \cueDuringWithClef #"scoreSgMaViolinoI" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Violini"} R1 * 6/8 * 2}
    \oneMMRNumberOn
  }
  \elseTag #'partScore {
    R1 * 6/8 * 2
  }

  gis,2. \pp ~
  gis
  \key d \minor

  \bar "||"    % mesure 248

  a4. ~ a4 r8
  R1 * 6/8 * 6
  a4.-> \f d->
  a' \fz ( bes )
  g ( f )

  \tag #'partScore {
    <<{
      f4. \fz ~ f8 d-. ees-.
      f4. \fz ~ f8 d-. ees-.
      \repeat unfold 2 {f4.-^ ~ f8 d-. ees-.}
      }
      \new Voice
      {
        \set countPercentRepeats = ##t
        \override PercentRepeatCounter #'outside-staff-priority = #51
        \override PercentRepeat #'transparent = ##t
        \repeat percent 4 {s2.}
    }>>
  }
  \elseTag #'partScore {
    f4. \fz ~ f8 d-. ees-.
    f4. \fz ~ f8 d-. ees-.
    \repeat unfold 2 {f4.-^ ~ f8 d-. ees-.}
  }

  f4.-^ ~ f8 d-. e!-.
  f4.-^ ~ f8 d-. e-.
  f8-\parenthesize-> d-. e-. f-\parenthesize-> d-. f-.
  bes,!2.

  \mark \default    % Mark N - mesure 266

  f' ~
  f8 r r r4 r8

  \tag #'partScore
    \noBreak
  \TempoIPaPAcc

  R1 * 6/8
  \tag #'partScore
    \noBreak
  r4 r8 r4 a,16 \ff a
  d8 f, a d f, a
  d f, a d f, a
  d4.-> c'4.-> ~
  c2.
  b->
  cis-^

  \mark \default    % Mark O - mesure 276

  d8 r r d, r r
  d \ff r r d r r
  d r r d r r
  d r r d r r
  d4. \ff ~ d4 cis8-^ ~
  cis c-^ b-^ bes-^ a-^ aes-^
  g-^ f-^ e-^ f-^ g-^ a!-^
  d r r r4 r8
  R1 * 6/8 * 3

  \tag #'partScore
    \noBreak
  \TempoITempoPrimo

  \tag #'partScore
    \once \override Score.MetronomeMark #'X-offset = #2
  \mark \default    % Mark P - mesure 287

  R1 * 6/8 * 9
  r4 r8 gis,4. \ppp ( ~
  gis a
  d8 ) r r r4 r8
  R1 * 6/8 * 2

  \mark \default    % Mark Q - mesure 301

  R1 * 6/8 * 8

  \tag #'partScore
    \noBreak
  \TempoIPocoRit    % Mesure 309

  R1 * 6/8 * 5
  \oneMMRNumberOff
  R1 * 6/8 \fermataMarkup

  \bar "|."
}


voiceSgMaTromboneIII = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombone" III}}
  \tag #'conductorScore \tag #'pocketScore {\set Staff.shortInstrumentName = \markup {\center-column {"Trbn." III}}}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "trombone"
  \key d \minor
  \clef bass
  \SgMaTromboneIII
}

quoteScoreSgMaTromboneIII = \SgMaTromboneIII

