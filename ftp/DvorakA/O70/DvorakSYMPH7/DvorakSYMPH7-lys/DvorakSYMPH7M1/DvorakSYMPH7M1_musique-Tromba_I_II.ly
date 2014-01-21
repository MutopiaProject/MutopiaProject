%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement I, Allegro maestoso                       *
  * Fichier de notes, Trompettes 1 et 2, parties                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ****************************************************************
  * Trompette I                                                  *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMaTrombaI = \relative c''{

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 24 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \cueEventType
  \oneMMRNumberOn

  \transposition d'	% Ligne à modifier pour obtenir une transposition vers une autre tonalité (bes)

  \TempoI

  \once \override Voice.MultiMeasureRest #'minimum-length = #36
  R1 * 6/8 * 24

  \mark \default    % Mark A - mesure 25

  R1 * 6/8 * 2

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  c4 \f r8 c4 r8
  c4 r8 c4 r8
  g8 r r r4 r8
  R1 * 6/8
  c,8 \f r r r4 r8
  R1 * 6/8
  c8 \f r r r4 r8
  R1 * 6/8
  c'8 \f r r r4 r8
  R1 * 6/8 * 4

  \mark \default    % Mark B - mesure 42

  R1 * 6/8 * 9
  g4 \f r8 g4 r8
  g4 r8 g8 r r
  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  r4 r8 r4 g16 \ff g
  c2. ~
  c4. ~ c8 [r16 g-. g8-.]
  g4.-^ ~ g8 [r16 g-. g8-.]
  g4.-^ ~ g8 r r
  ees'2.-^ \fz
  ees-^ \fz
  \partcombineApartOnce aes,8 r ^\markup {"[muta in B]"} r r4 r8

  \transposition bes
  R1 * 6/8 * 10

  \noBreak
  \TempoIRit

  \once \override Voice.MultiMeasureRest #'minimum-length = #12
  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIinTempo

  R1 * 6/8 * 14

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  r8 c-. ^\markup {"in B"} \pp c-. c4 r8
  R1 * 6/8 * 3

  \mark \default    % Mark E - mesure 93

  R1 * 6/8 * 20

  \mark \default    % Mark F - mesure 113

  R1 * 6/8 * 2

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaTromboneI" #DOWN "alto" {s4 * 0 ^\markup { \fontsize #-3 "Tromboni"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  R1 * 6/8
  g4 \mf r8 r4 r8
  g4 r8 r4 r8
  g4-> \cresc r8 r4 r8
  g4-> r8 r4 r8
  c8 \f r r g r r
  c4. \ff g4.
  b2.->
  e8 r r r4 r8
  R1 * 6/8

  \mark \default    % Mark G - mesure 127

  \pageTurn
  c2.-> \ff ~
  c4. ~ c4 c16 c
  r4 c,16 c c'4-> \ff c,16 c
  c'4-> c,16 c c'4-> c,16 c
  c'4-> c,16 c c'4-> c,16 c
  c'8 r r r4 r8
  c8 r r r4 r8
  c8 r r r4 r8
  c8 r r c r r
  c r r c r c
  b r r b r r
  b r r b r r

  \mark \default    % Mark H - mesure 139

  b r r r4 r8
  R1 * 6/8 * 9

  \bar "||"    % mesure 149

  R1 * 6/8 * 8

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaTrombaII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Tromba II"} R1 * 6/8 * 3 r4 r8 r4}
  \oneMMRNumberOn

  d16-. \f d-.
  d4.-> ~ d4 d16-. d-.
  d4.-> ~ d4 d16-. d-.
  e4.-> ~ e4 e16-. e-.
  b4. \fz ~ b4 b16-. b-.

  \mark \default    % Mark I forcé - mesure 165

  fis8 r ^\markup {"[muta in D]"} r r4 r8 |

  R1 * 6/8 * 12

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaCornoIII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni III IV"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  \transposition d'
  b2. \ff ^\markup {"in D"} ~
  b4. ~ b4 r8
  R1 * 6/8 * 2
  aes2.-> \ff ~
  aes

  \mark \default    % Mark J - mesure 186

  \tag #'quoteTromboneI \tag #'quoteTromboneII \tag #'quoteTromboneIII {
    % appel pour citation, différent de la partition normale
    <f' f,>2.-^ \ff
    <f f,>4.-\parenthesize-> ~ <f f,>4 <f f,>8
    <f f,>4.-> ~ <f f,>4 <f f,>8
    <ges ges,>4.-^ ~ <ges ges,>4 <ges ges,>8
    <f f,>4. ~ <f f,>4 <f f,>8
    <f f,>4. bes,!8 r r
  }
  \elseTag #'quoteTromboneI \tag #'quoteTromboneII \tag #'quoteTromboneIII {
    f'2.-^ \ff
    f4.-\parenthesize-> ~ f4 f8
    f4.-> ~ f4 f8
    ges4.-^ ~ ges4 ges8
    f4. ~ f4 f8
    f4. bes,8 r r
  }

  r4 r8 bes r r
  r4 r8 bes r r
  r4 r8 b r r
  r4 r8 b r r

  \mark \default    % Mark K - mesure 196

  \bar "||"

  c2.-> \ff ~
  c4. ~ c4 g16 g
  g4.-^ ~ g8 [r16 g g8]
  g4.-^ ~ g8 [r16 g g8]
  aes2.-^ \ff ~
  aes
  aes8 r r r4 r8
  R1 * 6/8 * 11

  \bar "||"

  \mark \default    % Mark L - mesure 214

  R1 * 6/8 * 23

  \mark \default    % Mark M - mesure 237

  R1 * 6/8 * 11

  \bar "||"    % mesure 248

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaCornoIII" #UP "bass" {s4 * 0 -\tweak #'extra-offset #'(0 . -2) 
    ^\markup { \fontsize #-3 "Corni III"} R1 * 6/8 * 5}
  \oneMMRNumberOn

  R1 * 6/8
  g4.-> \f \Solo c->
  g'-> ~ g8 r c,16 c
  c8-. \ff c-. c-. r r c16 c
  c8-. c-. c-. r r c16 c
  ees8-. ees-. ees-. r4 r8
  ees-. ees-. ees-. r4 r8
  ees-. ees-. ees-. r r ees16 ees
  ees8-. ees-. ees-. r r ees16 ees
  f8-. f-. f-. r r f16 f
  f8-. f-. f-. r r f16 f
  c2.-^
  c-^

  \mark \default    % Mark N - mesure 266

  bes,4.-^ ees-^
  bes'-^ ~ bes4 bes16 bes

  \TempoIPaPAcc

  bes8 bes bes16 bes bes8 bes bes16 bes
  \noBreak
  bes8 bes bes16 bes bes8 bes g'16 \ff g
  g8-. g-. g-. g-. g-. g-.
  g-. g-. g-. g-. g-. g-.
  c,4.-> \ff g->
  aes4.-> ~ aes8 g-. c,-.
  c'2.-^ \fz
  f,-^ \fz

  \mark \default    % Mark O - mesure 276

  c'8 r r c r r
  c \ff r c r c r
  c r c r c r
  c r c r c r
  c4.-^ \ff ~ c4 d8 ~
  d g, c c c c
  c-. c-. g-. g-. c-. g-.
  c g g g \> g g \!
  g g-. g-. \dim g-. g-. g-.
  g8 \p r r r4 r8
  R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoITempoPrimo

  \once \override Voice.MultiMeasureRest #'minimum-length = #14
  R1 * 6/8 * 14

  \mark \default    % Mark Q - mesure 301

  R1 * 6/8 * 8

  \noBreak
  \TempoIPocoRit    % Mesure 309

  R1 * 6/8 * 5
  \oneMMRNumberOff
  R1 * 6/8 \fermataMarkup

  \bar "|."
}

%{
  ****************************************************************
  * Trompette II                                                 *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMaTrombaII = \relative c' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 16 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
\cueEventType  \oneMMRNumberOn

  \TempoI

  \once \override Voice.MultiMeasureRest #'minimum-length = #34
  R1 * 6/8 * 24

  \transposition d'	% Ligne à modifier pour obtenir une transposition vers une autre tonalité (bes)

  \mark \default    % Mark A - mesure 25

  R1 * 6/8 * 2

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  c4 \f r8 c4 r8
  c4 r8 c4 r8
  g'8 r r r4 r8
  R1 * 6/8
  c,8 \f r r r4 r8
  R1 * 6/8
  c8 \f r r r4 r8
  R1 * 6/8
  c8 \f r r r4 r8
  R1 * 6/8 * 4

  \mark \default    % Mark B - mesure 42

  R1 * 6/8 * 9
  g'4 \f r8 g4 r8
  g4 r8 g8 r r
  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  r4 r8 r4 g16 \ff g
  c,2. ~
  c4. ~ c8 [r16 g'-. g8-.]
  g4.-^ ~ g8 [r16 g-. g8-.]
  g4.-^ ~g8 r r
  ees2.-^ \fz
  ees-^ \fz
  aes8 r ^\markup {"[muta in B]"} r r4 r8

  \transposition bes
  R1 * 6/8 * 10

  \TempoIRit

  \once \override Voice.MultiMeasureRest #'minimum-length = #18
  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIinTempo

  R1 * 6/8 * 10

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} R1 * 6/8 * 6}
  \oneMMRNumberOn

  r8 c,-. ^\markup {"in B"} \pp c-. c4 r8
  R1 * 6/8 * 3

  \mark \default    % Mark E - mesure 93

  R1 * 6/8 * 20

  \mark \default    % Mark F - mesure 113

  R1 * 6/8 * 2

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaTromboneI" #UP "alto" {s4 * 0 ^\markup { \fontsize #-3 "Tromboni"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  R1 * 6/8
  g4 \mf r8 r4 r8
  g4 r8 r4 r8
  g4-> \cresc r8 r4 r8
  g4-> r8 r4 r8
  c'8 \f r r g, r r
  c'4. \ff g4.
  b2.->
  e,8 r r r4 r8
  R1 * 6/8
  \pageTurn

  \mark \default    % Mark G - mesure 127

  c2.-> \ff ~
  c4. ~ c4 c16 c
  r4 c16 c c'4-> \ff c,16 c
  c'4-> c,16 c c'4-> c,16 c
  c'4-> c,16 c c'4-> c,16 c
  c'8 r r r4 r8
  c8 r r r4 r8
  c8 r r r4 r8
  c8 r r c r r
  c r r c [r c]
  b r r b r r
  b r r b r r

  \mark \default    % Mark H - mesure 139

  b r r r4 r8
  R1 * 6/8 * 9

  \bar "||"    % mesure 149

  R1 * 6/8 * 8
  d,4. \f ~ d8 r d16-. d-.
  d4.-> ~ d8 r d16-. d-.
  d4.-> ~ d8 r d16-. d-.
  d4.-^ \fz ~ d4 d16-. d-.
  d4.-> ~ d4 d16-. d-.
  d4.-> ~ d4 d16-. d-.
  a'4.-> ~ a4 a16-. a-.
  b,4. \fz ~ b4 b'16-. b-.

  \mark \default    % Mark I forcé - mesure 165

  fis8 r ^\markup {"[muta in D]"} r r4 r8 |

  R1 * 6/8 * 12

  % citation rajoutée par rapport à l'édition d'origine
  \oneMMRNumberOff
  \cueDuring #"scoreSgMaCornoIII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni III IV"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  \transposition d'
  b2. \ff ^\markup {"in D"} ~
  b4. ~ b4 r8
  R1 * 6/8 * 2
  aes2.-> \ff ~
  aes

  \mark \default    % Mark J - mesure 186

  f-^ \ff
  f4.-\parenthesize-> ~ f4 f8
  f4.-> ~ f4 f8
  ges4.-^ ~ ges4 ges8
  f4. ~ f4 f8
  f4. bes8 r r
  r4 r8 bes r r
  r4 r8 bes r r
  r4 r8 b r r
  r4 r8 b r r

  \bar "||"

  \mark \default    % Mark K - mesure 196

  c2.-> \ff ~
  c4. ~ c4 g16 g
  g4.-^ ~ g8 [r16 g g8]
  g4.-^ ~ g8 [r16 g g8]
  aes2.-^ \ff ~
  aes
  aes8 r r r4 r8
  R1 * 6/8 * 11

  \bar "||"

  \mark \default    % Mark L - mesure 214

  R1 * 6/8 * 23

  \mark \default    % Mark M - mesure 237

  R1 * 6/8 * 11

  \bar "||"    % mesure 248

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaCornoIII" #UP "bass" {s4 * 0 ^\markup { \fontsize #-3 "Corno III"} R1 * 6/8 * 5}
  \oneMMRNumberOn

  R1 * 6/8
  g,4.-> \f \Solo c->
  g'-> ~ g8 r c,16 c
  c8-. c-. c-. r r c16 c
  c8-. c-. c-. r r c16 c
  ees8-. \ff ees-. ees-. r4 r8
  ees-. ees-. ees-. r4 r8
  ees-. ees-. ees-. r r ees16 ees
  ees8-. ees-. ees-. r r ees16 ees
  f8-. f-. f-. r r f16 f
  f8-. f-. f-. r r f16 f
  c2.-^
  c-^

  \mark \default    % Mark N - mesure 266

  bes4.-^ ees-^
  bes'-^ ~ bes4 bes16 bes

  \TempoIPaPAcc

  bes8 bes bes16 bes bes8 bes bes16 bes
  \noBreak
  bes8 bes bes16 bes bes8 bes g16 \ff g
  g8-. g-. g-. g-. g-. g-.
  g-. g-. g-. g-. g-. g-.
  c,4.-> \ff g'->
  aes4.-> ~ aes8 g-. c,-.
  c'2.-^ \fz
  f,-^ \fz

  \mark \default    % Mark O - mesure 276

  c8 r r c r r
  c \ff r c r c r
  c r c r c r
  c r c r c r
  c'4.-^ \ff ~ c4 d8 ~
  d g, c c c c
  c-. c-. g-. g-. c-. g-.
  c g g g \> g g \!
  g g,-. g-. \dim g-. g-. g-.
  g8 \p r r r4 r8
  R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoITempoPrimo

  \once \override Voice.MultiMeasureRest #'minimum-length = #14
  R1 * 6/8 * 14

  \mark \default    % Mark Q - mesure 301

  R1 * 6/8 * 8

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

voiceSgMaTrombaI = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Tromba I" "in D"}}
  \tag #'conductorScore \tag #'pocketScore {\set Staff.shortInstrumentName = \markup {\center-column {"Trb. I" "in D"}}}
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \SgMaTrombaI
}

voiceSgMaTrombaII = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Tromba II" "in D"}}
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \SgMaTrombaII
}

quoteScoreSgMaTrombaI = \SgMaTrombaI
quoteScoreSgMaTrombaII = \SgMaTrombaII
