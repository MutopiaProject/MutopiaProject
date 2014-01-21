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
  * Fichier de notes, Trompette I et II, directrice                     *
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

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \transposition d'

  \TempoI

  \repeat unfold 24 R1 * 6/8

  \mark \default    % Mark A - mesure 25

  \repeat unfold 2 R1 * 6/8
  \repeat unfold 2 R1 * 6/8	% insérer ici une citation du violon I
  c4 \f r8 c4 r8
  c4 r8 c4 r8
  \partcombineApartOnce g8 r r r4 r8
  R1 * 6/8
  \partcombineApartOnce c,8 r r r4 r8
  R1 * 6/8
  \partcombineApartOnce c8 r r r4 r8
  R1 * 6/8
  c'8 \f r r r4 r8
  \repeat unfold 4 R1 * 6/8

  \mark \default    % Mark B - mesure 42

  \repeat unfold 9 R1 * 6/8
  \partcombineApartOnce g4 r8 \partcombineApartOnce g4 r8
  \partcombineApartOnce g4 r8 \partcombineApartOnce g8 r r
  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  r4 r8 r4 \partcombineApart g16 g
  c2. ~
  c4. ~ c8 [
  \footnote \markup {"(3)"} #'(0 . -3.4) \markup {\italic
    "3 - Rest according to N. Simrock 1885 and our reference O. Šourek"}
    \tweak #'staff-position #0 r16 g-. g8-.]
  g4.-^ ~ g8 [r16 g-. g8-.]
  g4.-^ ~ g8 \partcombineAutomatic r r
  ees'2.-^ \fz
  ees-^ \fz
  \partcombineApartOnce aes,8 r ^\markup {"[muta in B]"} r r4 r8

  \transposition bes
  \set Staff.shortInstrumentName = \markup {\center-column {"Trb (B)" I+II}}
  \repeat unfold 10 R1 * 6/8

  \TempoIRit

  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  \repeat unfold 16 R1 * 6/8
  r8 c-. ^\markup {"in B"} \pp c-. c4 r8
  \repeat unfold 3 R1 * 6/8

  \mark \default    % Mark E - mesure 93

  \repeat unfold 20 R1 * 6/8

  \mark \default    % Mark F - mesure 113

  \repeat unfold 5 R1 * 6/8
  g4 \mf r8 r4 r8
  g4 r8 r4 r8
  g4-> \cresc r8 r4 r8
  g4-> r8 r4 r8
  \partcombineApartOnce \once \override DynamicText #'stencil = ##f c8 \f r r g r r
  \partcombineApartOnce \once \override DynamicText #'stencil = ##f c4. \ff \partcombineApartOnce g4.
  b2.->
  e8 r r r4 r8
  R1 * 6/8

  \mark \default    % Mark G - mesure 127

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
  \repeat unfold 9 R1 * 6/8

  \bar "||"    % mesure 149

  \repeat unfold 8 R1 * 6/8
  \partcombineApart
  \repeat unfold 3 R1 * 6/8
  r4 r8 r4 \once \override Voice.DynamicText #'extra-offset = #'(-2.5 . -2) d16-. ^\f d-.
  \partcombineAutomatic
  d4.-> ~ d4 d16-. d-.
  d4.-> ~ d4 d16-. d-.
  e4.-> ~ e4 e16-. e-.
  b4. \fz ~ b4 \partcombineApart b16-. b-.

  \mark \default    % Mark I forcé - mesure 165

  fis8 \partcombineAutomatic r ^\markup {"muta in D"} r r4 r8 |

  \transposition d'
  \set Staff.shortInstrumentName = \markup {\center-column {"Trb (D)" I+II}}
  \repeat unfold 14 R1 * 6/8
  b2. \ff ^\markup {"in D"} ~
  b4. ~ b4 r8
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  aes2.-> %{\ff%} ~
  aes
  \partcombineAutomatic

  \mark \default    % Mark J - mesure 186

  f'-^ \ff
  f4.-\parenthesize-> ~ f4 f8
  f4.-> ~ f4 f8
  ges4.-^ ~ ges4 ges8
  f4. ~ f4 f8
  f4. bes,8 r r
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
  \repeat unfold 11 R1 * 6/8

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \repeat unfold 23 R1 * 6/8

  \mark \default    % Mark M - mesure 237

  \repeat unfold 11 R1 * 6/8

  \bar "||"    % mesure 248

  \repeat unfold 6 R1 * 6/8
  g4.-> \f \Solo c->
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

  bes,4.-^ ees-^
  bes'-^ ~ bes4 bes16 bes

  \TempoIPaPAcc

  bes8 bes bes16 bes bes8 bes bes16 bes
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
  c g[g] g \> g g \!
  \partcombineApartOnce g g[-. g]-. \dim g-. g-. g-.
  g8 \p r r r4 r8
  R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  \repeat unfold 14 R1 * 6/8

  \mark \default    % Mark Q - mesure 301

  \repeat unfold 8 R1 * 6/8

  \TempoIPocoRit    % Mesure 309

  \repeat unfold 5 R1 * 6/8
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

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \transposition d'

  \TempoI

  \repeat unfold 24 R1 * 6/8

  \mark \default    % Mark A - mesure 25

  \repeat unfold 4 R1 * 6/8
  c4 \f r8 c4 r8
  c4 r8 c4 r8
  \partcombineApartOnce g'8 r r r4 r8
  R1 * 6/8
  \partcombineApartOnce c,8 \f r r r4 r8
  R1 * 6/8
  \partcombineApartOnce c8 \f r r r4 r8
  R1 * 6/8
  c8 \f r r r4 r8
  \repeat unfold 4 R1 * 6/8

  \mark \default    % Mark B - mesure 42

  \repeat unfold 9 R1 * 6/8
  \partcombineApartOnce g'4 \f r8 \partcombineApartOnce g4 r8
  \partcombineApartOnce g4 r8 \partcombineApartOnce g8 r r
  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  r4 r8 r4 \partcombineApartOnce g16 \ff \partcombineApartOnce g
  \voiceOne
  \tieDown
  \ignoreNoteCollision
  \once \override Stem #'length = #8 c,2. ~
  \once \override Stem #'length = #8 c4. ~ \voiceTwo \tieUp c8 [s16 g'-. g8-.]
  \notifyNoteCollision
  \tieDown
  g4.-^ ~ g8 [s16 g-. g8-.]
  g4.-^ ~ g8 r r
  ees2.-^ \fz
  ees-^ \fz
  \partcombineApartOnce aes8 r ^\markup {"[muta in B]"} r r4 r8

  \transposition bes
  \set Staff.shortInstrumentName = \markup {\center-column {"Trb (B)" I+II}}
  \repeat unfold 10 R1 * 6/8

  \TempoIRit

  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  \repeat unfold 16 R1 * 6/8
  r8 c,-. \pp c-. c4 r8
  \repeat unfold 3 R1 * 6/8

  \mark \default    % Mark E - mesure 93

  \repeat unfold 20 R1 * 6/8

  \mark \default    % Mark F - mesure 113

  \repeat unfold 5 R1 * 6/8
  g4 \mf r8 r4 r8
  g4 r8 r4 r8
  g4-> \cresc r8 r4 r8
  g4-> r8 r4 r8
  \partcombineApartOnce c'8 \f r r g, r r
  \partcombineApartOnce c'4. \ff \partcombineApartOnce g4.
  \partcombineApartOnce b2.->
  e,8 r r r4 r8
  R1 * 6/8

  \mark \default    % Mark G - mesure 127

  c2.-> \ff ~
  c4. ~ c4 c16 c
  r4 c16 c c'4-> \ff c,16 c
  c'4-> \aII c,16 c c'4-> c,16 c
  c'4-> \aIIP c,16 c c'4-> c,16 c
  c'8 r r r4 r8
  c8  r r r4 r8
  c8 \aII r r r4 r8
  c8 r r c r r
  c r r c r c
  b \aIIP r r b r r
  b \aII  r r b r r

  \mark \default    % Mark H - mesure 139

  b r r r4 r8
  \repeat unfold 9 R1 * 6/8

  \bar "||"    % mesure 149

  \repeat unfold 8 R1 * 6/8
  \partcombineApart
  \tieDown
  \override Rest #'staff-position = #-5
  d,4. \f ~ d8 r d16-. d-.
  d4.-> ~ d8 r d16-. d-.
  d4.-> ~ d8 r d16-. d-.
  d4.-^ \fz ~ d4 d16-. d-.
  \partcombineAutomatic
  d4.-> ~ d4 d16-. d-.
  d4.-> ~ d4 d16-. d-.
  a'4.-> ~ a4 a16-. a-.
  b,4. \fz ~ b4 \partcombineApart b'16-. b-.

  \mark \default    % Mark I forcé - mesure 165

  fis8 \partcombineAutomatic r ^\markup {"[muta in D]"} r r4 r8 |

  \transposition d'
  \set Staff.shortInstrumentName = \markup {\center-column {"Trb (D)" I+II}}
  \repeat unfold 14 R1 * 6/8
  b2. \ff ^\markup {"in D"} ~
  b4. ~ b4 r8
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  aes2.-> \ff ~
  aes
  \partcombineAutomatic

  \mark \default    % Mark J - mesure 186

  f-^ \ff
  f4.-\parenthesize-> ~ f4 f8
  f4.-> ~ f4 f8
  ges4.-^ ~ ges4 ges8
  f4. ~ f4 f8
  f4. bes8 r r
  r4 r8 bes r r
  r4 r8 bes \aIIP r r
  r4 r8 b \aII r r
  r4 r8 b  r r

  \bar "||"

  \mark \default    % Mark K - mesure 196

  c2.-> \ff ~
  c4. ~ c4 g16 g
  g4.-^ ~ g8 [r16 g g8]
  g4.-^ \aII ~ g8 [r16 g g8]
  aes2.-^ \ff ~
  aes 
  aes8 r r r4 r8
  \repeat unfold 11 R1 * 6/8

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \repeat unfold 23 R1 * 6/8

  \mark \default    % Mark M - mesure 237

  \repeat unfold 11 R1 * 6/8

  \bar "||"    % mesure 248

  \repeat unfold 6 R1 * 6/8
  g,4.-> \f c->
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
  bes8 bes bes16 bes bes8 bes g16 \ff g
  g8-. g-. g-. g-. g-. g-.
  g-. g-. g-. g-. g-. g-.
  c,4.-> \ff g'->
  aes4.-> ~ aes8 g-. c,-.
  c'2.-^ \aII \fz
  f,-^  \fz

  \mark \default    % Mark O - mesure 276

  c8 r r c r r
  c \ff r c r c r
  c r c r c r
  c r c r c r
  c'4.-^ \ff ~ c4 d8 ~
  d g, c c c c
  c-. \aII \aIIP c-. g-. g-. c-. g-.
  c g[g] g \> g g \!
  g g,[-. g]-. \dim g-. g-. g-.
  g8 \p r r r4 r8
  R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  \repeat unfold 14 R1 * 6/8

  \mark \default    % Mark Q - mesure 301

  \repeat unfold 8 R1 * 6/8

  \TempoIPocoRit    % Mesure 309

  \repeat unfold 5 R1 * 6/8
  \oneMMRNumberOff
  R1 * 6/8 \fermataMarkup

  \bar "|."
}
%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}
voiceSgMaTrombaIAII = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombe (D)" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Trb. (D)" I+II}}
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \partcombine \SgMaTrombaI \SgMaTrombaII
}

