%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * Ver 0.0 : 04/09/2013                                                  *
  * Ver 1.0 : 01/11/2013                                                  *
  *                                                                     *
  * Symphonie n°7	: mouvement IV - Finale allegro                       *
  * Fichier de notes, bassons 1 et 2, directrice                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ****************************************************************
  *	Basson I                                                 *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMdFagottoI = \relative c' {

  \include "Common/Properties.ly"
  \TempoIV
  a1 \p
  f1 \fz ~
  <<{f1}{s4 \> s s s8 s \!}>>
  bes2 \dim ( a )
  g4 ( f e2 )
  f2 \pp ( bes, )
  \partcombineApart
  a1 ~
  a
  \partcombineAutomatic
  f'2-- ( \pp e-- )
  g2. ( a4 )
  g2-- ( a-- )
  f ( e )
  g ( \< a
  <<{g2. f4 )}{s8 \bindDynamics s \> s4 s s8 s \!}>>
  e2 ( f ~
  f e )
  \TempoIVPPCresc
  e ( f
  g1 \fz )
  <<{e2 ( f}{s4 s \< s s8 s \!}>>
  g1 \fz )
  <<{e2 ( f )}{s4 \< s s s8 s \!}>>
  <<{gis'1 \fz (}{s4 s8 s8 \> s4 s8 s16 s \!}>>
  a2. \p ) r4
  \repeat unfold 2 R1
  r2 \clef tenor f2 \p (
  g a )
  f ( \dim e ) \!
  \once \override NoteColumn #'force-hshift = #-0.5 \tweak Stem #'direction #DOWN ees %{\pp%} ~
  \once \override NoteColumn #'force-hshift = #-0.5 \tweak Stem #'direction #DOWN ees
  d ( ees )
  f4 r r2
  \clef bass
  \repeat unfold 2 R1
  \partcombineApart
  r2 r4 \times 2/3 {bes,,8 ( \p ees g )}
  bes2 %{\p%} ( a %{\<%}
  <<{gis2. ) r4}{s4 %{\fz \>%} s s \!}>>
  \repeat unfold 2 R1
  a,2 \p \< ( bes!4 b ) \!
  c2 \f \> d, \p
  b' \< ( d ) \!
  \partcombineApartOnce a4 %{\ff%} r r2
  \mark \default
  d1-> \ff
  d2-> d'
  f,4 ( a ) f' ( d8 bes )
  g4 ( e'8 d ) cis4-. cis,!-.
  r8 d-. e16 ([d cis d]) g2-.
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
  cis1 \ff
  cis-^ ~
  cis ~
  cis4 r r2
  \repeat unfold 3 R1
  \TempoIVRit
  R1
  \mark \default
  \TempoIVIT
  \repeat unfold 4 R1
  e2-> \f e->
  e-> r
  r4 d2 \ff ( cis4 )
  d2. ( e4 )
  f ( e a, d )
  cis-. d-. e2->
  \partcombineApart
  a,-> bes->
  b4-. c!2-> \partcombineAutomatic r4
  f,2-> \ff f->
  fis8 r \times 2/3 {\once \override Hairpin #'rotation = #'(6 0.6 0) a,8 ( \< c ees}
    \times 2/3 {fis! a c \!} ees8. ) [ees16-.]
  c4-. r a-. r
  R1
  g2-> \ff g->
  gis8 r \times 2/3 {b,8 ( d f} \times 2/3 {gis! b d} f8. ) [f16-.]
  d4-. r b-. r
  \repeat unfold 3 R1
  \mark \default
  a,4-.\p a'-. a,-. \dim a'-.
  a,-. a'-. a,-. a'-.
  a' \ff r8. g16 g4 r8. f16
  f4 r8. e16 e4 r8. f16
  f4 r8. cis16 cis4 r8. d16
  d4 r8. ees16 ees4 r8. c!16
  c4-. r b-. r
  e,!8 r r4 r2
  \repeat unfold 2 R1
  \partcombineApart
  r4 \times 2/3 {c'8 \p ( d c} dis,4 ) \times 2/3 {b'8 ( c b}
  e,4 ) r r2
  \partcombineAutomatic
  \repeat unfold 2 R1
  r2 r8 gis \p ( a b )
  \bar "||"
  \mark \default
  \key a \major
  \partcombineApart
  e,4-. a-. e-. b'-.
  cis-. a-. gis-. e-.
  a-. fis-. e-. a-.
  gis-. e-. a-. b-.
  cis-. e,-. gis,-.
  e'-.
  a,-. e'-. b-. e-.
  fis,-. fis'-. cis-. e-.
  cis-. b'-. cis,-. b'-.
  \partcombineAutomatic
  cis4 \p r cis r
  cis r cis r
  cis r cis r
  cis r cis r
  cis a \< ( b \! a8 \> g!
  fis4 ) \!r4 r2

  \repeat unfold 2 R1
  r2 cis'-> \f
  cis,-> c->
  b1-^ \f ~
  b2 bes
  <<{a g (}{s4 s s s \<}>>
  <<{fis!2 f )}{s4 s \!}>>
  \mark \default
  \partcombineApartOnce
  e4 cis'' \f ( b2
  cis d )
  cis ( d
  cis b )
  cis ( d )
  cis ( b )cis ( d )
  e8 \ff
  \repeat unfold 15 e	% 2 mesures
  e1-^ \fz
  d-^ \fz
  cis8
  \repeat unfold 15 e	% 2 mesures
  c1-^ \fz
  d-^ \fz
  c4-. \ff r b-. r
  a-. r g-. r c-. r d,-. r
  e-. r e-. r
  a-. r c-. b-.
  a-. r g-. r
  c-. r d-. r
  e-. r e,-. r
  \bar "||"
  \key a \minor
  \mark \default
  a4 r r2
  R1
  a,8-. \f c-. dis-. e-. fis-. \< a-. c-. dis-.
  e-. \! dis-. c!-. a-. fis-. e-. dis-. c!-.
  a4-. r r2
  R1
  a8-. \mp c-. dis-. e-. f!-. a-. c!-. dis-.
  e-. dis-. c-. \dim a-. f-. e-. dis-. c-. \!
  a4 r r2
  \repeat unfold 4 R1
  c1 \pp ~
  c ~
  c4 r r2
  \repeat unfold 2 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \mark \default
  \TempoIVIT
  \partcombineApart
  a4-. \pp r e'-. r
  dis-. r r c-.
  a-. b-. c-. a8-. e-.
  f4 r r2
  \partcombineAutomatic
  \repeat unfold 3 R1
  r4 a'! \pp ( des c
  bes ) r r2
  R1
  \partcombineApart
  bes4-. c-. des-. bes8-. f-.
  a4 r r2
  \partcombineAutomatic
  \repeat unfold 3 R1
  r4 \partcombineApart ais %{\pp%} ( d! cis
  b1 ) ~
  b ~
  b ~
  b ( ~
  b2 ais )
  b4 \mf ( d cis d8 e
  ais,1 )
  \dynamicSpannerOff
  b4 \cresc ( d e \< d8 cis )
  fis4 \! ( e8 d cis4 b )
  g' \f ( f!8 ees f4. d8 )
  \dynamicSpannerOff
  g4-. g,-. f!-. \cresc f'-.
  ees-. \! ees,-. d-. d'-.
  r8 d ( d ees f!4 ees )
  aes4-. aes,-. r2
  \partcombineAutomatic
  \repeat unfold 3 R1
  r2 \partcombineApartOnce b!8 %{\f%} \partcombineApartOnce b, \partcombineApartOnce b r
  r2 \partcombineApartOnce b'8 %{\f%} \partcombineApartOnce b, \partcombineApartOnce b r
  b4 \f r b r
  b r b r
  b \ff r r2
  R1
  \mark \default
  \repeat unfold 8 R1
  r4 b'8-. \ff b-. e4-> g8-. g-.
  r4 b,8-. a-. g4-. r
  r8 g'-. fis-. e-. g4-. r
  r4 ais,8-. b-. r4 dis8-. e-.
  r4 b8-. \ff b-. d,!4-> f!8-. f-.
  r4 aes8-. g-. f4-. r
  r4 d'8-. c-. b4-. r
  <<{r2 gis}{s2 s4 \startTrillSpan s8 s16 s32 s \stopTrillSpan}>>
  a8-. e'-. c-. a-. c-. d-. b-. g'-.
  e-. b-. gis-. e-. e-. f-. e-. c'-.
  \mark \default
  e,2 \fz ( d
  e1 )
  \repeat unfold 4 R1
  c'4 \f r8 b a4 r8 c
  dis4 r8 gis a4 r8 ees
  f!4 r8 e! d!4 r8 f
  gis4 r r2
  \repeat unfold 4 R1
  \clef tenor
  r4 gis8-. \ff gis-. cis,4 a'8-. a-.
  gis4 eis!8-. eis-. a4 fis!8-. fis
  \clef bass
  eis4 cis,-. cis,-. cis'-.
  cis,-. \dim cis'-. cis,-. cis'-. \!
  cis,-. r r2
  \repeat unfold 5 R1
  \mark \default
  \repeat unfold 16 R1
  r2 ces'' \pp ~
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
  b \< b ~
  b d ~
  d d ~
  d4 \clef tenor f2 <<{d4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  d4 \< f2 d4 ~
  d f2 f,4 ~
  f aes2 d4 \!
  \bar "||"
  \mark \default
  \key d \minor
  a!4 r r2
  \clef bass
  \repeat unfold 3 R1
  r2 r4 cis \ff
  d2-^ bes-^
  a8 a a,4 r8 a' a,4
  \repeat unfold 13 {r8 a' a,4 r8 a' a,4}
  \mark \default
  \clef tenor
  f''1-> \fz \> ~
  <<{f1}{s4 s s s8 s16 s \!}>>
  <<{f1 ~}{s4 \p \> s s s8 s16 s \!}>>
  <<{f1 ~}{s4 \fp \dim s s \>}>>
  <<{f1}{s4 s s s8 s16 s \!}>>
  g2 \pp ( f ~
  f e )
  \clef bass
  c! ( d
  bes! c )
  g ( a
  e f
  d1  ~
  d )
  e ~
  e
  \key d \major
  \bar "||"
  \partcombineApart
  a4-. %{\p%} d-. a-. e'-.
  fis-. d-. cis-. a-.
  \partcombineAutomatic
  d-. b-. a-. d-.
  cis-. \partcombineApartOnce a-. d-. e-.
  fis-. a,-. cis,-. a'-.
  <<{d,-. a'-. e-. a-.}{s4 \< s s s8 s \!}>>
  b,4-. b'-. fis-. fis,-.
  <<{fis-. cis'-. fis-. ais,-.}{s4 \> s s s8 s \!}>>
  b4 r r2
  \repeat unfold 3 R1
  r4 \rightDynamic d' \p \< ( e d8 c! \!
  b4 ) r r2
  r4 \rightDynamic d \mf \< ( ees \! d8 \>c! \!
  b4 ) r r2
  r \partcombineApart fis-> %{\ff%}
  fis,-> f->
  \ignoreNoteCollision
  \set Staff.soloText = #""
  \poly {
    \tweak #'X-offset #2.2 e1-^ (
    e'2 )
 }
  {
    e,1-^ ~
    \stemUp e2
 }
  \notifyNoteCollision
  \set Staff.soloText = #"1."
  %	ees2->
  \partcombineAutomatic
  ees'2->
  d-> c'->
  <<{b bes4 ( e, )}{s4 \< s s s8 s \!}>>
  \mark \default
  fis4 \ff r8 fis g4 r8 g
  fis4 r8 fis cis4 r8 cis
  d4 r8 d e4 r8 e
  d4 r8 d g4 r8 g
  fis4 r8 fis cis4 r8 cis
  d4 r8 d g4 r8 g
  a4 r8 a a4 r8 a
  d8 \ff
  \repeat unfold 15 fis8	% 2 mesures
  f1 \fz
  g \fz
  fis!8
  \repeat unfold 15 fis8	% 2 mesures
  f1 \fz
  e \fz
  f8 \f a, a4. a8 a4 ~
  a8 a a4. c8 c4 ~
  c8 c c4. bes8 bes4 ~
  bes8 a a4. a8 a4 ~
  a8 a a4. a8 a4 ~
  a8 a a4. bes8 d4 ~
  d8 c c4. bes8 bes4 ~
  bes8 a a4. a8 a4
  \bar "||"
  \mark \default
  \key d \minor
  d,4 r r2
  R1
  d8 \f \< f gis a b d f gis \!
  a gis f d b a gis f
  d4 r r2
  R1
  d8 \f \< f! gis a \clef tenor bes! d f g! \!
  aes g f d \clef bass bes a! aes f
  \partcombineApartOnce d4 r r2
  b'1-> \f
  \repeat unfold 2 R1
  b,1-^\ffz ~
  b
  bes-^\ffz ~
  bes
  bes-^ \fz
  e,-^\fz
  \mark \default
  \repeat unfold 5 {a1 ~}
  a
  r4 ees''8 \ff ees a,4 c8 c
  r4 ees8 ees a,4 c8 c
  a4 r bes2-> \mp (
  d ees )
  f ( \> ees
  <<{d! f, ~}{s4 s8 \! s s \pp}>>
  f2 e!4 g )
  a1 \ff ~
  a
  a \ffz ~
  a
  a \ffz ~
  a
  a %{\ffz%} (
  g )
  fis4 \f \< ( g gis a \!)
  bes!4. ( b16 c d4-. ) a-.
  bes!4. ( b16 c d4-. ) a-.
  bes!2. bes4
  r bes r bes
  r bes bes bes
  bes r r2
  \mark \default
  g4-^ fis-^ r2
  f4 r e r
  a-> \partcombineApartOnce a,-. r2
  \TempoIVPAn
  d1-^\ff
  bes2 bes'
  d,1
  bes2 bes'
  a d
  d1 ~
  d4 r r2
  \repeat unfold 2 R1
  a4 \f r a r
  a r a r
  a-^ e f-^ gis
  a-^ gis a-^ cis
  d-^ e f-^ gis
  a-^ gis a-^ e
  \TempoIVMMaes
  d,2 \ff \< (d'4 cis ) \!
  c2.-> ( a4-. )
  g2.-> a4-\parenthesize->
  bes2->g4-> d->
  fis1->
  g->
  a \fz
  a \fz
  a \fz
  a4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ****************************************************************
  *	Basson II                                                *
  ****************************************************************
%}

SgMdFagottoII = \relative c {

  \include "Common/Properties.ly"
  \TempoIV
  a1 \p
  d1 \fz ~
  <<{d1}{s4 \> s s s8 s \!}>>
  g2 \dim ( f )
  e4 ( d cis2 )
  d2 \pp ( g, )
  a1 ~
  a
  d2-- ( \pp cis-- )
  e2. ( f4 )
  e2-- ( f-- )
  d ( cis )
  e ( \< f
  <<{e2. d4 )}{s8 \bindDynamics s \> s4 s s8 s \!}>>
  cis2 ( d ~
  d cis )
  \TempoIVPPCresc
  cis ( d
  e1 \fz )
  <<{cis2 ( d}{s4 s \< s s8 s \!}>>
  e1 \fz )
  <<{cis2 ( d )}{s4 \< s s s8 s \!}>>
  <<{a4 \bracketedF r r2}{s4 s8 s8 %{\>%} s4 s8 s16 s \!}>>
  \repeat unfold 3 R1
  r2 d'2 \p (
  e f )
  d ( \dim cis ) \!
  c \pp ( bes )
  bes1 ~
  bes4 r r2
  \clef bass
  \repeat unfold 3 R1
  % on place ici dans l'ordre vertical le fz, la liaison puis le soufflet.
  % Il est nécessaire de faire précéder le fz par une nuance (invisible) pour le positionner correctement
  \polyNeutral {<<{gis,2 ( a  bes2 d,)}{\hairpinToBarLineFalse s2 \p s \< s16 \bindDynamics s \> s8 s4  s2 \!}>>}
  {
    \override DynamicLineSpanner #'avoid-slur = #'inside \override DynamicLineSpanner #'outside-staff-priority = ##f
    s1 \override DynamicText #'X-offset = #0.6 s \fz}
  \polyNeutral {<<{gis2 ( a4 bes b2 d, )}{\hairpinToBarLineFalse s2 \p s4 \< s8 s \bindDynamics s8 \> s8 s4  s2 \!}>>}
  {
    \override DynamicLineSpanner #'avoid-slur = #'inside \override DynamicLineSpanner #'outside-staff-priority = ##f
    s1 \override DynamicText #'X-offset = #0.6 s \fz}
  \partcombineUnisono
  a'2 \p \< ( bes!4 b ) \bindDynamics
  c2 \f \> ( d, ) \p
  \partcombineAutomatic
  b \< ( d ) \!
  a'4 \ff r r2
  \mark \default
  d,1-> \ff
  d2-> d'
  f,4 ( a ) f' ( d8 bes )
  g4 ( e'8 d ) cis4-. cis,-.
  r8 d'-. e16 ([d cis d]) g2-.
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
  a,1 \ff
  a-^ ~
  a ~
  a4 r r2
  \repeat unfold 3 R1
  \TempoIVRit
  R1
  \mark \default
  \TempoIVIT
  \repeat unfold 4 R1
  a2-> \f cis->
  a-> r
  r4 d2 \ff ( cis4 )
  d2. ( e4 )
  f ( e a, d )
  cis-. d-. cis2->
  a-> bes->
  b4-. c!2-> r4
  f,,2-> \ff f->
  fis8 r \times 2/3 {\once \override Hairpin #'rotation = #'(6 0.6 0) a ( \< c ees} \times 2/3 {fis! a c \!} ees8. )
     [ees16-.]
  c4-. r a-. r
  R1
  g,2-> \ff g->
  gis8 r \times 2/3 {b8 ( d f} \times 2/3 {gis! b d} f8. ) [f16-.]
  d4-. r b-. r
  \repeat unfold 3 R1
  \mark \default
  a,4-. \aIIP \p a'-. a,-. \dim a'-.
  a,-. \aII a'-. a,-. a'-.
  a' \ff r8. g16 g4 r8. f16
  f4 r8. e16 e4 r8. f16
  f4 r8. cis16 cis4 r8. d16
  d4 r8. ees16 ees4 r8. c!16
  c4-. \aIIP r b-. r
  e,!8 \aII r r4 r2
  \repeat unfold 6 R1
  r2 r8 e \p ( fis gis! )
  \bar "||"
  \mark \default
  \key a \major
  cis,4-. a-. gis-. r
  a-. e-. b'-. r
  fis'-. cis-. cis-. e-.
  e-. e-. fis-. gis-.
  a-. e-. gis,-.
  e'-.
  a,-. e'-. b-. e-.
  fis,-. fis'-. cis-. e-.
  cis-. gis'-. cis,-. gis'-.
  fis4 \p r fis r
  fis r fis r
  fis r fis r
  fis r fis r
  fis fis \< ( g \! fis8 \> e
  d4 ) \!r4 r2
  \repeat unfold 2 R1
  r2 cis-> \f
  cis,-> c->
  b1-^ \f ~
  b2 bes
  <<{a' g (}{s4 s s s \<}>>
  <<{fis!2 \aIIP f )}{s4 s \!}>>
  \mark \default
  e4 a' \f ( gis2
  a b )
  a ( gis
  a gis )
  a ( b )
  a1
  a2 ( gis )
  a8 \ff
  \repeat unfold 15 a	% 2 mesures
  a1-^ \fz
  e-^ \fz
  a8
  \repeat unfold 15 a	% 2 mesures
  aes1-^ \fz
  g-^ \fz
  c,4-. \ff r b-. r
  a-. r g-. r c-. r d,-. r
  e-. r e-. r
  a-. r c-. b-.
  a-. r g-. r
  c-. r d-. r
  e-. r e,-. r
  \bar "||"
  \key a \minor
  \mark \default
  a4 r r2
  R1
  a8-. \f c-. dis-. e-. fis-. \< a-. c-. dis-.
  e-. \! dis-. c-. a-. fis-. e-. dis-. c-.
  a4-. r r2
  R1
  a8-. \mp c-. dis-. e-. f!-. a-. c-. dis-.
  e-. \aII dis-. c-. \dim a-. f-. e-. dis-. c-. \!
  a4 r r2
  \repeat unfold 4 R1
  a1 \pp ~
  a ~
  a4 r r2
  \repeat unfold 2 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \mark \default
  \TempoIVIT
  \repeat unfold 7 R1
  r4 ges'! \pp ( f ees
  des ) r r2
  \repeat unfold 6 R1
   r4 g! \pp (fis e
  d4 )r r2
  \repeat unfold 16 R1
  r2 \once \override Voice.DynamicText #'extra-offset = #'(-2.5 . 2) b'!8 \f b, b r
  r2 \once \override Voice.DynamicText #'extra-offset = #'(-2.5 . 2) b'8 \f b, b r
  b,4 \f r b r
  b r b r
  b \ff r r2
  R1
  \mark \default
  \repeat unfold 8 R1
  r4 b''8-. \ff b-. e4-> g8-. g-.
  r4 g,8-. fis-. e4-. r
  r8 e'-. d-. c-. b4-. r
  r4 ais8-. b-. r4 dis8-. e-.
  r4 b8-. \ff b-. d,!4-> f!8-. f-.
  r4 f8-. e-. d4-. r
  r4 b'8-. a!-. gis4-. r
  <<{r2 gis}{s2 s4 \startTrillSpan s8 s16 s32 s \stopTrillSpan}>>
  a8-. e'-. c-. a-. c-. d-. b-. g'?-.
  e-. b-. gis-. e-. e-. f-. e-. c'-.
  \mark \default
  a,1 \fz ~
  a1
  \repeat unfold 4 R1
  c'4 \f r8 b a4 r8 c
  dis4 \aIIP r8 gis a4 r8 ees
  f!4 r8 e! d!4 r8 f
  gis4 \aII r r2
  \repeat unfold 4 R1
  \clef tenor
  r4 eis8-. \ff eis-. a,4 fis'!8-. fis-.
  eis4 cis8-. cis-. fis4 dis8-. dis
  \clef bass
  cis4 cis,-. cis,-. cis'-.
  cis,-. \dim cis'-. cis,-. cis'-. \!
  cis,-. r r2
  \repeat unfold 5 R1
  \mark \default
  \partcombineApart
  fis1 \pp ~
  fis ~
  fis (
  a
  cis2. a4
  fis ) r r2
  \partcombineAutomatic
  \repeat unfold 2 R1
  \partcombineApart
  g1 \p ~
  g ~
  g (
  <<{bes}{s4 \< s s s8 s16 s \!}>>
  d2. bes4 \>
  g ) \! r r2
  \partcombineAutomatic
  \repeat unfold 2 R1
  r2 aes' \pp ~
  aes aes ~
  aes aes ~
  aes aes ~
  aes gis ~
  gis gis ~
  gis gis ~
  % insérer ici un crescendo sur 4 mesures
  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \PocoCrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  gis \< gis ~
  gis b ~
  b b ~
  b4 d2 <<{b4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  b4 \< d2 b4 ~
  b d2 d,4 ~
  d f2 gis4 \!
  \bar "||"
  \mark \default
  \key d \minor
  \partcombineApartOnce a!4 r r2
  \clef bass
  \repeat unfold 3 R1
  r2 r4 a \ff
  d,2-^ g-^
  a8 a a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' \aIIP a,4 r8 a' a,4
  \repeat unfold 3 {r8 a' a,4 r8 a' a,4}
  r8 a' \aII a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' \aIIP a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  r8 a' \aII a,4 r8 a' a,4
  r8 a' a,4 r8 a' a,4
  \mark \default
  \clef tenor
  d'1-> \fz \> ~
  <<{d1}{s4 s s s8 s16 s \!}>>
  <<{d1 ~}{s4 \p \> s s s8 s16 s \!}>>
  <<{d1 ~}{s4 \fp \dim s s \>}>>
  <<{d1}{s4 s s s8 s16 s \!}>>
  e2 \pp ( d ~
  d cis )
  \clef bass
  a ( b
  g a )
  e ( f
  cis d
  b1 ~
  b )
  cis ~
  cis
  \key d \major
  \bar "||"
  fis4-. \p d-. cis-. r
  d-. a-. e'-. r
  b'-. fis-. fis-. a-.
  a-. a-. b-. cis-.
  d-. a-. cis,-. a'-.
  <<{d,-. \aIIP a'-. e-. a-.}{s4 \< s s s8 s \!}>>
  b,4-. \aII b'-. fis-. fis,-.
  <<{fis-. cis'-. fis-. ais,-.}{s4 \> s s s8 s \!}>>
  b4 r r2
  \repeat unfold 3 R1
  r4 \rightDynamic b' \p \< ( c b8 a \!
  g4 ) r r2
  r4 \rightDynamic b \mf \< ( c \! b8 \> a \!
  g4 ) r r2
  r fis-> \ff
  fis,-> f->
  %	e1-^ ~
  %	e2 ees->
  s1 s2 ees->
  d2-> c'->
  <<{b bes4 ( e, )}{s4 \< s s s8 s \!}>>
  \mark \default
  fis4 \ff r8 \partcombineApartOnce fis' \partcombineApartOnce g4 r8 \partcombineApartOnce g
  fis4 r8 fis cis4 r8 cis
  d4  r8 d e4 r8 e
  d4 r8 d g4 r8 g
  fis4 r8 fis cis4 r8 cis
  d4 r8 d g,4 r8 g
  a4 r8 a a4 r8 a
  d8 \ff
  \repeat unfold 15 d'8	% 2 mesures
  d1 \fz
  e \fz
  d8
  \repeat unfold 15 d8	% 2 mesures
  des1 \fz
  c! \fz
  f,8 \f a a4. a8 a4 ~
  a8 a a4. c8 c4 ~
  c8 c c4. bes8 bes4 ~
  bes8  a a4. a8 a4 ~
  a8 \aII a a4. a8 a4 ~
  a8 a a4. bes8 d4 ~
  d8 c c4. bes8 bes4 ~
  bes8 a a4. a8 a4
  \bar "||"
  \mark \default
  \key d \minor
  d,4 r r2
  R1
  \once \override Hairpin #'rotation = #'(4 0 0)
  d8 \aII \aIIP \f \< f gis a b d f gis \! %  facultatif
  a  gis f d b a gis f
  d4 r r2
  R1
  \rightDynamic d8 \f \< f! gis a \clef tenor bes! d f g! \!
  aes g f d \clef bass bes a! aes f
  d4 r r2
  gis1-> \f
  \repeat unfold 2 R1
  b,,1-^\ffz ~
  b
  bes-^\ffz ~
  bes
  bes-^ \fz
  e-^\fz
  \mark \default
  a1 \aII ~
  a1 ~
  a1 ~ 
  \repeat unfold 2 {a1 ~}
  a1
  r4 ees''8 \aII \aIIP \ff ees a,4 c8 c
  r4 ees8 ees a,4 c8 c
  a4  r bes2-> \mp (
  d ees )
  f ( \> ees
  <<{d! f, ~}{s4 s8 \! s s \pp}>>
  f2 \aII e!4 g )
  f1 \ff ~
  f
  fis \ffz ~
  fis
  fis \ffz ~
  fis
  d \ffz ~
  d
  d4 \f \< ( e eis fis! \!)
  g!4. ( gis16 a bes4-. ) fis-.
  g!4. ( gis16 a bes4-. ) fis-.
  g!2. g4
  r g r g
  r g g g
  g r r2
  \mark \default
  g,4-^ fis-^ r2
  f4 r e r
  a-> \partcombineApartOnce a-. r2
  \TempoIVPAn
  d,1-^\ff
  bes2 bes'
  d,1
  bes2 bes'
  a d
  d1 ~
  d4 r r2
  \repeat unfold 2 R1
  a4 \f r a r
  a r a r
  a-^ cis d-^ e
  f-^ e f-^ e
  f-^ cis' d-^ e
  f-^ e f-^ cis
  \TempoIVMMaes
  d,2 \ff \< (d'4 cis ) \!
  c2.-> ( a4-. )
  g2.-> a4-\parenthesize->
  bes2->g4-> d->
  fis1->
  g->
  fis \fz
  fis \fz
  fis \fz
  fis4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdFagottoIAII = \new Voice {
  \time 2/2
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Fagotti" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Fag." I+II}}
  \set Staff.midiInstrument = "bassoon"
  \clef bass
  \partcombine \SgMdFagottoI \SgMdFagottoII
}

