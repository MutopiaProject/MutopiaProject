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
  * Fichier de notes, Hautbois I et II pour directrice                  *
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

SgMaOboeI = \relative c' {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \TempoI

  \repeat unfold 16 R1 * 6/8
  r4 r8 \partcombineApart ees4.-> %{\f%}
  <<{d2.-> ~}{s4 %{\<%} s s8 s \!}>>
  \dynamicSpannerOff
  d4. %{\dim%} ~ d4 \! \partcombineAutomatic r8
  d'8 \mp ( f16 d a'8 ) r4 r8
  r4 r8 bes4.-> \ff
  bes-> a8 ( gis a )
  a4. ~ a8 r r
  a,8 \f \< c16-. a-. e'8-. \! r4 r8

  \mark \default    % Mark A - mesure 25

  a,4. \f ees' \fz
  \partcombineApart
  fis-> ~ fis8 \partcombineAutomatic r r
  \partcombineApartOnce g4.-> %{\f%} d'->
  bes4.-> ~bes8 r r
  \partcombineApart
  r16 \once \override Voice.DynamicText #'X-offset = #-3.0 bes-> \f ( a f e d ) r4 r8
  \partcombineAutomatic
  \repeat unfold 5 R1 * 6/8
  r16 d \f ( c bes a bes ) g4-> a8-> ~
  a b-. c-. d-. dis-. e-.
  f r r r4 r8
  r4 r8 d-. \f d-. g-.
  g4.-> g->
  g-> aes \> ~
  aes8 \! r r r4 r8

  \mark \default    % Mark B - mesure 42

  R1 * 6/8
  \partcombineApart
  r16 aes \mp ( g f ees f ees4 d8 )
  f8. ( ees16 bes8 bes'4 ) r8
  r16 aes ( g f ees f ees4 d8 )
  f4. ( e!4 des8
  c ) \partcombineAutomatic r r r8. \partcombineApart f16-. %{\f%} f8-.
  f4 \partcombineAutomatic r8 r4 r8
  r8. \partcombineApart ges16-. ges8-. ges4 \partcombineAutomatic r8
  r8. cis16-. cis8-. cis4 r8
  e,4 \f r8 g4 r8
  e4 r8 cis r r
  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  r8 r
  \once \override TextScript #'script-priority = #-100
  \once \override TextScript #'Y-offset = #8
  a'4 ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1 \tiny \flat}} \ff a,8-. f'16-. ( \ff [a-.]
  d8 a d f, a e' )
  d ( a d f,8. ) c'16-. a8-.
  a4.-^ ~ a8 [r16 c16-. a8-.]
  a4.-^ ~ a8 [r16 f16-. d8-.]
  f2.-> \fz
  des-> \fz
  bes'8-. r r r4 r8
  \partcombineApart
  a,!2. \p ~
  <<{a2. (}{s4 s4 \> s8 s \!}>>
  bes4 \pp ) r8 r4 r8
  \partcombineAutomatic
  \repeat unfold 4 R1 * 6/8
  \partcombineApart
  r4 r8 f'4. ( \fz ~
  f4 fis8 \< fis4 g8
  g4 bes8 ~ bes4 \! ) a8 \> ( ~

  \TempoIRit

  a8 g d f e! ees \! )
  \partcombineAutomatic

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  \repeat unfold 2 R1 * 6/8
  \repeat unfold 7 R1 * 6/8
  \partcombineApart
  r8 f4 \fz ~ <<{f4.}{s4 \> s16 s \!}>>
  f2. \p ~
  f4. ( a,4 bes8 )
  \partcombineChords
  a4 \bracketedP \< ( d8 a4 d8 ) \!
  a4. \< ( <<{bes4.}{s4 \fp -\tweak #'minimum-length #9 \> s16 s \!}>>
  a8 ) r r r4 r8
  \repeat unfold 5 R1 * 6/8

  \mark \default    % Mark E - mesure 93

  \partcombineApart
  g'4. \p ~ g8 r r
  <<{f!4. ~}{s4 \< s16 s \!}>> f8 r r
  ees4. \mf \< ~ ees8 \! r r
  ees8 \f r r r4 r8
  \partcombineAutomatic
  \repeat unfold 9 R1 * 6/8
  r4 r8 <<{a8 ( g f )}{\rightDynamic s4 %{\mf \<%} s16 s \!}>>
  <<{fis2.}{s4 %{\f \>%} s s8 s \!}>>
  f!4. ( %{\<%} \tweak NoteColumn #'force-hshift #-2 e! ) \!
  f8 r e!16 -\tweak #'extra-offset #'(-3 . -3) \f ( f ges8 f ges
  f ) r e!16 ( \> f ges8 f ges \!
  f8 ) r e!16 \> ( f ges8 f ges \!  ~
  ges8 f ) r r4 r8

  \mark \default    % Mark F - mesure 113

  \repeat unfold 4 R1 * 6/8
  \partcombineApart
  r8 r bes,16 \p \< ( c des8 c des \!
  d! ) r r r4 r8
  \partcombineAutomatic
  \repeat unfold 3 R1 * 6/8
  bes'8 \ff r r a16 r \times 2/3 {a16 ([f ees]} \times 2/3 {c [a f'])}
  bes,4.-> \ff f'->
  fis2.
  f!8 r \partcombineApartOnce bes,16-. \partcombineApartOnce c-. d8 ( cis d )
  d ( cis d) \partcombineApartOnce a'4.->

  \mark \default    % Mark G - mesure 127

  bes!4-> ges-> des!->
  ges4. ~ ges4 e!8
  f8 \ff r r ees4 ( d8 )
  g!4 ( f8 ees!4 d8 )
  c4 ( d8 bes4 d8 )
  c8. d16 c d bes4. \fz ~
  bes8. c16 bes c a4. \fz ~
  a8. bes16 a bes g4. \fz ~
  g8 r16 a' ( g a ) f8 r16 g ( f g )
  ees8 r16 f ( ees f ) d8 r16 ees ( d ees )
  cis8 a4 \fz ~a8 d4 \fz ~
  d8 a'4 \fz ~ a8 c?4 \fz (

  \mark \default    % Mark H - mesure 139

  cis,8 ) r16 bes'!-. \ff a-. bes a8 r r
  R1 * 6/8
  r8. b,16-. \f ais-. b-. ais8-. r r
  r8. b16-. \dim ais-. b-. ais8-. \! r r
  r8. cis16-. \mp b-. cis-. b8-. r r
  \repeat unfold 3 R1 * 6/8
  \partcombineApart
  r4 r8 cis8 \pp ( g ) r
  \partcombineAutomatic
  R1 * 6/8

  \bar "||"    % mesure 149

  \key a \minor
  \repeat unfold 3 R1 * 6/8
  \partcombineApart
  r16 e' \p \< [dis e] r g [fis g] r g [fis g] \!
  e8 r r r4 r8
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/8
  r4 r8 r4 d16 \f ( e
  fis8 eis fis dis e g! )
  fis ( eis fis ) dis4 fis16-. dis-.
  e!4. \aII \fz ~ e4 fis16-. dis-.
  e4.  \fz ~ e4 \partcombineApartOnce a16-. \partcombineApartOnce e-.
  f!4. \fz ~ f4 \partcombineApartOnce a16-. \partcombineApartOnce f-.
  g4. \fz ~ g4 e16-. c-.
  d4. \fz ~ d4 f16-. d-.
  a'4. \fz ~ a4 a16-. a-.

  \mark \default    % Mark I forcé - mesure 165

  gis8 r r r4 r8
  d4. \fp r4 r8
  R1 * 6/8
  \rightDynamic c8 \fp \<( f e ) \! r4 r8
  r r c16 \p \> ( d ees8 b! c ) \!
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  r8 b! \pp ( c16 d ees8 ) r r
  r b ( c16 d ees8 f, ) r
  \partcombineAutomatic
  \repeat unfold 3 R1 * 6/8
  r4 r8 r4 ges'16 \mf ees
  f4  \fz f16 des ees4 \fz ees16 bes!
  ces4 \fz ces16 g! aes4 \fz aes16 e!
  aes'2. \ff ~
  aes4. ~ aes4 bes8 \fz
  \repeat unfold 2 R1 * 6/8
  bes2.-> \ff ~
  bes4. ~ bes8 f,16 ([bes d f])

  \mark \default    % Mark J - mesure 186

  \set Staff.soloText = #""
  <<{
    g2.
    }
    {
      \once \override TrillSpanner #'outside-staff-priority = #500
      s4 -\tweak #'outside-staff-priority #500 \aIIP ^\markup {\tiny \natural} \startTrillSpan
      s s8 s16 s32 s64 \stopTrillSpan
  }>>
  \set Staff.soloText = #"1."
  \set Staff.aDueText = #""
  r8 g ( g, ) g' ( g, ) r
  \set Staff.aDueText = #"a2"
  r g' ( g, ) g' ( g, ) r
  r aes' ( aes, ) aes' ( aes, ) r
  r g' ( g, ) g' ( g, ) r
  g'4.-> c,->
  ees4-> ees16 g, g4.
  ees'4-> ees16 aes, aes4.->
  e'!4 e16 gis, gis4.->
  e'4 e16 a,! a4 a16 ( a' )

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  f8 ( \fff e f ) d ( e g )
  f ( e f ) d4 e16-. c-.
  d4.-^ ~ d8 [r16 e e8]
  d4.-^ ~ d8 [r16 f f8]
  f2. \ff ~
  f
  ges8 r r r4 r8
  \repeat unfold 3 R1 * 6/8
  \partcombineApart r8. fis16 \p dis8-. b'!-. r r
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  r4 r8 r8. e,16 \p d8-.
  cis2. %{\fz%} (
  c!4 \dim b8 b4 bes8 ) \!
  \hairpinToBarLineFalse
  bes4. \p \> a ~
  a4 \! r8 r4 r8

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  \repeat unfold 10 R1 * 6/8
  dis2. \mp (
  \dynamicSpannerOff
  <<{e2.}{s8 s \dim }>>
  g2. \pp )
  \partcombineAutomatic
  d8 r r r4 r8
  \repeat unfold 5 R1 * 6/8
  \partcombineApart
  r4 r8 f16 ( \mf \> d b d f d
  b d f d b d \! f8 \p ) r r
  r4 r8 d4 \p ( \> ~ d16 e ) \!
  f2. \pp (

  \mark \default    % Mark M - mesure 237

  e8 ) r r r4 r8
  ais2. %{\f%}
  a!4. ( gis
  a8) r gis16 ( a bes8 a bes
  a ) r gis16 ( a bes8 \dim a bes
  a \p ) r gis16 ( a bes8 a bes )
  bes \pp ( a d, f4 e8 )
  \set Staff.aDueText = #"a2"
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/8
  r4 r8 r4 d,16 \p ( e
  f8 \< e f d e f \!

  \bar "||"    % mesure 248

  \key d \minor
  d8 ) r r r4 r8
  \repeat unfold 6 R1 * 6/8
  a''8-> \ff g-> a-> f-> g-> bes->
  a, ( f g ) r4 g16 ( a
  bes8 g a ) r4 a16 ( bes
  c8 a ) a16 ( bes c8 f c )
  c ( a ) a16 ( bes  c8 f c )
  d ( bes ) bes16 ( c d8 f d )
  d ( bes ) bes16 ( c d8 f d )
  d[ ( b! ) b16 ( c] d8 g d )
  d[ ( b! ) b16 ( c] d8 g d )
  gis2. ~
  gis

  \mark \default    % Mark N - mesure 266

  a2. ~
  a8 r r r4 r8

  \TempoIPaPAcc

  R1 * 6/8
  r4 r8 r4 d,16-. \ff e-.
  f8-> d-. e-. f-> d-. e-.
  f-> d-. e-. f-> d-. e-.
  a4. \partcombineChords a-> \fz
  fis2.
  \partcombineAutomatic
  g-> \fz
  bes \fz

  \mark \default    % Mark O - mesure 276

  r16 bes, ( a4 ) r16 d ( cis4 )
  r16 e ( d8. ) f16 ( e8. ) g16 ( fis8 ) ~
  fis16 a ( g8. ) a16 ( g8. ) g16 ( f!8 ) ~
  f16 f ( ees8. ) ees16 ( d8. ) d16 ( cis8 )
  d4.-> \ff ( bes'-> ) ~
  bes8 a-. g-. f-. f-. f-.
  ees ( d cis ) d-. f-. e!-.
  f-. e-. f-. e-. \> f-. e-. \!
  \partcombineApart
  f-. a,-. a-. %{\dim%} a-. a-. a-.
  a %{\p%} r r r4 r8
  R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  \repeat unfold 12 R1 * 6/8
  r4 r8 b4. \pp (
  c4. cis4 d16 e

  \mark \default    % Mark Q - mesure 301

  f8 cis d ) r4 r8
  R1 * 6/8
  a'2. \pp ~
  a4 r8 r4 r8
  \repeat unfold 4 R1 * 6/8

  \TempoIPocoRit    % Mesure 309

  f,4. \pp ~ f8 r r
  f4. ~ f8
  r r
  \repeat unfold 3 R1 * 6/8
  R1 * 6/8 \fermataMarkup

  \bar "|."
}
%{
  *****************************************************************
  * Hautbois II                                                   *
  *****************************************************************
%}

SgMaOboeII = \relative c' {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \TempoI

  \repeat unfold 16 R1 * 6/8
  r4 r8 ees4.-> \f
  <<{d2.-> ~}{s4 \< s s8 s \!}>>
  \dynamicSpannerOff
  d4. \dim ~ d4 \! r8
  d8 \mp ( f16 d a'8 ) r4 r8
  r4 r8 bes4.-> \ff
  bes-> a8 ( gis a )
  a4. ~ a8 r r
  a8 \f \< c16-. a-. e'8-. \! r4 r8

  \mark \default    % Mark A - mesure 25

  a,4. \f ees' \fz
  ees-> ~ ees8 r r
  g4.-> \f d->
  g4.-> ~ g8 r r
  \repeat unfold 4 R1 * 6/8
  \partcombineApart
  r16 a, \f ( g f e f ) d4-> \bracketedFz e8-> ~
  e fis-. g-. a-. bes-. c-.
  d r r r4 r8
  \repeat unfold 2 R1 * 6/8
  \partcombineAutomatic
  r4 r8 a-. \f bes!-. b-.
  c4.-> b->
  c-> f \> ~
  f8 \! r r r4 r8

  \mark \default    % Mark B - mesure 42

  \repeat unfold 5 R1 * 6/8
  r4 r8 r8. f16-. \f f8-.
  f4 r8 r4 r8
  r8. ges16-. ges8-. ges4 r8
  r8. cis,16-. cis8-. cis4 r8
  cis4 \f r8 a4 r8
  g4 r8 e r r
  R1 * 6/8

  \mark \default    % Mark C - mesure 54

  r8 r
  \once \override TextScript #'script-priority = #-100
  \once \override TextScript #'Y-offset = #5.8
  a'4 ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1.8 \tiny \flat}} \ff a,8-. f16-. ( \ff [a-.]
  d8 a d f, a e' )
  d ( a d f,8. ) c'16-. a8-.
  a4.-^ ~ a8 [r16 c16-. a8-.]
  a4.-^ ~ a8 [r16 f'16-. d8-.]
  des2.-> \fz
  bes-> \fz
  ges'8-. r r r4 r8
  \repeat unfold 10 R1 * 6/8

  \TempoIRit

  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  \partcombineApart
  f,2. -\tweak #'X-offset #-4 \pp
  f4. ~ f8 r r
  \partcombineAutomatic
  \repeat unfold 10 R1 * 6/8
  f4 \bracketedP \< ( bes8 f4 bes8 ) \!
  f4. \< ( <<{g4.}{s4 \fp -\tweak #'minimum-length #9 \> s16 s \!}>>
  f8 ) r r r4 r8
  \repeat unfold 5 R1 * 6/8

  \mark \default    % Mark E - mesure 93

  \repeat unfold 11 R1 * 6/8
  \partcombineApart
  r4 r8 bes16 \p \Solo ( g e! g bes g
  e g bes g e g bes8 g e )
  a ( \< g f ) \! c' \mf \< ( bes a ) \!
  <<{c2. ~}{s4 \f \> s s8 s \!}>>
  c8 \< ( b d ~ d \! c bes )
  bes2. \f ~
  bes
  <<{bes2. ~}{\bracketedHairpin \rightDynamic s4 -\tweak #'transparent ##t \mp -\tweak #'X-offset #4 \> s s8 s \!}>>
  bes8 \pp r r r4 r8
  \partcombineAutomatic

  \mark \default    % Mark F - mesure 113

  \repeat unfold 9 R1 * 6/8
  bes8 \ff r r c16 r \times 2/3 {a'16 ([f ees]} \times 2/3 {c [a f'])}
  bes,4.->  \ff f'->
  fis2.
  d8 r bes16-. c-. bes8 ( a bes )
  a4. cis!->

  \mark \default    % Mark G - mesure 127

  des4-> bes!-> bes->
  bes4. ~ bes4 bes8
  bes8 \ff r r c4 ( bes8 )
  ees4 ( d8 c4 bes8 )
  a4 ( bes8 g4 bes8 )
  a8. bes16 a bes g4. \fz ~
  g8. a16 g a f4. \fz ~
  f8. g16 f g ees4. \fz ~
  ees8 r16 c' ( ees c ) d8 r16 bes ( d bes )
  c8 r16 a ( c a ) bes8 r16 g ( bes g )
  a8 a4 \fz ~ a8 d4 \fz ~
  d8 \aII  a'4 \fz ~ a8 c?4 \fz (

  \mark \default    % Mark H - mesure 139

  cis,8 ) r16 bes'!-. \ff a-. bes a8 r r
  R1 * 6/8
  r8. b,16-. \f ais-. b-. ais8-. r r
  r8. b16-. \dim ais-. b-. ais8-. \! r r
  r8. cis16-. \mp \aII b-. cis-. b8-. r r
  \repeat unfold 5 R1 * 6/8

  \bar "||"    % mesure 149

  \key a \minor
  \repeat unfold 7 R1 * 6/8
  r4 r8 r4 d16 \f ( e
  fis8 eis fis dis e g! )
  fis ( eis fis ) dis4 fis16-. dis-.
  e!4. \fz ~ e4 fis16-. dis-.
  e4. \fz ~ e4 e16-. e-.
  a,4. \fz ~ a4 f'!16-. f-.
  e4. \fz ~ e4 c16-. g-.
  b4. \fz ~ b4 d16-. b-.
  c4. \fz ~ c4 c16-. c-.

  \mark \default    % Mark I forcé - mesure 165

  b8 r r r4 r8
  gis4. \fp r4 r8
  R1 * 6/8
  \rightDynamic a8 \fp \<( d c ) \! r4 r8
  r r a16 \p \> ( b c8 gis a ) \!
  \repeat unfold 7 R1 * 6/8
  r4 r8 r4 ges'16 \mf ees
  f4 \fz f16 des ees4 \fz ees16 bes!
  ces4 \fz ces16 g! aes4 \fz aes16 e!
  f'2. \ff ~
  f4. ~ f4 d!8 \fz
  \repeat unfold 2 R1 * 6/8
  d2.-> \ff ~
  d4. ~ d8 f,16 ([bes d f])

  \mark \default    % Mark J - mesure 186

  s2.
  r8 g ( g, ) g' ( g, ) r
  r g' ( g, ) g' ( g, ) r
  r aes' \aII  ( aes, ) aes' ( aes, ) r
  r g' ( g, ) g' ( g, ) r
  g'4.-> c,->
  ees4-> ees16 g, g4.->
  ees'4 \aIIP ees16 aes, aes4.->
  e'!4 \aII e16 gis, gis4.->
  e'4  e16 a,! a4 a16 ( a' )

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  d,8 ( \fff a d ) f, ( a e' )
  d ( a d ) f,4 c'16-. a-.
  a4.-^ ~ a8 [r16 c c8]
  a4.-^ ~ a8 [r16 d d8]
  des2. \ff ~
  des
  ees8 r r r4 r8
  \partcombineApart
  a,2. \p ~
  <<{a2. ~}{s4 \> s s8 s \!}>>
  a4 r8 r4 r8
  \repeat unfold 3 R1 * 6/8
  R1 * 6/8
  g2. \fz ~
  g ~ %{\dim%}
  \hairpinToBarLineFalse
  g ~ %{\p \>%}
  g4 \! r8 r4 r8

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  <<
    {a2. ~ (}{
      s4 \p \once \override DynamicLineSpanner #'avoid-slur = #'inside
      \once \override DynamicLineSpanner #'outside-staff-priority = ##f
      s \< s8 s \!
    }
  >>
  a4. e4 \> d8 ) \!
  r cis fis r cis \< fis
  r cis fis \! d4. \fz ~
  <<{d2.}{s4 \> s s8 s \!}>>
  <<{cis2.}{s4 \p \> s s8 s \!}>>
  d2. \pp
  <<{cis2.}{s4 \< s s8 s16 s \!}>>
  <<{cis2. ~}{\bracketedHairpin s4 -\tweak #'X-offset #-0.9 \< s s8 s16 s \!}>>
  cis8 r r r4 r8
  \repeat unfold 3 R1 * 6/8
  g'8 \f r r r4 r8
  \repeat unfold 9 R1 * 6/8

  \mark \default    % Mark M - mesure 237

  R1 * 6/8
  e'2. \f ~
  e8 ( dis fis ~ fis e d! )
  d8 r r r4 r8
  \repeat unfold 5 R1 * 6/8
  r4 r8 r4 d,16 \p ( e
  f8 \< e f d e f \!

  \bar "||"    % mesure 248

  \key d \minor
  d8 ) r r r4 r8
  \repeat unfold 6 R1 * 6/8
  f'8-> \ff e-> f-> d-> e-> g->
  f, ( d e ) r4 e16 ( f
  g8 e f ) r4 f16 ( g
  a8 f ) f16 ( g a8 f g )
  a ( f ) f16 ( g a8 f g )
  bes ( g ) g16 ( a bes8 d bes )
  bes ( g ) g16 ( a bes8 d bes )
  b[ ( g ) g16 ( a] b4 b8 )
  b[ ( g ) g16 ( a] b4 b8 )
  b2. (
  d )

  \mark \default    % Mark N - mesure 266

  f2. ~
  f8 r r r4 r8

  \TempoIPaPAcc

  R1 * 6/8
  r4 r8 r4 d16-. \ff e-.
  f8-> \aII \aIIP  d-. e-. f-> d-. e-.
  f-> d-. e-. f-> d-. e-.
  f4. fis-> \fz
  ees2.
  d-> \fz
  g \fz

  \mark \default    % Mark O - mesure 276

  r16 bes, ( a4 ) r16 d ( cis4 )
  r16 e ( d8. ) f16 ( e8. ) g16 ( fis8 ) ~
  fis16 \aII a ( g8. ) a16 ( g8. ) g16 ( f!8 ) ~
  f16 f ( ees8. ) ees16 ( d8. ) d16 ( cis8 )
  \override Score.FootnoteItem #'annotation-line = ##f
  d4.->  \ff
    ^\footnote \markup {"(9)"} #'(0 . 1)
    \markup { \italic "9 - Slur missing on our reference edition, but present in N. Simrock 1885"} ( bes'-> ~ )
  bes8 a-. g-. f-. f-. f-.
  ees \aII \aIIP ( d cis ) d-. d-. cis!-.
  d-. cis-. d-. cis-. \> d-. cis-. \!
  d-. a-. a-. \dim a-. a-. a-.
  a \p \partcombineAutomatic r r r4 r8
  R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  \repeat unfold 12 R1 * 6/8
  r4 r8 fis4. %{\pp%} ( ~
  fis4. g

  \mark \default    % Mark Q - mesure 301

  f?8 ) r r r4 r8
  R1 * 6/8
  f'2. \pp ~
  f4 r8 r4 r8
  \repeat unfold 4 R1 * 6/8

  \TempoIPocoRit    % Mesure 309

  d,4. \pp ~ d8 r r
  d4. ~ d8
  r r
  \repeat unfold 3 R1 * 6/8
  R1 * 6/8 \fermataMarkup

  \bar "|."%}
}
%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}
voiceSgMaOboeIAII = \new Voice {
  \time 6/8
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Oboi" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Ob." I+II}}
  \set Staff.midiInstrument = "oboe"
  \clef treble
  \partcombine \SgMaOboeI \SgMaOboeII
}

