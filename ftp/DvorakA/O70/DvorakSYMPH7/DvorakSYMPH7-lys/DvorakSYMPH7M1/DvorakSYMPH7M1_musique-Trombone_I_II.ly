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
  * Fichier de notes, Trombone I et II, parties                         *
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

SgMaTromboneI = \relative c' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 16 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \cueEventType
  \oneMMRNumberOn

  \TempoI

  \once \override Voice.MultiMeasureRest #'minimum-length = #35
  R1 * 6/8 * 24

  \mark \default    % Mark A - mesure 25

  R1 * 6/8 * 17

  \mark \default    % Mark B - mesure 42

  R1 * 6/8 * 9

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaTrombaI" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Tromba I"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaViolinoII" #UP "treble" {s4 * 0 ^\markup { \lower #2.3 \fontsize #-3 "Violini"} R1 * 6/8}
  \oneMMRNumberOn

  d2. \ff ~
  d4. ~ d8. c16-. c8-.
  a4.-^ ~ a8 [r16 c-. c8-.]
  a4.-^ ~ a8 r r
  des2. \fz
  des \fz
  ees8-. r r r4 r8
  R1 * 6/8 * 10

  \noBreak
  \TempoIRit

  R1 * 6/8
  \once \override Score.MetronomeMark #'X-offset = #2

  \mark \default    % Mark D - mesure 73

  \noBreak
  \TempoIinTempo

  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 6/8 * 20

  \mark \default    % Mark E - mesure 93

  R1 * 6/8 * 20

  \mark \default    % Mark F - mesure 113

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaViolinoI" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Violino I"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  \tag #'quoteTrombaI \tag #'quoteTrombaII {  % appel pour citation, différent de la partition normale
    <bes g>2. \pp ~
    <bes g>4 r8 r4 r8
  }
  \elseTag #'quoteTrombaI \elseTag #'quoteTrombaII {
    bes2. \pp ~
    bes4 r8 r4 r8
  }

  R1 * 6/8 * 6
  d4 \f ( c8 ) ees4 ( d8 )
  cis4 ( bis8 ) dis4 ( cis8 )
  d!8 r r f4.->
  fis ~ fis8 r r

  \mark \default    % Mark G - mesure 127

  des2.-^ ~
  des4. ~ des4 des8
  d!8 \ff r r bes r r
  bes r r bes r r
  bes r r bes r r
  bes r r r4 r8
  bes8 r r r4 r8
  bes8 r r r4 r8
  bes8 r r d r r
  c r r bes [r d]
  cis8 r r a r r
  a r r a r r

  \mark \default    % Mark H - mesure 139

  a r r r4 r8
  R1 * 6/8 * 5
  bes2. \ppp ~
  bes ~
  bes8 r r r4 r8
  R1 * 6/8

  \bar "||"    % mesure 149

  \key a \minor
  R1 * 6/8 * 16

  \mark \default    % Mark I forcé - mesure 165

  R1 * 6/8 * 21

  \mark \default    % Mark J - mesure 186

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaTrombaI" #UP "treble" {s4 * 0 ^\markup { \fontsize #-3 "Trombe"} R1 * 6/8 * 6}
  \oneMMRNumberOn

  c4 r8 r4 r8
  c4 r8 r4 r8
  cis4 r8 r4 r8
  cis4 r8 r4 r8

  \bar "||"

  \mark \default    % Mark K - mesure 196

  d2. \ff ~
  d4. ~ d4 e8
  d4. -\parenthesize -^ \fz ~ d8 [r16 e c8]
  d4. -\parenthesize -^ \fz ~ d8 [r16 f f8]
  f2. \ff ~
  f
  ees8 r r r4 r8
  R1 * 6/8 * 11

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  R1 * 6/8 * 23

  \mark \default    % Mark M - mesure 237

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaViolinoII" #UP "treble" {s4 * 0 ^\markup { \fontsize #-3 "Vl II"} R1 * 6/8 * 6}
  \oneMMRNumberOn

  R1 * 6/8

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaViolinoI" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  d2. \pp ( bes )

  \bar "||"    % mesure 248

  \key d \minor
  a4. ~ a4 r8
  R1 * 6/8 * 6
  a4.-> \f d->
  a' \fz ~ a4 g8
  bes4 ( a8 ) d,4 ( f8 )
  ees4. \fz ~ ees8 r r
  ees4. \fz ~ ees8 r r
  d4.-^ ~ d8 r r
  d4.-^ ~ d8 r r
  d4.-^ ~ d8 r r
  d4.-^ ~ d8 r r
  d2.-^
  f8-^ d-^ e-^ f-^ d-^ f-^

  \mark \default    % Mark N - mesure 266

  c4.-> f->
  c'4.-> ~ c4 r8

  \noBreak
  \TempoIPaPAcc

  R1 * 6/8
  \noBreak
  r4 r8 r4 a,16 \ff a
  d8 f, a d f, a
  d f, a d f, a
  d4.-> c-> ~
  c2.
  b2.->
  cis-^

  \mark \default    % Mark O - mesure 276

  d8 r r d r r d \ff r r d r r
  d r r d r r
  d r r d r r
  d4. \ff bes'-^ ~
  bes8 [a8 g] f4.
  ees8-. d-. cis-. d-. f-. e-.
  d8 r r r4 r8
  R1 * 6/8 * 3

  \mark \default    % Mark P - mesure 287

  \once \override Score.MetronomeMark #'X-offset = #2
  \noBreak
  \TempoITempoPrimo

  R1 * 6/8 * 9
  r4 r8 fis,4. \ppp ( ~
  fis g
  aes ) r4 r8
  R1 * 6/8 * 2

  \mark \default    % Mark Q - mesure 301

  bes2. \pp ( ~
  bes a8 ) r r r4 r8
  R1 * 6/8 * 5

  \noBreak
  \TempoIPocoRit    % Mesure 309

  R1 * 6/8 * 5
  \oneMMRNumberOff
  R1 * 6/8 \fermataMarkup

  \bar "|."
}

%{
  *****************************************************************
  * Trombone II                                                   *
  *****************************************************************
%}

SgMaTromboneII = \relative c {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 16 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
\cueEventType  \oneMMRNumberOn

  \TempoI

  R1 * 6/8 * 16
  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaCornoI" #UP "treble" {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  r4 r8 r d4 \pp ~
  d8 r r r4 r8
  R1 * 6/8 * 4

  \mark \default    % Mark A - mesure 25

  R1 * 6/8 * 17

  \mark \default    % Mark B - mesure 42

  R1 * 6/8 * 9

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaTrombaI" #UP "treble" {s4 * 0 -\tweak #'extra-offset #'(0 . -1.5)
    ^\markup { \fontsize #-3 "Tromba"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaViolinoII" #UP "treble" {s4 * 0 -\tweak #'extra-offset #'(0 . -2)
    ^\markup { \fontsize #-3 "Violini"} R1 * 6/8}
  \oneMMRNumberOn

  d'2. \ff ~
  d4. ~ d8. e,16-. e8-.
  f4.-^ ~ f8 [r16 e-. e8-.]
  f4.-^ ~f8 r r
  bes2. \fz
  bes \fz
  c8-. r r r4 r8
  R1 * 6/8 * 10

  \noBreak
  \TempoIRit

  R1 * 6/8

  \once \override Score.MetronomeMark #'X-offset = #2
  \noBreak
  \TempoIinTempo


  \mark \default    % Mark D - mesure 73

  R1 * 6/8 * 20

  \mark \default    % Mark E - mesure 93

  R1 * 6/8 * 20

  \mark \default    % Mark F - mesure 113

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaViolinoI" #DOWN "treble" {s4 * 0 -\tweak #'extra-offset #'(0 . -1.5)
    ^\markup { \fontsize #-3 "Vl I"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  g2.\pp ~
  g4 r8 r4 r8
  R1 * 6/8
  R1 * 6/8 * 5  % QQ
  bes4 \f ( f8 ) c'4 ( bes8 )
  a2.
  f8-> r r f'4.->
  fis4. ~ fis8 r r

  \mark \default    % Mark G - mesure 127

  ges,2.-^ ~
  ges4. ~ ges4 ges8
  f \ff r r bes r r
  bes r r bes r r
  bes r r bes r r
  bes r r r4 r8
  bes8 r r r4 r8
  bes8 r r r4 r8
  f8 r r f r r
  fis r r g [r bes]
  a r r a r r
  a r r a r r

  \mark \default    % Mark H - mesure 139

  a r r r4 r8
  R1 * 6/8 * 5
  des,2. \ppp ~
  des ~
  des8 r r r4 r8
  R1 * 6/8

  \bar "||"    % mesure 149

  \key a \minor
  R1 * 6/8 * 16

  \mark \default    % Mark I forcé - mesure 165

  R1 * 6/8 * 21

  \mark \default    % Mark J - mesure 186

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaTrombaI" #UP "treble" {s4 * 0 -\tweak #'extra-offset #'(0 . -2)
    ^\markup { \fontsize #-3 "Trombe"} R1 * 6/8 * 6}
  \oneMMRNumberOn

  c'4 \f r8 r4 r8
  c4 r8 r4 r8
  cis4 r8 r4 r8
  cis4 r8 r4 r8

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  d2.-> \ff ~
  d4. ~ d4 c8
  a4. -\parenthesize -^ \fz ~ a8 [r16 c16 a8]
  a4. -\parenthesize -^ \fz ~ a8 [r16 d16 d8]
  des2. \ff ~
  des
  c8 r r r4 r8
  R1 * 6/8 * 11

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  R1 * 6/8 * 23

  \mark \default    % Mark M - mesure 237

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaViolinoII" #UP "treble" {s4 * 0 -\tweak #'extra-offset #'(0 . -2)
    ^\markup { \fontsize #-3 "Violini"} R1 * 6/8 * 6}
  \oneMMRNumberOn

  R1 * 6/8

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaViolinoI" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  bes2. \pp (
  d, )

  \bar "||"    % mesure 248

  \key d \minor
  f4. ~ f4 r8
  R1 * 6/8 * 6
  a4.-> \f d->
  f \fz ~ f4 e8
  g4 ( d8 ) a4 ( d8 )
  c4. \fz ~ c8 r r
  c4. \fz ~ c8 r r
  \repeat unfold 2 {bes4.-^ ~ bes8 r r}
  \repeat unfold 2 {b4.-^ ~ b8 r r}
  b2.
  f8-^ d-^ e-^ f-^ d-^ e-^

  \mark \default    % Mark N - mesure 266

  c'4.-> f->
  f,8 r r r4 r8

  \noBreak
  \TempoIPaPAcc

  R1 * 6/8
  \noBreak
  r4 r8 r4 a16 \ff a
  d8 f, a d f, a
  d f, a d f, a
  d4.-> c4.-> ~
  c2.
  b->
  cis-^

  \mark \default    % Mark O - mesure 276

  d8 r r d r r
  d \ff r r d r r
  d r r d r r
  d r r d r r
  d4. \ff ~ d4 cis8-^ ~
  cis [c-^ b-^] bes-^ a-^ aes-^
  g-. f-. e-. f-. d'-. cis!-.
  d r r r4 r8
  R1 * 6/8 * 3

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoITempoPrimo


  \mark \default    % Mark P - mesure 287

  R1 * 6/8 * 9
  r4 r8 d,4. \ppp ( ~
  d e
  f ) r4 r8
  R1 * 6/8 * 2

  \mark \default    % Mark Q - mesure 301

  f2. \pp ~
  f ~
  f8 r r r4 r8
  R1 * 6/8 * 5

  \noBreak
  \TempoIPocoRit    % Mesure 309

  R1 * 6/8 * 5
  \oneMMRNumberOff
  R1 * 6/8 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMaTromboneI = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombone" I}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "trombone"
  \key d \minor
  \clef bass
  \SgMaTromboneI
}

voiceSgMaTromboneII = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombone" II}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "trombone"
  \key d \minor
  \clef bass
  \SgMaTromboneII
}

quoteScoreSgMaTromboneI = \SgMaTromboneI
quoteScoreSgMaTromboneII = \SgMaTromboneII
