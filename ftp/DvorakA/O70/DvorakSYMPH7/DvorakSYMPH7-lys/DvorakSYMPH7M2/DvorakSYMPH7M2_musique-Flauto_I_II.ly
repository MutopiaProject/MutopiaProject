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
  * Fichier de notes, Flûtes 1 et 2, parties                            *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Flûte I                                                       *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMbFlautoI = \relative c'' {

  \include "Common/Properties.ly"


  %   \set Staff.minimumPageTurnLength n'est pas défini dans cette partie
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \once \override MultiMeasureRest #'minimum-length = #30
  R1 * 8
  r4

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMbCornoII" #UP #"bass" {s4 * 0 -\tweak #'extra-offset #'(-1 . -2.5 )
                                                      ^\markup { \fontsize #-3 "Corni II&IV"} r4 r2 r4}
  \oneMMRNumberOn

  <<{f2 \f ~ f16 f ( a c )}{\stretchDynamicText s8 \f s8 \dim}>>

  \mark \default    % Mark A - mesure 11

  f2 \pp ( e4.\<  c8 ) \!
  e2-> \> ( d8 ) \! r d8. \p \< ( bes'16 ) \!
  <<{bes4. ( a8 ~ a g f16 e! f g}
    {s2 \fz \dim s4 \> s8 s16 s \!}>>
  e8 ) r8 ees4. \p ( ees8 ~ ees16 d ees f
  d8 ) r des4 \pp ( ~ des8 des ~ des16 c des ees
  c8 ) r c4 \< ( b8 g f f' ) \!
  e8 \< ( c bes bes' \f ~ bes16 ) g8 ( e16 \times 4/5 {c16 des bes g f}
  e8 ) r r4 r2
  R1 * 7

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} R1}
  \oneMMRNumberOn

  r8.. bes'32 (\p \< c8.. des32 ) \! g,8-. \f r16. e'32 \< f8.. g32 \!
  des8 \ff r16. g32 a8.. bes32 e,16 ( f g bes, c \> des! e, f \!
  g8 ) r r4 r2
  R1 * 2

  \mark \default    % Mark B - mesure 32

  R1
  r4 bes'8. ( \mp g16 \> e8. c16 bes8. c16 \!
  a8 ) \pp r r4 r2
  <<{r4 bes'8. ( g16 e8. c16 bes8. d32 c )}{s4 s4 \mp \> s4 s16 s16 \! s16 s \pp}>>
  a'8. ( f16 c4 ) r2
  r2 r8. a16 \pp ( bes a g a )
  bes8 ( a gis a \< gis a gis a ) \!
  f'2 \f \< e \!
  f4-> \ff c8. ( bes32 c ) aes4-> des->
  ees-> c8. ( bes32 c ) aes!4-> bes->
  <<{f4 aes8.( ees32 aes ) f4 ( ges )}{s4 s8 s \dim s4 \> s \!}>>
  f4 \p ( des ) \> ees4. ( des8 ) \!

  \mark \default    % Mark C - mesure 44

  des4 r r2
  R1 * 2

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbClarinettoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Cl. I"} R1}
  \oneMMRNumberOn

  gis'4 \Solo \p ( fis8. e!16 b8. [gis16 fis8. e16])
  \override DynamicLineSpanner #'staff-padding = #2
  b2 ( ~ \times 2/3 {b8 \< e gis} b16[ e a-. r32 gis]-. ) \!
  gis16 \f ( fis )
  \dynamicLineSpannerStandard
  r e-. e ( dis ) r cis-. cis ( b ) r a-. \dim a  \! ( gis! fis e )

  \tag #'quoteCornoII \tag #'quoteCornoIII {
    <<{g!4. ( fis16 e d8 [b' c!8. fis,16])}{s8 -\tweak #'stencil ##f \f s \> s4 s \p}>>
  }
  \elseTag #'quoteCornoII \elseTag #'quoteCornoIII {
    <<{g!4. ( fis16 e d8 [b' c!8. fis,16]}{s8 s \> s4 s \p}>>
  }
  g4 ) r r2
  R1
  <<{r4 b2.}{s4 s \fz -\tweak #'minimum-length #7 \< s s8 s16 s \!}>>
  d4-^ \ff d,-^ cis-^ cis'-^
  c!-^ c,-^ dis-^ dis'-^ ~
  dis cis8. \dim gis16 \! b4 ( a )
  gis2 \p \> ( gis'4.. ) \! gis16
  gis4 \p ( e8. bis16 cis4. ) r8
  fis4 ( \< cis8. ais16 b4. ) \! r8
  <<{g'!4 ( e8. ais,16 b4. ) r8}{s4 \p s \> s s \!}>>
  e4 \pp \< ( c8. g16 a4. ) \! r8

  \mark \default    % Mark D - mesure 63

  fis'16 \ff r r8 r4 r2
  r16 bis,16-. \mp cis8 ~ cis16 bis-. cis8 \dim ~ cis16 dis-. cis8 ~ cis16 bis-. cis8 \! ~
  cis16 bis-. cis8 ~ cis16 dis-. cis8 ~ cis16 bis-. cis8 ~ cis16 bis-. cis8 ~
  cis16 dis-. cis8 ~ cis16 bis-. \cresc cis8 ~ cis16 bis-. cis8 ~ cis16 e-. d!8 \! ~
  d16 dis-. e8 ~ e16 eis-. fis8 \f ~ fis16 ( e! d! b! gis e d b
  gis8 ) r r4 r2
  R1
  r4 c'4 \p ( d4. f8 )
  a ( \> f c a c2 ) \!
  c16 \p ( a f ) r c' ( a f ) r c' ( e, c ) r c' ( e, c ) r
  cis' ( g e ) r cis' ( g e ) r d' (\< f, d ) r d' ( bes f ) \! r
  ees' \fz ( c fis,! ) r ees' ( c fis, ) r d' \> ( bes g ) r des' ( bes f! ) \! r
  c' \p ( g e ) r a \> ( ees! c ) r fis ( ees c ) \! r fis ( ees c ) r
  g' ( d bes ) r g' \pp ( des bes ) r ees! ( bes g ) r e'! ( des! g, ) r
  \override DynamicLineSpanner #'staff-padding = #2
  f' ( c a ) r \cresc a' ( f c ) r g' ( \< f b,! ) r b' ( f b, ) \! r
  c' ( \f \< g e ) r des' ( bes f \! ) r g'8 \ff r r4
  \dynamicLineSpannerStandard
  r2 r4 e, \pp (
  g aes bes des, )
  e ( f g e )
  g ( aes bes des )
  ces8 ( g! aes \< des ces4 aes!8. bes16 ) \!
  ces8 ( \< g! aes ges' f g! \! \times 2/3 {aes8 \f [a bes])}|
  bes8 r r4 r2
  \pageTurn
  r2 e,! \ff
  \afterGrace {a,4-> \fz \trill}{gis16 ([a])}
  \afterGrace {ees'4-> \fz \trill}{d16 ([ees])}
  \afterGrace {
    \once \override TextScript #'Y-offset = #8.5
    f,4-> \fz ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1 \tiny \natural}}
  }{e!16 ([f])}
  \afterGrace {c'4-> \fz \trill}{b16 ([c])}
  \afterGrace {
    \once \override TextScript #'Y-offset = #7.5
    d,4-> \fz ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1 \tiny \flat}}
  }{cis16 ([d])}
  \afterGrace {f4-> \fz \trill}{e!16 ([f])}
  e8 r8 r4
  R1
  <<{r2 e'}{s2 s4 \ff -\tweak #'minimum-length #10 \< s8 s16 s \!}>>
  <<{a1 (}{s2 \ffz s4 -\tweak #'minimum-length #10 \> s8 s16 s \!}>>
  <<{f1 ) ~}{\once \override Voice.Hairpin #'stencil = ##f s4 \p \> s \dim}>>
  f8 \pp r r4 r2
  R1

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbOboeI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Ob I"} R1 * 5 r2}
  \oneMMRNumberOn

  b,,8 \p ( c f4 )
  b,8 ( c f4 ) b,16 ( c b c f4 )
  \override DynamicLineSpanner #'staff-padding = #2
  b,16 ( c b c f4)  % 2 temps

  \tag #'quoteCornoII {
    b,8 \p \<  ( c a'4 ) \! e8 \cresc ( f ) \! c'4 gis8 ([ a]  ) \! d \f c )
  }
  \elseTag #'quoteCornoII {
    b,8 \bracketedP \<  ( c a'4 ) \! e8 \cresc ( f c'4 ) gis8 ( a d \f c )
  }

  
  \dynamicLineSpannerStandard
  \time 2/4
  e8 ( \< [f g gis]) \!
  \time 4/4
  a4 _\f ( _\> g!8. f16 c8. [a16 g8. f16] \!
  c4. ) \p r8 r2
  R1
  r2 f'2 \pp ~
  f r
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  *****************************************************************
  * Flûte II                                                      *
  *****************************************************************
%}

SgMbFlautoII = \relative c'' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 8 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \once \override MultiMeasureRest #'minimum-length = #30
  R1 * 8
  r4

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMbCornoII" #UP #"bass" {s4 * 0 -\tweak #'extra-offset #'(-1 . -2.5 )
                                                      ^\markup { \fontsize #-3 "Corni II&IV"} r4 r2 r4}
  \oneMMRNumberOn

  \override DynamicLineSpanner #'staff-padding = #1.2
  <<{f2 \f ~ f16 f ( a c )}{s4 \f s8 \dim}>>

  \mark \default    % Mark A - mesure 11

  a2 \pp ( c4.\<  e,8 ) \!
  c'2-> \> ( bes8 ) \! r bes8. \p \< ( d16 ) \!
  <<{ees2 ( \fz -\tweak #'minimum-length #8.5 \dim d4 \> des}{s8 s4. s4 s8 s16 s \!}>>
  c8 ) r8 a2 \p a4 (
  \dynamicLineSpannerStandard
  bes8 ) r g2 \pp g4 (
  a!8 ) r f2 \< f8 ( b ) \!
  c8 \< ( e, f des' ) \f ~ des16 ( c8 g16 e8 ) r
  R1 * 14

  \mark \default    % Mark B - mesure 32

  R1 * 3

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbFlautoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Fl I"} R1 * 2}
  \oneMMRNumberOn

  r2 r8. f16 \pp ( g f e f )
  g8 ( f e f \< e f e f ) \!
  d'2 \f \< c \!
  c4-> \ff c8. ( bes32 c ) aes4-> des->
  g,4-> aes-> aes-> bes->
  <<{f4 aes8.( ees32 aes ) f4 ( ges )}{s4 s8 s \dim s4 \> s \!}>>
  f4 \p ( des ) \> ees4. ( des8 ) \!

  \mark \default    % Mark C - mesure 44

  des4 r r2
  R1 * 5
  e'16 \f ( b ) r gis-. gis ( b ) r e,-. e ( gis ) r b,-. \dim b8 \! ( b' ~
  <<{b!8 ) ( c4 d16 e d2 ~}{s8 s \> s4 s \p}>>
  d4 ) r r2
  R1
  <<{r2 g,2}{s2 \rightDynamic \bracketedHairpin s4 \f -\tweak #'X-offset #1.8 \< s8 s16 s \!}>>
  b4-^ \ff b,-^ ais-^ ais'-^
  a!-^ a,-^ a-^ a'-^
  <<{gis2:16 a:}{s4 s \dim s \!}>>
  <<{gis2: bis:}{s2 \p \> s4 \!}>>
  cis8 \p r r4 r2
  R1 * 3

  \once \override Score.RehearsalMark #'X-offset = #-2
  \mark \default    % Mark D - mesure 63

  cis16 \ff r r8 r4 r2
  R1 * 6

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbFlautoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Fl I"} R1 * 2}
  \oneMMRNumberOn

  a16 \p ( f c ) r a' ( f c ) r e ( c g ) r e' ( c a ) r
  \override DynamicLineSpanner #'staff-padding = #2.5
  g' ( e cis ) r g' ( e cis ) r f (\< d bes ) r bes' ( f d ) \! r
  c' \fz ( fis, ees ) r c' ( fis, ees ) r bes' \> ( g d ) r bes' ( f! des ) \! r
  g \p ( e? c ) r ees! \> ( c a ) r ees' ( c a )\! r ees' ( c a ) r
  d ( bes g ) r ees' \pp ( des g, ) r des' ( g, ees ) r des'! ( g, e! ) r
  c' ( a f ) r \cresc f' ( c a ) r f' ( \< b, g ) r f' ( b, g ) \! r
  g' ( \f \< e bes! ) r bes' ( f des \! ) r des'8 \ff r r4
  \dynamicLineSpannerStandard
  R1 * 5

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corni I&II"} R1 * 2 r2}
  \oneMMRNumberOn

  e!2 \ff
  \afterGrace {a,4-> \fz \trill}{gis16  ([a])}
  a4-> \fz
  \afterGrace {
    \once \override TextScript #'Y-offset = #8.5
    f4-> ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1 \tiny \natural}} \fz
  }
  {e!16 ([f])}
  \afterGrace {c'4-> \fz \trill}{b16 ([c])}
  \afterGrace {
    \once \override TextScript #'Y-offset = #7.5
    d,4-> ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1 \tiny \flat}} \fz
  }
  {cis16 ([d])}
  \afterGrace {f4-> \fz \trill}{e!16 ([f])}
  e8 r r4
  R1
  <<{r2 bes'}{s2 s4 \ff -\tweak #'minimum-length #10 \< s8 s16 s \!}>>
  %%
  <<{f'1 ~}{s2 \ffz s4 -\tweak #'minimum-length #10 \> s8 s16 s \!}>>
  <<{f1 ~}{\once \override Voice.Hairpin #'stencil = ##f s4 \p \> s \dim}>>
  f8 \pp r r4 r2
  R1 * 6

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbFlautoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Fl I"} R1 * 2 r2}
  \oneMMRNumberOn

  b,,8 \bracketedP \<  ( c f4 \!
  c4 ) \< gis'8 ( a ) \! e ( f gis \f a )
  \time 2/4
  <<{b2}{s8 -\tweak #'minimum-length #7 \< s s s \!}>>
  \time 4/4
  c2 \f \> ~ c8 \! r r4
  R1 * 2
  r2 a2 \pp ~
  a r
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}


voiceSgMbFlautoI = \new Voice {
  \time 4/4
  \key f \major
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Flauto I"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "flute"
  \clef treble
  \SgMbFlautoI
}

voiceSgMbFlautoII = \new Voice {
  \time 4/4
  \key f \major
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Flauto II"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "flute"
  \clef treble
  \SgMbFlautoII
}

quoteScoreSgMbFlautoI = \SgMbFlautoI
quoteScoreSgMbFlautoII = \SgMbFlautoII
