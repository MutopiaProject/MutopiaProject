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
  * Fichier de notes, Hautbois I et II - parties                        *
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

% Fichier cité par le cor I :
% le \tag #'partscore devient \tag #'partScore \tag #'quoteCornoI {

SgMaFlautoI = \relative c'' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 16 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \cueEventType
  \oneMMRNumberOn

  \TempoI

  R1 * 6/8 * 15

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaClarinettoI" #DOWN {s4 * 0 -\tweak #'extra-offset #'(9 . -1)
    ^\markup { \fontsize #-3 "Clarinetti"} R1 * 6/8 * 4}
  \oneMMRNumberOn

  d8 ( \mp f16 d a'8 ) r4 r8
  r4 r8 bes4.-> \ff
  bes-> a8 ( gis a )
  a4. ~ a8 r r
  a8 \f \< c16-. a-. e'8-. \! r4 r8

  \mark \default    % Mark A - mesure 25

  R1 * 6/8 * 2
  d,4.-> \f bes'->
  bes-> ~ bes8 r r
  R1 * 6/8
  r16 e \f ( d a g f ) r4 r8
  a'8 r r r4 r16 a,16  (
  d cis c b bes a g f e g bes a )
  d,8 r r r4 r8
  R1 * 6/8 * 6
  r4 r8 ees'4. \f \> (
  d8 \! ) r r r4 r8

  \mark \default    % Mark B - mesure 42

  R1 * 6/8 * 5
  r4 r8 r8. des16-. \f b8-.
  c4 r8 r4 r8
  r8. ees16-. c8-. des4 r8
  r8. gis16-. eis8-. fis4 r8
  R1 * 6/8 * 3
  \once \override Score.RehearsalMark #'X-offset = #-2 % pour éviter de se percher sur le trille

  \mark \default    % Mark C - mesure 54

  \once \override TextScript #'script-priority = #-100
  \once \override TextScript #'Y-offset = #10
  a4 ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1 \tiny \flat}} \ff a,4 \trill a,8-.
  d'16-. \ff ([e-.]
  f8 e f d e g )
  f ( e f d8. ) e16-. c8-.
  d4.-^ ~ d8 [r16 e-. c8-.]
  d4.-^ ~ d8 [r16 f-. d8-.]
  f2.-> \fz
  des-> \fz
  ges8-. r r r4 r8
  a,,!4. \p ( b4 c8 )
  <<{c4 ( d8 ~ d4 ees8 )}{s4 s4 \> s8 s \!}>>
  ees4 \pp r8 r4 r8
  R1 * 6/8 * 4
  \override DynamicLineSpanner #'staff-padding = #1.5
  r4 r8 f4. ( \fz ~
  f4 fis8 \< fis4 g8
  g4 bes8 ~ bes4 \! ) a8 \> ( ~

  \TempoIRit

  a8 g d f e! ees \! )

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  \leftDynamic d4 ( \Pdolce \< c8 ees4 d8 \! )
  c4 ( bes8 a4 \> g8 ) \!
  \override DynamicLineSpanner #'staff-padding = #1.7
  f4 ( g8 f4 \< g8 )
  f8. ( g16 f g ) \! ees4.-> \fp \> ~
  \dynamicLineSpannerStandard
  ees8. \!  f16 ( d f ees8 c' a )
  ees8. ( f16 d f ees4. ) ~
  \override DynamicLineSpanner #'staff-padding = #2.5
  ees8 ees' \< ( bes g ees bes'16 a ) \!
  ees8. \> ( f16 d f \! ees4. ) \p
  ees16 ( \<g f g a bes a bes c d c d) \!
  ees \mf (
  \dynamicLineSpannerStandard
  d f ees c a ) r8 r g''16 ( \> ees ) \!
  d4 \p ( c8 ees4 d8 )
  c4 ( bes8 a4 g8 )
  f4 ( \< g8 f4 g8 \! )
  <<{f8. ( g16 f g ees4. )  ~}{s4. \< s16 \bindDynamics s16 -\tweak #'minimum-length #7 \> s8 s16 s \!}>>
  ees8. \! \rightDynamic f16 \pp ( d f ees!8 c' a )
  ees8. ( f16 d f ees4. ) ~
  \override DynamicLineSpanner #'staff-padding = #1.4
  <<{ees8 ees' ( bes g ees bes'16 a )}{s4 \< s16 \! s16 s8 \> s8 s16 s \!}>>
  ees8. \p ( f16 d f ees4. )
  d8. ( \< e!16 cis e d e cis d fis g \! )
  eis ( \> fis a b gis a d e! cis d ) \! r8

  \mark \default    % Mark E - mesure 93

  d8. \p ( e16 cis e d b! g d g b )
  c!8. ( \< d16 b d \! c \cresc a f c f a ) \!
  bes!8. ( \mf \< c16 a c \! bes g ees bes ees g )
  bes8 \f r r r4 r8
  R1 * 6/8 * 3
  r16 bes,-. \p \> bes ( d f bes ) c4 \pp \trill ~ c16 bes-.
  r16 bes,-. bes ( d f bes ) c4 \pp \trill ~ c16 bes-.
  r16 bes,-. \< bes ( d f bes ) \!
  \once \override TextScript #'script-priority = #-100
  \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
  \once \override TrillSpanner #'outside-staff-priority = #500
  des4. ^\markup {\lower #1 \tiny \flat} \fz \> \startTrillSpan ~
  \noBreak
  <<{des4. \! des16 \p ( bes g bes des bes}{s4 s \stopTrillSpan}>>
  g16 \> bes des bes g bes des8 bes g ) \!
  bes \pp ( g e! des e g16 bes )
  a8 ( \< g  f ) \! c' \mf \< ( bes a ) \!
  ees'4. ( \f \> d4 ) c8 \! ~
  c  \< ( b d ~ d \! c bes )
  bes2. \f ~
  <<{bes2.}{s4 \> s s8 s16 s \!}>>
  ges'8 ( \mp \> f bes, des4 c8 \!
  \dynamicLineSpannerStandard
  bes ) \bracketedPP r r r4 r8

  \mark \default    % Mark F - mesure 113

  R1 * 6/8 * 4
  r8 r bes16 \p \< ( c des8 c des) \!
  d!8 \mf ( c d bes c ees )
  d ( c d bes4 ) \< ees16-. c-. \!
  d4. \fz \cresc ~ d4 ees16-. c-.
  d4. \fz \< ~ d4 c16-. bes-. \!
  ges'8 \ff r r \times 2/3 {f16 ([ees c]} \times 2/3 {a [f ees]} \times 2/3 {c [a f'])}
  bes4.-> \ff f'->
  fis2.
  f8 r bes,!16-. c!-. d8 ( cis d )
  d ( cis d ) ges4.-> (

  \mark \default    % Mark G - mesure 127

  ges4) -> des-> bes->
  bes4. ~ bes4 bes16-. c-.
  d!4 \ff ( c8 ees4 d8 )
  g!4 ( f8 ees!4 d8 )
  c4 ( d8 bes4 d8 )
  c8. d16 c d bes4. \fz ~
  bes8. c16 bes c a4. \fz ~
  a8. bes16 a bes g4. \fz ~
  g8 r16 a ( g a ) f8 r16 g ( f g )
  ees8 r16 f ( ees f ) d8 r16 ees ( d ees )
  cis8 a'4 \fz ~a8 d4 \fz ~
  d8 a'4 \fz ~ a8 c?4 \fz (

  \mark \default    % Mark H - mesure 139

  cis,8 ) r16 bes'!-. \ff a-. bes a8 r r
  R1 * 6/8 * 4
  cis,8 \p ([cis,]) d' \< ([d,]) e' ([e,])\!
  fis' \pp ([fis,]) fis' ([fis,]) fis' ([fis,])
  R1 * 6/8 * 3

  \bar "||"    % mesure 149

  \key a \minor
  R1 * 6/8 * 2
  b,16 \p b ais b r8 g16 e' dis e r8
  \override DynamicLineSpanner #'staff-padding = #1.4
  b16 \< [g' fis g] e [b' ais b] b [e dis e] \!
  fis4 \fz ( eis8 \> g!4 fis8
  e!4 \dim cis8 ais4 d!8 \!
  \dynamicLineSpannerStandard
  b ) r r r4 r8
  r4 r8 r4 d,16 \f ( e
  fis8 eis fis dis e g! )
  fis ( eis fis ) dis4 fis16-. dis-.
  e!4. \fz ~ e4 fis16-. dis-.
  e4. \fz ~ e4  a16-. e-.
  f!4. \fz ~ f4 a16-. f-.
  g4. \fz ~ g4 e'16-. c-.
  d4. \fz ~ d4 f!16-. d-.
  ees4. \fz ~ ees4 ees16-. c-.

  \mark \default    % Mark I forcé - mesure 165

  e8 r r r4 r8
  e8 ( \f \> ( ais, b ) \! r4 r8
  R1 * 6/8
  e8 \fp \< ( b c ) \! r4 r8
  r8 r c16 ( \p \> d ees8 b! c ) \!
  r4 c16 ( \dim d ees8 ) \! r c16 ( d
  ees8 ) r r r4 r8
  f8 ( \pp f, ) r f' ( f, ) r
  f' ( f, f' ) \afterGrace {
    \once \override TrillSpanner #'outside-staff-priority = #500
    a,4. ^\markup {\tiny \flat} \startTrillSpan
  }
  {g16 \stopTrillSpan [a]}
  bes8 r r r4 r8
  R1 * 6/8 * 2
  r4 r8 r4 ges'16 \mf ees
  f4 \fz f16 des ees4 \fz ees16 bes!
  ces4 \fz ces16 g! aes4 \fz aes16 e!
  \acciaccatura f8 des'2. \ff ~
  des4. ~ des4 d8 \fz
  R1 * 6/8 * 2
  bes2.-> \ff ~
  bes4. ~ bes8 f16 ([bes d f])
  \once \override Score.RehearsalMark #'X-offset = #-1.5

  \mark \default    % Mark J - mesure 186

  \once \override TrillSpanner #'outside-staff-priority = #500
  g2. \trill ^\markup {\raise #'0.6 \tiny \natural}
  r8 g ( g, ) g ( g, ) r
  r g'' ( g, ) g ( g, ) r
  r aes'' ( aes, ) aes ( aes, ) r
  r g'' ( g, ) g ( g, ) r
  g''4.-> c,->
  ees4-> \ff ees16 g, g4.
  ees'4-> ees16 aes, aes4.->
  e'!4 e16 gis, gis4.->
  e'4 e16 a,! a4 a16 ( a' )

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  f8 ( \fff e f ) d ( e g )
  f ( e f ) d4 e16-. c-.
  d4.-^ ~ d8 [r16 e c8]
  d4.-^ ~ d8 [r16 f d8]
  f2. \ff ~
  f
  ges8 r r r4 r8
  a,,4. \p ( b4 c8
  c4 \> d8 ~ d4 dis8 ) \!
  dis4 r8 r4 r8
  R1 * 6/8
  r8. b'16 \p fis8-. dis'-. r r
  R1 * 6/8
  r8. d16 \p g,8-. gis'-. r r
  a r r r4 r8
  R1 * 6/8 * 3

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  R1 * 6/8 * 10
  b,2. \mp (
  <<{cis2.}{s8 s \dim}>>
  d2. \pp )
  d8 r r r4 r8
  R1 * 6/8 * 3
  r16 d,-. \p d ( fis a d ) e4 \> \trill ~ e16 d \!
  r16 d,-. d ( fis a d ) e4 \pp \trill ~ e16 d
  r16 d,-. \< d ( fis a d ) \! f4. \startTrillSpan ~
  <<{f4. f16 \p \stopTrillSpan ( d b d f d}{s4 s \stopTrillSpan}>>
  b16 \dim d f d b d f8 d b \! )
  d ( b gis f gis b16 d )

  \mark \default    % Mark M - mesure 237

  cis8 ( \bracketedP \< b a ) e' ( d cis ) \!
  g'4. ( \f fis4 e8 ~
  e ) ( dis fis ~ fis e d )
  d2. ~
  <<{d2.}{s4 \> s s8 s16 s \!}>>
  bes'8 \p ( a d, f4 e8 )
  d r r r4 r8
  R1 * 6/8 * 4
  \key d \minor

  \bar "||"    % mesure 248

  R1 * 6/8 * 5
  a4.-> \ff d->
  a'-> ~ a4 f8-> ~
  f d4-> a-> f16 g
  a8 ( f g ) r r g16 ( a
  bes8 g a ) r r a16 ( bes
  c8  ^\markup {\italic "[con forza]"} a ) a16 ( bes c8 f c )
  c ( a ) a16 ( bes  c8 f c )
  d ( bes ) bes16 ( c d8 f d )
  d ( bes ) bes16 ( c d8 f d )
  d ( b! ) b16 ( c d8 g d )
  d ( b! ) b16 ( c d8 g d )
  d2.-> ~
  d

  \mark \default    % Mark N - mesure 266

  f ~
  f8 r r r4 r8

  \noBreak
  \TempoIPaPAcc

  \once \override MultiMeasureRest #'minimum-length = #16
  R1 * 6/8
  \noBreak
  r4 r8 r4 d16-. \ff e-.
  f8-> d-. e-. f-> d-. e-.
  f-> d-. e-. f-> d-. e-.
  d4. ees-> \fz ~
  ees2.
  d2.-> \fz
  bes \fz

  \mark \default    % Mark O - mesure 276

  r16 bes ( a4 ) r16 d ( cis4 )
  r16 e ( d8. ) f16 ( e8. ) g16 ( fis8 ) ~
  fis16 a ( g8. ) a16 ( g8. ) g16 ( f!8 ) ~
  f16 f ( ees8. ) ees16 ( d8. ) d16 ( cis8 )
  d4.-> \ff ( f4-> ) e!8 ~
  e ees-. d-. d-. d-. d-.
  ees ( d cis ) d ( bes a )
  <<{a2. ~}{s8 s s s -\tweak #'minimum-length #7 \> s s \!}>>
  a8 r r r4 r8
  R1 * 6/8 * 2

  \mark \default    % Mark P - mesure 287

  \once \override Score.MetronomeMark #'X-offset = #2
  \noBreak
  \TempoITempoPrimo

  R1 * 6/8 * 6
  r4 r8 r4 f16-. \pp d-.
  a'-. f-. f'4 ~ f8 r r
  r4 f,16-. \< d-. bes'-. f-. f'4 \fz ~
  f4. \> ( fis ) \! ~
  fis \pp ( ~ fis8 g8. cis,16 )
  d8 r r r4 r8
  R1 * 6/8
  r4 r8 cis,4 \p ( d16 e

  \mark \default    % Mark Q - mesure 301

  \tag #'quoteCornoI {  % appel par citation
    f,8 ( -\tweak #'stencil ##f \p cis d e f bes )
    d ( \> a bes d f gis ) \!
  }
  \elseTag  #'quoteCornoI {
    f8 cis d e f bes )
    d ( \> a bes d f gis ) \!
  }
  a2. \pp ~
  a4 r8 r4 r8
  R1 * 6/8 * 4

  \noBreak
  \TempoIPocoRit    % Mesure 309

  R1 * 6/8 * 2
  \noBreak
  f,,2. \pp ~
  f4 r8 r4 r8
  d2. ~
  d \fermata

  \bar "|."

}

%{
  *****************************************************************
  * Flûte II                                                      *
  *****************************************************************
%}

\include "Common/Version.ly"
SgMaFlautoII = \relative c'' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 16 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \cueEventType
  \oneMMRNumberOn

  \TempoI

  R1 * 6/8 * 16

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaOboeI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Oboe I"} R1 * 6/8 * 3}
  \oneMMRNumberOn

  d8 ( \mp f16 d a'8 ) r4 r8
  r4 r8 bes4.-> \ff
  bes-> a8 ( gis a )
  a4. ~ a8 r r
  a8 \f \< c16-. a-. e'8-. \! r4 r8

  \mark \default    % Mark A - mesure 25

  R1 * 6/8 * 2
  bes,4.-> \f g'->
  g-> ~ g8 r r
  r4 r8 r16 d' \f ( cis bes a g )
  r4 r8 r16 f' ( e bes a g )
  a'8 r r r4 r16 a,16 (
  d cis c b bes a g f e g bes a )
  d,8 r r r4 r8
  R1 * 6/8 * 4
  r4 r8 a'8-. \f bes!-. b-.
  c4.-> d->
  ees16 ( c g ees c8 ) aes'4. \f \> ~
  aes8 \! r r r4 r8

  \mark \default    % Mark B - mesure 42

  R1 * 6/8 * 5
  r4 r8 r8. des16-. \f b8-.
  c4 r8 r4 r8
  r8. ees16-. c8-. des4 r8
  r8. cis16-. cis8-. cis4 r8
  R1 * 6/8 * 3

  \once \override Score.RehearsalMark #'X-offset = #-1
  \mark \default    % Mark C - mesure 54

  \once \override TextScript #'script-priority = #-100
  \once \override TextScript #'Y-offset = #8
  a'4 ^\markup {\center-column {\musicglyph #"scripts.trill" \tiny \raise #2 \flat}} \ff a,4 \trill a,8-.
  d'16-. \ff ([e-.]
  f8 e f d e g )
  f ( e f d8. ) e16-. c8-.
  d4.-^ ~ d8 [r16 e-. c8-.]
  d4.-^ ~ d8 [r16 f-. d8-.]
  des2.-> \fz
  bes-> \fz
  ees8-. r r r4 r8
  a,,!2. \p ~
  <<{a (}{s4 s4 -\tweak #'minimum-length #5 \> s8 s \!}>>
  bes4 ) \pp r8 r4 r8
  R1 * 6/8 * 7

  \noBreak
  \TempoIRit

  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \once \override Score.MetronomeMark #'X-offset = #2
  \noBreak
  \TempoIinTempo

  \once \override MultiMeasureRest #'minimum-length = #14
  R1 * 6/8 * 8
  r8 r f16 ( \p \< g f g a bes a bes \! )
  a8 r r f''16 ( \mf \> ees c a ees' c ) \!
  bes4 \p ( a8 ) a4 ( bes8 )
  a4 ( f8 )  f4 ( ees8 )
  c4 ( \< bes8 c4 bes8 \! )
  <<{c4.( bes}{s4. \< s8 \fp -\tweak #'minimum-length #7 \> s s16 s \!}>>
  a8 ) r r r4 r8
  R1 * 6/8 * 5

  \once \override Score.RehearsalMark #'X-offset = #-2
  \mark \default    % Mark E - mesure 93

  b'4. \p ~ b8 r r
  a4. \< ~ a8 \cresc r r \!
  g4. \mf \< ~ g8 \! r r
  bes8 \f r r r4 r8
  R1 * 6/8 * 9
  a8 \bracketedPP ( \< g  f ) \! a \mf \< ( g f ) \!
  <<{c'4. ( fis,4. )}{s4. \f \> s4 s8 \!}>>
  f!4. ( \< e! \! )
  g8 \f ( f ) r r4 r8
  R1 * 6/8 * 3

  \mark \default    % Mark F - mesure 113

  R1 * 6/8 * 4
  r4 r8 r4 bes16-. \mf c-.
  bes8 ( f bes d, f c' )
  bes ( f bes d,4 ) \< c'16-. f,-. \!
  bes4. \fz \cresc ~ bes4 c16-. f,-.
  bes4. \fz \< ~ bes4 f16-. d-. \!
  ees'8 \ff r r \times 2/3 {f16 ([ees c]} \times 2/3 {a [f ees]} \times 2/3 {c [a f'])}
  bes4.-> \ff f'->
  cis4 ( bis8 dis4 cis8 )
  d!8 r bes!16-. c!-. bes8 ( a bes )
  a4.-> cis->

  \mark \default    % Mark G - mesure 127

  des4-> bes-> bes->
  bes4. ~ bes4 bes16-. c-.
  bes4 \ff ( a8 c4 bes8 )
  ees4 ( d8 c4 bes8 )
  a4 ( bes8 g4 bes8 )
  a8. bes16 a bes g4. \fz ~
  g8. a16 g a f4. \fz ~
  f8. g16 f g ees4. \fz ~
  ees8 r16 c ( ees c ) d8 r16 bes ( d bes )
  c8 r16 a ( c a ) bes8 r16 g ( bes g )
  a8 a'4 \fz ~ a8 d4 \fz ~
  d8 a'4 \fz ~ a8 c?4 \fz (

  \mark \default    % Mark H - mesure 139

  cis,8 ) r16 bes'!-. \ff a-. bes a8 r r
  R1 * 6/8 * 7
  r4 r8 e,8 ( \pp ais, ) r
  R1 * 6/8

  \bar "||"    % mesure 149

  \key a \minor
  R1 * 6/8 * 3
  r4 r8 r \bracketedHairpin g'16 -\tweak #'extra-offset #'(-3 . 0) \bracketedMF -\tweak #'extra-offset #'(4 . 0) \<
  b b b \!
  ais8 \fz r r r4 r8
  R1 * 6/8 * 2
  r4 r8 r4 d,16 \f ( e
  fis8 eis fis dis e g! )
  fis ( eis fis ) dis4 fis16-. dis-.
  e!4. \fz ~ e4 fis16-. dis-.
  e4. \fz ~ e4  a16-. e-.
  f!4. \fz ~ f4 a16-. f-.
  e4. \fz ~ e4 c'16-. g-.
  b4. \fz ~ b4 d16-. b-.
  a4. \fz ~ a4 a16-. a-.

  \mark \default    % Mark I forcé - mesure 165

  gis8 r r r4 r8
  e4. \fp r4 r8
  R1 * 6/8
  c'8 \fp \< ( gis a ) \! r4 r8
  r8 r a16 ( \p \> b c8 gis a ) \!
  R1 * 6/8 * 7
  r4 r8 r4 ges'16 \mf ees
  f4 \fz f16 des ees4 \fz ees16 bes!
  ces4 \fz ces16 g! aes4 \fz aes16 e!
  \acciaccatura f8 aes2. \ff ~
  aes4. ~ aes4 bes8 \fz
  R1 * 6/8 * 2
  bes2.-> \ff ~
  bes4. ~ bes8 f16 ([bes d f])|

  \mark \default    % Mark J - mesure 186

  \once \override TrillSpanner #'outside-staff-priority = #500
  \once \override TrillSpanner #'Y-offset = #-3
  g2. \trill ^\markup {\tiny \natural}
  r8 g ( g, ) g ( g, ) r
  r g'' ( g, ) g ( g, ) r
  r aes'' ( aes, ) aes ( aes, ) r
  r g'' ( g, ) g ( g, ) r
  g''4.-> c,->
  ees4-> \ff ees16 g, g4.
  ees'4-> ees16 aes, aes4.->
  e'!4 e16 gis, gis4.->
  e'4 e16 a,! a4 a16 ( a' )

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  d,8 ( \fff a d ) f, ( a e' )
  d ( a d ) f,4 c'16-. a-.
  a4.-^ ~ a8 [r16 a a8]
  a4.-^ ~ a8 [r16 f' d8]
  des2. \ff ~
  des
  ees8 r r r4 r8
  a,,2. \p ~
  <<{a2. ~}{s4. \> s4 s8 \!}>>
  a4 r8 r4 r8
  R1 * 6/8 * 8

  \mark \default    % Mark L - mesure 214

  \bar "||"

  \key d \major
  R1 * 6/8 * 10
  fis'2. \mp (
  <<{a2.}{s8 s \dim}>>
  b2. \pp )
  g8 r r r4 r8
  R1 * 6/8 * 9

  \mark \default    % Mark M - mesure 237

  a8 ( \bracketedP \< e cis ) cis' ( b a ) \!
  e'4. ( \f ais, )
  a! ( gis
  b8 a ) r r4 r8
  R1 * 6/8 * 7

  \bar "||"    % mesure 248

  \key d \minor
  R1 * 6/8 * 5
  \pageTurn
  a4.-> \ff d->
  a'-> ~ a4 f8-> ~
  f d4-> a-> d,16 e
  f8 ( d e ) r r e16 ( f
  g8 e f ) r r f16 ( g
  a8 ^\markup {\italic "[con forza]"} f ) f16 ( g a8 f g )
  a ( f ) f16 ( g a4 g8 )
  bes8 ( g ) g16 ( a bes8 d bes )
  bes ( g ) g16 ( a bes8 d bes )
  b ( g ) g16 ( a b8 d b )
  b ( g ) g16 ( a b8 d b )
  d2.-> ~
  d

  \mark \default    % Mark N - mesure 266

  c ~
  c8 r r r4 r8

  \noBreak
  \TempoIPaPAcc

  R1 * 6/8
  \noBreak
  r4 r8 r4 d16 \ff e
  f8-> d-. e-. f-> d-. e-.
  f-> d-. e-. f-> d-. e-.
  d4. ees-> \fz ~
  ees2.
  d2.-> \fz
  bes \fz

  \mark \default    % Mark O - mesure 276

  r16 bes ( a4 ) r16 d ( cis4 )
  r16 e ( d8. ) f16 ( e8. ) g16 ( fis8 ) ~
  fis16 a ( g8. ) a16 ( g8. ) g16 ( f!8 ) ~
  f16 f ( ees8. ) ees16 ( d8. ) d16 ( cis8 )
  d4.-> \ff ( f4-> ) e!8 ~
  e ees-. d-. d-. d-. d-.
  ees ( d cis ) d ( bes a )
  <<{a2. ~}{s8 s s s -\tweak #'minimum-length #6 \> s s \!}>>
  a8 r r r4 r8
  R1 * 6/8 * 2

  \once \override Score.MetronomeMark #'X-offset = #2.5
  \noBreak
  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  R1 * 6/8 * 14

  \mark \default    % Mark Q - mesure 301

  R1 * 6/8 * 2
  f'2. \pp ~
  f4 r8 r4 r8
  R1 * 6/8 * 4

  \noBreak
  \TempoIPocoRit    % Mesure 309

  R1 * 6/8 * 2
  d,,2. \pp ~
  d4 r8 r4 r8
  d2. ~
  d \fermata

  \bar "|."
}

%{
  *****************************************************************
  *	Création des voix                                             *
  *****************************************************************
%}

voiceSgMaFlautoI = \new Voice {
  \time 6/8
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 "Flauto I"}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "flute"
  \clef treble
  \SgMaFlautoI
}
voiceSgMaFlautoII = \new Voice {
  \time 6/8
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 "Flauto II"}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "flute"
  \clef treble
  \SgMaFlautoII
}

quoteScoreSgMaFlautoI = \SgMaFlautoI
quoteScoreSgMaFlautoII = \SgMaFlautoII
