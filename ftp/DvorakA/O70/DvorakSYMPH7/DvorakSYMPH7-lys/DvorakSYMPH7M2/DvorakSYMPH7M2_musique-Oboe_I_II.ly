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
  * Fichier de notes, Hautbois 1 et 2, parties                          *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Hautbois I                                                    *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMbOboeI = \relative c'' {

  \include "Common/Properties.ly"

  %   \set Staff.minimumPageTurnLength n'est pas défini dans cette partie
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  R1 * 8
  r4

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMbCornoII" #UP #"bass" {s4 * 0 -\tweak #'extra-offset #'(-1 . -1.5 )
                                                      ^\markup { \fontsize #-3 "Corno II"} r4 r2 r4}
  \oneMMRNumberOn

  \override DynamicLineSpanner #'staff-padding = #2
  <<{f2.}{s4 \f -\tweak #'minimum-length #8 \dim}>>

  \mark \default    % Mark A - mesure 11

  f2 ( \pp e4. \< c8 ) \!
  e2-> \> ( d8 ) \! r  \rightDynamic d8. \p \< bes'16 \!
  <<{bes4. ( a8 ~ a g f16 e f g}{s2 \fz -\tweak #'minimum-length #8 \dim s4 \> s8 s16 s \!}>>
  \dynamicLineSpannerStandard
  e8 ) r ees4. \p ( ees8 ~ ees16 d? ees f
  d8 ) r des4 \pp ( ~ des8 des ~ des16 c des ees
  c8 ) r c4 ( \< b8 g f f' ) \!
  e \< ( c bes! bes' \f ) ~ bes16 [g8 ( e16] \times 4/5 {c16 des! bes g f}
  e8 ) r r4 r2
  R1
  r4 g-- \pp ( g-- ) r
  R1
  r4 g-- \pp ( g-- ) r
  R1 * 4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbFlautoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Fl I"} R1 r8}
  \oneMMRNumberOn

  r16. g'32 \ff a8.. bes32 e,16 ( f g bes, c \> des e, f \!
  g8 ) r r4 r2
  R1 * 2

  \mark \default    % Mark B - mesure 32

  R1
  r4 bes'8. ( \mp g16 e8. \dim c16 bes8. c16
  a8 ) \pp r r4 r2
  <<{r4 bes'8. ( g16 e8. c16 bes8. d32 c )}{s4 s4 \mp \> s4 s16 s16 \! s16 s \pp}>>
  a1 \pp ~
  a8 r r4 r8. a16 \pp ( bes a g a )
  bes8 ( a gis a \< gis a gis a \! )
  a'4 \f \< ( bes ) bes2 \!
  aes4-> \ff f-> f-> bes->
  bes-> aes-> f-> ges->
  <<{des ees ( f des)}{s4 s8 s -\tweak #'minimum-length #8 \dim s4 \> s \!}>>
  <<{des4 ( aes2. ) ~}{s4 \p s \> s s8 s \!}>>

  \mark \default    % Mark C - mesure 44

  aes4  r r2
  R1 * 3
  \override DynamicLineSpanner #'staff-padding = #2
  gis1 \pp ~
  <<{gis4 b2. ~}{s4 s \< s s8 s16 s32 s \!}>>
  <<{b1}{s4 \f -\tweak #'minimum-length #7 \> s s s8 s16 s \!}>>
  <<{g!2 ~ g8 d' ( ees c )}{s8 s \dim s4 s \p}>>
  \dynamicLineSpannerStandard
  b4  r r2
  R1
  <<{r4  b'2.}{s4 s \fz -\tweak #'minimum-length #7 \< s s8 s16 s \!}>>
  d4-^ \ff d,-^ cis-^ cis'-^
  c!-^ c,!-^ dis-^ a'-^
  <<{gis2:16 a:}{s4 s \dim}>>
  gis2: \p \> gis: \!
  gis4 \p ( e8. bis16 cis4. ) r8
  \override DynamicLineSpanner #'staff-padding = #2.2
  fis4 ( \< cis8. ais16 b4. \! ) r8
  <<{g'!4 ( e8. ais,16 b4. ) r8}{s4 \p s \> s s \!}>>
  e4 \pp \< ( c8. g16 a4. ) \! r8
  \dynamicLineSpannerStandard

  \mark \default    % Mark D - mesure 63

  ais'16 \ff r r8 r8. cis,16-. \ff cis-. r8. r4
  r16 bis16-. \mp cis8 ~ cis16 bis-. cis8 \dim ~ cis16 dis-. cis8 ~ cis16 bis-. cis8 \! ~
  cis16 bis-. cis8 ~ cis16 dis-. cis8 ~ cis16 bis-. cis8 ~ cis16 bis-. cis8 ~
  cis16 dis-. cis8 ~ cis16 bis-. \cresc cis8 ~ cis16 bis-. cis8 ~ cis16 e-. d!8 \! ~
  d16 dis-. e8 ~ e16 eis-. fis8 \f ~ fis16 ( e! d! b! gis8 ) r
  r4 \rightDynamic gis8 \p \< ( fis eis4 \f fis8 g! )
  <<{gis1 (}{s8 s -\tweak #'minimum-length #5 \> s4 s8. s16 \!}>>
  a8 ) r c4 \p ( d4. f8 ) a ( \> f c a c2 \! )
  f16 \p ( c a ) r f' ( c a ) r c ( g e ) r c' ( a e ) r
  e' ( cis g ) r e' ( cis g ) r d' ( \< bes f ) r f' ( d bes ) \! r
  fis' \fz ( ees c ) r fis ( ees c ) r g' ( \> d bes ) r f'! ( des bes ) \! r
  e \p ( c g ) r c \> ( a f ) r c' ( a fis \! ) r c' ( a fis ) r
  bes ( g d ) r des' \pp ( g, ees ) r g ( ees des ) r g ( e! des ) r
  \override DynamicLineSpanner #'staff-padding = #2.5
  a' ( f c ) r \cresc c' ( a f ) r b ( \< g f ) r b ( g f ) \! r
  e' \f \< ( bes g ) r f' des bes \! r16 bes'8 \ff r r4
  \dynamicLineSpannerStandard
  r2 r4 e,,4 \pp -\tweak #'positions #'(3 . 3) (
  g aes bes des, )
  e ( f g e )
  g ( aes bes des )
  ces8 ( g! aes \< des ces4 aes8. bes16 ) \!
  ces8 ( \< g! aes ges' f g! \! \times 2/3 {aes8 \f [a bes])}
  bes8 r r4 r2
  r a4 ( bes )
  \afterGrace {a4-> \fz \trill}{gis16 ([a])}
  a4-> \fz
  \afterGrace {
    \once \override TextScript #'Y-offset = #6.5
    f4-> \fz ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1.5 \tiny \natural}}
  }
  {e!16 ([f])}
  fis4-> \fz
  \afterGrace {
    \once \override TextScript #'Y-offset = #5.5
    d4-> \fz ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1.5 \tiny \flat}}
  }
  {cis16 ([d])}
  \afterGrace {f4-> \fz \trill}{e!16 ([f])}  e8 r r4
  e,16-^ \ff  e-^ r8 r4 bes'16-^ bes-^ r8 r4
  <<{bes2-> bes'}{s2 s4 \ff -\tweak #'minimum-length #7 \< s8 s16 s \!}>>
  <<{a1 ~}{s2 \ffz s4 -\tweak #'minimum-length #5 \> s8 s16 s \!}>>
  a1 \p \dim ~
  a8 \pp r r4 r2
  R1
  d,4. \p ( d8 c4 a )
  g8 ( a c4 a ) r8 a (

  \tag #'quoteFlautoI {
    bes4 a \dim g \! f )
  }
  \elseTag #'quoteFlautoI {
    bes4 a \dim g f )
  }

  e8 ( f a4 f ) r
  e8 ( \pp f g4 f ) r

  \tag #'quoteFlautoI {
    e8 ( f g4 ) f r
  }
  \elseTag #'quoteFlautoI {
    e8 ( f g4 f ) r
  }

  R1
  \override DynamicLineSpanner #'staff-padding = #1.7
  r2 r4  <<{a4 (}{s8 \p -\tweak #'minimum-length #8 \< s16 s32 s \!}>>
  <<{e'8 f c4 ) gis'8 ( a e f )}{s4 \< s8 s \! s4 s \f} >>
  \time 2/4
  e8 ( \< [f g gis]) \!
  \time 4/4
  a2 ( \f \> ~ a8 f c a ) \!
  f8 r r4 r2
  \dynamicLineSpannerStandard
  R1
  f'2 \pp f ~
  f r
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  *****************************************************************
  *	Hautbois II                                                 *
  *****************************************************************
%}

SgMbOboeII = \relative c' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 8 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \leftDynamic f2 \Plegato ( e4 f )
  c ( e f ) r8 f \pp ( ~
  f2 d ~
  d4 ) c ~ c r
  \override DynamicLineSpanner #'staff-padding = #2.4
  <<{a'4. a8 a2}{s4 \p \< s s8 s \!}>>
  f2 ( \> e \! ~
  e4 \p \dim f d2 ) \!
  c4 \pp ( e f ) r
  \dynamicLineSpannerStandard
  R1
  \override DynamicLineSpanner #'staff-padding = #2.5
  r4 a2. \f -\tweak #'minimum-length #8 \dim

  \mark \default    % Mark A - mesure 11

  <<{a2 ( c ) \!}{s2 ( \pp s4. -\tweak #'minimum-length #5 \< s8 \!}>>
  c2-> \> ( bes8 ) \! r \rightDynamic bes8. ( \p -\tweak #'minimum-length #5 \< d16 ) \!
  <<{ees2 ( d4 des}{s8 \fz -\tweak #'minimum-length #9 \dim s4 \> s8 s16 s \!}>>
  \dynamicLineSpannerStandard
  c8 ) r a2 \p a4 (
  bes8 ) r g2 \pp g4 (
  a!8 ) r f2 \< f8 ( b! ) \!
  c8 \< ([e,] f [des'] \f ) ~ des16 ([c8 g16] e8 ) r|
  R1 * 2
  r4 f-- \pp ( f-- ) r
  R1
  r4 f-- \pp ( f-- ) r
  R1 * 6
  r2 r4

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMbVioloncello" #DOWN "bass" {s4 * 0 ^\markup { \fontsize #-3 "Vlc & Bass"} r4 R1 * 2}
  \oneMMRNumberOn

  \mark \default    % Mark B - mesure 32

  \override DynamicLineSpanner #'staff-padding = #2
  <<{f1 ~}{\rightDynamic s4 \pp -\tweak #'minimum-length #7 \< s s s \!}>>
  f16 \mf ( e d e ) e2. -\tweak #'minimum-length #8 \dim
  <<{f1 ~}{\rightDynamic s4 \pp s -\tweak #'minimum-length #7 \< s s \!}>>
  f16 \mf ( e d e ) e2. \dim
  f1 \pp ~
  f8 r r4 r8. f16 \pp ( g f e f )
  g8 ( f e f \< e f e f \! )
  f'2 \f \< e \!
  f4-> \ff c-> des-> des->
  ees-> ees-> des-> des->
  <<{bes c ( des bes)}{s4 s8 s -\tweak #'minimum-length #7 \dim s4 \> s \!}>>
  <<{bes4 ( f ges2}{s4 \p s \> s s8 s \!}>>
  \dynamicLineSpannerStandard

  \mark \default    % Mark C - mesure 44

  f4 ) r r2
  R1 * 3
  \override DynamicLineSpanner #'staff-padding = #2
  e1 \pp ~
  <<{e4 gis2. ~}{s4 s \< s s8 s16 s32 s \!}>>
  <<{gis1}{s4 \f -\tweak #'minimum-length #5 \> s s s8 s16 s \!}>>
  <<{e4. ( d!16 c! ) d2 ~}{s8 s \dim s4 s \p}>>
  d4 r r2
  R1
  <<{r4 b'4 ( g'2 )}{s4 s \fz \< s s8 s16 s \!}>>
  b4-^ \ff b,-^ ais-^ ais'-^
  \dynamicLineSpannerStandard
  a-^ a,!-^ a-^ dis-^
  \dynamicSpannerOff
  <<{e2:16 dis:}{s4 s \dim}>>
  e2: \p \> dis: \!
  gis,2 ( \p g )
  fis2 ( \p g ) ~
  g1 ~
  <<{g1}{s4 \pp -\tweak #'minimum-length #9 \< s s \!}>>

  \mark \default    % Mark D - mesure 63

  fis16 \ff r r8 r8. a16-. \ff ais-. r8. r4
  R1 * 4
  r4 \rightDynamic e8 \p ( \< dis d2 ) \f ~
  <<{d1}{s8 s -\tweak #'minimum-length #7 \> s4 s8. s16 \!}>>
  c2 \pp ( d )
  c1
  c8 r r4 r2
  R1 * 11

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni I&II"} R1 * 2 r2}
  \oneMMRNumberOn

  \override DynamicLineSpanner #'staff-padding = #2
  e'2 \ff
  f4-> \fz
  \afterGrace {ees4-> \fz \trill}{d16 ([ees])}
  bes4-> \fz
  \afterGrace {c4-> \fz \trill}{b16 ([c])}
  g4-> \fz des'-> \fz bes8 r r4
  \dynamicLineSpannerStandard
  e,16-^ \ff e-^ r8 r4 f16-^ f-^ r8 r4
  <<{g2-> ees'}{s2 s4 \ff -\tweak #'minimum-length #9 \< s8 s16 s \!}>>
  <<{f1 -\tweak #'minimum-length #8 ~}{s2 \ffz -\tweak #'minimum-length #8 \> s4 s8 s16 s \!}>>
  f1 \p \dim ~
  f8 \pp r r4 r2
  R1 * 7
  r2

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbFlautoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Fl I"} r2 r2}
  \oneMMRNumberOn

  r4 <<{f,4 (}{s8 \p -\tweak #'minimum-length #8 \< s16 s32 s \!}>>

  % 2 lignes de dynamique
  \polyNeutral {<<{c4 ) ( gis'8 a ) e'8 ( f c4 )}{s4 -\tweak #'Y-offset #1.5 \< s8 s \! s4 s \f} >>}
  {
    \once \override DynamicText #'self-alignment-X = #1.2 s128 -\tweak #'transparent ##t \p
    s -\tweak #'extra-offset #'(0 . 2) \cresc s64 s32 s16 s8 \!
  }
  \time 2/4
  <<{b2}{s8 -\tweak #'minimum-length #9 \< s s s \!}>>
  \time 4/4
  <<{c2 ~ c8 r r4}{s2 \f \> s8 \!}>>
  R1 * 2
  f,2 \pp f ~
  f r
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  *     Création des voix                                       *
  ***************************************************************
%}

voiceSgMbOboeI = \new Voice {
  \time 4/4
  \key f \major
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Oboe I"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "oboe"
  \clef treble
  \SgMbOboeI
}

voiceSgMbOboeII = \new Voice {
  \time 4/4
  \key f \major
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Oboe II"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "oboe"
  \clef treble
  \SgMbOboeII
}

quoteScoreSgMbOboeI = \SgMbOboeI
quoteScoreSgMbOboeII = \SgMbOboeII

