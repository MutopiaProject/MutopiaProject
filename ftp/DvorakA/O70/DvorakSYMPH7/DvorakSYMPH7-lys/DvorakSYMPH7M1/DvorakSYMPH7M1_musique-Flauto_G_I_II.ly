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
  * Fichier de notes, Flûtes I et II pour directrice                    *
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

SgMaFlautoI = \relative c'' {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \TempoI

  \repeat unfold 19 R1 * 6/8
  d8 ( \mp f16 d a'8 ) r4 r8
  r4 r8 bes4.-> \ff
  bes-> a8 ( gis a )
  a4. ~ a8 r r
  a8 \f \< c16-. a-. e'8-. \! r4 r8

  \mark \default    % Mark A - mesure 25

  \repeat unfold 2 R1 * 6/8
  d,4.-> \f bes'->
  bes-> ~ bes8 r r
  \partcombineApart
  \once \override MultiMeasureRest #'staff-position = #10
  R1 * 6/8
  \override Rest #'staff-position = #10
  r16 e \f ( d a g f ) r4 r8
  \revert Rest #'staff-position
  a'8 \partcombineAutomatic r r r4 r16 a,16  (
  d cis c b bes a g f e g bes a )
  d,8 r r r4 r8
  \repeat unfold 4 R1 * 6/8
  \override MultiMeasureRest #'staff-position = #12
  \override Rest #'staff-position = #14
  \repeat unfold 2 R1 * 6/8
  r4 r8 ees'!4. \f %{\>%} (
  \revert MultiMeasureRest #'staff-position
  \revert Rest #'staff-position
  d8 \! ) r r r4 r8

  \mark \default    % Mark B - mesure 42

  \repeat unfold 5 R1 * 6/8
  r4 r8 r8. des16-. \f b8-.
  c4 r8 r4 r8
  r8. ees16-. c8-. des4 r8
  r8. gis16-. eis8-. fis4 r8
  \repeat unfold 3 R1 * 6/8

  \mark \default    % Mark C - mesure 54

  \once \override TextScript #'script-priority = #-100
  \once \override TextScript #'Y-offset = #11.0
  a4 ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1 \tiny \flat}} \ff
    a,4 \trill a,8-. d'16-. \ff ([e-.]
  f8 e f d e g )
  f ( e f d8. ) e16-. c8-.
  d4.-^ ~ d8 [r16 e-. c8-.]
  d4.-^ ~ d8 [r16 f-. d8-.]
  f2.-> \fz
  des-> \fz
  ges8-. r r r4 r8
  \once \override Dots #'extra-offset = #'(-2.5 . -1.2)  a,,!4. \p ( b4 c8 )
  <<{c4 ( d8 ~ d4 ees8 )}{s4 s4 %{\>%} s8 s \!}>>
  ees4 %{\pp%} r8 r4 r8
  \repeat unfold 4 R1 * 6/8
  \partcombineApart
  r4 r8 f4. ( \fz ~
  f4 fis8 \< fis4 g8
  g4 bes8 ~ bes4 \! ) a8 \> ( ~

  \TempoIRit

  a8 g d f e! ees \! )|

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  \leftDynamic d4 ( \Pdolce \< c8 ees4 d8 \! )
  c4 ( bes8 a4 -\tweak #'rotation #'(-3 0 0) -\tweak #'rotation #'(-3 0 0) \> g8 ) \!
  f4 ( g8 f4 \< g8 )
  \hairpinToBarLineFalse
  f8. ( g16 f g ) \! ees4.-> \fp \> ~
  ees8. \!  f16 ( d f ees8 c' a )
  ees8. ( f16 d f ees4. ) ~|
  ees8 ees' \< ( bes g ees bes'16 a ) \!
  ees8. \> ( f16 d f \! ees4. ) \p
  ees16 ( \<g f g a bes a bes c d c d) \!
  ees \mf ( d f ees c a ) r8 r g''16 ( \> ees! ) \!
  d4 %{\p%} ( c8 ees4 d8 )
  c4 ( bes8 a4 g8 )
  f4 ( %{\<%} g8 f4 g8 \! )
  f8. ( %{\<%} g16 f g ees4. ) \fp %{\>%} ~
  ees8. \! \rightDynamic f16 \pp ( d f ees!8 c' a )
  ees8. ( f16 d f ees4. ) ~
  <<{ees8 ees' ( bes! g ees bes'16 a )}{s4 \< s16 \! s16 s8 \> s8 s16 s \!}>>
  ees8. \p ( f16 d f ees4. )
  d8. ( \< e!16 cis e d e cis d fis g \! )
  eis ( \> fis a b gis a d e! cis d ) \! r8

  \mark \default    % Mark E - mesure 93

  d8. %{\p%} ( e16 cis e d b! g? d g b )
  \dynamicSpannerOff
  c!8. ( %{\<%} d16 b d \! c %{\cresc%} a f c f a ) \!
  bes!8. ( %{\mf \<%} c16 a c \! bes g ees bes ees g )
  bes8 %{\f%} \partcombineAutomatic r r r4 r8
  \repeat unfold 3 R1 * 6/8
  \partcombineApart
  r16 bes,-. \p \> bes ( d f bes ) \! c4 \pp \startTrillSpan ~ c16 \stopTrillSpan bes-.
  r16 bes,-. bes ( d f bes ) c4 \pp \startTrillSpan ~ c16 \stopTrillSpan bes-.
  r16 bes,-. \< bes ( d f bes ) \!
    \once \override TextScript #'script-priority = #-100
    \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -0.5 )
    \once \override TrillSpanner #'outside-staff-priority = #500 des4.  ^\markup {\tiny \flat} \fz \> \startTrillSpan ~
  <<{des4. \! des16 \p  ( bes g bes des bes}{s4 s16 s \stopTrillSpan}>>
  g16 \> bes des bes g bes des8 bes g ) \!
  bes8 \pp ( g e! des e g16 bes )
  a8 ( \< g  f ) \! \partcombineAutomatic c' \mf \< ( bes a ) \!
  \partcombineApart
  ees'4. %{\f \>%} ( d4 ) c8 \! ~
  c  %{\< %} ( b d ~ d \! c bes )
  bes2. %{\f%} ~
  <<{bes2.}{s4 \> s s8 s16 s \!}>>
  ges'8 ( \mp \> f bes, des4 c8 \!
  bes ) %{\bracketedPP%} r r r4 r8
  \partcombineAutomatic

  \mark \default    % Mark F - mesure 113

  \repeat unfold 4 R1 * 6/8
  r8 r bes16 \p \< ( c des8 c des) \!%{\mf%}
  d!8 ( c d bes c ees )
  d ( c d bes4 ) \< ees16-. c-. \!
  d4. \fz \cresc ~ d4 ees16-. c-.
  d4. \fz \< ~ d4 c16-. bes-. \!
  \tupletBracketFalse
  ges'8 \ff r r \times 2/3 {f16 ([ees c]} \times 2/3 {a [f ees]} \times 2/3 {c [a f'])}
  bes4.-> \ff f'->
  fis2.
  f8 r \partcombineApartOnce bes,!16-. \partcombineApartOnce c!-. d8 ( cis d )
  d ( cis d ) ges4.-> (

  \mark \default    % Mark G - mesure 127

  \once \override NoteColumn #'force-hshift = #-0.5 \tweak Stem #'direction #DOWN ges!4 ) -> des!-> bes->
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
  \repeat unfold 4 R1 * 6/8
  \partcombineApart
  cis,8 \p ([cis,]) d' \> ([d,]) e' ([e,])\!
  fis' \pp ([fis,]) fis' ([fis,]) fis' ([fis,])
  \partcombineAutomatic
  R1 * 6/8
  \once \override MultiMeasureRest #'staff-position = #6
  \repeat unfold 2 R1 * 6/8

  \bar "||"    % mesure 149

  \key a \minor
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  b,16 \p b ais b r8 g16 e' dis e r8
  \once \override Hairpin #'rotation = #'(5.5 0 0) b16 \< [g' fis g] e[ b' ais b] b[ e dis e] \!
  \once \override Slur #'outside-staff-priority = #200 fis4 \fz ( eis8 \> g!4 fis8
  <<{e!4}{s16 s32 s64 \! \once \override DynamicLineSpanner #'outside-staff-priority = #150 s \dim}>>
     cis8 ais4 d!8 \!
  b ) r r r4 r8
  \partcombineUnisono
  r4 r8 r4 d,16 \f ( e
  fis8 eis fis dis e g! )
  fis ( eis fis ) dis4 fis16-. dis-.
  e!4. \aII \fz ~ e4 fis16-. dis-.
  e4.  \fz ~ e4  a16-. e-.
  f!4. \aIIP \fz ~ f4 a16-. f-.
  \partcombineAutomatic
  g4. \fz ~ g4 e'16-. c-.
  d4. \fz ~ d4 f16-. d-.
  ees4. \fz ~ ees4 ees16-. c-.

  \mark \default    % Mark I forcé - mesure 165

  e8 r r r4 r8
  e8 ( \f \> ( ais, b ) \! \partcombineUnisono r4 r8
  R1 * 6/8
  \partcombineChords
  \set Staff.aDueText = ""
  e8 \fp \< ( b c ) \! r4 r8
  r8 r c16 ( \p \> d ees8 b! c ) \!
  \unset Staff.aDueText
  \partcombineApart
  r4 c16 ( \dim d ees8 ) \! r c16 ( d
  ees8 ) r r r4 r8
  f8 ( \pp f, ) r f' ( f, ) r
  f' ( f, f' ) \afterGrace {
    \once \override TrillSpanner #'outside-staff-priority = #500
    \once \override TrillSpanner #'extra-offset = #'(0 . -0.3)
    a,4. ^\markup {\tiny \flat} \startTrillSpan
  }
  {g16 \stopTrillSpan [a]}
  bes8 r r r4 r8
  \partcombineUnisono
  \repeat unfold 2 R1 * 6/8
  r4 r8 r4 ges'16 \mf ees
  f4  \fz f16 des ees4 \fz ees16 bes!
  ces4 \fz ces16 g! aes4 \fz aes16 e!
  \partcombineApart
  \acciaccatura {\once \slurUp \once \stemDown \once \override Slur #'positions = #'(4 . 2) f8 }
  \stemDown \override NoteColumn #'force-hshift = #-0.5 des'2. %{\ff%} ~
  des4. ~ des4
  d8 %{\fz%}
  \revert NoteColumn #'force-hshift
  \partcombineUnisono
  \repeat unfold 2 R1 * 6/8
  bes2.-> \ff ~
  bes4. ~ bes8 f16 ([bes d f])|

  \mark \default    % Mark J - mesure 186

  <<{
    g2.
    }
    {
      \once \override TextScript #'extra-offset = #'(0.0 . 1.0 )
      \once \override TrillSpanner #'outside-staff-priority = #500
      s4 \startTrillSpan ^\markup {\tiny \natural} s s8 s16 s32 s64 \stopTrillSpan
  }>>
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
  \partcombineChords
  f8 ( \fff e f ) d ( e g )
  f ( e f ) d4 e16-. c-.
  d4.-^ ~ d8 [r16 e c8]
  \partcombineApart
  \tweak #'force-hshift #-0.5 \tweak Stem #'direction #DOWN d4.-^ ~
  % le fa et le ré qui suivent sont décalés et impossibles à recaler.
  % Ils sont donc remplacés par des silences invisibles
  \tweak Flag #'stencil ##f d8 \tweak #'extra-offset #'(0 . 2) r16 s16 s8
  \partcombineChords
  f2. \ff ~
  f
  ges8 r r r4 r8 \partcombineAutomatic
  \stemUp
  \revert NoteColumn #'force-hshift
  \once \override Dots #'extra-offset = #'(-2.5 . -1.2)  a,,4. \p -\tweak #'positions #'( 4 . 0 ) ( b4 c8
  c4 \> d8 ~ d4 dis8 ) \!
  dis4 \partcombineUnisono r8 r4 r8
  R1 * 6/8
  \partcombineAutomatic
  \override Rest #'staff-position = #8
  r8. b'16 \p fis8-. dis'-. r r
  \partcombineUnisono
  R1 * 6/8
  \partcombineAutomatic
  r8. d16 \p g,!8-. gis'-. r r
  a r r r4 r8
  \revert Rest #'staff-position
  \partcombineUnisono
  \repeat unfold 3 R1 * 6/8

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  \repeat unfold 10 R1 * 6/8
  \set Staff.aDueText = #""
  \partcombineChords
  b,2. \mp (
  <<{cis2.}{s8 s \dim}>>
  d2. \pp )
  d8 r r r4 r8
  \unset Staff.aDueText
  \repeat unfold 3 R1 * 6/8
  \partcombineApart
  r16 d,-. \p d ( fis a d ) e4 \> \startTrillSpan ~ e16 \stopTrillSpan d \!
  r16 d,-. d ( fis a d ) e4 \pp \startTrillSpan ~ e16 \stopTrillSpan d
  r16 d,-. \< d ( fis a d ) \! f4. \startTrillSpan ~
  <<{f4. f16 \p  ( d b d f d}{s4 s16 s \stopTrillSpan}>>
  b16 \dim d f d b d f8 d b \! )
  d ( b gis f gis b16 d )

  \mark \default    % Mark M - mesure 237

  \partcombineChords
  cis8 ( \bracketedP \< b a ) e' ( d cis ) \!
  \partcombineAutomatic
  g'4. ( %{\f%} fis4 e8 ~
  e ) ( dis fis ~ fis e d )
  d2. ~
  <<{d2.}{s4 \> s s8 s16 s \!}>>
  bes'8 \p ( a d, f4 e8 )
  d r r r4 r8
  \partcombineUnisono
  \repeat unfold 4 R1 * 6/8

  \bar "||"    % mesure 248

  \key d \minor
  \repeat unfold 5 R1 * 6/8
  a4.-> \ff d->
  a'-> ~ a4 f8-> ~
  f d4-> a-> \partcombineChords f16 g	%%%%
  a8 ( f g ) r r g16 ( a
  bes8 g a ) r r a16 ( bes
  c8 a ) a16 ( bes c8 f c )
  % nécessité de tricher avec partcombine, report sur la première voix
  \poly {<a c>8 ( <f a> ) <f a>16 ( <g bes> c8 f c )}{s4. a4 g8}	% directrice
  d' ( bes ) bes16 ( c d8 f d )	% directrice
  %	c ( a ) a16 ( bes  c8 f c )	% parties
  %	d ( bes ) bes16 ( c d8 f d )	% parties
  d ( bes ) bes16 ( c d8 f d )
  d ( b! ) b16 ( c d8 g d )
  d ( b! ) b16 ( c d8 g d )
  \partcombineUnisono
  d2.-> ~
  d

  \mark \default    % Mark N - mesure 266

  \partcombineChords
  f ~
  f8 r r r4 r8

  \TempoIPaPAcc

  R1 * 6/8
  
  \partcombineUnisono
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
  <<{a2. ~}{s8 s s s \> s s \!}>>
  a8 r r r4 r8
  \repeat unfold 2 R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  \repeat unfold 6 R1 * 6/8
  \partcombineApart
  \override Rest #'staff-position = #6
  r4 r8 r4 f16-. \pp d-.
  a'-. f-. f'4 ~ f8 r r
  r4 f,16-. \< d-. bes'-. f-. f'4 \fz ~
  f4. \> ( fis ) \! ~
  fis \pp ( ~ fis8 g8. cis,16 )
  d8 r r r4 r8
  \revert Rest #'staff-position
  \partcombineUnisono
  R1 * 6/8
  \partcombineApart
  r4 r8 cis,4 \p ( d16 e

  \mark \default    % Mark Q - mesure 301

  f8 cis d e f bes )
  d ( \> a bes d f gis ) \!
  \partcombineChords
  \set Staff.aDueText = #""
  a2. \pp ~
  a4 r8 r4 r8
  \set Staff.aDueText = #"a2"
  \repeat unfold 4 R1 * 6/8

  \TempoIPocoRit    % Mesure 309

  \repeat unfold 2 R1 * 6/8
  f,,2. \pp ~
  f4 r8 r4 r8
  \partcombineUnisono
  d2. ~
  d \fermata

  \bar "|."
}
%{
  *****************************************************************
  * Flûte II                                                      *
  *****************************************************************
%}

SgMaFlautoII = \relative c'' {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \TempoI

  \repeat unfold 19 R1 * 6/8
  d8 ( \mp f16 d a'8 ) r4 r8
  r4 r8 bes4.->  \ff
  bes-> a8 ( gis a )
  a4. \aII \aIIP ~ a8 r r
  a8 \f \< c16-. a-. e'8-. \! r4 r8

  \mark \default    % Mark A - mesure 25

  \repeat unfold 2 R1 * 6/8
  bes,4.-> \f g'->
  g-> ~ g8 r r
  \override Rest #'staff-position = #0
  r4 r8 r16 d' \f ( cis bes a g )
  r4 r8 r16 f' ( e bes a g )
  a'8 r r r4 r16 a,16  (
  d \aII  cis c b bes a g f e g bes a )
  d,8 \revert Rest #'staff-position r r r4 r8
  \repeat unfold 3 R1 * 6/8
  R1 * 6/8
  \partcombineApart
  \hairpinToBarLineFalse
  r4 r8 a'8-. \f bes!-. b-.
  c4.-> d->
  ees16 ( c g ees c8 ) aes'4. %{\f%} \> ~
  aes8 \! \partcombineAutomatic r r r4 r8

  \mark \default    % Mark B - mesure 42

  \repeat unfold 5 R1 * 6/8
  r4 r8 r8. des16-. \f b8-.
  c4 r8 r4 r8
  r8. ees16-. c8-. des4 r8
  r8. cis16-. cis8-. cis4 r8
  \repeat unfold 3 R1 * 6/8

  \mark \default    % Mark C - mesure 54

  \once \override TextScript #'script-priority = #-100
  \once \override TextScript #'Y-offset = #9.5
  a'4 ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1.5 \tiny \flat}} \ff
    a,4 \trill a,8-. d'16-. \ff ([e-.]
  f8 e f d e g )
  f \aII  ( e f d8. ) e16-. c8-.
  d4.-^ ~ d8 [r16 e-. c8-.]
  d4.-^ \aIIP ~ d8 [r16 f-. d8-.]
  des2.-> \fz
  bes-> \fz
  ees8-. r r r4 r8
  \once \override NoteColumn #'force-hshift = #1.2 a,,!2. %{\p%} ~
  <<{a (}{s4 s4 \> s8 s \!}>>
  bes4 ) \pp r8 r4 r8
  \repeat unfold 7 R1 * 6/8

  \TempoIRit

  R1 * 6/8

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  \repeat unfold 2 R1 * 6/8
  \override MultiMeasureRest #'staff-position = #-7
  \repeat unfold 6 R1 * 6/8
  \override Rest #'staff-position = #-8
  r8 r f16 ( \p \< g f g a bes a bes \! )
  \override Rest #'staff-position = #-4
  a8 r r f''16 ( \mf \> ees c a ees' c ) \!
  \revert MultiMeasureRest #'staff-position
  \revert Rest #'staff-position
  bes4 \p ( a8 ) a4 ( bes8 )
  a4 ( f8 )  f4 ( ees8 )
  c4 ( \< bes8 c4 bes8 \! )
  <<{c4.( bes}{s4. \< s8 \fp -\tweak #'minimum-length #9 \> s s16 s \!}>>
  a8 ) r r r4 r8
  \override MultiMeasureRest #'staff-position = #-2
  \repeat unfold 5 R1 * 6/8

  \mark \default    % Mark E - mesure 93

  \override Rest #'staff-position = #-3
  b'4. \p ~ b8 r r
  \dynamicSpannerOff
  a4. \< ~ a8 \cresc r r \!
  g4. \mf \< ~ g8 \! r r
  bes8 \f r r r4 r8
  \revert Rest #'staff-position
  \repeat unfold 9 R1 * 6/8
  \rightDynamic a8 \bracketedPP ( \< g  f ) \! a \mf \< ( g f ) \!
  <<{c'4. ( fis,4. )}{s4. \f \> s4 s8 \!}>>
  f!4. ( \< e! \! )
  g8 \f ( f ) r r4 r8
  \repeat unfold 3 R1 * 6/8

  \mark \default    % Mark F - mesure 113

  \repeat unfold 4 R1 * 6/8
  r4 r8 r4 bes16-. \mf c-.
  bes8 ( f bes d, f c' )
  bes ( f bes d,4 ) \< c'16-. f,-. \!
  bes4. \fz \cresc ~ bes4 c16-. f,-.
  bes4. \fz \< ~ bes4 f16-. d-. \!
  \tupletBracketFalse
  ees'8 \ff r r \times 2/3 {f16 ([ees! c]} \times 2/3 {a [f ees]} \times 2/3 {c [a f'])}
  bes4.->  \ff f'->
  cis4 ( bis8 dis4 cis8 )
  d!8 r bes!16-. c!-. bes8 ( a bes )
  a4.-> cis!->

  \mark \default    % Mark G - mesure 127

  des4%{->%} bes-> bes->
  bes4.  ~ bes4 bes16-. c-.
  bes4 \ff ( a8 c4 bes8 )
  ees4 ( d8 c4 bes8 )
  a4 ( bes8 g4 bes8 )
  a8. bes16 a bes g4. \fz ~
  g8. a16 g a f4. \fz ~
  f8. g16 f g ees4. \fz ~
  ees8 r16 c ( ees c ) d8 r16 bes ( d bes )
  c8 r16 a ( c a ) bes8 r16 g ( bes g )
  a8 a'4 \fz ~ a8 d4 \fz ~
  d8 \aII  a'4 \fz ~ a8 c?4 \fz (

  \mark \default    % Mark H - mesure 139

  cis,8 ) r16 bes'!-. \ff a-. bes a8 r r
  \repeat unfold 7 R1 * 6/8
  \partcombineApart
  r4 r8 e,8 ( \pp ais, ) r
  \partcombineAutomatic
  R1 * 6/8

  \bar "||"    % mesure 149

  \key a \minor
  \repeat unfold 2 R1 * 6/8
  \once \override MultiMeasureRest #'staff-position = #-6
  R1 * 6/8
  \tweak #'staff-position #-6 r4 r8 r \bracketedHairpin g'16 \bracketedMF -\tweak #'X-offset #6 \< b b b \!
  ais8 %{\fz%} r r r4 r8
  \repeat unfold 2 R1 * 6/8
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
  \repeat unfold 7 R1 * 6/8
  r4 r8 r4 ges'16 \mf ees
  f4 \fz f16 des ees4 \fz ees16 bes!
  ces4 \fz ces16 g! aes4 \fz aes16 e!
  \acciaccatura f8 aes2. \ff ~	% Parties
  %aes2. \ff ~			% directrice
  aes4. ~ aes4 bes8 \fz
  \repeat unfold 2 R1 * 6/8
  bes2.-> \ff ~
  bes4. ~ bes8 f16 ([bes d f])|

  \mark \default    % Mark J - mesure 186

  <<{
    g2.
   }
    {
      \once \override TextScript #'extra-offset = #'(0.0 . 0.05)
      \once \override TrillSpanner #'extra-offset = #'(0.0 . -1.8)
      \once \override TrillSpanner #'outside-staff-priority = #500
      s4 -\tweak #'outside-staff-priority #600 \aIIP \startTrillSpan ^\markup {\raise #-0.9 \tiny \natural}
      s s8 s16 s32 s64 \stopTrillSpan
 }>>
  r8 g ( g, ) g ( g, ) r
  r g'' ( g, ) g ( g, ) r
  r aes'' \aII  ( aes, ) aes ( aes, ) r
  r g'' ( g, ) g ( g, ) r
  g''4.-> c,->
  ees4-> \ff ees16 g, g4.
  ees'4-> \aIIP ees16 aes, aes4.->
  e'!4 \aII e16 gis, gis4.->
  e'4  e16 a,! a4 a16 ( a' )

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  d,8 ( \fff a d ) f, ( a e' )
  d ( a d ) f,4 c'16-. a-.
  a4.-^ ~ a8 [r16 a a8]
  a4.%{-^%} ~ a8 [s16 f' d8]
  des2. \ff ~
  des
  ees8 r r r4 r8
  \once \override NoteColumn #'force-hshift = #1.2 a,,2. \p ~
  \revert NoteColumn #'force-hshift
  <<{a2. ~}{s4. \> s4 s8 \!}>>
  a4 r8 r4 r8
  \repeat unfold 8 R1 * 6/8

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  \repeat unfold 10 R1 * 6/8
  fis'2. \mp (
  <<{a2.}{s8 s \dim}>>
  b2. \pp )
  g8 r r r4 r8
  \repeat unfold 9 R1 * 6/8

  \mark \default    % Mark M - mesure 237

  a8 ( \bracketedP \< e cis ) cis' ( b a ) \!
  e'4. ( \f ais, )
  a! ( gis
  b8 a ) r r4 r8
  \repeat unfold 7 R1 * 6/8
  \key d \minor

  \bar "||"    % mesure 248

  \repeat unfold 5 R1 * 6/8
  a4.-> \ff d->
  a'-> ~ a4 f8-> ~
  f d4-> a-> d,16 e
  f8 ( d e ) r r e16 ( f
  g8 e f ) r r f16 ( g
  a8 %{^\markup {\italic "[con forza]"}%} f ) f16 ( g a8 f g )
  % nécessité de tricher avec partcombine, report sur la première voix
  s2.				% directrice
  %	a ( f ) f16 ( g a4 g8 )	% parties
  bes8 ( g ) g16 ( a bes8 d bes )
  bes ( g ) g16 ( a bes8 d bes )
  b ( g ) g16 ( a b8 d b )
  b ( g ) g16 ( a b8 d b )
  d2.-> ~
  d \aII

  \mark \default    % Mark N - mesure 266

  c ~
  c8 r r r4 r8

  \TempoIPaPAcc

  R1 * 6/8
  r4 r8 r4 d16-. \ff e-.
  f8-> \aII \aIIP  d-. e-. f-> d-. e-.
  f-> d-. e-. f-> d-. e-.
  d4. ees-> \fz ~
  ees2.
  d2.-> \aII \fz
  bes  \fz

  \mark \default    % Mark O - mesure 276

  r16 bes \aIIP ( a4 ) r16 d ( cis4 )
  r16 e ( d8. ) f16 ( e8. ) g16 ( fis8 ) ~
  fis16 \aII a ( g8. ) a16 ( g8. ) g16 ( f!8 ) ~
  f16 f ( ees8. ) ees16 ( d8. ) d16 ( cis8 )
  d4.->  \ff ( f4-> ) e!8 ~
  e ees-. d-. d-. d-. d-.
  ees \aII \aIIP ( d cis ) d ( bes a )
  <<{a2. ~}{s8 s s s \> s s \!}>>
  a8 r r r4 r8
  \repeat unfold 2 R1 * 6/8

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  \repeat unfold 14 R1 * 6/8

  \mark \default    % Mark Q - mesure 301

  \repeat unfold 2 R1 * 6/8
  f'2. \pp ~
  f4 r8 r4 r8
  \repeat unfold 4 R1 * 6/8

  \TempoIPocoRit    % Mesure 309

  \repeat unfold 2 R1 * 6/8
  d,,2. \pp ~
  d4 r8 r4 r8
  \partcombineApart
  d2. ~
  d \fermata

  \bar "|."
}
%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}
voiceSgMaFlautoIAII = \new Voice {
  \time 6/8
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Flauti" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Fl." I+II}}
  \set Staff.midiInstrument = "flute"
  \clef treble
  \partcombine \SgMaFlautoI \SgMaFlautoII
}

