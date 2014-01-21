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
  * Fichier de notes, Cors I et II - parties                            *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ***************************************************************
  * Cor I                                                       *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMaCornoI = \relative c'' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 16 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \cueEventType
  \oneMMRNumberOn

  \transposition f

  \TempoI

  R1 * 6/8 * 15

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaVioloncello" #DOWN "bass" {s4 * 0 ^\markup { \fontsize #-3 "Violoncello"} R1 * 6/8}
  \oneMMRNumberOn

  a16-> \f f f'4-> ~ f8 ( e d )
  cis4. \< ( d4 dis8 ) \! ~
  \dynamicSpannerOff
  dis f ( \dim e16 c a4 ) \! r8
  R1 * 6/8
  r8 c4-> \ff ( ~ c8 b a )
  gis4.-> a4 ( ais8 )
  ais4-> ( b8 ) ~ b r r
  R1 * 6/8

  \mark \default    % Mark A - mesure 25

  bes2.-> \f
  bes4.-> ~bes8 r r
  d4.-> d->
  d-> ~ d8 r r
  r c4-> r8 d4->
  r8 e4-> r8 f4->
  e8 r r r4 r8
  R1 * 6/8 * 4
  r8 d \f d ~ d d4
  c8 r r r4 r8
  R1 * 6/8
  r4 r8 c4. \f
  <<{bes}{s8 s8 -\tweak #'minimum-length #4 \<}>> ees4. \fz \> ~
  ees8 \! r r r4 r8

  \mark \default    % Mark B - mesure 42

  r16 f \mp \Solo ( ees d c bes ) bes4 ( c8 )
  bes4 ( a8 c f4 )
  r16 f ( ees d c bes ) bes4 ( c8 )
  bes4 ( a8 c f4 ) ~
  f8 r r r4 r8
  r4 r8 r8. c16-. \f c8-.
  c4 r8 ees4 r8
  r8. des16-. des8-. des4 r8
  r8. ees16-. c8-. des4 r8
  R1 * 6/8 * 3

  \mark \default    % Mark C - mesure 54

  e4-> \f e,-> e,8-. e''16 \ff [e]
  e2. ~
  e4. ~ e8. e16-. e8-.
  %	a,4.-^ ~ a8 [b16 \rest e16-. e8-.]  % pour directrice
  a,4.-^ ~ a8 [r16 e'16-. e8-.]  % pour les parties
  a,4.-^ ~ a8 [r16 c16-. a8-.]
  c2.-^ \fz
  c2.-^ \fz
  bes8-. r16 bes16-. \Solo g8-. des'4. \f \> ~
  des2. ~
  des2. \dim ~
  des4 \pp r8 r4 r8
  R1 * 6/8 * 4
  r4 r8
  c4. \fz ~
  c \> ~c4 \! r8
  r4 r8 r bes4 \pp ~

  \TempoIRit

  bes4. ~ bes8 r r

  \mark \default    % Mark D - mesure 73

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIinTempo

  R1 * 6/8 * 8
  bes2. \pp ~
  bes8 r r r4 r8
  c2. \pp ~
  c4. ~ c4 d8
  c2. \< ~
  c4. <<{bes}{s8 \fz -\tweak #'minimum-length #6 \> s s16 s \!}>>
  r8 c-. \pp c-. c4.
  r4 r8 r c-. c-.
  R1 * 6/8
  r8 c-. \pp c-. c4.
  cis8 r r r4 r8
  R1 * 6/8

  \mark \default    % Mark E - mesure 93

  r4 r8 d-. \p r r
  r4 r8 c-. r r
  \override DynamicLineSpanner #'staff-padding = #2
  r4 r8 bes-. \fz r r
  bes \ff r des r4 r8

  % Appel par le cor IV : on combine dans la citation les cors I et II
  \tag #'quoteCornoIV {
    <<{<c c,>2.}{s4 \p -\tweak #'minimum-length #6 \< s s8 s8 \!}>>
  }
  \elseTag #'quoteCornoIV {
    <<{c2.}{s4 \p -\tweak #'minimum-length #6 \< s s8 s8 \!}>>
  }
  <<{bes2.}{s4 \f -\tweak #'minimum-length #6 \> s s8 s8 \!}>>

  % Appel par le cor III et IV : on combine dans la citation les cors I et II
  \tag #'quoteCornoIII \tag #'quoteCornoIV {
    <<{a4. <f f,> ~}{s32 s32 \p -\tweak #'minimum-length #6 \> s4 s16 s4. \pp}>>
    <f f,>2. ~
    <f f,>
  }
  \elseTag #'quoteCornoIII \elseTag #'quoteCornoIV {
    <<{a4. f ~}{s32 s32 \p -\tweak #'minimum-length #6 \> s4 s16 s4. \pp}>>
    f2. ~
    f
  }
  \dynamicLineSpannerStandard

  R1 * 6/8 * 3
  \override DynamicLineSpanner #'staff-padding = #2.5
  d'2. \pp

  % Appel par le cor IV : on combine dans la citation les cors I et II
  \tag #'quoteCornoIV {
    <<{<c c,>2.}{s4 \< s4 s8 s16 s \!}>>
  }
  \elseTag #'quoteCornoIV {
    <<{c2.}{s4 \< s4 s8 s16 s \!}>>
  }

  <<{cis2.}{s4 \f \> s4 s8 s16 s \!}>>  % pour les parties
  d4. \< (f8 ) \! e d                   % pour les parties
  %	cis2.                           % pour la directrice
  %	d4. ( f8 ) e d                  % pour la directrice
  c r b!16 \f ( c des8 c des
  c ) r b!16 ( \> c des8 c des \!
  c ) r \rightDynamic b!16 \p ( \bracketedHairpin c \> des8 c des
  c ) \! r b16-> \pp ( c des8 c des )
  \dynamicLineSpannerStandard

  \mark \default    % Mark F - mesure 113

  R1 * 6/8 * 5
  a8 ( \mf g a f g bes )
  a ( g a ) f4 \< bes16-. g-. \!
  a4. \fz \cresc ~ a4 bes16-. g-. \!
  a4. \fz ~ a4 g16-. f-.
  bes8 r r bes r r
  c2. \ff
  cis->
  c!8 r r c4.->
  cis-> e->

  \mark \default    % Mark G - mesure 127

  f2.-> ~
  f4. ~ f4 b,!8
  c \ff r r f,4-> f16 f
  f4-> f16 f f4-> f16 f
  f4-> f16 f f4-> f16 f
  c'4.-^ \fz ~ c8. d16 c d
  bes4.-^ \fz ~ bes8. c16 bes c
  a4.-^ \fz ~ a8. bes16 a bes
  g8 r r c r r
  cis r r d [r d]
  b! e4-> \fz ~ e8 a,4-> ~
  a8 r r r4 r8

  \mark \default    % Mark H - mesure 139

  b8 r r r4 r8
  R1 * 6/8 * 2
  r4 r8 r d4 \mf
  r4 r8 r cis4 \dim
  <<{R1 * 6/8 * 5}{s1 * 0 \!}>>

  \bar "||"    % mesure 149

  R1 * 6/8 * 8
  e2. \ff
  e4.-> ~ e4 e16-. e-.
  e4. \fz ~ e4 e16-. e-.
  e4. \fz ~ e4 e16-. e-.
  e4. \fz ~ e4 e16-. e-.
  d4. \fz ~ d4 d16-. d-.
  fis4. \fz ~ fis4 fis16-. fis-.
  g4. \fz ~ g4 e16-. e-.

  \mark \default    % Mark I forcé - mesure 165

  dis8 r r r4 r8
  R1 * 6/8 * 6
  c2. \pp ~
  c ~
  c8 r r r4 r8
  R1 * 6/8 * 3
  <<{c4.:16 c:}{s4 \p \< s4 s8 s16 s \!}>>
  <<{c4.:16 c:}{s4 \< s4 s8 s16 s \!}>>
  ees2. \ff ~
  ees4. ~ ees4 c16 \f c
  c2.:16
  c:
  c2.-> \ff ~
  c

  \mark \default    % Mark J - mesure 186

  d4.-> \ff d->
  d-> ~ d4 d8
  d4.-> ~ d4 d8
  ees4.-> ~ ees4 ees8
  d4.-> ~ d4 d8
  d4. g,8 r r
  r4 r8 g r r
  r4 r8 g r r
  r4 r8 aes r r
  r4 r8 aes r r

  \bar "||"

  \mark \default    % Mark K - mesure 196

  c8 \ff ( b! c ) a ( b d )
  c ( b c ) a4 b16-. g-.
  a4.-^ ~ a8 [r16 b b8]
  a4.-^ ~ a8 [r16 c c8]
  c2. \ff ~
  c
  des8 r16 bes \f \Solo g8 des'4. \fp ~
  des2. \> ~
  <<{des ~}{s4 s4 s8 s16 s \!}>>
  des8 \pp r r r4 r8
  R1 * 6/8 * 2
  <<{d!2. ( ~}{s4 \fz -\tweak #'minimum-length #6 \> s4 s8 s16 s \!}>>
  d4. \< dis ) \!
  e4. \f ~ e4 \> d?8 \!
  d2. \dim ~
  <<{d}{s4 \p -\tweak #'minimum-length #4 \> s4 s8 s16 s \!}>>
  d4 \pp ( b8 d4 b8 )

  \bar "||"

  \mark \default    % Mark L - mesure 214

  a8 r r r4 r8
  R1 * 6/8 * 2
  r4 r8 a4. \f ~
  <<{a2.}{s4 \> s4 s8 s16 s \!}>>
  <<{gis2.}{s4 \p -\tweak #'minimum-length #5 \> s4 s8 s \!}>>
  a2. \pp
  gis
  <<{gis2. ~}{s4 -\tweak #'minimum-length #3 \< s4 s8 s16 s \!}>>
  gis8 r r r4 r8
  R1 * 6/8 * 3
  d'8 \ff r r r4 r8
  R1 * 6/8 * 8
  fis2. \pp

  \mark \default    % Mark M - mesure 237

  <<{e2.}{s4 \< s4 s8 s \!}>>
  eis2. \f
  fis4. ( dis
  e8 ) r dis16 ( e f!8 e f
  e ) r dis16 ( e f8 \dim e f
  e8 \p ) r dis16 ( e f8 e f
  e8 \pp ) r dis16 ( e f8 e f )
  R1 * 6/8 * 4

  \bar "||"    % mesure 248

  R1 * 6/8 * 7
  e8-> \ff d-> e-> c-> d-> f->
  a,,4.-^ d-^
  a'-> ~ a8 r r
  bes4.-> \fz ~ bes8 r r
  bes4.-> \fz ~ bes8 r r
  c4.-^ ~ c8 r r
  c4.-^ ~ c8 r r
  d4.-^ ~ d8 r r
  d4.-^ ~ d8 r r
  dis2. ~
  dis

  \mark \default    % Mark N - mesure 266

  e
  e4.-^ ~ e4 c16-. d-.

  \TempoIPaPAcc

  e8-> c d e-> c d
  \noBreak
  e-> c d e-> c e16 \bracketedFF e
  e8-. e-. e-. e-. e-. e-.
  e-. e-. e-. e-. e-. e-.
  e4. cis->
  cis2. \fz
  fis \fz
  f! \fz

  \mark \default    % Mark O - mesure 276

  e8 r r r4 r8
  R1 * 6/8 * 3
  r16 e \ff ( d c b c ) a4 b8 ~
  b cis-> d-> dis-> e-> f-> ~
  f e d! c f e
  <<{e4.:8 e:}{s8 s s s -\tweak #'minimum-length #4 \> s s \!}>>
  e b-. [c-.] b-. \dim c-. b-.\!
  c r r r4 r8
  R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoITempoPrimo

  \once \override MultiMeasureRest #'minimum-length = #14
  R1 * 6/8 * 14

  \mark \default    % Mark Q - mesure 301

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaFlautoI" #UP {s4 * 0 -\tweak #'X-offset #2 -\tweak #'extra-offset #'(0 . -2)
    ^\markup { \fontsize #-3 "Flauto I"} R1 * 6/8 * 2}
  \oneMMRNumberOn

  \override DynamicLineSpanner #'staff-padding = #2.6
  <<{e,4. a}{s4 \pp \< s s8 s16 s \!}>>
  e'4.-> ~ e4 c16-. ( d-. )
  e8 ( d \> e c d f ) \!
  e ( d e ) c4 d16-. ( b-. )
  e4. ~ e4 d16-. -\tweak #'minimum-length #6 \dim ( b-. )
  e4. \pp ~ e4 d16-. \> ( b-. )
  \dynamicLineSpannerStandard

  \TempoIPocoRit    % Mesure 309

  e4. ~ e8 \! r8 r
  e4. ~ e8 r r
  R1 * 6/8 * 3
  \oneMMRNumberOff
  R1 * 6/8 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Cor II                                                      *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMaCornoII = \relative c' {

  \include "Common/Properties.ly"

  \set Staff.minimumPageTurnLength = #(ly:make-moment 16 8)
  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I
  \cueEventType
  \oneMMRNumberOn

  \transposition d

  \TempoI

  R1 * 6/8 * 15

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMaVioloncello" #UP "bass" {s4 * 0 ^\markup { \fontsize #-3 "Violoncello"} R1 * 6/8}
  \oneMMRNumberOn

  r8 f4-> \f ~ f8 ( e d )
  \override DynamicLineSpanner #'staff-padding = #3.2
  cis4. \< ( d4 dis8 ) \bindDynamics ~
  dis4 -\tweak #'minimum-length #5.5 \dim e8 \> ~ e \! r r
  R1 * 6/8 * 5
  \dynamicLineSpannerStandard

  \mark \default    % Mark A - mesure 25

  bes'2.-> \f
  g4.-> ~ g8 r r
  d'4.-> d->
  d,-> ~ d8 r r
  r a'4-> r8 b4->
  r8 c4-> r8 d4->
  e8 r r r4 r8
  R1 * 6/8 * 4
  r8 d \f d ~ d d4
  a8 r r r4 r8
  R1 * 6/8
  r4 r8 fis4. \f
  <<{g}{s8 s8 -\tweak #'minimum-length #5 \<}>> c4. \fz \> ~
  c8 \! r r r4 r8

  \mark \default    % Mark B - mesure 42

  R1 * 6/8 * 5
  r4 r8 r8. aes16-. \f fis8-.
  g4 r8 c4 r8
  r8. bes16-. ges8-. aes4 r8
  r8. aes16-. aes8-. aes4 r8
  R1 * 6/8 * 3

  \mark \default    % Mark C - mesure 54

  e'4-> \f e,-> e,8-. e'16 \ff [e]
  e2. ~
  e4. ~ e8. e16-. e8-.
  a4.-^ ~ a8 [r16 e16-. e8-.]	% pour les parties
  %	a4.-^ ~ a8 [s16 e16-. e8-.]	% pour partie directrice
  a4.-^ ~ a8 [r16 c16-. a8-.]
  c,2.-^ \fz
  c2.-^ \fz
  c8-. r8 r r4 r8
  R1 * 6/8 * 7
  r4 r8
  c4. \fz ~
  c \> ~ c4 \! r8
  r4 r8 r g'4 \pp ~

  \TempoIRit

  g4. ~ g8 r r

  \mark \default    % Mark D - mesure 73

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIinTempo

  R1 * 6/8 * 8
  g2. \pp ~
  g8 r r r4 r8
  c,2. \pp ~
  c4. ~ c4 f8
  c2. \< ~
  c4. <<{d}{s8 \fz -\tweak #'minimum-length #5 \> s s16 s \!}>>
  r8 c-. \pp c-. c4.
  r4 r8 r c-. c-.
  R1 * 6/8
  r8 c-. \pp c-. c4.
  cis8 r r r4 r8
  R1 * 6/8

  \mark \default    % Mark E - mesure 93

  R1 * 6/8 * 3

  \pageTurn

  bes'8 \ff [r bes] r4 r8
  \override DynamicLineSpanner #'staff-padding = #2
  <<{c,2.}{s4 ^\p -\tweak #'minimum-length #5 ^\< s s8 s8 \!}>>
  <<{bes'2.}{s4 ^\f -\tweak #'minimum-length #5 ^\> s s8 s8 \!}>>
  %	<<{a4. f, ~}{s32 s32 \p \> s4 s16 s4. \pp}>>    % pour la directrice
  a4. ^\p -\tweak #'minimum-length #6 ^\> f, ^\pp ~        % pour les parties
  f2. ~
  f
  R1 * 6/8 * 4
  <<{c'2.}{s4 \bracketedPP -\tweak #'minimum-length #10 \< s4 s8 s16 s \bindDynamics}>>
  <<{g'2. ~}{s4 \f -\tweak #'minimum-length #5 \> s4 s8 s16 s \!}>>
  g8 ( \< fis8 c' )) b4.\!
  \dynamicLineSpannerStandard
  R1 * 6/8 * 4

  \mark \default    % Mark F - mesure 113

  R1 * 6/8 * 5
  f8 ( \mf c f a, c g' )
  f ( c f ) a,4 \< g'16-. c,-. \bindDynamics
  f4. \fz \cresc ~ f4 g16-. c,-. \!
  f4. \fz ~ f4 c16-. a-.
  g'8 r r g r r
  c2. \ff
  cis->
  a8 r r c!4.->
  cis-> cis->

  \mark \default    % Mark G - mesure 127

  des2.-> ~
  des4. ~ des4 b!8
  c \ff r r f,4-> f16 f
  f4-> f16 f f4-> f16 f
  f4-> f16 f f4-> f16 f
  c'4.-^ \fz ~ c8. d16 c d
  bes4.-^ \fz ~ bes8. c16 bes c
  a4.-^ \fz ~ a8. bes16 a bes
  g8 r r c r r
  cis r r d [r d]
  b! e4-> \fz ~ e8 a,4-> ~
  a8 r r r4 r8

  \mark \default    % Mark H - mesure 139

  gis8 r r r4 r8
  R1 * 6/8 * 2
  r4 r8 r d4 \mf
  r4 r8 r cis4 \dim
  <<{R1 * 6/8 * 5}{s1 * 0 \!}>>

  \bar "||"    % mesure 149

  R1 * 6/8 * 8
  e'2. \ff
  e4.-> ~ e4 e16-. e-.
  e4. \fz ~ e4 e16-. e-.
  e4. \fz ~ e4 e16-. e-.
  c4. \fz ~ c4 c16-. c-.
  b4. \fz ~ b4 b16-. b-.
  d4. \fz ~ d4 d16-. d-.
  e4. \fz ~ e4 g,16-. g-.

  \mark \default    % Mark I forcé - mesure 165

  b8 r r r4 r8
  R1 * 6/8 * 3
  <<{c,2.-> ~}{s4 \fp -\tweak #'minimum-length #7 \> s s8 s16 s \!}>>
  c8 r r r4 r8
  R1 * 6/8 * 7
  <<{ees4.:16 ees:}{s4. \p \< s4 s16 s \!}>>
  <<{ees4.:16 ees:}{s4. \< s4 s16 s \!}>>
  c'2. \ff ~
  c4. ~ c4 ees,16 \f ees
  ees2.:16
  ees:
  f2.-> \ff ~
  f

  \mark \default    % Mark J - mesure 186

  c4.-> \ff c->
  c-> ~ c4 c8
  c4.-> ~ c4 c8
  c4.-> ~ c4 c8
  c4.-> ~ c4 c8
  d4. g8 r r
  r4 r8 g r r
  r4 r8 g r r
  r4 r8 aes r r
  r4 r8 aes r r

  \bar "||"

  \mark \default    % Mark K - mesure 196

  a!8 \ff ( e a ) c, ( e b' )
  a ( e a ) c,4 g'16-. e-.
  e4.-^ ~ e8 [r16 g g8]
  e4.-^ ~ e8 [r16 e e8]
  f2. \ff ~
  f
  f8 r16 bes \f g8 des'4. \fp \> ~
  des8 \! r r r4 r8
  R1 * 6/8 * 4
  <<{d,2.}{s4 \fz -\tweak #'minimum-length #7 \> s4 s8 s16 s \!}>>
  <<{a'2.}{s4. \< s4. \!}>>
  gis4. \f ~ gis4 \> r8 \!
  R1 * 6/8 * 3

  \bar "||"

  \mark \default    % Mark L - mesure 214

  R1 * 6/8 * 3
  r4 r8 fis4. \f ~
  <<{fis2.}{s4 \> s4 s8 s16 s \!}>>
  <<{e2.}{s4 \p -\tweak #'minimum-length #6 \> s4 s8 s \!}>>
  fis2. \pp
  e
  <<{eis2. ~}{s4 \< s4 s8 s16 s \!}>>
  eis8 r r r4 r8
  R1 * 6/8 * 3
  d8 \ff r r r4 r8
  R1 * 6/8 * 8

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaCornoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2)
     ^\markup { \fontsize #-3 "Corno I"} R1 * 6/8}
  \oneMMRNumberOn

  \mark \default    % Mark M - mesure 237

  <<{e2.}{\rightDynamic s4 \bracketedPP -\tweak #'minimum-length #9 \< s4 s8 s \!}>>
  b'2.-^ \f ~
  b8 ( ais cis ~ cis b a! )
  R1 * 6/8 * 8

  \bar "||"    % mesure 248

  R1 * 6/8 * 7
  c8-> \ff b-> c-> a-> b-> d->
  a,4.-^ d-^
  a'-> ~ a8 r r
  bes4.-> \fz ~ bes8 r r
  bes4.-> \fz ~ bes8 r r
  c4.-^ ~ c8 r r
  c4.-^ ~ c8 r r
  d4.-^ ~ d8 r r
  d4.-^ ~ d8 r r
  dis2. ~
  dis

  \mark \default    % Mark N - mesure 266

  e
  c4.-^ ~ c4 e,16-. g-.

  \TempoIPaPAcc

  c8-> e, g c-> e, g
  \noBreak
  c-> e, g c-> e, e16 \bracketedFF e
  e8-. e-. e-. e-. e-. e-.
  e-. e-. e-. e-. e-. e-.
  e4. bes'->
  bes2. \fz
  a \fz
  d \fz

  \mark \default    % Mark O - mesure 276

  c!8 r r r4 r8
  R1 * 6/8 * 3
  r16 e \ff ( d c b c ) a4 b8 ~
  b cis-> d-> dis-> e-> f-> ~
  f e d! c a gis
  a gis a gis \> a gis \!
  a gis-. [a-.] gis-. \dim a-. gis-.\!
  a r r r4 r8
  R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoITempoPrimo

  R1 * 6/8 * 13

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaCornoIV" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno IV"} R1 * 6/8}
  \oneMMRNumberOn

  \mark \default    % Mark Q - mesure 301

  \oneMMRNumberOff
  \cueDuring #"scoreSgMaCornoIV" #DOWN {R1 * 6/8 * 2}
  \oneMMRNumberOn

  <<{e4. a}{s4 \pp -\tweak #'minimum-length #7 \< s s8 s16 s \!}>>
  c4.-> ~ c4 a16-. ( b-. )
  c8 ( b \> c a b d ) \!
  c ( b c ) a4 b16-. ( e,-. )
  c'4. ~ c4 b16-. \dim ( e,-. )
  c'4. \pp ~ c4 b16-. \> ( e,-. )

  \TempoIPocoRit    % Mesure 309

  c'4. ~ c8 \! r8 r
  c4. ~ c8 r r
  R1 * 6/8 * 3
  \oneMMRNumberOff
  R1 * 6/8 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMaCornoI = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno I" "in F"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMaCornoI
}

voiceSgMaCornoII = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno II" "in F"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMaCornoII
}

quoteScoreSgMaCornoI = \SgMaCornoI
quoteScoreSgMaCornoII = \SgMaCornoII
