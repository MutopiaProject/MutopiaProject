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
  * Fichier de notes, Cors 1 et 2, parties                              *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Cor I                                                         *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMbCornoI = \relative c'' {

  \include "Common/Properties.ly"

  %   \set Staff.minimumPageTurnLength n'est pas défini dans cette partie
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \transposition f
  R1 * 8
  r4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoII" #DOWN {s4 * 0 -\tweak #'extra-offset #'(0.5 . -1.5 )
                                        ^\markup { \fontsize #-3 "Corni II&IV"} r4 r2 r4}
  \oneMMRNumberOn

  <<{e2. ~}{s4 \f s8 s \dim}>>

  \mark \default    % Mark A - mesure 11

  \leftDynamic e8 \pp r r4 r2
  R1 * 2
  r4 bes2. \p
  a4 ( bes b!2 )
  <<{c4 c2.}{s4 s -\tweak #'minimum-length #6 \< s s \!}>>
  b4 -\tweak #'minimum-length #6 \< c \f d r
  R1 * 2

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoIII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno III"} R1 * 3}
  \oneMMRNumberOn

  r4 aes2. \pp ~
  <<{aes8 ( g4 b! c d8 ) ~}{s4 s \cresc s s \!}>>
  <<{d8 dis e2. ~}{s4 \rightDynamic s8 \f \bindDynamics s4 \> s4 s16 s \!}>>
  e8 r r4 r2
  r2 c8 \f r r4
  f16-> \ff f-> r8 r4 r2
  R1 * 3

  \mark \default    % Mark B - mesure 32

  e8. \p -\tweak #'X-offset #1.2 \Solo ( c16 g4 ) ~ g16 \< c ( d32 c b c f8. \bracketedMF ) e16
  e16 ( d c d ) <<{d2.}{s4 \> s s8 s \!}>>
  e8. ( \p c16 g4 ) ~ g16 \< c ( d32 c b c f8. \bracketedMF ) e16
  e16 ( d c d ) <<{d2.}{s4 \> s s \!}>>
  <<{e1 ~}{\rightDynamic s4 \pp s4 \> s s8 s16 s \!}>>
  e8 r r4 r2
  R1
  e4 ( \f \< <<{f4-> )}{s8 s8 \!}>> f2 \ff
  ees16-> \ff ees-> r8 r8 ees ees16-> ees-> r8 r c
  d16 d r8 r ees ees16 ees r8 r f
  f16 f r8 r bes, \dim c16 c r8 r des \!
  c16 \p c r8 r c \> des16 des r8 <<{r8 des!}{s16 s32 s64 s \!}>>

  \mark \default    % Mark C - mesure 44

  c8 \pp r r4 r2
  c4 \pp ( bes8. \< aes16 ees2 ) \! ~
  ees8 c-> \mf ees[-> aes] des16 ( \dim c aes ees ) bes' \( aes ees'8 (
  dis8 ) \)\p \> e!4 ( fis16 gis ) dis8 ( b ais4 \!
  b4 ) r r2
  R1 * 3
  r16 a8 \pp a a a16 r a8 a \< a \! a16
  r16 ais8 ais \cresc ais ais16 r16 ais8 ais ais ais16
  <<{r16 ais8 \mf ais d d16 ~ d d8 d d d16}{s4 s4 \cresc}>>
  cis4-> \ff a-> gis4.-> r8
  g'!4-> \bracketedFF g,!-> ais-> e'->

  \tag #'quoteTimpani {
    <<{dis2:16 e:}{s4 -\tweak #'stencil ##f \f s4 \dim s4 \!}>>
    <<{dis2: dis:}{s4 \p \dim s \! }>>
  }
  \elseTag #'quoteTimpani {
    <<{dis2:16 e:}{s4 s4 \dim}>>
    dis2: \p \dim dis:
  }

  dis4 \pp r r2
  R1 * 3

  \mark \default    % Mark D - mesure 63

  des16 \ff r8. r e!16-. f-. r8. r4
  R1 * 4
  r2 r4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoIII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno III"} r4}
  \oneMMRNumberOn

  \override DynamicLineSpanner #'staff-padding = #2
  <<{b,1}{\rightDynamic s8 \fp \bindDynamics s -\tweak #'minimum-length #4 \> s4 s8. s16 \!}>>
  c1 \pp ~
  \bracketedHairpin c2 \> ( ~ c8 b a b \!
  \dynamicLineSpannerStandard
  c4 ) r r2
  R1
  \rightDynamic cis2 \fz \> ( \leftDynamic d ) \pp ~
  d8 r r4 r2
  R1 * 2
  r2 r4 d8.. ( \p -\tweak #'minimum-length #6 \> ees32
  f8 \pp ) r8 r4 r2
  R1
  r4 c2 \pp r4
  R1 * 2
  r4 r8 \rightDynamic des8 \mf \< ( c d! ) \! \times 2/3 {ees8 ( e f )}
  bes,16-^ \ff bes-^ r8 r b!-^ c16-^ c-^ r8 r cis-^
  d16-^ d-^ r8 r dis8 e4 ( \ff ~ e16 f e d! )
  d ( c b c ) cis ( d c! bes ) bes ( a gis a ) c! ( bes! a g! )
  g ( f e f ) aes ( f d' c ) b?8 r r4
  b16-^ \ff b-^ r8 r4 c16-^ c-^ r8 r4
  d2-> <<{f2->}{\once \override Voice.DynamicText #'X-offset = #-2.5 s4 \ff \< s8 s16 s \!}>>
  <<{e1-^ ~}{s4 \ffz s s \> s8 s16 s \!}>>
  <<{e2 e8. e,32 e e16 e e e}{s4 \mp s \dim s \!}>>
  <<{e'8 ( c16 b32 c e,8 a ) g4 ( a )}{s4 \p s \> s s8 s16 s \!}>>
  e'8 \pp ( c16 b32 c e,8 \dim a ) g4 ( a
  g ) r r2
  R1
  r4 c2. \pp ~
  c2. ~ c8 r
  R1 * 4
  r2 r4 c \mf
  \time 2/4
  d-> \< c-> \!
  \time 4/4
  \hairpinToBarLineFalse
  e1 \f \> ~
  e8 \! r r4 r2
  R1
  r2 e \pp ~
  e r
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  *****************************************************************
  * Cor II                                                        *
  *****************************************************************
%}

SgMbCornoII = \relative c {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 8 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \transposition f
  \once \override Voice.MultiMeasureRest #'minimum-length = #29
  R1 * 8

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbViolinoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Vl 1"} r4}
  \oneMMRNumberOn

  fis8 ^\p ([g \dynamicSpannerOff dis' ^\cresc e]) \! b [ ( ^\< c

  \tag #'quoteFlautoI \tag #'quoteFlautoII \tag #'quoteOboeI \tag #'quoteContrabasso \tag #'quoteCornoI
    \tag #'quoteTrombaI \tag #'quoteTrombaII \tag #'quoteTromboneI \tag #'quoteTromboneII \tag #'quoteTromboneIII
    \tag #'quoteTimpani {
    a' \! g]) <<{c2. ~}{s4 ^\f s8 s ^\dim}>>
  }
  \elseTag #'quoteFlautoI \elseTag #'quoteFlautoII \elseTag #'quoteOboeI \elseTag #'quoteContrabasso
    \elseTag #'quoteCornoI \elseTag #'quoteTrombaI \elseTag #'quoteTrombaII \elseTag #'quoteTromboneI
    \elseTag #'quoteTromboneII \elseTag #'quoteTromboneIII \elseTag #'quoteTimpani {
    a g]) \bindDynamics <<{c2. ~}{s4 ^\f s8 s -\tweak #'minimum-length #6 ^\dim}>>
  }

  \mark \default    % Mark A - mesure 11

  \leftDynamic c8 ^\pp r r4 r2
  R1 * 2
  r4 g2. \p
  f1 \pp
  <<{g4 c,2.}{s4 s \< s s \!}>>
  d4 \< aes' \f f r
  R1 * 9
  \oneMMRNumberOff
  \cueDuring #"scoreSgMbFagottoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Fl, Cl, Fg"} r2}
  \oneMMRNumberOn

  f8 \f r r4
  aes16-> \ff aes-> r8 r4 r2
  R1 * 3

  \mark \default    % Mark B - mesure 32

  r2 r4 a8. \mf g16
  f4 \p <<{f2.}{s4 \> s s8 s \!}>>
  r2 r4 a8. \mf g16
  f4 \p <<{f2.}{s4 \> s s \!}>>
  <<{c'1 -\tweak #'minimum-length #8 ~}{s4 -\pp \bindDynamics s4 \> s s8 s16 s \!}>>
  c8 r r4 r2
  \override DynamicLineSpanner #'staff-padding = #2
  r4 g8 \p \< ( c ) g ( c g c ) \!
  a4. \f \< a8-> \! g2 \ff
  g16-> \ff g-> r8 r8 g aes16-> aes-> r8 r aes
  \dynamicLineSpannerStandard
  bes16 bes r8 r g aes16 aes r8 r aes
  aes16 aes r8 r g \dim aes!16 aes r8 r f \!
  f16 \p f r8 r aes \> bes16 bes r8 <<{r8 des!}{s16 s32 s64 s \!}>>

  \mark \default    % Mark C - mesure 44

  c8 \pp r r4 r2
  R1 * 6

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbFlautoI" #UP {s4 * 0 \tweak #'X-offset #-4.5 ^\markup { \fontsize #-3 "Fl I"} R1}
  \oneMMRNumberOn

  r16 d,8 \pp d d d16 r d8 d \< d \! d16
  r16 d8 d \cresc d d16 r16 d8 d d d16
  <<{r16 d8 \mf d d d16 ~ d d8 d d d16}{s4 s4 \cresc}>>
  cis4-> \ff fis-> eis4.-> r8
  e'!4-> \bracketedFF e,!-> e-> ais!->

  \tag #'quoteTromboneIII {
  <<{<gis b dis>2:16 <cis, gis' ais e'>:}{s2 -\tweak #'stencil ##f \p s \dim}>>
    <dis gis b dis>2: \p \dim <dis fisis ais dis>: \!
    gis'4 \pp r r2
  }
  \elseTag #'quoteTromboneIII {
  <<{b2:16 ais:}{s4 s4 \dim}>>
    b2: \p \dim ais:
    gis,4 \pp r r2
  }

  R1 * 3

  \mark \default    % Mark D - mesure 63

  des16 \ff r8. r d'!16-. des-. r8. r4
  R1 * 14

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Cor. I"} R1 * 2}
  \oneMMRNumberOn

  R1
  r4 c,2 \pp r4|
  R1 * 3
  bes'16-^ \ff bes-^ r8 r b!-^ c16-^ c-^ r8 r cis-^|
  d16-^ d-^ r8 r dis8 e4 ( \ff ~ e16 f e d! )
  d ( c b c ) cis ( d c! bes ) bes ( a gis a ) c! ( bes! a g! )|
  g ( f e f ) aes ( f d' c ) b8 r r4
  b16-^ \ff b-^ r8 r4 aes16-^ aes-^ r8 r4
  g2-> <<{d'2->}{\once \override Voice.DynamicText #'X-offset = #-2.5 s4 \ff \< s8 s16 s \!}>>|
  <<{c1-^ ~}{s4 \ffz s s \> s8 s16 s \!}>>|
  <<{c2 c8. c,32 c c16 c c c}{s4 \mp s \dim s \!}>>|
  c4 r r2|
  R1 * 8
  r2

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbFlautoI" #UP {s4 * 0 \tweak #'X-offset #-4.5 ^\markup { \fontsize #-3 "Fl I"} r2 r2 r4}
  \oneMMRNumberOn

  \override DynamicLineSpanner #'staff-padding = #3.6
  c4 \mf
  \time 2/4
  a-> \< aes-> \!
  \time 4/4
  \hairpinToBarLineFalse
  c'1 \f \> ~
  c8 \! r r4 r2
  \dynamicLineSpannerStandard
  R1 * 3
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  *****************************************************************
  * Création des voix                                             *
  *****************************************************************
%}


voiceSgMbCornoI = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno I" "in F"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMbCornoI
}

voiceSgMbCornoII = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno II" "in F"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMbCornoII
}

quoteScoreSgMbCornoI = \SgMbCornoI
quoteScoreSgMbCornoII = \SgMbCornoII
