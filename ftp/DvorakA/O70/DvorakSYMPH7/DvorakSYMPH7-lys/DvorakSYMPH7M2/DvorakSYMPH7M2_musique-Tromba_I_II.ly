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

SgMbTrombaI = \relative c'' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 16 8)
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \transposition f'
  \once \override Voice.MultiMeasureRest #'minimum-length = #28
  R1 * 8
  r4

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMbCornoII" #UP #"bass" {s4 * 0 -\tweak #'extra-offset #'(-1 . -2 )
                                                      ^\markup { \fontsize #-3 "Corni II&IV"} r4 r2 r4}
  \oneMMRNumberOn

  <<{g2. ~}{\rightDynamic {s4 \MFp s8 s \dim}}>>

  \mark \default    % Mark A - mesure 11

  g8 \pp r r4 r2
  R1 * 20

  \mark \default    % Mark B - mesure 32

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1 r4}
  \oneMMRNumberOn

  g-. \pp ( g-. g-. )
  g8 r r4 r2
  r4 g-. \pp ( g-. g-. )
  g8 r r4 r2
  R1 * 2
  <<{a4. \f a8 g2->}{s4 s s \< s8 s8 \!}>>
  c16-> \ff c-> r8 r c c16-> c-> r8 r c
  f,16 f r8 r g ees!16 ees r8 r f
  aes16 aes r8 r ees \dim ees16 ees r8 r f
  f16 \p f r8 r ees \> ees16 ees r8 r ees \!

  \mark \default    % Mark C - mesure 44

  ees8 \pp r r4 r2
  R1 * 17

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} r2}
  \cueDuringWithClef #"scoreSgMbViola" #UP "bass" {s4 * 0 ^\markup { \fontsize #-3 "Vle"} r2}
  \oneMMRNumberOn

  \mark \default    % Mark D - mesure 63

  cis'16 \ff r8. r gis16-. cis-. r8. r4
  R1 * 20

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1}
  \oneMMRNumberOn

  f,4. \f r8 c'4 g
  d' a e' \ff b
  e,2-> f4-> a8. a16
  a4-> f-> d8 r r4
  R1

  <<{r2 g}{s2 s8.. -\tweak #'X-offset #-3 \ff
       \override DynamicLineSpanner #'staff-padding = #2 s32 -\tweak #'minimum-length #4 \< s8 s16 s \!}>>
  g2-^ \ffz e'8. \> e,32 e e16 e e e \!
  e'8. \p e,32 e e16 \dim e e e e8 \pp r r4
  \dynamicLineSpannerStandard
  R1 * 11
  \time 2/4
  R2
  \time 4/4
  R1 * 5
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
  \set Staff.minimumPageTurnLength = #(ly:make-moment 8 4)
\cueEventType  \oneMMRNumberOn

  \TempoII

  \transposition f'
  \once \override Voice.MultiMeasureRest #'minimum-length = #28
  R1 * 8
  r4

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMbCornoII" #UP #"bass" {s4 * 0 -\tweak #'extra-offset #'(-1 . -2 )
                                                      ^\markup { \fontsize #-3 "Corni II&IV"} r4 r2 r4}
  \oneMMRNumberOn

  <<{
    g2. ~

    \mark \default    % Mark A - mesure 11

    g8 r r4 r2
    }
    {\rightDynamic s4 \MFp s8 s8 \dim s4 \leftDynamic s8 \pp}
  >>

  R1 * 20

  \mark \default    % Mark B - mesure 32

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1 r4}
  \oneMMRNumberOn

  g-. \pp ( g-. g-. )
  g8 r r4 r2
  r4 g-. \pp ( g-. g-. )
  g8 r r4 r2
  R1 * 2
  <<{a'4. \f a8 g2->}{s4 s s \< s8 s8 \!}>>
  c,16-> \ff c-> r8 r c c16-> c-> r8 r c
  d16 d r8 r ees c16 c r8 r f
  aes16 aes r8 r ees \dim ees16 ees r8 r f
  f16 \p f r8 r ees \> ees16 ees r8 r ees \!

  \mark \default    % Mark C - mesure 44

  ees8 \pp r r4 r2
  R1 * 17

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} r2}
  \cueDuringWithClef #"scoreSgMbViola" #UP "bass" {s4 * 0 ^\markup { \fontsize #-3 "Vle"} r2}
  \oneMMRNumberOn

  \mark \default    % Mark D - mesure 63

  cis16 \ff r8. r gis'16-. cis,-. r8. r4
  R1 * 20

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1}
  \oneMMRNumberOn

  \override DynamicLineSpanner #'staff-padding = #2
  f4. \f r8 c4 g
  d' a e' \ff b
  e2-> f4-> a,8. a16
  a4-> f'-> d8 r r4
  R1
  <<{r2 g,}{s2 s8.. -\tweak #'X-offset #-3 \ff s32 -\tweak #'minimum-length #4 \< s8 s16 s \!}>>
  e'2-^ \ffz c'8. \> c,32 c c16 c c c \!
  c'8. \p c,32 c c16 \dim c c c c8 \pp r r4
  \dynamicLineSpannerStandard
  R1 * 11
  \time 2/4
  R2
  \time 4/4
  R1 * 5
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  *****************************************************************
  * Création des voix                                             *
  *****************************************************************
%}

voiceSgMbTrombaI = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Tromba I" "in F"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \SgMbTrombaI
}

voiceSgMbTrombaII = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Tromba II" "in F"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \SgMbTrombaII
}

quoteScoreSgMbTrombaI = \SgMbTrombaI
quoteScoreSgMbTrombaII = \SgMbTrombaII
