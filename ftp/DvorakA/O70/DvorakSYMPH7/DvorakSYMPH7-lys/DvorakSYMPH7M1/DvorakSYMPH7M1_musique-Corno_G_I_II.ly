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
  * Fichier de notes, Cors I et II - partition directrice               *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ****************************************************************
  * Cor I                                                        *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMaCornoI = \relative c'' {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \transposition f

  \TempoI

  \repeat unfold 15 R1 * 6/8
  R1 * 6/8	% insérer ici une citation d'1 mesure du violoncelle
  \partcombineApart
  a16-> \f f f'4-> ~ f8 ( e d )
  cis4. %{\<%} ( d4 dis8 ) \! ~
  \dynamicSpannerOff
  dis f! ( \dim e16 c? a4 ) \! r8
  \partcombineChords
  R1 * 6/8
  \partcombineApart
  r8 c4-> \ff ( ~ c8 b a )
  gis4.-> a4 ( ais8 )
  ais4-> ( b8 ) ~ b r r
  \partcombineAutomatic
  R1 * 6/8

  \mark \default    % Mark A - mesure 25

  \partcombineApartOnce
  bes2.-> %\f
  bes4.-> ~bes8 r r
  \partcombineApartOnce d4.-> \partcombineApartOnce d->
  d-> ~ d8 r r
  r c4 r8 d4->
  r8 e4-> r8 f4->
  \partcombineApartOnce e8 r r r4 r8
  \repeat unfold 4 R1 * 6/8
  r8 \partcombineApart d %{\f%} d -\tweak #'minimum-length #4 ~ d d4
  c8 \partcombineAutomatic r r r4 r8
  R1 * 6/8
  r4 r8 c4. \f
  <<{bes}{s8 s s -\tweak #'minimum-length #5 \<}>> ees4. \fz \> ~
  ees8 \! r r r4 r8

  \mark \default    % Mark B - mesure 42

  \partcombineApart
  r16 f -\tweak #'extra-offset #'(-1.5 . -3) \p -\tweak #'extra-offset #'(0 . -2) \Solo ( ees d c bes ) bes4 ( c8 )
  bes4 ( a8 c f4 )
  r16 f ( ees d c bes ) bes4 ( c8 )
  bes4 ( a8 c f4 ) ~
  f8 r r r4 r8
  \partcombineAutomatic
  \set Staff.soloText = #"1."
  r4 r8 r8. c16-. \f c8-.
  c4 r8 ees4 r8
  r8. des16-. des8-. des4 r8
  r8. ees16-. c8-. des4 r8
  \repeat unfold 3 R1 * 6/8

  \mark \default    % Mark C - mesure 54

  \partcombineApart e4-> %{\f%} e,-> e,8-. \partcombineAutomatic e''16 \ff e
  e2. ~
  e4. ~ e8. e16-. e8-.
  \partcombineApart
  a,4.-^ ~ a8 [b16 \rest e16-. e8-.]	% pour partie directrice
  %	a,4.-^ ~ a8 [r16 e'16-. e8-.]		% pour les parties
  \partcombineAutomatic
  a,4.-^ ~ a8 [r16 c16-. a8-.]
  c2.-^ \fz
  c2.-^ \fz
  \partcombineApart
  \hairpinToBarLineFalse
  bes8-. r16 bes16-. \Solo g8-. des'4. \f \> ~
  des2. \dim ~
  des2. ~
  des4 \pp r8 r4 r8
  \partcombineChords
  \repeat unfold 4 R1 * 6/8
  r4 r8
  c4. \fz ~
  c \> ~c4 \! r8
  r4 r8 r bes4 \pp ~

  \TempoIRit

  \partcombineAutomatic
  bes4. ~ bes8 r r

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  \repeat unfold 8 R1 * 6/8
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

  \partcombineApart
  r4 r8 d-. \p r r
  r4 r8 c-. r r
  r4 r8 bes-. \fz r r
  \partcombineApartOnce bes %{\ff %} \partcombineAutomatic r \partcombineApartOnce des r4 r8
  \partcombineAutomatic
  <<{c2.}{s4 \p \< s s8 s8 \!}>>
  <<{\partcombineApartOnce bes2.}{s4%{\f \> s s8 s8 \!%}}>>
  <<{\partcombineApartOnce a4. \partcombineChords f ~}{s32 s32 \p -\tweak #'minimum-length #5 \> s4 s16 s4. \pp}>>
    % pour la directrice
  f2. ~
  f
  \partcombineAutomatic
  \repeat unfold 3 R1 * 6/8
  \partcombineApartOnce d'2. \pp
  <<{c2.}{s4 \< s4 s8 s16 s \!}>>
  %	<<{cis2.}{s4 \f \> s4 s8 s16 s \!}>>	% pour les parties
  %	d4. \< (f8 ) \! e d			% pour les parties
  \partcombineApart cis2.					% pour la directrice
  d4. ( f8 ) ( e d				% pour la directrice
  c ) r b!16 \f ( c des8 c des
  c ) r b!16 ( \> c des8 c des \!
  c ) r \rightDynamic b!16 \p ( \bracketedHairpin c \> des8 c des
  c ) \! r b!16 \pp ( c des8 c des )

  \mark \default    % Mark F - mesure 113

  \partcombineAutomatic
  \repeat unfold 5 R1 * 6/8
  a8 ( \mf g a f g bes )
  a ( g a ) f4 \< bes16-. g-. \!
  a4. \fz \cresc ~ a4 bes16-. g-. \!
  a4. \fz ~ a4 g16-. f-.
  bes8 r r bes r r
  \partcombineApart
  c2. %\ff
  cis->
  \partcombineAutomatic
  c!8 r r \partcombineApart c4.->
  cis-> \partcombineAutomatic e->

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
  cis r r d r d
  b! e4-> \fz ~ e8 a,4-> ~
  a8 r r r4 r8

  \mark \default    % Mark H - mesure 139

  b8 r r r4 r8
  \repeat unfold 2 R1 * 6/8
  r4 r8 r d4 \mf
  r4 r8 r cis4 \dim
  \repeat unfold 5 R1 * 6/8 \!

  \bar "||"    % mesure 149

  \repeat unfold 8 R1 * 6/8
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
  \repeat unfold 3 R1 * 6/8
  \partcombineApart
  \repeat unfold 2 R1 * 6/8
  \partcombineAutomatic
  R1 * 6/8
  \partcombineApart
  c2. \pp ~
  c ~
  c8 r r r4 r8
  \partcombineAutomatic
  \repeat unfold 3 R1 * 6/8
  c16 \p \<
  \repeat unfold 10 c
  c \!
  c16 \<
  \repeat unfold 10 c
  c \!
  ees2. \ff ~
  ees4. ~ ees4 c16 \f c
  \repeat unfold 24 c	% 2 mesures
  c2.-> \ff ~
  c

  \mark \default    % Mark J - mesure 186

  d4.-> \ff d->
  d-> ~ d4 d8
  d4.-> ~ d4 d8
  \partcombineChords
  ees4.-> ~ ees4 ees8
  \partcombineAutomatic
  d4.-> ~ d4 d8
  d4. \partcombineApartOnce g,8 r r
  r4 r8 \partcombineApartOnce g r r
  r4 r8 \partcombineApartOnce g r r
  r4 r8 \partcombineApartOnce aes r r
  r4 r8 \partcombineApartOnce aes r r

  \bar "||"

  \mark \default    % Mark K - mesure 196

  c8 \ff ( b c ) a! ( b d )
  c ( b c ) a4 b16-. g-.
  a4.-^ ~ a8 [r16 b b8]
  a4.-^ ~ a8 [r16 c c8]
  c2. \ff ~
  c
  des8 r16 \partcombineApart bes \f \Solo g8 des'4. \fp ~
  des2. \> ~
  <<{des ~}{s4 s4 s8 s16 s \!}>>
  des8 \pp r r r4 r8
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/8
  <<{d2. ( ~}{s4 %{\fz \> s4 s8 s16 s \!%}}>>
  d4. %{\<%} dis ) %{\!%}
  e4. %{\f%} ~ e4 %{\>%} \partcombineApart d?8 %{\!%}
  d2. \dim ~
  <<{d}{s4 \p \> s4 s8 s16 s \!}>>
  d4 \pp ( b8 d4 b8 )

  \bar "||"

  \mark \default    % Mark L - mesure 214

  a8 \partcombineAutomatic \override Rest #'staff-position = #0 r r r4 r8
  \revert Rest #'staff-position
  \repeat unfold 1 R1 * 6/8
  \repeat unfold 1 R1 * 6/8
  r4 r8 a4. \f ~
  <<{a2.}{s4 \> s4 s8 s16 s \!}>>
  <<{gis2.}{s4 \p \> s4 s8 s16 s \!}>>
  a2. \pp
  gis
  <<{gis2. ~}{s4 \< s4 s8 s16 s \!}>>
  gis8 r r r4 r8
  \repeat unfold 3 R1 * 6/8
  d'8 \ff r r r4 r8
  \repeat unfold 8 R1 * 6/8
  \partcombineApart
  fis2. \pp

  \mark \default    % Mark M - mesure 237

  <<{e2.}{s4 %{\< s4 s8 s \!%}}>>
  eis2. %\f
  fis4. ( dis
  e8 ) r dis16 ( e f!8 e f
  e ) r dis16 ( e f8 \dim e f
  e8 \p ) r dis16 ( e f8 e f
  e8 \pp ) r dis16 ( e f8 e f )
  \partcombineAutomatic
  \repeat unfold 4 R1 * 6/8

  \bar "||"    % mesure 248

  \repeat unfold 7 R1 * 6/8
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
  e-> c d e-> c e16 \bracketedFF e
  e8-. e-. e-. e-. e-. e-.
  e-. e-. e-. e-. e-. e-.
  e4. cis->
  cis2. \fz
  fis \fz
  f! \fz

  \mark \default    % Mark O - mesure 276

  e8 r r r4 r8
  \repeat unfold 3 R1 * 6/8
  r16 e \ff ( d c b c ) a4 b8 ~
  b cis-> d-> dis-> e-> f-> ~
  f e d! c f e
  e e e e \> e e \!
  e b-. [c-.] \dim b-. c-. b-.\!
  c r r r4 r8
  R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  \repeat unfold 14 R1 * 6/8

  \mark \default    % Mark Q - mesure 301

  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  <<{e,4. a}{s4 %{\pp \< s s8 s16 s \!%}}>>
  \partcombineAutomatic
  e'4.-> ~ e4 c16-. ( d-. )
  e8 ( d \> e c d f ) \!
  e ( d e ) c4 d16-. ( b-. )
  e4. ~ e4 d16-. ( -\tweak #'minimum-length #6 \dim b-. )
  e4. \pp ~ e4 d16-. \> ( b-. )

  \TempoIPocoRit    % Mesure 309

  e4. ~ e8 \! r8 r
  e4. ~ e8 r r
  \repeat unfold 3 R1 * 6/8
  R1 * 6/8

  \bar "|."
}
%{
  ****************************************************************
  * Cor II                                                       *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMaCornoII = \relative c' {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \transposition f

  \TempoI

  \repeat unfold 15 R1 * 6/8
  R1 * 6/8	% insérer ici une citation d'1 mesure du violoncelle
  r8 f4-> \f ~ f8 ( e d )
  cis4. \< ( d4 dis8 ) \! ~
  \dynamicSpannerOff
  dis4 \dim e8 \> ~ e \! \override Rest #'staff-position = #-3 r r \revert Rest #'staff-position
  R1 * 6/8
  \repeat unfold 3 R1 * 6/8
  R1 * 6/8

  \mark \default    % Mark A - mesure 25

  bes'2.-> \f
  g4.-> ~ g8 r r
  d'4.-> d->
  d,-> ~ d8 r r
  r a'4->  r8 b4->
  r8 c4-> r8 d4->
  e8 r r r4 r8
  \repeat unfold 4 R1 * 6/8
  r8 d \f d -\tweak #'minimum-length #4 ~ d d4
  a8 r r r4 r8
  R1 * 6/8
  r4 r8 fis4. \f
  <<{g}{s8 s s -\tweak #'minimum-length #5 \<}>> c4. \fz \> ~
  c8 \! r r r4 r8

  \mark \default    % Mark B - mesure 42

  \repeat unfold 5 R1 * 6/8
  r4 r8 r8. aes16-. \f fis8-.
  g4 r8 c4 r8
  r8. bes16-. g8-. aes4 r8
  r8. aes16-. aes8-. aes4 r8
  \repeat unfold 3 R1 * 6/8

  \mark \default    % Mark C - mesure 54

  e'4-> \f e,-> e,8-. e'16 \ff e
  e2. ~
  e4. ~ e8. e16-. e8-.
  %	a4.-^ ~ a8 [r16 e16-. e8-.]	% pour les parties
  a4.-^ ~ a8 [s16 e16-. e8-.]	% pour partie directrice
  a4.-^ ~ a8 [r16 c16-. a8-.]
  c,2.-^ \fz
  c2.-^ \fz
  c8-. \override Rest #'staff-position = #-7 r8 r r4 r8 \revert Rest #'staff-position
  \repeat unfold 7 R1 * 6/8
  r4 r8
  c4. \fz ~
  c \> ~ c4 \! r8
  r4 r8 r g'4 \pp ~

  \TempoIRit

  g4. ~ g8 r r

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  \repeat unfold 8 R1 * 6/8
  g2. \pp ~
  g8 r r r4 r8
  c,2. \pp ~
  c4. ~ c4 f8
  c2. \< ~
  c4. <<{d}{s8 \fz -\tweak #'minimum-length #6 \> s s16 s \!}>>
  r8 c-. \pp c-. c4.
  r4 r8 r c-. c-.
  R1 * 6/8
  r8 c-. \pp c-. c4.
  cis8 r r r4 r8
  R1 * 6/8

  \mark \default    % Mark E - mesure 93

  \repeat unfold 3 R1 * 6/8
  bes'8 \ff r bes r4 r8
  <<{c,2.}{s4 \p \< s s8 s8 \!}>>
  <<{bes'2.}{s4 \f \> s s8 s8 \!}>>
  <<{a4. f, ~}{s32 s32 \p -\tweak #'minimum-length #5 \> s4 s16 s4. \pp}>>	% pour la directrice
  %	a4. \p \> f \pp ~				% pour les parties
  f2. ~
  f
  \repeat unfold 4 R1 * 6/8
  <<{c'2.}{s4 \bracketedPP \< s4 s8 s16 s \!}>>
  \ignoreNoteCollision
  <<{\voiceOne \tieDown g'2. ~}{s4 \f \> s4 s8 s16 s \!}>>
  \voiceTwo g8 ( \< fis8 c'? )) b4.\!
  \notifyNoteCollision
  \repeat unfold 4 R1 * 6/8

  \mark \default    % Mark F - mesure 113

  \repeat unfold 5 R1 * 6/8
  f8 ( \mf c f a, c g' )
  f ( c f ) a,4 \< g'16-. c,-. \!
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
  f4-> \aII f16 f f4-> f16 f
  f4-> \aIIP f16 f f4-> f16 f
  c'4.-^ \fz ~ c8. d16 c d
  bes4.-^  \fz ~ bes8. c16 bes c
  a4.-^ \aII \fz ~ a8. bes16 a bes
  g8 r r c r r
  cis r r d r d
  b! \aIIP e4-> \fz ~ e8 a,4-> ~
  a8 \aII  r r r4 r8

  \mark \default    % Mark H - mesure 139

  gis8 r r r4 r8
  \repeat unfold 2 R1 * 6/8
  r4 r8 r d4 \mf
  r4 r8 r cis4 \dim
  \repeat unfold 5 R1 * 6/8 \!

  \bar "||"    % mesure 149

  \repeat unfold 8 R1 * 6/8
  e'2. \ff
  e4.-> ~ e4 e16-. e-.
  e4. \aII \fz ~ e4 e16-. e-.
  e4.  \fz ~ e4 e16-. e-.
  c4. \fz ~ c4 c16-. c-.
  b4. \fz ~ b4 b16-. b-.
  d4. \fz ~ d4 d16-. d-.
  e4. \fz ~ e4 g,16-. g-.

  \mark \default    % Mark I forcé - mesure 165

  b8 r r r4 r8
  \repeat unfold 3 R1 * 6/8
  <<{c,2.-> ~}{s4 \fp \> s s8 s16 s \!}>>
  c8 \override Rest #'staff-position = #-7 r8 r r4 r8
  %\revert Rest #'Y-offset
  \repeat unfold 7 R1 * 6/8
  ees16 \p \<
  \repeat unfold 10 ees
  ees \!
  ees16 \<
  \repeat unfold 10 ees
  ees \!
  c'2. \ff ~
  c4. ~ c4 ees,16 \f ees
  \repeat unfold 24 ees	% 2 mesures
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
  f8 r16 bes \f g8 \hairpinToBarLineFalse des'4. \fp \> ~
  des8 \! r r r4 r8
  \repeat unfold 4 R1 * 6/8
  <<{d,2.}{s4 \fz \> s4 s8 s16 s \!}>>
  <<{a'2.}{s4. \< s4. \!}>>
  gis4. \f ~ gis4 \> r8 \!
  \repeat unfold 3 R1 * 6/8

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \repeat unfold 3 R1 * 6/8
  r4 r8 fis4. \f ~
  <<{fis2.}{s4 \> s4 s8 s \!}>>
  <<{e2.}{s4 \p \> s4 s8 s \!}>>
  fis2. \pp
  e
  <<{eis2. ~}{s4 \< s4 s8 s16 s \!}>>
  eis8 r r r4 r8
  \repeat unfold 1 R1 * 6/8
  \repeat unfold 2 R1 * 6/8
  d8 \ff r r r4 r8
  \repeat unfold 8 R1 * 6/8
  R1 * 6/8

  \mark \default    % Mark M - mesure 237

  <<{e2.}{\rightDynamic s4 \bracketedPP \< s4 s8 s \!}>>
  b'2.-^ \f ~
  b8 ( ais cis ~ cis b a! )
  \repeat unfold 8 R1 * 6/8

  \bar "||"    % mesure 248

  \repeat unfold 7 R1 * 6/8
  c8-> \ff b-> c-> a-> b-> d->
  a,4.-^ d-^
  a'-> ~ a8 r r
  bes4.-> \aIIP  \fz ~ bes8 r r
  bes4.-> \fz ~ bes8 r r
  c4.-^ ~ c8 r r
  c4.-^ \aII ~ c8 r r
  d4.-^ ~ d8 r r
  d4.-^ ~ d8 r r
  dis2. \aIIP ~
  dis \aII

  \mark \default    % Mark N - mesure 266

  e
  c4.-^ ~ c4 e,16-. g-.

  \TempoIPaPAcc

  c8-> e, g c-> e, g
  c-> e, g c-> e, e16 \bracketedFF e
  e8-. e-. e-. e-. e-. e-.
  e-. e-. e-. e-. e-. e-.
  e4. bes'->
  bes2. \fz
  a \fz
  d \fz

  \mark \default    % Mark O - mesure 276
  c!8 r r r4 r8
  \repeat unfold 3 R1 * 6/8
  r16 \ff e ( d c b c ) a4 b8 ~
  b cis-> d-> dis-> e-> f-> ~
  f \aII \aIIP e d! c a gis
  a gis a gis \> a gis \!
  a gis-. [a-.] \dim gis-. a-. gis-.\!
  a r r r4 r8
  R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  \repeat unfold 14 R1 * 6/8

  \mark \default    % Mark Q - mesure 301

  \repeat unfold 2 R1 * 6/8
  <<{e4. a}{s4 \pp \< s s8 s16 s \!}>>
  c4.-> ~ c4 a16-. ( b-. )
  c8 ( b \> c a b d ) \!
  c ( b c ) a4 b16-. ( e,-. )
  c'4. ~ c4 b16-. ( -\tweak #'minimum-length #6 \dim e,-. )
  c'4. \pp ~ c4 b16-. \> ( e,-. )

  \TempoIPocoRit    % Mesure 309

  c'4. ~ c8 \! r8 r
  c4. ~ c8 r r
  \repeat unfold 3 R1 * 6/8
  R1 * 6/8 \fermataMarkup

  \bar "|."
}
%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}
voiceSgMaCornoIAII = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corni (F)" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Cor. (F)" I+II}}
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \partcombine \SgMaCornoI \SgMaCornoII
}

