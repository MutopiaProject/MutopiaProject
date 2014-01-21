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
  * Fichier de notes, Trombone I et II pour directrice                  *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ****************************************************************
  * Trombone I                                                   *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMaTromboneI = \relative c' {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \TempoI

  \repeat unfold 18 R1 * 6/8
  \partcombineApart
  R1 * 6/8
  R1 * 6/8
  \partcombineAutomatic
  \repeat unfold 4 R1 * 6/8

  \mark \default    % Mark A - mesure 25

  \repeat unfold 17 R1 * 6/8

  \mark \default    % Mark B - mesure 42

  \repeat unfold 12 R1 * 6/8

  \mark \default    % Mark C - mesure 54

  R1 * 6/8
  d2. \ff ~
  d4. ~ d8. c16-. c8-.
  a4.-^ ~ a8 [r16 c-. c8-.]
  a4.-^ ~ a8 r r
  des2. \fz
  des \fz
  ees8-. r r r4 r8
  \repeat unfold 10 R1 * 6/8

  \TempoIRit

  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  \repeat unfold 20 R1 * 6/8

  \mark \default    % Mark E - mesure 93

  \repeat unfold 20 R1 * 6/8

  \mark \default    % Mark F - mesure 113

  \repeat unfold 2 R1 * 6/8
  bes2. \pp ~
  bes4 r8 r4 r8
  \repeat unfold 6 R1 * 6/8
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
  c r r bes r d
  cis8 r r a r r
  a r r a r r

  \mark \default    % Mark H - mesure 139

  a r r r4 r8
  \repeat unfold 5 R1 * 6/8
  bes2. \ppp ~
  bes ~
  bes8 r r r4 r8
  R1 * 6/8

  \bar "||"    % mesure 149

  \key a \minor
  \repeat unfold 16 R1 * 6/8

  \mark \default    % Mark I forcé - mesure 165

  \repeat unfold 21 R1 * 6/8

  \mark \default    % Mark J - mesure 186

  \repeat unfold 6 R1 * 6/8
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
  \repeat unfold 11 R1 * 6/8

  \mark \default    % Mark L - mesure 214

  \bar "||"

  \key d \major
  \repeat unfold 23 R1 * 6/8

  \mark \default    % Mark M - mesure 237

  \repeat unfold 9 R1 * 6/8
  d2. \pp ( bes )

  \bar "||"    % mesure 248

  \key d \minor
  a4. ~ a4 r8
  \repeat unfold 6 R1 * 6/8
  \partcombineApart
  a4.-> %{\f%} d->
  \partcombineAutomatic
  a' \fz ~ a4 g8
  bes4 ( a8 ) d,4 ( f8 )
  ees4. \fz ~ ees8 r r
  ees4. ~ ees8 r r
  d4.-^ ~ d8 r r
  d4.-^ ~ d8 r r
  d4.-^ ~ d8 r r
  d4.-^ ~ d8 r r
  d2.
  f8-^ d-^ e-^ f-^ d-^ f-^

  \mark \default    % Mark N - mesure 266

  \partcombineApart
  c4.-> f->
  c'4.-> ~ c4 r8
  \partcombineAutomatic

  \TempoIPaPAcc

  R1 * 6/8
  r4 r8 r4 a,16 \ff a
  d8 \aII \aIIP f, a d f, a
  d f, a d f, a
  d4.-> c-> ~
  c2.
  b2.-> \aII
  cis-^ 

  \mark \default    % Mark O - mesure 276

  d8 \aIIP r r d r r
  d \ff r r d r r
  d r r d r r
  d r r d r r
  d4. %{\ff%} bes'-^ ~
  bes8 [a8 g] f4.
  ees8-. d-. cis-. d-. f-. e-.
  \partcombineApart
  d8 \partcombineAutomatic r r r4 r8
  \repeat unfold 3 R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  \repeat unfold 9 R1 * 6/8
  r4 r8 fis,4. \ppp ( ~
  fis g
  aes ) r4 r8
  \repeat unfold 2 R1 * 6/8

  \mark \default    % Mark Q - mesure 301

  \partcombineChords
  bes2. \pp  ~
  \slurUp
  bes ( a8 ) r r r4 r8
  \partcombineAutomatic
  \repeat unfold 5 R1 * 6/8

  \TempoIPocoRit    % Mesure 309

  \repeat unfold 5 R1 * 6/8
  \oneMMRNumberOff
  R1 * 6/8 \fermataMarkup

  \bar "|."
}
%{
  ****************************************************************
  * Trombone II                                                  *
  ****************************************************************
%}

SgMaTromboneII = \relative c {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \TempoI

  \repeat unfold 18 R1 * 6/8
  \partcombineApart
  r4 r8 r d4 \pp ~
  d8 \tweak #'staff-position #-2 r \tweak #'staff-position #-2 r
    \tweak #'staff-position #-2 r4 \tweak #'staff-position #-2 r8
  \partcombineAutomatic
  \repeat unfold 4 R1 * 6/8

  \mark \default    % Mark A - mesure 25

  \repeat unfold 17 R1 * 6/8

  \mark \default    % Mark B - mesure 42

  \repeat unfold 12 R1 * 6/8

  \mark \default    % Mark C - mesure 54

  R1 * 6/8
  d'2. \ff ~
  d4. \aII  ~ d8. e,16-. e8-.
  f4.-^ ~ f8 [r16 e-. e8-.]
  f4.-^ ~f8 r r
  bes2. \fz
  bes \fz
  c8-. r r r4 r8
  \repeat unfold 10 R1 * 6/8

  \TempoIRit

  R1 * 6/8

  \TempoIinTempo

  \mark \default    % Mark D - mesure 73

  \repeat unfold 20 R1 * 6/8

  \mark \default    % Mark E - mesure 93

  \repeat unfold 20 R1 * 6/8

  \mark \default    % Mark F - mesure 113

  \repeat unfold 2 R1 * 6/8
  g2.\pp ~
  g4 r8 r4 r8
  \repeat unfold 6 R1 * 6/8
  bes4 \f ( f8 ) c'4 ( bes8 )
  a2.
  f!8-> r r f'4.->
  fis4. \aII \aIIP ~ fis8 r r

  \mark \default    % Mark G - mesure 127

  ges,2.-^ ~
  ges4. ~ ges4 ges8
  f \ff r r bes r r
  bes \aII r r bes r r
  bes \aIIP r r bes r r
  bes r r r4 r8
  bes8  r r r4 r8
  bes8 \aII r r r4 r8
  f8 r r f r r
  fis r r g r bes
  a r r a r r
  a \aII  r r a r r

  \mark \default    % Mark H - mesure 139

  a r r r4 r8
  \repeat unfold 5 R1 * 6/8
  des,2. \ppp ~
  des ~
  des8 r r r4 r8
  R1 * 6/8

  \bar "||"    % mesure 149

  \key a \minor
  \repeat unfold 16 R1 * 6/8

  \mark \default    % Mark I forcé - mesure 165

  \repeat unfold 21 R1 * 6/8

  \mark \default    % Mark J - mesure 186

  \repeat unfold 6 R1 * 6/8
  c'4 \f r8 r4 r8
  c4 \aIIP r8 r4 r8
  cis4 \aII r8 r4 r8
  cis4  r8 r4 r8

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
  \repeat unfold 11 R1 * 6/8

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  \repeat unfold 23 R1 * 6/8

  \mark \default    % Mark M - mesure 237

  \repeat unfold 9 R1 * 6/8
  bes2. \pp (
  d, )
  \key d \minor

  \bar "||"    % mesure 248

  f4. ~ f4 r8
  \repeat unfold 6 R1 * 6/8
  \partcombineApart
  a4.-> \f d->
  \partcombineAutomatic
  f \fz ~ f4 e8
  g4 ( d8 ) a4 ( d8 )
  c4. \fz ~ c8 r r
  c4. \fz ~ c8 r r
  \repeat unfold 2 {bes4.-^ ~ bes8 r r}
  \repeat unfold 2 {b4.-^ ~ b8 r r}
  b2.
  f8-^ d-^ e-^ f-^ d-^ f-^

  \mark \default    % Mark N - mesure 266

  c'4.-> f->
  f,8 r r r4 r8

  \TempoIPaPAcc

  R1 * 6/8
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
  d \aII r r d r r
  d r r d r r
  d4. \ff ~ d4 cis8-^ ~
  cis [c-^ b-^] bes-^ a-^ aes-^
  g-. f-. e-. f-. d'-. cis!-.
  \partcombineApart
  d \partcombineAutomatic r r r4 r8
  \repeat unfold 3 R1 * 6/8

  \TempoITempoPrimo

  \mark \default    % Mark P - mesure 287

  \repeat unfold 9 R1 * 6/8
  r4 r8 d,4. \ppp ( ~
  d e
  f? ) r4 r8
  \repeat unfold 2 R1 * 6/8

  \mark \default    % Mark Q - mesure 301

  f2. \pp ~
  f ~
  f8 r r r4 r8
  \repeat unfold 5 R1 * 6/8

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
voiceSgMaTromboneIAII = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Tromboni" I+II}}
  \tag #'conductorScore \tag #'pocketScore {\set Staff.shortInstrumentName = \markup {\center-column {"Trbn." I+II}}}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "trombone"
  \key d \minor
  \clef alto
  \partcombine \SgMaTromboneI \SgMaTromboneII
}

