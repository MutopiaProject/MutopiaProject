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
  * Fichier de notes, Clarinettes 1 et 2, parties                       *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Clarinette I                                                  *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMbClarinettoI = \relative c'' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 8 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \transposition bes
  \leftDynamic e4. \Plegato ( e8 d4 b )
  a8 ( b d4 b ) r8 b \pp (
  c4 b a g )
  fis8 ( g b4 g ) r8 b \p
  g'4. ( \< g8 fis4 d \! )
  c8 \> ( d e d16 c b4 ) \! r8 b
  c4 ( \p \dim b a g \! )
  fis \pp ( b g ) r
  R1
  r2 b,16 \f ( d g \dim b d g b d  \!

  \mark \default    % Mark A - mesure 11

  g8 ) \p r r4 r2
  R1
  <<{d,2 ( c )}{\rightDynamic s2 \fp \<  s4 \> s8 s16 s \!}>>
  fis,8 r r4 r2
  R1 * 2
  d'4 \< c \f ~ c r
  R1
  r4 c,-- \pp ( c-- ) r
  R1
  r4 c-- \pp ( c-- ) r
  R1 * 4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} r2 r4}
  \cueDuringWithClef #"scoreSgMbVioloncello" #UP "bass" {s4 * 0 ^\markup { \fontsize #-3 "Vlc"} r4 r8}
  \oneMMRNumberOn

  r16. c'32 \p \< ( d8.. ees32 ) \bindDynamics a,8 \f r16. fis'32 \< g8.. a32 \!
  ees8 \ff r r4 r2
  \override DynamicLineSpanner #'staff-padding = #0
  r2 r4 r8 fis,,8-> ^\p ~
  <<{fis1 ~}{s4 s ^\dim s s \!}>>
  \dynamicLineSpannerStandard
  fis1

  \mark \default    % Mark B - mesure 32

  R1
  d''2 \mf ~ d8 d \> ( fis e16 d \! )
  <<{d1 ~}{s4 \pp -\tweak #'minimum-length #' 9 \< s s s \!}>>
  <<{d2 ~ d8 d ( fis e16 d )}{s4 \mf s s \> s8 s \pp}>>
  d8 r r4 b'8. \pp ( g16 d4 ~
  d8 ) r16 b ( c b a b ) r2
  r4 <<{d2.}{s8 \p \bindDynamics s \< s4 s8 s \!}>>
  g2 \f \< fis \!
  g4-> \ff d8.-> ( c32 d ) bes!4-> ees->
  f4-> d8. ( c32 d ) bes!4-> c->
  <<{g bes8. ( f32 bes ) g4 ( aes )}{s4 s8 \rightDynamic s \dim s4 \> s \!}>>
  g \p r r2

  \mark \default    % Mark C - mesure 44

  g'4 \p -\tweak #'X-offset #0.7 \Solo f8. \< ^\markup {\large \italic "espressivo"} ( ees16 bes8. [g16 ees8. c16]) \!
  bes2 \mf ~ \times 2/3 {bes8 \< ( ees g} bes16 [ees aes r32 g]) \!
  g16-> ( \f f ) r ees! ees-> ( d ) \dim r c c-> ( bes! ) r aes aes ( g f ees! )

  \tag #'quoteFlautoI {
    ges4. \p \> ( f16 ees des8 bes' [ces8. \! f,!16] )
  }
  \elseTag #'quoteFlautoI {
    ges4. \p \> ( f16 ees des8 bes' [ces8. \! f,!16]
  }

  ges4 ) r r2
  R1
  r2 r4 r16 fis! \p ( cis'8 ~
  cis ) ( d!4 \dim e16 fis ) cis8 ( \p a gis b )
  a4 r r2
  R1
  <<{r4 cis2.}{s4 s \bracketedFz -\tweak #'minimum-length #10 \< s s8 s16 s \!}>>
  e4-> \ff e-> dis-> dis->
  d!-> d-> b-> f'!-> ~
  f ees8. \dim bes16 des4 ( ces )
  bes2 \p \> ( bes'4.. ) \! bes16
  bes4.  \p r8 a!4 \fz \> (  fis!8. dis16 \!
  bis4 )  r a' ( \mf \> e!8. cis16
  bis4 ) \! r a' ( \pp fis8.cis16
  d!4 ) r dis \mf \< ( a8. fis16 ) \!

  \mark \default    % Mark D - mesure 63

  dis'16 \ff r8. r8. a'!16-. \ff gis-. r8. r4
  R1 * 4
  r4 ais,8 \p \< ( b dis2 \f ) ~
  <<{dis4. ( d8 ) cis4 ( ais8. fis!16 )}{s8 s \> s4 s8. s16 \! s4 \p}>>
  cis'4 ( \pp b2 a!8 e )
  g!2 \> ( ~ g8 fis e fis ) \!
  g8 r r4 r2
  R1 * 5

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbFlautoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Fl I"} r2 r8}
  \oneMMRNumberOn

  r8 fis'8.. \p \> ( g32
  a8 ) \pp r r4 r2
  R1 * 4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbClarinettoII" #UP {s4 * 0 ^\markup { \fontsize #-3 "Cl II"} R1}
  \oneMMRNumberOn

  c,16-> \bracketedFF bes-> aes8-> ees' [d16 c] d c bes8 f' [e!16 d]
  e-> d-> c8-> g' [fis!16 e] b?4 \ff ( c )
  \override DynamicLineSpanner #'staff-padding = #2
  \afterGrace {b4-> \fz \trill}{ais16 ([b])}
  \afterGrace {f'4-> \fz \trill}{e16 ([f])}
  \afterGrace {
    \once \override TextScript #'Y-offset = #4.6
    g,4-> \fz ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1.8 \tiny \natural}}
  }
  {fis!16 ([g])}
  \afterGrace {d'4-> \fz \trill}{cis16 ([d])}
  \afterGrace {
    \once \override TextScript #'Y-offset = #3.8
    e,4-> \fz ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1.3 \tiny \flat}}
  }
  {dis16 ([e])}
  \afterGrace {g4-> \fz \trill}{fis!16 ([g])}
  \dynamicLineSpannerStandard
  c?8 r r4
  c,16-^ \ff c-^ r8 r4 g'16-^ g-^ r8 r4
  <<{a2 -> a'}{s2 s4 \ff -\tweak #'minimum-length #5 \< s8 s16 s \!}>>
  <<{b1 (}{s2 \ffz -\tweak #'minimum-length #7 \> s8 s16 s \!}>>
  <<{g1 )}{s4 \p s \dim}>>
  b,,1 \pp ~
  b ~
  b4 r r2
  R1 * 2
  r2 cis'8 \pp ( d g4
  e ) r cis8 ( d g4
  e ) r r2
  R1
  r2 r4 cis,8 ( \p d
  ais' \cresc [b]) fis \< ( g e' \! d c? \f b )
  \time 2/4
  <<{r8 g' g4}{s8 s \< s s \!}>>
  \time 4/4
  g2 \f ~ g8 r r4
  b,8 \p ( a g \dim d b a g b )
  d4. \pp ( b8 d4. b8
  b'2 ) b' ~
  b r

  \bar "|."
}

%{
  *****************************************************************
  * Clarinette II                                                 *
  *****************************************************************
%}

SgMbClarinettoII = \relative c' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 8 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \transposition bes
  R1 * 3
  r4 d \pp ( b ) r
  R1 * 5
  r2 b16 \f ( d \dynamicSpannerOff g \dim b d8 ) r \!

  \mark \default    % Mark A - mesure 11

  R1 * 2
  <<{f,2 ( e4 ees}{\rightDynamic s2 \fp \<  s4 \> s8 s16 s \!}>>
  d8 ) r r4 r2
  R1 * 2
  fis4 -\tweak #'minimum-length #5 \< g \f ( a ) r
  R1
  \override DynamicLineSpanner #'staff-padding = #0
  r4 fis,-- ^\pp ( fis-- ) r
  R1
  r4 fis-- ^\pp ( fis-- ) r
  R1 * 7

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbViolinoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} r2 r4}
  \oneMMRNumberOn

  r8 fis8-> ^\p ~
  <<{fis1 ~}{s4 s ^\dim s s \!}>>
  \dynamicLineSpannerStandard
  fis1

  \mark \default    % Mark B - mesure 32

  \rightDynamic b1 \pp \<
  \rightDynamic c1 \mf \>
  b1 \pp -\tweak #'minimum-length #5 \<
  \rightDynamic c1 \mf \>
  b1 \pp ~
  b8 r16 g' ( a g fis g ) r2
  R1
  e'2 \f \< c \!
  bes4-> \ff d8.-> ( c32 d ) g,4-> c->
  a4-> bes8. ( c32 d ) g,4-> aes->
  \override DynamicLineSpanner #'staff-padding = #2
  \polyNeutral {\dynamicSpannerOff s4 s8 \rightDynamic s -\tweak #'minimum-length #6 \dim s8 s8 \> s4 \!}
    {ees d ees ees}
  ees4 \p ees \> ( f4. ees8 \! )

  \mark \default    % Mark C - mesure 44

  ees r r4 r2
  R1
  ees'16-> ( \f bes ) r g g-> ( bes ) \dim r ees, ees-> ( g ) r bes, bes4
  R1 * 5

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} R1 * 2}
  \oneMMRNumberOn

  <<{r4 cis'4 ( a2 )}{s4 \rightDynamic s \f \< s s8 s16 s \!}>>
  cis4-> \ff cis-> bis-> bis->
  b!-> b-> f-> ces'->
  <<{bes2:16 f:}{s4 s \dim}>>
  <<{ges2: d'!:}{s2 \p \> s4 \!}>>
  ees8 \p r8 r4 r2
  \dynamicLineSpannerStandard
  R1 * 3

  \mark \default    % Mark D - mesure 63

  bis16 \ff r8. r8. a!16-. \ff gis-. r8. r4
  R1 * 14
  r2

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbClarinettoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Cl I"} r2 r2}
  \oneMMRNumberOn

  r4 fis, \pp (
  a bes c ees )
  fis, ( g a fis )
  a ( bes c ees )
  \override DynamicLineSpanner #'staff-padding = #2.6
  des8 ( a! bes \< ees des4 bes8. c16 ) \!

  \tag #'quoteClarinettoI {
    des8 -\tweak #'stencil ##f \p \< ( a! bes aes' g a \! \times 2/3 {bes8 \f b c )}
  }
  \elseTag #'quoteClarinettoI {
    des,8 \< ( a! bes aes' g a \! \times 2/3 {bes8 \f b c )}
  }

  \dynamicLineSpannerStandard
  f,16-> \ff f-> f8-> c' [fis,] g16 g g8 d' [gis,]
  a!16-> a-> a8-> e' [ais,] fis!2 \ff
  \override DynamicLineSpanner #'staff-padding = #4
  <<{g4-> \fz b-> \fz c,-> \fz gis'-> \fz}
    {
      \once \override MultiMeasureRest #'stencil = ##f
      \once \override MultiMeasureRest #'minimum-length = #15
      \oneMMRNumberOff
      R1
      \oneMMRNumberOn
    }>>
  a,4-> \fz ees'-> \fz a8 r r4
  \dynamicLineSpannerStandard
  a,16-^ \ff a-^ r8 r4 ees'16-^ ees-^ r8 r4
  <<{fis2 -> fis'}{s2 s4 \ff -\tweak #'minimum-length #7 \< s8 s16 s \!}>>
  <<{g1 (}{s2 \ffz -\tweak #'minimum-length #8 \> s8 s16 s \!}>>
  % on ajoute une liaison invisible pour assurer la place du "dim"
  <<{b,1 ) -\tweak #'stencil ##f -\tweak #'minimum-length #10 ( }{s4 \p s \dim s s \!}>>
  g,1 ) \pp ~
  g ~
  g4 r r2
  r2 g'2 \pp ( ~
  g e )
  ees ( d )
  cis ( d )
  cis ( d4 ) r
  R1
  \override DynamicLineSpanner #'staff-padding = #5
  r2 r4 cis8 ( \p d
  ais -\tweak #'minimum-length #7 \cresc [b]) fis ( \< g e' \! d c? \f b )
  \time 2/4
  \override DynamicLineSpanner #'staff-padding = #2.5
  <<{r8 g' g4}{s8 s \< s s \!}>>
  \time 4/4
  g1 \f \> ~
  g8 \p r r4 r2
  \dynamicLineSpannerStandard
  R1
  g2 \pp d' ~
  d r
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}


voiceSgMbClarinettoI = \new Voice {
  \time 4/4
  \key g \major
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Clarinetto I" "in B"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "clarinet"
  \clef treble
  \SgMbClarinettoI
}

voiceSgMbClarinettoII = \new Voice {
  \time 4/4
  \key g \major
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Clarinetto II" "in B"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "clarinet"
  \clef treble
  \SgMbClarinettoII
}

quoteScoreSgMbClarinettoI = \SgMbClarinettoI
quoteScoreSgMbClarinettoII = \SgMbClarinettoII
