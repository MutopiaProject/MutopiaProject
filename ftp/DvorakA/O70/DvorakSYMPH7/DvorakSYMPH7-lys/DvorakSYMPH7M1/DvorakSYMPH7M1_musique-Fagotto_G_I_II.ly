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
  * Fichier de notes, Bassons I et II pour directrice                   *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ****************************************************************
  * Basson I                                                     *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMaFagottoI = \relative c {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \TempoI

  \repeat unfold 4 R1 * 6/8
  bes4. \pp ~ bes4 r8
  bes4. ~ bes4 r8
  \repeat unfold 9 R1 * 6/8
  r4 r8 r4 \partcombineApart bes16-> %{\f%} g
  d'-> %{\<%} [bes] bes'8 \! \partcombineAutomaticOnce r ees,4.-> %\f
  <<{d4. bes}{s4 %{\<%} s s8 s %{\!%}}>>
  f'4. %{\dim%} ~ f8 bes ( a16 f
  d8 ) %{\p%} \partcombineAutomatic r r r4 f16-> \f \< d-.
  a'-> \! f-. f'4-> \ff ~ f8 e ( d )
  cis4.-> d4 ( dis 8)
  dis4-> ( e8 ) ~ \bracketedHairpin e \< f ( e16 c \!
  a8 ) r r r4 r8

  \mark \default    % Mark A - mesure 25

  a4. \f ees' \fz

  \clef tenor
  \partcombineApart
  fis4.-> ~ fis8 \partcombineAutomatic r r
  \clef bass
  d4.-> \f bes->
  bes-> ~ bes8 r r
  f4 r8 g4 r8 a4.-> bes->
  \partcombineApartOnce a8 r r r4 r16 a,16 (
  d e fis g gis a bes a g! e cis a')
  d,8 \<d-. [f-.] bes4-> \fz c!8-> ~
  c c-. bes-. a?-. bes-. g-.
  fis g-. [bes-.] ees4-> d8 ~
  d des-. c-. b-. bes-. a-.
  a r r r4 r8
  r4 r8 fis-. \f g-. f-.
  ees4.-> d->
  c-> bes \> ~
  bes8 \! r r r4 r8

  \mark \default    % Mark B - mesure 42

  bes'2. \p ~
  bes
  bes ~
  bes ~
  bes8 r r r4 r8
  r4 r8 r8. des16-. \f b8-.
  c4 r8 r4 r8
  r8. ees16-. c8-. des4 r8
  r8. cis16-. cis8-. cis4 r8
  e4 \f r8 g4 r8
  e4 r8 cis8 a4-> \fz
  % partcombine ne peut fonctionner - 3 voix nécessaires. On triche en regroupant les deux voix sur la première
  % en faisant taire la seconde voix
  \set Staff.soloText = #""
  \polyNeutral {cis4-> \fz e-> \fz a8 r}{\once \override DynamicText #'stencil = ##f s4 \p \< s s \!}

  \mark \default    % Mark C - mesure 54

  \set Staff.soloText = #"1."
  r4 r8 r4 \clef tenor d,16-. \ff ( e-.
  f8 e f d e g )
  f ( e f d8. ) e16-. c8-.
  d4.-^ ~ d8 [r16 e-. c8-.]
  d4.-^ ~ d8 [r16 f-. d8-.]
  des2.-> \fz
  des-> \fz
  ees8-. r r r4 r8
  \clef bass
  \partcombineApart
  ges4. \p ( ees ~
  <<{ees4. d}{s8 s  s -\tweak #'rotation #'(-3 0 0) \> s s s \!}>>
  c4 ) \pp \partcombineAutomatic \override Voice.Rest #'Y-offset = #3.0 r8 r4 r8 \revert Voice.Rest #'Y-offset
  \repeat unfold 6 R1 * 6/8
  r4 r8 r8 \partcombineApartOnce f,4 %{\pp%} ~

  \TempoIRit

  \partcombineApartOnce f4. ~ \partcombineApartOnce f8 r r

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  r8 d' \pp \< ( c ) r ees ( d ) \!
  r8 c \> ( bes ) r c ( bes ) \!
  r a ( d ) r a \< ( d )
  r a \! ( d ) \partcombineApart \hairpinToBarLineFalse \rightDynamic g,4.-> %{\fp \>%} (
  f2. ) \!
  <<{g4. ( f )}{s4. s4 %{\<%} s16 s \!}>>
  g2. %\fz
  f4. (%{\>%} g )% \p
  \partcombineAutomatic
  f2. \pp ~
  f8 r r r4 r8
  % La séquence qui suit est intermédiaire entre la notation accordique (notes) et la notation polyphonique (liaisons)
  % On modifie donc la direction des hampes.
  \stemDown
  \override NoteColumn #'force-hshift = #-0.5
  \override Flag #'transparent = ##t
  d'4 %{\p%} \( c8 ees4 d8 \)
  c4 \( bes8 a4 g8 \)
  % Nécessaire de répéter cette séquence de \revert
  \revert NoteColumn #'force-hshift
  \revert Flag #'transparent
  \stemNeutral
  ees'4 ( \< d8 ) ees4 ( d8 )
  ees4. <<{c}{s4 \fz -\tweak #'minimum-length #9 \> s16 s \!}>>
  a2. \pp
  bes4. ( a )
  <<{ees'2.}{s4 \< s16 \! s16 s8 \> s8 s16 s \!}>>
  \partcombineApart
  \stemUp
  \revert NoteColumn #'force-hshift
  \revert Flag #'transparent
  a,2. ~
  a8 \partcombineAutomaticOnce r \partcombineAutomaticOnce r fis' r r
  \partcombineAutomatic
  R1 * 6/8

  \mark \default    % Mark E - mesure 93

  r8 d,-. \p b'-. d-. r r
  r c,-. \< a'-. c-. \! r r
  r bes,!-. \mf \< g'-. bes-. \! r r
  bes \ff r r r ges! r
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  r4 r8 r16 bes,-. \p \< bes ( ees g bes ) \!
  bes8 r r r16 e,!-. \pp e ( g bes d
  bes8 ) r r r16 e,-. e ( g bes d
  bes8 ) r r r4 r8
  r4 r8 ees4 \p \> ees16 ( e ) \!
  e!2. \pp ~
  e
  <<{ees}{\rightDynamic s4. %{\bracketedPP \<%} s4 s8 \!}>>
  \partcombineAutomatic
  a,4. \f \> ( d, ) \!
  g \< ( c, \! )
  f \f ( ges )
  f ( \> ges ) \!
  <<{f ( ges )}{\bracketedHairpin \rightDynamic s4. \mp -\tweak #'X-offset #4 \> s4 s8 \!}>>
  f4. \pp ( ges )

  \mark \default    % Mark F - mesure 113

  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  \override Voice.Rest #'Y-offset = #3.0 r4 r8 r4 bes16 \p ( c
  des8 c des bes c ees
  des ) r \once \override Voice.Rest #'extra-offset = #'( 0 . 3.0 ) r
    \once \override Voice.Rest #'extra-offset = #'( 0 . 3.0 ) r4
    \revert Voice.Rest #'Y-offset bes16-. %{\mf%} c-.
  \partcombineAutomatic
  d!8 ( c d bes c ees )
  d ( c d bes4 ) \< ees16-. c-. \!
  d4. \fz \cresc ~ d4 ees16-. c-.
  d4. \fz \< ~ d4 c16-. bes-. \!
  ges'8 \ff ees,16 ([ges bes des]) c8 r r
  d!4 \ff ( c8 ees4 d8 )
  cis4 ( bis8 dis4 cis8 )
  d!8 r r f4.-> \f
  \partcombineApart
  \stemDown
  \tweak NoteColumn #'force-hshift #-0.5
  fis4. ( ~ \stemUp fis16 cis a fis! cis! a )

  \mark \default    % Mark G - mesure 127

  ges4-> \partcombineAutomatic \stemNeutral des''-> des->
  des4. ~ des4 bes8
  d!4 \ff ( c8 ees4 d8 )
  g!4 ( f8 ees!4 d8 )
  c4 ( d8 bes4 d8 )
  f,4. \fz ~ f8. g16-. f-. g-.
  ees4. \fz ~ ees8. f16 ees f
  d4. \fz ~ d8. ees16 d ees
  c8 r r f r r
  \partcombineApartOnce fis r r \partcombineApartOnce g r \partcombineApartOnce bes
  \partcombineApartOnce a8 r16 f' \bracketedFF e! f d8 r16 \clef tenor g f g
  e8 r16 a g a f8 r16 f e f

  \mark \default    % Mark H - mesure 139

  cis8 r r r4 r8
  \clef bass
  r8. bes16-. \ff a-. bes-. a8 r r
  r8. b16-. \f ais-. b-. ais8-\parenthesize-. r r
  r8. b16-. \dim ais-. b-. ais8-. r r
  r8. cis16-. \mp b-. cis-. b8-. r r
  \partcombineApart
  cis8 \p \override Voice.Rest #'Y-offset = #3.0 r d \> r e r \! \revert Voice.Rest #'Y-offset
  fis2. \pp ~
  fis
  \partcombineAutomatic
  cis \pp ( ~
  cis

  \bar "||"    % mesure 149

  \key a \minor
  d8 ) r r r4 r8
  \repeat unfold 3 R1 * 6/8
  \partcombineApart
  R1 * 6/8
  r8. e16 \p ( dis e cis8 ) r r
  \partcombineAutomatic
  fis,2.
  <<{d'}{s4. \< s8 s s16 s\!}>>
  c!8 \ff ([c,]) c ([c,]) r r
  \repeat unfold 5 {c'' ([c,]) c ([c,]) r r}
  r g''' ([g,]) g ([g,]) r
  r f'' ([f,]) f ([f,]) r

  \mark \default    % Mark I forcé - mesure 165

  e'8 r r \partcombineApart e \f ( cis' d )
  \partcombineAutomatic
  R1 * 6/8
  <<{r4 e16 ( d c!8 f e )}{s4 \rightDynamic s8 \p \< s16 \!  s16 \> s8 s16 s \!}>>
  r4 r8 <<{e8 ( b c )}{\rightDynamic s8 \mf \> s s16 s \!}>>
  ees8 \bracketedP ( b! c ) r4 r8
  \repeat unfold 9 R1 * 6/8
  r4 r8 r4 aes16 \ff ( bes
  ces8 bes ces aes bes des )
  ces ( bes ces aes4 ) bes8 \fz
  R1 * 6/8
  r4 r8 r4 f16 \ff g!
  aes8 ( g aes f g bes )
  aes ( g aes )
  \partcombineApart
  f ( d! aes! )
  \partcombineAutomatic

  \mark \default    % Mark J - mesure 186

  f'2.-^
  r8 g' ([g,]) g ([g,]) r
  r g'' ([g,]) g ([g,]) r
  r aes'' ([aes,]) aes ([aes,]) r
  r g'' ([g,]) g ([g,]) r
  g'4 ees!16-. f-. g8 ( f g )
  ees4 ees16-. f-. g8 ( f g )
  ees4 ees16-. f-. ges8 ( f ges )
  e!4 e16-. fis-. gis8 ( fis gis )
  e4 e16-. fis-. g!8 ( fis g )

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  f!8 \fff ( e' f ) d ( e g )
  f ( e f ) d4 e16-. c-.
  d4.-^ ~ d8 [r16 e e8]
  d4.-^ ~ d8 [r16 d d8]
  des2. \ff ~
  des
  ees8 r r r4 r8
  \partcombineApart
  ges4. \p ( ees
  <<{d c}{s4 -\tweak #'rotation #'(-6 0 0 ) \> s s8 s \!}>>
  b4 ) r8 r4 r8
  \partcombineAutomatic
  R1 * 6/8
  \partcombineApart
  r8. b16 \p fis8-. dis'-. r r
  \partcombineAutomatic
  R1 * 6/8
  \partcombineApart
  r8. d16 \p g,!8-. gis'-. r r
  a r r r \partcombineAutomatic e \f ( g, )
  r e' \dim ( g, ) r e' ( g, )
  <<{r e' ( bes! ) r e ( a, )}{s8 s \p \> s s s s16 s \!}>>
  r8 e' \pp ( cis ) r b ( a )

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  r8 fis' \p \< ( e ) r g ( fis ) \!
  r e ( d ) \> r cis ( b ) \!
  \partcombineApart
  <<{a2. ~}{s4 s s %{\<%}}>>
  <<{a4. \partcombineAutomatic b ~}{s4 s8 \! s4 \fz}>>
  <<{b2.}{s4 \> s s8 s16 s \!}>>
  <<{a2.}{s4 \p \> s s8 s16 s \!}>>
  b2. \pp
  <<{a2.}{s4 \< s s8 s16 s \!}>>
  <<{ais2. ~}{s4 \< s s8 s16 s \!}>>
  ais8 r r r4 r8
  fis8-. \mp [r dis'-.] fis-. r r
  e,-. \dim [r cis'-.] e-. r r
  d,8-. \pp [r b'-.] d-. r r
  d \f r r r4 r8
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  r4 r8 r16 d,-. \p d ( g b d )
  d8 r r r16 \dynamicSpannerOff gis,-. \dim gis ( \! b d fis
  d8 ) r r r16 gis,-. \pp gis ( b d fis
  d8 ) r r r4 r8
  r4 r8 \clef tenor g4 \p g16 ( gis )
  gis2. \dim ~
  gis \!
  \partcombineAutomatic

  \clef bass

  \mark \default    % Mark M - mesure 237

  <<{g2.}{\rightDynamic s4 \bracketedP \< s s8 s \!}>>
  cis,4. \f ( fis, )
  b ( e, )
  a ( bes )
  a ( bes ) \dim
  a \p ( bes )
  a \pp ( bes )
  \repeat unfold 3 R1 * 6/8
  d,2. \pp

  \bar "||"    % mesure 248

  \key d \minor
  a'4. ~ a4 g16 ( a
  <<{bes4 ) a8-. g-. f-. e-.}{s4 s8 s8 \cresc}>>
  d-. \< bes'-. a-. g-. f-. e-. \!
  d-. \mf bes'-. a-. g-. f-. e-.
  d-. \< bes'-. a-. g-. f-. e-. \!
  a-> \ff f-. g-. f-> g-. bes-.
  f'-> e-> f-> d-> e-> g->
  a,-> g-> a-> f-> g-> bes->
  d,4.-> g->
  d'4. \fz ~ d16 ( a f d a f )
  ees''4. \fz ~ ees16 ( c a f ees c )
  ees'4. \fz ~ ees16 ( c a f ees c )
  f'4. \fz ~ f16 ( d bes f d bes )
  f''4. \fz ~ f16 ( d bes f d bes )
  g''4. ~ g16 ( d b g f d )
  g'4. ~ g16 ( d b g f d )
  f8-. -\parenthesize -> d-. e-. f-. -\parenthesize -> d-. e-.
  bes!2.-^

  \mark \default    % Mark N - mesure 266

  f ~
  f8 r r r4 r8

  \TempoIPaPAcc

  R1 * 6/8
  r4 r8 r4 d''16-. \ff e-.
  f8-> d-. e-. f-> d-. e-.
  f8-> d-. e-. f-> d-. e-.
  d d,, ( f16 a c8 ) d, ( fis16 a
  c8 ) d, ( fis16 a c8 ) d, ( fis16 a
  b8 ) d, ( g16 a b8 ) d, ( g16 b
  cis8 ) d, ( g16 bes cis8 ) d, ( g16 bes )

  \mark \default    % Mark O - mesure 276

  d16 bes' ( a4 ) r16 d ( cis4 )
  r16 e ( d8. ) f16 ( e8. ) g16 ( fis8 ) ~
  fis16 a ( g8. ) a16 ( g8. ) g16 ( f!8 ) ~
  f16 f ( ees8. ) ees16 ( d8. ) d16 ( cis8 )
  d,4. \ff ~ d4 cis8 ~
  cis c-^ b-^ bes-^ a-^ aes-^
  g-^ f-^ e-^ f-^ g-^ a!-^
  d8-. a'-. d,-. a'-. \> d,-. a'-. \!
  d,-. \partcombineApart a-. [d-.] %{\dim%} a-. d-. a-.
  d %{\p%} r r r4 r8
  r8 e-. \pp f-. e-. f-. e-.

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  f r r r4 r8
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  ees4. \pp ~ ees4 \override Voice.Rest #'Y-offset = #0.0 r8
  des4. ~ des4 r8
  b4. ~ b4 r8
  bes4. ~ bes4 r8
  a4. ( bes
  a bes4 ) r8
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/8
  \partcombineApart
  \override MultiMeasureRest #'staff-position = #8
  R1 * 6/8
  r4 r8 d'4. \pp ~
  d ( e

  \mark \default    % Mark Q - mesure 301

  d8 ) \partcombineAutomatic r r r4 r8
  \revert MultiMeasureRest #'staff-position
  \repeat unfold 7 R1 * 6/8

  \TempoIPocoRit    % Mesure 309

  \repeat unfold 5 R1 * 6/8
  R1 * 6/8 \fermataMarkup

  \bar "|."
}
%{
  ****************************************************************
  * Basson II                                                    *
  ****************************************************************
%}

SgMaFagottoII = \relative c, {

  \include "Common/Properties.ly"

  \set Score.markFormatter = #format-mark-box-alphabet	% pour utiliser la lettre I

  \TempoI

  \repeat unfold 4 R1 * 6/8
  d4. \pp ~ d4 r8
  d4. ~ d4 r8
  \repeat unfold 9 R1 * 6/8
  r4 r8 r4 bes'16-> \f g
  d'-> \< [bes] bes'8 \! r c,4.-> \f
  <<{bes4. e,!}{s4 \< s s8 s \!}>>
  \dynamicSpannerOff f4. \dim ~ f8 bes' ([a16 f]
  d8 ) \p r r r4 f16-> \f \< d-.
  a'->  \! f-. f'4-> \ff ~ f8 e ( d )
  cis4.-> d4 ( dis 8)
  dis4-> ( \aII \aIIP e8 ) ~ \bracketedHairpin e \< f ( e16 c? \!
  a8 ) r r r4 r8

  \mark \default    % Mark A - mesure 25

  a4. \f ees' \fz
  \clef tenor
  ees4.-> ~ ees8 r r
  \clef bass
  bes4.-> \f g->
  g-> ~ g8 r r
  d4 r8 e4 r8 f4.-> g->
  a8 r r r4 r16 a,16 (
  d \aII  e fis g gis a bes! a g! e cis a')
  d,8 \<d-. [f-.] bes4-> \fz a8-> ~
  a aes-. g-. fis-. g-. ees-.
  d g-. [bes-.] ees4-> d8 ~
  d des-. c-. b-. bes-. a-.
  a \aII r r r4 r8
  r4 r8 fis,-. \f g-. f-.
  ees4.-> d->
  c-> bes \> ~
  bes8 \! r r r4 r8

  \mark \default    % Mark B - mesure 42

  bes'2. \p ~
  bes
  bes ~
  bes ~
  bes8 r r r4 r8
  r4 r8 r8. aes'16-. \f aes8-.
  aes4 r8 r4 r8
  r8. bes16-. bes8-. bes4 r8
  r8. a!16-. a8-. a4 r8
  cis4 \f r8 a4 r8
  g4 r8 e8 a4-> \fz
  % partcombine ne peut fonctionner - 3 voix nécessaires. On triche en regroupant les deux voix sur la première
  % en faisant taire la seconde voix
  %<<{cis4-> \fz e-> \fz a8 r}{s4 \< s s \!}>>
  s2.

  \mark \default    % Mark C - mesure 54

  %	r4 r8 r4 f,16-. ( a-.	%	Pour les parties
  r4 r8 r4 f16-. \ff ( a-.	%	Pour la directrice
  d8 a d f, a e' )
  d ( a d f,8. ) c'16-. a8-.
  a4.-^ ~ a8 [r16 c-. a8-.]
  a4.-^ ~ a8 [r16 f'-. d8-.]
  bes2.-> \fz
  bes-> \fz
  c8-. r r r4 r8
  \repeat unfold 9 R1 * 6/8
  r4 r8 r8 f,4 \pp ~

  \TempoIRit

  f4. ~ f8 r r

  \mark \default    % Mark D - mesure 73

  \TempoIinTempo

  r8 bes \pp \< ( f ) r c' ( bes ) \!
  r8 f \> ( d ) r f ( c ) \!
  r ees ( d ) r ees \< ( d )
  r ees \! ( d ) \hairpinToBarLineFalse \rightDynamic c4.-> \fp -\tweak #'extra-offset #'(0 . 2)\> ~
  c2. \!
  <<{c2.}{s4. \bracketedPP s4 \< s16 s \!}>>
  c2. \fz
  <<{c2.}{s4. \> s \p}>>
  f,2. \pp ~
  f8 r r r4 r8
  bes'4 \p ( a8 ) a4 ( bes8 )
  f4 ( d8 ) c4 ( ees8 )
  ees4 ( \< d8 ) ees4 ( d8 )
  ees4. <<{c}{s4 \fz -\tweak #'minimum-length #9 \> s16 s \!}>>
  ees2. \pp
  g4. ( ees )
  <<{g2.}{s4 \< s16 \! s16 s8 \> s8 s16 s \!}>>
  ees2. \p (
  d8 ) r r r4 r8
  R1 * 6/8

  \mark \default    % Mark E - mesure 93

  r8 b-. \p g'-. b!-. r r
  r a,-. \< f'-. a-. \! r r
  r g,-. \mf \< ees'-. g-. \! r r
  ges \ff r r r ees r
  \repeat unfold 9 R1 * 6/8
  <<{ees2.}{\rightDynamic s4. \bracketedPP \< s4 s8 \!}>>
  a,4. \f \> ( d, ) \!
  g \< ( c, \! )
  d' \f ( ees )
  d ( \> ees ) \!
  <<{des ( ees )}{\bracketedHairpin \rightDynamic s4. \mp -\tweak #'X-offset #4 \> s4 s8 \!}>>
  des4. \pp ( ees )

  \mark \default    % Mark F - mesure 113

  \repeat unfold 4 R1 * 6/8
  r4 r8 r4 bes'16-. \mf c-.
  bes8 ( f bes d, f c' )
  bes ( f bes d,4 ) \< c'16-. f,-. \!
  bes4. \fz \cresc ~ bes4 c16-. f,-.
  bes4. \fz \< ~ bes4 f16-. d-. \!
  ees'8 \ff ees,16 ([ges bes des]) a!8 r r
  bes4 \ff ( f8 c'4 bes8 )
  a2.
  bes8 r r f4.-> \f
  \partcombineApart
  fis4. ( ~ fis16 cis a fis cis'! a )

  \mark \default    % Mark G - mesure 127

  ges4-> \partcombineAutomatic bes'-> ges->
  ges4. ~ ges4 ges8
  bes4 \ff ( a8 c4 bes8 )
  ees4 ( d8 c4 bes8 )
  a4 ( bes8 g4 bes8 )
  f4. \fz ~ f8. g16-. f-. g-.
  ees4.  \fz ~ ees8. f16 ees f
  d4. \fz \aII ~ d8. ees16 d ees
  c8 r r f r r
  fis r r g r g
  a8 r16 a \bracketedFF g a f8 r16 bes a bes
  g8 r16 c bes c a8 r16 a g a

  \mark \default    % Mark H - mesure 139

  e8 r r r4 r8
  \clef bass
  r8. bes'16-. \ff a-. bes-. a8 r r
  r8. b16-. \f ais-. b-. ais8 r r
  r8. b16-. \dim ais-. b-. ais8-. r r
  r8. cis16-. \mp \aII b-. cis-. b8-. r r
  \repeat unfold 3 R1 * 6/8
  ais2. \pp ( ~
  ais

  \bar "||"    % mesure 149

  \key a \minor
  b?8 ) r r r4 r8
  \repeat unfold 3 R1 * 6/8
  b,,2. \p ~
  b
  d'
  <<{b'}{s4. \< s8 s s16 s\!}>>
  c!8 \ff ([c,]) c ([c,]) r r
  c'' ([c,]) c ([c,]) r r
  c'' \aII ([c,]) c ([c,]) r r
  c''  ([c,]) c ([c,]) r r
  c'' \aIIP ([c,]) c ([c,]) r r
  c'' ([c,]) c ([c,]) r r
  r g''' ([g,]) g ([g,]) r
  r f'' \aII ([f,]) f ([f,]) r

  \mark \default    % Mark I forcé - mesure 165

  e8 r r r4 r8
  R1 * 6/8
  <<{r4 c''!16 ( b a8 d c )}{s4 \rightDynamic s8 \p \< s16 \! s16 \> s8 s16 s \!}>>
  r4 r8 <<{c8 (gis a )}{\rightDynamic s8 \mf \> s s16 s \!}>>
  c8 \bracketedP ( gis a ) r4 r8
  \repeat unfold 9 R1 * 6/8
  r4 r8 r4 aes,16 \ff ( bes
  ces8 bes ces aes bes des )
  ces ( bes ces aes4 ) aes'!8 \fz
  R1 * 6/8
  r4 r8 r4 f,16 \ff g!
  aes8 ( g aes f g bes )
  aes ( g aes ) f ( d! aes'! )

  \mark \default    % Mark J - mesure 186

  f2.-^
  r8 g'' ([g,]) g ([g,]) r
  r g'' ([g,]) g ([g,]) r
  r aes'' \aII  ([aes,]) aes ([aes,]) r
  r g'' ([g,]) g ([g,]) r
  ees'4 c16-. d-. ees8 ( d ees )
  c4 c16-. d-. ees!8 ( d ees )
  c4 c16-. d-. ees!8 ( d ees )
  cis4 cis16-. dis-. e8 ( dis e )
  cis4 cis16-. dis-. e8 ( dis e )

  \bar "||"

  \mark \default    % Mark K - mesure 196

  \key d \minor
  d!8 \fff ( a' d ) f, ( a e' )
  d ( a d ) f,4 c'16-. a-.
  a4.-^ ~ a8 [r16 a a8]
  a4.-^ ~ a8 [r16 a a8]
  bes2. \ff ~
  bes
  c8 r r r4 r8
  \repeat unfold 7 R1 * 6/8
  r4 r8 r cis \f ( e, )
  r g \dim ( e ) r g ( e )
  <<{r bes'! ( g ) r a ( g )}{s8 s \p \> s s s s16 s \!}>>
  r8 g \pp (e ) r g ( e )

  \bar "||"

  \mark \default    % Mark L - mesure 214

  \key d \major
  r8 \rightDynamic d' \p \< ( a ) r e' ( d ) \!
  r a ( fis ) \> r e ( g ) \!
  <<{r8 g fis r g fis}{s4 s s \<}>>
  <<{r8 g fis b,4. ~}{s4 s8 \! s4 \fz}>>
  <<{b2.}{s4 \> s s8 s16 s \!}>>
  <<{a2.}{s4 \p \> s s8 s16 s \!}>>
  b2. \pp
  <<{a2.}{s4 \< s s8 s16 s \!}>>
  <<{ais2. ~}{s4 \< s s8 s16 s \!}>>
  ais8 r r r4 r8
  dis8-. \mp [r b'-.] dis!-. r r
  cis,-. \dim [r a'-.] cis-. r r
  b,8-. \pp [r g'-.] b-. r r
  bes \f r r r4 r8
  \repeat unfold 9 R1 * 6/8

  \mark \default    % Mark M - mesure 237

  <<{g!2.}{s4 \bracketedP \< s s8 s \!}>>
  cis,4. \f ( fis, )
  b ( e, )
  fis' ( g )
  fis ( g ) \dim
  f \p ( g )
  f \pp ( g )
  \repeat unfold 3 R1 * 6/8
  d,2. \pp

  \bar "||"    % mesure 248

  \key d \minor
  a'4. ~ a4 g'16 ( a
  <<{bes4 ) a8-. g-. f-. e-.}{s4 s8 s8 \cresc}>>
  d-. \< bes'-. a-. g-. f-. e-. \!
  d-. \aII \aIIP  \mf bes'-. a-. g-. f-. e-.
  d-. \< bes'-. a-. g-. f-. e-. \!
  f-> \ff d-. e-. d-> e-. g-.
  a-> g-> a-> f-> a-> bes->
  f-> e-> f-> d-> e-> g->
  d4.-> g->
  d'4. \fz ~ d16 ( a f d a f )
  ees''4. \aIIP  \fz ~ ees16 ( c a f ees c )
  ees'4. \fz ~ ees16 ( c a f ees c )
  f'4. \fz ~ f16 ( d bes f d bes )
  f''4. \aII \fz ~ f16 ( d bes f d bes )
  g''4. ~ g16 ( d b g f d )
  g'4. ~ g16 ( d b g f d )
  f,8-. -\parenthesize -> d-. e-. f-. -\parenthesize -> d-. e-.
  bes!2.-^

  \mark \default    % Mark N - mesure 266

  f' ~
  f8 r r r4 r8

  \TempoIPaPAcc

  R1 * 6/8
  r4 r8 r4 f'16-. \ff a-.
  d8-> f,-. a-. d-> f,-. a-.
  d8-> f,-. a-. d-> f,-. a-.
  d, d, ( f16 a c8 ) d, ( fis16 a
  c8 ) d, ( fis16 a c8 ) d, ( fis16 a
  b8 \aII ) d, ( g16 a b8 ) d, ( g16 b
  cis8  ) d, ( g16 bes cis8 ) d, ( g16 bes )

  \mark \default    % Mark O - mesure 276

  d16 \aIIP bes' ( a4 ) r16 d ( cis4 )
  r16 e ( d8. ) f16 ( e8. ) g16 ( fis8 ) ~
  fis16 \aII a ( g8. ) a16 ( g8. ) g16 ( f!8 ) ~
  f16 f ( ees8. ) ees16 ( d8. ) d16 ( cis8 )
  d,4.  \ff ~ d4 cis8 ~
  cis c-^ b-^ bes-^ a-^ aes-^
  g-^ \aII \aIIP f-^ e-^ f-^ g-^ a!-^
  d,8-. a'-. d,-. a'-. \> d,-. a'-. \!
  d,-. a'-. [d-.] \dim a-. d-. a-.
  d \p \partcombineAutomatic r r r4 r8
  r8 cis-. \pp d-. cis-. d-. cis-.

  \mark \default    % Mark P - mesure 287

  \TempoITempoPrimo

  d r r r4 r8
  \repeat unfold 10 R1 * 6/8
  bes'4. \p ~
  bes4 bes16 ( g
  gis2. ) ~
  gis4. ( a

  \mark \default    % Mark Q - mesure 301

  bes8 ) r r r4 r8
  \repeat unfold 7 R1 * 6/8

  \TempoIPocoRit    % Mesure 309

  \repeat unfold 5 R1 * 6/8
  R1 * 6/8 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMaFagottoIAII = \new Voice {
  \time 6/8
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Fagotti" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Fag." I+II}}
  \set Staff.midiInstrument = "bassoon"
  \key d \minor
  \clef bass
  \partcombine \SgMaFagottoI \SgMaFagottoII
}


