%{
  *************************************************************************
  * Dvořák - Symphony nr 7                                                *
  *                                                                       *
  * encodage par J.F. Lucarelli                                           *
  * 18/11/12 - 01/11/2013                                                 *
  * Ver 0.0 : 04/09/2013                                                  *
  * Ver 1.0 : 01/11/2013                                                  *
  *                                                                       *
  * Symphonie n°7 : mouvement IV - Finale allegro                         *
  * Fichier de notes, Flûtes 1 et 2, directrice                           *
  *                                                                       *
  * Ne pas compiler                                                       *
  *                                                                       *
  *************************************************************************
%}
%{
  ****************************************************************
  *	Flûte 1                                                  *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMdFlautoI = \relative c''' {

  \include "Common/Properties.ly"
  \TempoIV
  \repeat unfold 16 R1
  \TempoIVPPCresc
  \partcombineApart
  r4 a \p r bes
  \override Rest #'staff-position = #6
  r cis r2
  <<{r4 a r bes}{s4 s \< s s8 s \!}>>
  r4 e r2
  \dynamicSpannerOff
  \override Rest #'staff-position = #8
  r4 a, \cresc r bes \!
  f' %{\fz%} r r2
  \once \override MultiMeasureRest #'Y-offset = #4 R1
  r4 \times 2/3 {a,,8 ( %{\f \<%} d f} \times 2/3 {a d f} a8 ) \! [
    \once \override Voice.Rest #'extra-offset = #'(0.0 . 4.5 ) \tweak #'extra-offset #-6 r16 a-.]
  \hairpinToBarLineFalse
  gis2. %{\fp \>%} ( f4
  d \! e \dim f d8 \p a
  cis2. ) d4 (
  bes \dim gis a a ) \!
  fis2 %{\pp%} ( g!
  f! ees
  d4 ) r r2
  \repeat unfold 4 R1
  \partcombineApart
  \override Rest #'staff-position = #6
  r4 f'8-. \mf f-. bes,4-> c8-. c-.
  d2. r4
  r f8 \cresc f b,!4-> c8 c \!
  d2. r4
  \partcombineAutomatic
  r f8 \f f b,4 c8 c
  d4 \< e8 e f-. fis-. g-. \! gis-.
  a4 \aIIP \ff r r2
  \mark \default
  \partcombineApart
  f2.-> %{\ff%} f4
  \partcombineAutomatic
  d ( e f d8 a )
  cis2.-> ( d4 )
  bes r a r
  r8 d,-. e16 ([d cis d]) g2-.
  e-. r
  r8 d-. e16 ([d cis d]) bes'2-.
  a-. r
  r8 a-. b16 ([a gis a]) ees'2-.
  d-. r
  r8 a-. b16 ([a gis a]) e'!2-.
  dis-. r
  r8 a-. b16 ([a gis a]) e'2-.
  fis-. r
  r8 a,-. \< b16 ([a gis a]) fis'2-. \!
  a1 \ff
  g2-^ ~ g8 r r4
  \repeat unfold 5 R1
  \TempoIVRit
  R1
  \mark \default
  \TempoIVIT
  \repeat unfold 4 R1
  g,2-> \f gis->
  a-> r
  r4 d2-> \ff ( cis4 )
  d2. ( e4 )
  f ( e a, d )
  cis-. d-. e2->
  \repeat unfold 2 R1
  f,2-> \ff f'->
  ees2.-> r4
  \repeat unfold 2 R1
  g,2-> \ff g'->
  f!2.-> r4
  \repeat unfold 4 R1
  \mark \default
  \partcombineApart
  a,4 \mp ( bes! b c! )
  cis4. ( d16 e f4-. ) d-.
  \partcombineAutomatic
  a'4 \ff r8. g16 g4 r8. f16
  f4 r8. e16 e4 r8. f16
  f4 r8. cis16 cis4 r8. d16
  d4 r8. ees16 ees4 r8. c!16
  c4-. r b-. r
  e!8 r r4 r2
  \partcombineApart
  r4 \times 2/3 {c8 -\tweak #'X-offset #-4 \mf ( d c} dis,4-. ) \times 2/3 {b'8 ( c b}
  e,4-. ) r r2
  \partcombineAutomatic
  R1
  \partcombineApart
  r4 \times 2/3 {c'8 ( -\tweak #'X-offset #-4 \mp d c} b2 ) \dim
  \times 2/3 {c8 ( d c} b2 \times 2/3 {c8 d c )\!}
  a4 \p ( fis' dis a
  gis8 e' d! b! gis e d e )
  \bar "||"
  \mark \default
  \key a \major
  cis!4 r r2
  \partcombineAutomatic
  \repeat unfold 3 R1
  \partcombineApart
  e'2 %{\mp%} ( fis4 e8 d )
  cis2 ( e4 d )
  cis2 ( b4 a )
  gis ( fis8 eis! d'4-. ) d-.
  cis \partcombineAutomatic r r2
  \partcombineApart
  \override Rest #'staff-position = #4
  r4 ais \p ( cis b8 ais )
  ais4 r r2
  r4 a! \pp ( cis b8 a )
  a4 r r2
  \partcombineAutomatic
  \repeat unfold 7 R1
  r2 a \f \< ~
  a1 \aIIP \!
  \mark \default
  e'2 \aII \ff gis4 ( fis8 e )
  e2 fis4 ( e8 d )
  cis2 ( e4 d )
  cis ( e gis fis8 e )
  e2 ( fis4 e8 d )
  cis4 ( a' fis d )
  cis \aII ( b8 a fis'4. gis,8-. )
  \partcombineApart
  a4 \partcombineAutomatic r r2
  \repeat unfold 7 R1
  \partcombineApartOnce c4-. %{\ff%} r \partcombineApartOnce d-. r
  \partcombineApartOnce c-. r \partcombineApartOnce d-. r
  \partcombineAutomatic
  e-. r d-. r
  c-. r b-. r
  c-. r e-. d-.
  c-. r d-. r e-. r d-. r
  c-. r b?-. r
  \bar "||"
  \mark \default
  \key a \minor
  a4 r r2
  R1
  a,8-. \f c-. dis-. e-. fis-. \< a-. c-. dis-.
  e-. \! dis-. c-. a-. fis-. e-. dis-. c-.
  a4 r r2
  R1
  a8-. \mp c-. dis-. e-. f!-. a-. c-. dis-.
  e-. dis-. c-. \dim a-. f-. e-. dis-. c-. \!
  a4 r r2
  \repeat unfold 9 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \mark \default
  \TempoIVIT
  \repeat unfold 4 R1
  \partcombineChords
  f'2 \pp ( f'
  ges f4 ees )
  \partcombineAutomatic
  c ( a ges! ees!
  c a des c )
  bes'1 \pp ~
  bes ~
  bes4 r r2
  R1
  \partcombineChords
  fis2 \pp ( fis'
  g fis4 e )
  \partcombineAutomatic
  cis ( ais! g! e
  cis ais! d cis
  b ) r r2
  \partcombineApart
  b'2 \p \< ( eis
  fis2. \> d4 ) \!
  cis ( d e d8 cis
  cis2. cis4 )
  b ( \< fis a g
  <<{fis e8 d \! cis2 )}{s2 s4 \startTrillSpan s8 s16 \stopTrillSpan}>>
  r8 d \mf ( cis b ais4 b8 cis
  ais2. b4 )
  c!8 ( ees d c d4 ees8 f )
  <<{b,!2. ( b'4 )}{s4 s s \cresc}>>
  c4( ees f \! ees8 d )
  g4 ( f8 ees d4 c )
  gis'-. gis,-. fis'-. fis,-.
  <<{dis'-. fis,-. dis'-. e!-.}{s4 s8 s \cresc s \!}>>
  bes'4-. \< bes,-. ges'-. ges,-.
  <<{e'!-. g,!-. e'-. f-.}{s4 s8 s \!}>>
  \override Rest #'staff-position = #10
  \once \override Voice.DynamicText #'extra-offset = #'(-2 . -3) b8-.-> \f fis-. b-. b,-. b4 r
  b'8-.-> e,-. b'-. b,-. b4 r
  c8-> \fz a r4 fis'8-> \fz dis r4
  a'8-> \fz fis r4 c'8-> \fz a r4
  fis4 \ff r r2
  R1
  \mark \default
  \repeat unfold 8 R1
  r4 b8-. \ff b-. e,4-> g8-. g-.
  r4 b,8-. a-. g4-. r
  r8 g-. fis-. e-. g4-. r
  r ais8-. b-. r4 dis8-. e-.
  r4 b'8-. \ff b-. d,4-> f!8-. f-.
  r4 aes,8-. g-. f4-. r
  r d'8-. c-. b4-. r
  <<{r2 gis'}{s2 s4 \startTrillSpan s8 s16 s32 s \stopTrillSpan}>>
  a8-. e-. c-. a-. c-. d-. b-. g'-.
  e-. b-. gis-. e-. e-. f-. e-. c'-.
  \mark \default
  \repeat unfold 10 R1
  bes4 \f r8 a g4 r8 bes
  cis4 r8 fis g4 r8 des
  ees4 r8 d! c!4 r8 ees
  fis4 r8 b? c4 r8 c,
  cis4 r r2
  \repeat unfold 9 R1
  \mark \default
  \repeat unfold 2 R1
  \partcombineApart
  \override Rest #'staff-position = #4
  r4 \times 2/3 {
    \once \override Hairpin #'rotation = #'(10 0 3) \override DynamicText #'extra-offset = #'(0.0 . -4.2 )
    cis,,8 ( \p \< \revert DynamicText #'extra-offset  fis a }
    \times 2/3 {cis fis a} cis8. ) [cis16-.] \!
  <<{c!2. ( a4 )}{s4 \fz \> s s s8 s \!}>>
  % Séparation des 2 flûtes - un \break est ajouté
  \break
  \partcombineSoloI
  \set Staff.soloText = #""
  \set Staff.shortInstrumentName = \markup {"Fl. I"}
  fis4 -\tweak #'positions #'(3 . 0) ( gis a fis8 cis
  <<{c!1 ) ~}{\bracketedHairpin \rightDynamic  s4 \p -\tweak #'extra-offset #'(2 . 0) \> s s8 s s\!}>>
  c1 \pp (
  d
  bes4 ) r r2
  R1
  \oneVoice
  r4 \times 2/3 {d,8 \bracketedP ( g bes} \times 2/3 {d \< g bes} d8. ) [d16-.] \!
  cis2. \fz \> ( bes4 ) \!
  g ( \p a bes g8 d )
  <<{des1 ( ~}{s4 s s \>}>>
  <<{des1}{s4 s s \!}>>
  ees1 \pp
  ces4 ) r ces2 \pp ~
  ces ces ~
  ces ces ~
  ces ces ~
  ces b! ~
  b b ~
  b b ~
  % insérer ici un crescendo sur 4 mesures
  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \PocoCrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  \partcombineAutomatic
  b2 \< b ~
  b d ~
  d d ~
  d4 f2 <<{d4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  d4 \< f2 d4 ~
  d f2 d4 ~
  d aes'2 d4 \!
  % Les flûtes se rejoignent, ajout forcé d'un \break
  \break
  \bar "||"
  \mark \default
  \set Staff.shortInstrumentName = \markup {\center-column {"Fl." I+II}}
  \set Staff.soloText = #"1."
  \key d \minor
  f4 \ff \times 2/3 {a,,8 \< ( d f} \times 2/3 {a d f} a8. ) [a16-.] \!
  gis2. \ff ( f4 )
  d \< ( e f  d8 a ) \!
  cis2. ( d4 )
  bes ( g ) a-. a-.
  f2-^ g-^
  e8 a' a,4 r8 a' a,4
  \repeat unfold 13 {r8 a' a,4 r8 a' a,4}
  \mark \default
  f'4 \ff r r2
  R1
  \partcombineApart
  r4 \times 2/3 {
    \once \override Hairpin #'rotation = #'(7 0.8 0) \once \override Voice.DynamicText #'extra-offset = #'(0.0 . -4.0 )
    a,,8 \f \< ( d f
 } \times 2/3 {a d f} a8 ) \! [ \tweak #'staff-position #13 r16 a-.]
  gis2. ( \> f4 \! )
  d4 \p \> ( e f d8 a
  cis2. \! d4 )
  bes!4 ( gis a a-. )
  fis2 ( g!
  e f!
  des c
  bes a
  gis1 ~
  gis )
  g! ( ~
  g
  \bar "||"
  \key d \major
  fis4 ) r r2
  \partcombineAutomatic
  \repeat unfold 11 R1
  r4 \rightDynamic d'' \p \< ( e d8 c! \!
  b4 ) r r2
  r4 \rightDynamic d \mf \< ( ees \! d8 \>c! \!
  b4 ) r r2
  \repeat unfold 4 R1
  r2 \partcombineApart d2 %{\f%} ~
  <<{d1}{s4 %{\<%} s s s8 s \!}>>
  \mark \default
  \partcombineAutomatic
  \partcombineApartOnce d4 %{\ff%} r8 \partcombineApartOnce d \partcombineApartOnce e4 r8 \partcombineApartOnce e
  d4 r8 d g4 r8 g
  fis4 r8 fis cis4 r8 cis
  d4 r8 d e4 r8 e
  d4 r8 d g4 r8 g
  fis4 r8 fis e4 r8 e
  fis4 r8 fis cis4 r8 cis
  d8
  \repeat unfold 15 a8	% 2 mesures
  b1 \fz
  cis \fz
  \partcombineApart
  d8
  \repeat unfold 15 a8	% 2 mesures
  bes1 %{\fz%}
  bes %{\fz%}
  \partcombineAutomatic
  \partcombineApartOnce a4 %{\f%} r \partcombineApartOnce cis! r
  \partcombineApartOnce d r e r
  c r \partcombineApartOnce bes r
  d r cis! r
  d r \partcombineApart c-. cis-.
  d \partcombineAutomatic r e r
  f r ees r
  f r e? r

  \bar "||"

  \mark \default

  \key d \minor
  \partcombineApartOnce d4 r r2
  R1
  d,8 \f \< f gis a b d f gis \!
  a gis f d b a gis f
  d4 r r2
  R1
  \partcombineAutomatic
  \rightDynamic d8 \f \< f gis a bes d f g! \!
  aes g f d bes a! aes f
  d4 r r2
  \repeat unfold 3 R1
  fis8 \f ( a cis d ) fis2 \startTrillSpan ~
  <<{fis2}{s4 s8 s \stopTrillSpan}>> fis8 ( d a fis! )
  g ( bes! d fis ) g2 \startTrillSpan ~
  <<{g2}{s4 s8 s \stopTrillSpan}>> g8 ( d bes g )
  <<{aes'2}{s4 \startTrillSpan s8 s \stopTrillSpan}>> aes8 ( f! d aes )

%{  \tag #'conductorScore {
    <<{\once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1 ) % 0 -1 pour conductorScore
       \once \override TrillSpanner #'outside-staff-priority = #500
     gis'2 ^\markup {\tiny \natural}}{s4 \startTrillSpan s8 s \stopTrillSpan}>> d8 ( b gis d' )
  }
  \tag #'pocketScore {
    <<{\once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -4.6 ) % 0 -4.6 pour pocketScore
       \once \override TrillSpanner #'outside-staff-priority = #500
     gis2 ^\markup {\tiny \natural}}{s4 \startTrillSpan s8 s \stopTrillSpan}>> d8 ( b gis d' )
  }%}
  <<{\once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1 ) % 0 -1 pour conductorScore
     \once \override TrillSpanner #'outside-staff-priority = #500
     gis'2 ^\markup {\tiny \natural}}{s4 \startTrillSpan s8 s \stopTrillSpan}>> d8 ( b gis d' )

  \mark \default

  a'4 r r2
  \repeat unfold 2 R1
  r2 r4 a8 \ff a
  d,4 e8 e f f g4->
  a-> ( c8 bes ) a4-. g-.
  fis ees8 ees a,4 c8 c
  r4 ees8 ees a,4 c8 c
  fis4 r r8 g \p g g
  r f! f f r ees ees ees
  r d \dim d d r ees \! ees ees
  r gis, gis gis r a? \pp a a
  r bes bes bes r a a a
  a1 \ff ~
  a
  a \fz ~
  a
  a \fz ~
  a
  a \fz (
  g )
  d'1 \f
  bes!4. ( b16 c d4-. ) a-.
  bes!4. ( b16 c d4-. ) a-.
  ees'2. ees4
  r \partcombineApartOnce bes r \partcombineApartOnce bes
  r bes ees d
  cis r r2

  \mark \default

  \partcombineApartOnce bes4-^ \partcombineApartOnce a-^ r2
  dis4 r e r
  a-> \partcombineApartOnce a,-. r2

  \TempoIVPAn

  \partcombineApartOnce d2 %{\ff%} f
  f2. \partcombineApartOnce d4
  \partcombineApartOnce d2 f
  f2. f4
  \partcombineApart d2 d
  d1 ~
  d4 \partcombineAutomatic r r2
  \repeat unfold 2 R1
  a4 \f r a r
  a r a r
  a r a r
  a r a r
  a' r a r
  a r a r

  \TempoIVMMaes

  a r d,2 \ff
  d1->
  d-> ~
  d
  d->
  d->
  fis-> \fz
  fis-> \fz
  fis-> \fz
  fis4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ****************************************************************
  *	Flûte II                                                 *
  ****************************************************************
%}

SgMdFlautoII = \relative c'' {

  \include "Common/Properties.ly"
  \TempoIV
  \repeat unfold 16 R1
  \repeat unfold 5 R1
  <<{f1 ~}{\rightDynamic s4 \fz s8 s8 \> s4 s8 s16 s \!}>>
  f2. \p r4
  \partcombineAutomatic
  r4 \partcombineApart \times 2/3 {a,8 ( \f \< d f} \times 2/3 {a d f} a8 ) \! [s16 a-.]
  \hairpinToBarLineFalse
  d,1 \fp \> ~
  d4 \! r a2 \p (
  bes!2 \> a \! )
  f ( e ) \!
  ees1 \pp
  bes ~
  bes4 \partcombineAutomatic r r2
  \repeat unfold 8 R1
  r4 f''8 \f f b,4 c8 c
  d4 \< e8 e f-. fis-. g-. \! gis-.
  a4 \ff r r2
  \mark \default
  d,2.-> \ff f4
  d ( e f d8 a )
  a2.-> ( bes4 )
  bes r a r
  r8 d,-. e16 ([d cis d]) g2-.
  e-. r
  r8 d-. e16 ([d cis d]) bes'2-.
  a-. r
  r8 a-. \aII \aIIP b16 ([a gis a]) ees'2-.
  d-. r
  r8 a-. b16 ([a gis a]) e'!2-.
  dis-. r
  r8 a-. b16 ([a gis a]) e'2-.
  fis-. r
  r8 a,-. \aII \< b16 ([a gis a]) fis'2-. \!
  fis1 \ff
  cis2-^ ~ cis8 r r4
  \repeat unfold 5 R1
  \TempoIVRit
  R1
  \mark \default
  \TempoIVIT
  \repeat unfold 4 R1
  g2-> \f gis->
  a-> r
  r4 d2-> \ff ( cis4 )
  d2. ( e4 )
  f ( e a, d )
  cis-. d-. cis2->
  \repeat unfold 2 R1
  f,2-> \ff f'->
  ees2.-> r4
  \repeat unfold 2 R1
  g,2-> \ff g'->
  d2.-> r4
  \repeat unfold 4 R1
  \mark \default
  \repeat unfold 2 R1
  a'4 \ff r8. g16 g4 r8. f16
  f4 r8. e16 e4 r8. f16
  f4 r8. cis16 cis4 r8. d16
  d4 r8. ees16 ees4 r8. c!16
  c4-. \aIIP r b-. r
  e!8 \aII r r4 r2
  \repeat unfold 7 R1
  \bar "||"
  \mark \default
  \key a \major
  \repeat unfold 4 R1
  cis2 \mp ( d4 b )
  a2 ( gis )
  a2 ( e )
  eis4 ( fis8 eis! b'4-. ) b-.
  ais r r2
  \repeat unfold 11 R1
  r2 a \f \< ~
  a1 \!
  \mark \default
  e'2 \ff gis4 ( fis8 e )
  e2 fis4 ( e8 d )
  cis2 ( e4 d )
  cis ( e gis fis8 e )
  e2 ( fis4 e8 d )
  cis4 ( a' fis d )
  cis ( b8 a fis'4. gis,8-. )
  a4 r r2
  \repeat unfold 7 R1
  c4-. \ff r d-. r
  c-. r b-. r
  c-. r b-. r
  a-. r gis!-. r
  a-. r g-. gis-.
  a-. r b-. r c-. r bes!-. r
  a-. r gis!-. r
  \bar "||"
  \mark \default
  \key a \minor
  a4 r r2
  R1
  a,8-. \aII \f c-. dis-. e-. fis-. \< a-. c-. dis-.
  e-. \! dis-. c-. a-. fis-. e-. dis-. c-.
  a4 r r2
  R1
  a8-. \mp c-. dis-. e-. f!-. a-. c-. dis-.
  e-. \aII dis-. c-. \dim a-. f-. e-. dis-. c-. \!
  a4 r r2
  \repeat unfold 9 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \mark \default
  \TempoIVIT
  \repeat unfold 4 R1
  ees'2 \pp -\tweak #'positions #'(5 . 5) ( ees' ~
  ees a,!4 c )
  a ( ges ees c
  a ges f ees
  des ) r r2
  \repeat unfold 3 R1
  e'2 \pp -\tweak #'positions #'(5 . 5) ( e' _~
  e ais,4 cis )
  ais ( g! e cis
  ais g! fis e
  d ) r r2
  \repeat unfold 16 R1
  r2 \once \override Voice.DynamicText #'extra-offset = #'(-2.5 . 1.5)
    \once \override NoteColumn #'force-hshift = #1.1 b''8 \f b, b r
  r2 \once \override Voice.DynamicText #'extra-offset = #'(-2.5 . 1.5)
    \once \override NoteColumn #'force-hshift = #1.1 b'8 \f b, b r
  \partcombineAutomatic
  c'8-> \fz a r4 fis'8-> \fz dis r4
  a'8-> \fz fis r4 c'8-> \fz a r4
  dis,4 \ff r r2
  R1
  \mark \default
  \repeat unfold 8 R1
  r4 b'8-. \ff b-. e,4-> g8-. g-.
  r4 g,8-. fis-. e4-. r
  r8 e-. d-. c-. b4-. r
  r ais'8-. b-. r4 dis8-. e-.
  r4 b'8-. \ff b-. d,4-> f!8-. f-.
  r4 f,8-. e-. d4-. r
  r b'8-. a?-. gis4-. r
  <<{r2 gis'}{s2 s4 \startTrillSpan s8 s16 s32 s \stopTrillSpan}>>
  a8-. e-. c-. a-. c-. d-. b-. g'?-.
  e-. b-. gis-. e-. e-. f-. e-. c'-.
  \mark \default
  \repeat unfold 10 R1
  bes4 \aII \aIIP \f r8 a g4 r8 bes
  cis4 r8 fis g4 r8 des
  ees4 r8 d! c!4 r8 ees
  fis4 r8 b c4 r8 c,
  cis4 \aIIP r r2
  \repeat unfold 9 R1
  \mark \default
  \repeat unfold 4 R1
  % Séparation des 2 flûtes - un \break est ajouté
  \break
  \repeat unfold 4 R1
  % la seconde flûte passe dans une portée différente. Elle est donc remplacée par des silences invisibles
  %{\repeat unfold 3 R1
    <<{g,2 ( d'}{s2 \p s4 \< s8 s \!}>>
    des2. \> bes4 \! )
    g4 ( a bes \< g8 d! \!
    <<{ees1 )}{s4 \fp \> s s s \!}>>
    \hairpinToBarLineFalse
    g2 \< ( d'
    f \! ees4 \> d )
    f2 ( ees4 \! des
    bes \pp g ees ees' ~
    ees4 ) r aes,2 \pp ~
    aes aes ~
    aes aes ~
    aes aes ~
    aes gis! ~
    gis gis ~
    gis gis ~%}
  \repeat unfold 22 s1
  \partcombineAutomatic
  % Les flûtes se rejoignent - un \break est ajouté
  \break	% impossible de couper sur une liaison, il faudra ajouter un \laisserVibrer et un \repeatTie
  % insérer ici un crescendo sur 4 mesures
  \bar "||"
  \mark \default
  \key d \minor
  d4 \ff \times 2/3 {a,8 \< ( d f} \times 2/3 {a d f} a8. ) [a16-.] \!
  gis2. \ff ( f4 )
  d \< ( e f  d8 a ) \!
  cis2. ( d4 )
  bes ( g ) a-. a-.
  f2-^ g-^
  e8 \aII a' a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' \aIIP a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' \aII a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' \aIIP a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' \aII a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  \mark \default
  d4 \ff r r2
  \repeat unfold 14 R1
  \bar "||"
  \key d \major
  \repeat unfold 8 R1
  \TempoIVTran
  \partcombineApart
  fis,,1 ~
  fis ~
  \dynamicSpannerOff
  fis \dim ~
  fis \!
  \partcombineAutomatic
  r4 \rightDynamic b' \p \< ( c b8 a \!
  g4 ) r r2
  r4 \rightDynamic b \mf \< ( c \! b8 \> a \!
  g4 ) r r2
  \repeat unfold 4 R1
  r2 d'2 \f ~
  <<{d1}{s4 \< s s s8 s \!}>>
  \mark \default
  d4 \ff r8 d cis4 r8 cis
  a4 r8 a e'4 r8 e
  d4 r8 d g,4 r8 g
  a4 r8 a cis4 r8 cis
  a4 r8 a e'4 r8 e
  d4 r8 d d4 r8 d
  d4 r8 d cis4 r8 cis
  d8 \aII \aIIP
  \repeat unfold 15 a8	% 2 mesures
  a1 \fz
  g \fz
  fis8
  \repeat unfold 15 a8	% 2 mesures
  bes1 \fz
  bes \fz
  a4 \f r cis! r
  d r bes r
  a r bes r
  a r a r
  a r a-. cis-.
  d r bes r
  a r bes r
  d r cis! r
  \bar "||"
  \key d \minor

  \mark \default

  d4 r r2
  R1
  d,8 \f \< f gis a b d f gis \!
  a gis f d b a gis f
  d4 r r2
  R1
  \rightDynamic d8 \f \< f gis a bes! d f g! \!
  aes g f d bes a! aes f
  \partcombineApartOnce d4 r r2
  \repeat unfold 3 R1
  fis8 \f ( a cis d ) fis2 \startTrillSpan ~
  <<{fis2 \aII}{s4 s8 s \stopTrillSpan}>> fis8 ( d a fis! )
  g (  bes! d fis ) g2 \startTrillSpan ~
  <<{g2}{s4 s8 s \stopTrillSpan}>> g8 ( d bes g )
  <<{aes'2 \aIIP}{s4 \startTrillSpan s8 s \stopTrillSpan}>> aes8 ( f! d aes )
%  <<{gis'2 -\tweak TextScript #'outside-staff-priority #1000 -\tweak TextScript #'extra-offset #'(0 . -2) \aIIP }
  <<{gis'2}
    {\once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1 )
     \once \override TrillSpanner #'outside-staff-priority = #500
     s4 ^\markup {\tiny \natural} \startTrillSpan s8 s \stopTrillSpan
  }>>
  d8 ( b gis d' )

  \mark \default

  a'4 \aII r r2
  \repeat unfold 2 R1
  r2 r4 a8 \ff a
  d,4 e8 e f f g4->
  a-> ( c8 bes ) a4-. g-.
  fis-. \aII \aIIP ees8 ees a,4 c8 c
  r4 ees8 ees a,4 c8 c
  ees4  r r8 ees \p ees ees
  r d d d r bes bes bes
  r aes \dim aes aes r g \! g g
  r f f f r f \pp f f
  r f f f r e e e
  a1 \ff ~
  a \aIIP
  a \fz ~
  a
  a \fz ~
  a
  a \aII \fz (
  g )
  d'1 \f
  g,!4. ( gis16 a bes4-. ) fis-.
  g!4. ( gis16 a bes4-. ) fis-.
  bes2. bes4
  r bes r bes
  r g g g
  g r r2
  \mark \default
  bes4-^ a-^ r2
  a4 r gis r
  cis-> a-. r2
  \TempoIVPAn
  d2 \ff d
  d2. d4
  d2 d
  d2. d4
  d2 d
  d1 ~
  d4 r r2
  \repeat unfold 2 R1
  a4 \f r a r
  a r a r
  a r a r
  a \aIIP r a r
  a' r a r
  a r a r
  \TempoIVMMaes
  d, r d2 \ff
  d1->
  d-> ~
  d
  d->
  d->
  d-> \fz
  d-> \fz
  d-> \fz
  d4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdFlautoIAII = \new Voice {
  \time 2/2
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Flauti" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Fl." I+II}}
  \set Staff.midiInstrument = "flute"
  \clef treble
  \partcombine \SgMdFlautoI \SgMdFlautoII
}

