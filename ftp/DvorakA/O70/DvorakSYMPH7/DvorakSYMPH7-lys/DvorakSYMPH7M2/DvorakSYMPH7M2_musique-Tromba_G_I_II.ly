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
  * Fichier de notes, Trompettes 1 et 2, directrice                     *
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

SgMbTrombaI = \relative c'' {

  \include "Common/Properties.ly"

  \TempoII

  \transposition f'
  \repeat unfold 9 R1
  <<{r4 g2. ~}{s4 s4 \MFp s8 s \dim}>>

  \mark \default    % Mark A - mesure 11

  g8 \pp r r4 r2
  \repeat unfold 20 R1

  \mark \default    % Mark B - mesure 32

  R1
  r4 g-. \pp ( g-. g-. )
  g8 r r4 r2
  r4 g-. \pp ( g-. g-. )
  g8 r r4 r2
  \repeat unfold 2 R1
  \partcombineApart
  a4. a8 g2->
  \partcombineAutomatic
  c16-> \ff c-> r8 r c c16-> c-> r8 r c
  f,16 f r8 r g ees!16 ees r8 r f
  aes16 aes r8 r ees \dim ees16 ees r8 r f
  f16 \p f r8 r ees \> ees16 ees r8 r ees \!

  \mark \default    % Mark C - mesure 44

  ees8 \pp r r4 r2
  \repeat unfold 18 R1

  \mark \default    % Mark D - mesure 63

  cis'16 \ff r8. r \partcombineApartOnce gis16-. cis-. r8. r4
  \repeat unfold 21 R1
  \partcombineApartOnce f,4. r8 c'4 g
  d' a e' \ff b
  \partcombineApartOnce e,2-> \partcombineApartOnce f4-> a8. a16
  a4-> \partcombineApartOnce f-> \partcombineApartOnce d8 r r4
  R1
  <<{r2 g}{s2 \once \override Voice.DynamicText #'X-offset = #-2 s4 \ff \< s8 s16 s \!}>>
  g2-^ \ffz e'8. \> e,32 e e16 e e e \!
  e'8. \p e,32 e e16 \dim e e e e8 \pp r r4
  \repeat unfold 11 R1
  \time 2/4
  R2
  \time 4/4
  \repeat unfold 5 R1
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  *****************************************************************
  * Trompette II                                                  *
  *****************************************************************
%}

SgMbTrombaII = \relative c'{

  \include "Common/Properties.ly"

  \TempoII

  \transposition f'
  \repeat unfold 9 R1
  <<{r4 g2. ~}{s4 s4 \MFp s8 s \dim}>>

  \mark \default    % Mark A - mesure 11

  g8 \pp r r4 r2
  \repeat unfold 20 R1

  \mark \default    % Mark B - mesure 32

  R1
  r4 \once \override Voice.DynamicText #'X-offset = #-4 g-. \pp ( g-. g-. )
  g8 r r4 r2
  r4 \once \override Voice.DynamicText #'X-offset = #-4 g-. \pp ( g-. g-. )
  g8 r r4 r2
  \repeat unfold 2 R1
  \partcombineApart
  <<{a'4. \f a8 g2->}{s4 s s \< s8 s8 \!}>>
  \partcombineAutomatic
  c,16-> \ff c-> r8 r c c16-> c-> r8 r c
  d16 d r8 r ees c16 c r8 r f
  aes16 aes r8 r ees \dim ees16 ees r8 r f
  f16 \aIIP \p f r8 r ees \> ees16 ees r8 r ees \!

  \mark \default    % Mark C - mesure 44

  ees8 \aII \pp r r4 r2
  \repeat unfold 18 R1

  \mark \default    % Mark D - mesure 63

  cis16 \ff r8. r \partcombineApartOnce gis'16-. cis,-. r8. r4
  \repeat unfold 21 R1
  \partcombineApartOnce f4. \f r8 c4 g
  d' a e' \ff b
  \partcombineApartOnce e2-> \partcombineApartOnce f4-> a,8. a16
  a4-> \partcombineApartOnce f'-> \partcombineApartOnce d8 r r4
  R1
  <<{r2 g,}{s2 \once \override Voice.DynamicText #'X-offset = #-2 s4 \ff \< s8 s16 s \!}>>
  e'2-^ \ffz c'8. \> c,32 c c16 c c c \!
  c'8. \p c,32 c c16 \dim c c c c8 \pp r r4
  \repeat unfold 11 R1
  \time 2/4
  R2
  \time 4/4
  \repeat unfold 5 R1
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMbTrombaIAII = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Trombe (F)" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Trb. (F)" I+II}}
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \partcombine \SgMbTrombaI \SgMbTrombaII
}

