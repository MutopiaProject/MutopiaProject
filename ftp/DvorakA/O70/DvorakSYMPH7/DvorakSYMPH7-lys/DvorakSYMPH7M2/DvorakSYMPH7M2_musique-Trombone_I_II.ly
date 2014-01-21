%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement II - Poco Adagio                          *
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

SgMbTromboneI = \relative c' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \once \override MultiMeasureRest #'minimum-length = #30
  R1 * 8
  r4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoII" #UP {s4 * 0 -\tweak #'extra-offset #'(-1 . -1.3 )^\markup { \fontsize #-3 "Corni II&IV"} r4 r2 r4}
  \oneMMRNumberOn

  <<{a2. ~}{\rightDynamic s4 \fp \> s4 s8 s16 s16 \!}>>

  \mark \default    % Mark A - mesure 11

  a8 \pp r r4 r2
  R1 * 20

  \mark \default    % Mark B - mesure 32

  R1 * 6

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoII" #UP {s4 * 0 ^\markup { \fontsize #-3 "Corno II"} R1 r2}
  \oneMMRNumberOn

  <<
    {c8.-> c16 bes8-> g->}
    {\rightDynamic s16 \f \bracketedHairpin s32 \< s32 s8 s8 s8 \!}
  >>
  \leftDynamic f'2. \ff ees8 ( des )
  bes4 ( c ) des2
  <<
    {
      des4 ( ees ) f ( des ) ~ des aes ( c4. bes8

      \mark \default    % Mark C - mesure 44

      des8 ) r r4 r2
    }
    {s4 s8 s8 \dim s4 s4 \! s4 \p s8 s8 \> s4 s8 s8 \! s8 \pp}
  >>
  R1 * 8
  r2 r4

  \oneMMRNumberOff
  \transposedCueDuring #"scoreSgMbViolinoI" #UP c,, {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} r4 R1}
  \oneMMRNumberOn

  fis2 \fz e \fz
  dis \fz bis \fz
  cis4 r r2
  R1
  cis1 \ppp
  cis2 ( d )
  cis ( b )
  <<{c2 ( cis )}{s4 s4 s4 \< s8 s16 s16 \!}>>

  \mark \default    % Mark D - mesure 63

  cis16 \f r8. r cis16-. cis-. r8. r4
  R1 * 21

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMbCornoII" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Corni I&II"} R1 r2}
  \oneMMRNumberOn

  e2 \f
  f4 ees8 ( c ) f, ( d' ) c4->
  bes-> des-> bes8 r r4
  R1
  <<{c2 c8-^ bes-^ g-^ c-^}{s4 \ff s4 s4 \< s8 s16 s }>>
  <<{f1-^ ~}{s4 \ffz \bindDynamics s4 s4 -\tweak #'minimum-length #4 \> s8 s16 s16 \!}>>
  f4 r r2
  R1 * 11
  \time 2/4
  R2
  \time 4/4
  R1 * 5
  \oneMMRNumberOff
  R1 ^\fermataMarkup
  \bar "|."
}

%{
  *****************************************************************
  * Trombone II                                                   *
  *****************************************************************
%}

SgMbTromboneII = \relative c {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \once \override MultiMeasureRest #'minimum-length = #28
  R1 * 8
  r4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoII" #UP {s4 * 0 -\tweak #'extra-offset #'(-1 . -1.5 )
                                      ^\markup { \fontsize #-3 "Corni II&IV"} r4 r2 r4}
  \oneMMRNumberOn

  <<{f2. ~}{s4 \fp \> s4 s8 s16 s16 \!}>>

  \mark \default    % Mark A - mesure 11

  f8 \pp r r4 r2
  R1 * 7
  r4 des-- \pp ( des-- ) r
  R1
  r4 des-- \pp ( des-- ) r
  R1 * 10

  \mark \default    % Mark B - mesure 32

  R1 * 6

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoII" #UP {s4 * 0 ^\markup { \fontsize #-3 "Corno II"} R1 r2}
  \oneMMRNumberOn

  \rightDynamic \bracketedHairpin c'8.-> \f -\tweak #'extra-offset #'(2 . 0 ) \< c16 bes8-> <<{g->}{s16 s16 \!}>>
  \leftDynamic aes2. \ff g8 ( f )
  g4 ( aes ) f ( bes )
  <<
    {
      s4 s8 \once \override DynamicText #'stencil = ##f
      s8 \p \dim s4 s4 \! s4 \p s8 s8 \> s4 s8 s8 \! s8 \pp
    }
    {bes4 ( c ) aes ( bes ) ~ bes f ( ges2 )

    \mark \default    % Mark C - mesure 44

    f8 r r4 r2}
  >>
  R1 * 8
  r2 r4

  \oneMMRNumberOff
  \transposedCueDuring #"scoreSgMbViolinoI" #UP c,, {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} r4 R1}
  \oneMMRNumberOn

  \override DynamicLineSpanner #'staff-padding = #2
  fis2 \fz e \fz
  dis \fz bis \fz
  \dynamicLineSpannerStandard
  cis4 r r2
  R1
  gis'2 \ppp ( a )
  ais2 ( b )
  ais ( g! )
  <<{bes!2 ( a )}{s4 s4 s4 \< s8 s16 s16 \!}>>

  \mark \default    % Mark D - mesure 63

  ais16 \f r8. r a16-. ais-. r8. r4
  R1 * 21

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMbCornoII" #DOWN "treble" {s4 * 0 ^\markup { \fontsize #-3 "Corni I&II"} R1 r2}
  \oneMMRNumberOn

  a4-> \f bes!->
  a2 f4-> fis->
  g-> f-> g8 r r4
  R1
  <<{c2 c8-^ bes-^ g-^ c-^}{s4 \ff s4 s4 \< s8 s16 s}>>
  <<{a1-^ ~}{s4 \ffz \bindDynamics s4 s4 \> s8 s16 s16 \!}>>
  a4 r r2
  R1 * 11
  \time 2/4
  R2
  \time 4/4
  R1 * 5
  \oneMMRNumberOff
  R1 ^\fermataMarkup
  \bar "|."
}

%{
  *****************************************************************
  * Création des voix                                             *
  *****************************************************************
%}

voiceSgMbTromboneI = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombone" I}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "trombone"
  \key f \major
  \clef bass
  \SgMbTromboneI
}

voiceSgMbTromboneII = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombone" II}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "trombone"
  \key f \major
  \clef bass
  \SgMbTromboneII
}

quoteScoreSgMbTromboneI = \SgMbTromboneI
quoteScoreSgMbTromboneII = \SgMbTromboneII
