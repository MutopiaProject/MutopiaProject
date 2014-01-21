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
  * Fichier de notes, Cors 3 et 4, parties                              *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ************************************************************
  * Cor III                                                  *
  ************************************************************
%}

\include "Common/Version.ly"

SgMbCornoIII = \relative c'' {

  \include "Common/Properties.ly"

  %   \set Staff.minimumPageTurnLength n'est pas défini dans cette partie
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \transposition f
  R1 * 8
  r4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoIV" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni II&IV"} r4 r2 r4}
  \oneMMRNumberOn

  <<{g2. ~}{s4 \f s8 s \dim}>>

  \mark \default    % Mark A - mesure 11

  g2 \pp ~ g4 ~ g8 r
  R1 * 7

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbFagottoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Fg. I&II"} R1}
  \oneMMRNumberOn

  r4 f-- \p ( f-- ) r4
  R1
  r4 f-- \p ( f-- ) r4
  R1 * 2
  \override DynamicLineSpanner #'staff-padding = #3
  r4 g,16-. \mf \Solo c-. e-. g-. c8-. e ~ e16 \> g e c \!
  e \dim c g c g8 \p e16 c <<{g2}{s4 -\tweak #'minimum-length #5 \> s4 \!}>>
  r2 aes'8 \f r r4
  c16-> \ff c-> r8 r4 r2
  \dynamicLineSpannerStandard
  R1 * 3

  \mark \default    % Mark B - mesure 32

  \override DynamicLineSpanner #'staff-padding = #2
  <<{
    <<{g2.c8. c16}{s4 \pp \< s s8 s16 s \bindDynamics s \mf}>>
    c ( b a b ) \! <<{b2.}{s64 s64 \> s32 s16 s8 s4 s8 s16 s32 s \!}>>
    <<{g2.c8. c16}{s4 \pp \< s s8 s16 s \bindDynamics s \mf}>>
    c ( b a b ) \! <<{b2.}{s4 \> s s16 s \bindDynamics}>>
    <<{g1 ~}{s4 \pp s \> s s8 s \!}>>
  }
  {
    \override MultiMeasureRest #'stencil = ##f
    \override MultiMeasureRest #'minimum-length = #15
    \oneMMRNumberOff
    R1 * 5
    \oneMMRNumberOn
    \revert MultiMeasureRest #'stencil
    \revert MultiMeasureRest #'minimum-length
  }>>

  \dynamicLineSpannerStandard
  g8 r r4 r2
  R1
  c4-> \f \< <<{c4->}{s8 s8 \!}>> b2 \ff
  c16-> \ff c-> r8 r c c16-> c-> r8 r aes
  bes16 bes r8 r bes c16 c r8 r des
  c16 c r8 r ees \dim ees16 ees r8 r aes,
  aes16 \p aes r8 r aes \> g16 g r8 r ees \!

  \mark \default    % Mark C - mesure 44

  aes8 \pp r r4 r2
  R1 * 6

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbFlautoI" #UP {s4 * 0 \tweak #'X-offset #-4.5 ^\markup { \fontsize #-3 "Fl I"} R1}
  \oneMMRNumberOn

  r16 fis8 \pp fis fis fis16 r fis8 \< fis fis fis16 \!
  r16 fis8 fis \cresc fis \! fis16 r fis8 fis fis fis16
  r16 <<{fis8 fis ais ais16 r}{s16 \mf s8 s8 \cresc}>> b8 b a! a16
  a4-> \ff a-> gis4.-> r8
  g!4-> g-> ais-> ais->
  <<{gis2:16}{s4 s4 \dim}>> gis2:
  gis: \p \dim fisis:
  gis4 \pp r r2
  R1 * 3

  \mark \default    % Mark D - mesure 63

  b16 \ff r8. r b16-. b-. r8. r4
  R1 * 4

  \tag #'quoteCornoI {
    r2 r4 a \f \laissezVibrer
  }
  \elseTag #'quoteCornoI {
    r2 r4 a \f \> ~
  }

  <<{a1}{s8 s s4 s8. s16 \!}>>
  g4 \pp r r2
  R1 * 3
  \rightDynamic bes2 \fz \> \leftDynamic a4 ( \pp c
  b!8 ) r r4 r2
  R1 * 4
  r4 f2 \pp r4
  R1
  r4 f2 r4
  r4 ges2 \< r4 \!
  r4 ges2 \fz r4
  f2-> \ff g->
  a-> b->
  a4-^ g!8-^ c,-^ f4-^ e8-^ a-^
  d4-> c-> b8 r r4
  f16-^ \ff f-^ r8 r4 f16-^ f-^ r8 r4
  b2-> <<{g2-^}{\rightDynamic s4 \ff \< s8 s16 s \!}>>
  <<{g1-^ ~}{s4 \ffz \bindDynamics s s \> s8 s16 s \!}>>
  g4 r r2
  R1 * 5

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbOboeI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Ob I"} R1 * 2}
  \oneMMRNumberOn

  r2 c, \pp ~
  c1 ~
  c2 ~ c8 r r4
  r2 r4 c'4-> \mf
  \time 2/4
  a4-> \< aes-> \!
  \time 4/4
  g1 \f \> ~
  g8 \! r r4 r2
  R1 * 3
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  ****************************************************************
  * Cor IV                                                       *
  ****************************************************************
%}

SgMbCornoIV = \relative c {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 8 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \transposition f
  
  R1 * 8

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbViolinoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Vl 1"} r4}
  \oneMMRNumberOn

  \tag #'quoteCornoIII {
    fis8 \p ([g dis' \cresc e]) \! b ( \< [c
    a' g]) \!
  }
  \elseTag #'quoteCornoIII {
    fis,8 -\tweak #'X-offset #-4 \p ([ g dis' -\tweak #'minimum-length #6 \cresc e]) b ( \< [c
    a' g]) \!
  }

  <<{g, 2. ~}{s4 \f s8 s \dim}>>

  \mark \default    % Mark A - mesure 11

  g8 \! r r4 r2
  R1 * 13

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoIII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Cor III"} R1 * 2}
  \oneMMRNumberOn

  r2 d'8 \f r r4
  d16-> \ff d r8 r4 r2
  R1 * 3

  \mark \default    % Mark B - mesure 32

  \override DynamicLineSpanner #'staff-padding = #2.7
  <<{e2. c8. c16}{\rightDynamic s4 \pp -\tweak #'minimum-length #8 \< s s8 s16 s s \mf}>>
  \polyNeutral {
    \dynamicSpannerOff
    \once \override DynamicText #'stencil = ##f s4 \f -\tweak #'minimum-length #6 \> s s
    -\tweak #'minimum-length #6 \dim s4 \!
  }{c1}
  <<{e2. c8. c16}{\rightDynamic s4 \pp -\tweak #'minimum-length #8 \< s s8 s16 s s \mf}>>
  <<{c1}  {s4 -\tweak #'minimum-length #7 \> s8 s16 s \!} >>
  <<{c1 ~}{\rightDynamic s4 \pp -\tweak #'minimum-length #7 \> s s s8 s \!}>>
  \dynamicLineSpannerStandard
  c8 r r4 r2
  R1
  a'4-> \f \< <<{f4->}{s8 s8 \!}>> d2 \ff
  c16-> \ff c-> r8 r c aes'16-> aes-> r8 r f
  bes16 bes r8 r ees, aes16 aes r8 r des,
  f16 f r8 r ees \dim aes16 aes r8 r des,
  d!16 \p d r8 r ees \> ees16 ees r8 r ees \!

  \mark \default    % Mark C - mesure 44

  ees8 \pp r r4 r2
  R1 * 7

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoIII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Cor III"} R1 * 2}
  \oneMMRNumberOn

  r16 <<{d8 d fis! fis16 r}{s16 \mf s8 s8 \cresc}>> fis8 fis fis fis16
  fis4-> \ff fis-> eis4.-> r8
  e!4-> e-> e-> cis->
  \override DynamicLineSpanner #'staff-padding = #2.4
  <<{gis'2:16}{s4 s4 \dim}>> cis,2:
  dis: \p \dim dis:
  dis4 \pp r r2
  \dynamicLineSpannerStandard
  R1 * 3

  \mark \default    % Mark D - mesure 63

  b16 \ff r8. r gis'16-. gis-. r8. r4
  R1 * 4
  r2 r4 b, \f \> ~
  <<{b1}{s8 s s4 s8. s16 \!}>>
  c1 \pp (
  g1 )
  c4 r r2
  R1
  \rightDynamic g'2 \fz \> \leftDynamic f2 \pp ~
  f8 r r4 r2
  R1 * 4
  r4 f,2 \pp r4
  R1
  r4 f2 r4
  r4 ges2 \< r4 \!
  r4 ges2 \fz r4
  f2-> \ff g->
  a-> b->
  a'4-^ g!8-^ c,-^ f4-^ e8-^ a-^
  d4-> f,-> f8 r r4
  d16-^ \ff d-^ r8 r4 d16-^ d-^ r8 r4
  f2-> <<{g,2-^}{\rightDynamic s4 \ff \< s8 s16 s \!}>>
  <<{g1-^ ~}{s4 \ffz \bindDynamics s s \> s8 s16 s \!}>>
  g4 r r2
  R1 * 5

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbOboeI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Ob I"} R1 * 2}
  \oneMMRNumberOn

  r2 c, ^\pp ~
  c1 ~
  c2 ~ c8 r r4
  R1
  \time 2/4
  R2
  \time 4/4
  c'1 \f \> ~
  c8 \! r r4 r2
  R1 * 3
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}


voiceSgMbCornoIII = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno III" "in F"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMbCornoIII
}

voiceSgMbCornoIV = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno IV" "in F"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMbCornoIV
}

quoteScoreSgMbCornoIII = \SgMbCornoIII
quoteScoreSgMbCornoIV = \SgMbCornoIV
