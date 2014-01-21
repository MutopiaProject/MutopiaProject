%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7	: mouvement III - Scherzo Vivace                      *
  * Fichier de notes, Bassons I et II, directrice                       *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ****************************************************************
  *	Basson I                                                     *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMcFagottoI = \relative c' {

  \include "Common/Properties.ly"

  \TempoIII
  r2 r4
  a4 \p \< ( b c cis2. ) \!
  d4 \> ( c! bes! <<{a2}{s4 s \!}>> d,4 )
  d4 ( g \< a bes2 b4 ) \!
  c ( \> g e c2.) \!
  \partcombineApart
  r8 \rightDynamic f \mf ( \< a c f e \bindDynamics d \> c bes a g f ) \!
  r d ( \< g bes e d \bindDynamics c \> bes a g f e \! )
  r d \< ( f a d c \bindDynamics bes \> a g f e d ) \!
  \partcombineAutomatic
  cis'2 %{\mf%} ( b4 ) \dynamicSpannerOff cis2 \dim ( b4 )
  <<{cis4 f ( e d c! b}{s4 -\tweak #'minimum-length #4 \< s \f \> s s s s8 s \!}>>
  a4 ) %{\p%} \partcombineChords r r r2 r4
  R1 * 6/4
  e2. \pp ( f
  e4 ) r r \partcombineApart r bes'!2-\parenthesize -> \p ~
  bes2. \> ~ bes4 \! r r
  \partcombineChords
  \repeat unfold 3 R1 * 6/4
  a4 \mf \partcombineAutomatic r a r8 a a4-. g-.
  f r f r8 f \< g4-. a-. \!
  bes r bes r8 bes \> bes4-. a-. \!
  g r g r8 g \< a4-. bes-. \!
  a2-> \f a4.-> c8 bes4-. a-.
  g2-> g4.-> bes8 a4-. g-.
  f2 -> f4-. g-. gis-. a-.
  \mark \default  % Mark A
  d4 \f r f r8 f f4-. e-.
  f4 r f \cresc r8 f f4-. e-.
  d-. \ff c,!-. bes-. a-. g8 ( gis a4 )
  d4-. c-. bes-. a-. g8 ( gis a4 )
  \partcombineApart
  d r f-. \p r a-. bes-.
  a-. r r r2 r4
  g4 \p -\tweak #'positions #'(3.5 . 3) ( a b c \dim b bes )
  a ( d bes g a2 ) \!
  \partcombineAutomatic
  d,4 \f d8 ([e]) e ([f]) f ([g]) g ([a]) a ([bes])
  bes ([a]) \< a ([b]) b ([c]) c ([cis]) cis ([d]) d ([e]) \!
  e, \aII ([fis]) \<  fis ([g]) g ([a]) a ([bes?]) bes ([b]) b ([c?]) \!
  b2 \ff c4-. b2 bes4-.
  bes-> a-. gis-. bes-> a-. gis-.
  bes->  \fz a g'!-> \fz f ees-> \fz d
  cis-. r b-. r cis-. r
  b-. r cis-. r2 r4
  \repeat unfold 2 R1 * 6/4
  d,4 \p r r d r r
  bes r r bes' r r
  \partcombineApartOnce g, %{\fz%} r r g' r r
  c, \p r r c' r r
  \partcombineApartOnce a,-> %{\fz%} r d-> \bracketedFz ~ d2 r4
  \partcombineApartOnce g,-> %{\bracketedFz%} r c-> \fz ~ c2 r4
  \partcombineApartOnce f,-> %{\bracketedFz%} r bes2-> \fz \partcombineApartOnce g4-. \partcombineApartOnce gis-.
  \mark \default  % Mark A
  a4 \mf a'8 a a4 a, \p a'8 a a4
  a,-. a'-. a,-. r2 r4
  a4 \p a'8 a a4 a, a'8 a a4
  a, r r r2 r4
  e' \pp r r f r r
  e r r r2 r4
  \repeat unfold 4 R1 * 6/4
  \mark \default  % Mark A
  a2 \ff a ( b4 cis )
  d2 ( a4 f2 d4 )
  d ( g a bes!2b4 )
  c2 ( g4 e2 c4 )
  <<{f'2. d4( e f )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{f4 e2 c4 ( d e )}{s4 s4 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{e4 d2 d2 cis4-.}{s4 s4 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>
  d4-. r r r2 a4-.
  d,-. r r r2 a'4-.
  d, ( c bes a ) g8 ( gis a4 )
  d ( c bes a ) g!8 ( gis a4 )
  d r r r2 r4
  \repeat unfold 3 R1 * 6/4
  \mark \default  % Mark A
  d2-> \ff d-> d->
  e-> e4fis-. g-. a-.
  b-. c!-. d-. ees-. d-. d-.
  cis2-> d4 \fz cis2-> d4 \fz
  ees2-> d4 \fz ees2-> dis4 \fz
  cis r d,! r dis! r
  e r fis r g r
  gis cis,8 ( \< dis e fis gis! ais bis cis dis e ) \!
  g,!2.-> ~ g2 g4-.
  fis2.-^ \ff f-^
  e-^ a-^
  d,4-. bes'-. a-. f'-. d-. a-.
  bes-. a-. f-. d-.f'-. d-.
  d, \fz f a \fz bes d \fz f
  a \fz f d \fz bes a \fz f
  d r r d' r r
  <<{d,,1. ~}{s2. \> s2 s4 \!}>>
  \bar "||"
  \TempoIIIMM
  \key g \major
  d4 r r r r \partcombineApart e'' \p
  e2. ( d2 c4 )
  b2. ( ~ b2 c4 )
  c2 ( b4 \dim g2 c4 )
  c2 ( b4 a2 g4 )
  c,2. ( %{\<%} ~ c2 e4 \! )
  \partcombineAutomatic
  e2. ( \> d2 c4 ) \!
  b ( d4. \< f8 f4 e4. dis8 \! )
  dis4 ( e4. g8 g4 \f fis? e )
  fis2. %{\>%} ~ fis2 d!4 %{\p%}
  e2. ( %{\dim%} c )
  b %{\pp%} ( c )
  \mark \default  % Mark A
  d4 r r r2 r4
  \repeat unfold 5 R1 * 6/4
  r2 r4 cis'2 \p ( b4 )
  ais1. (
  a2. \dim gis )
  fis ( c'! ~
  c \pp ) b
  e,4-. \pp r e-. r e-. r
  e-. r e-. r e-. r
  e-. r r r2 r4
  R1 * 6/4
  d4-. \pp r d-. r d-. r
  d-. r d-. r d-. r
  d-. r r r2 r4
  R1 * 6/4
  \partcombineApart
  ees'1. \p (
  d )
  e! (
  f )
  <<{f (}{s4 %{\p \<%} s s s s s8 s \!}>>
  \mark \default  % Mark A
  <<{fis1. )}{s4 s s %{\>%} s s s8 s \!}>>
  <<{f1. (}{s4 %{\p \<%} s s s s s8 s \!}>>
  <<{fis1. )}{s4 s %{\bracketedHairpin%} s %{\>%} s s s8 s \!}>>
  cis2. ~ cis4 \partcombineAutomatic r r
  \partcombineApart
  \once \override MultiMeasureRest #'staff-position = #8
  R1 * 6/4
  cis,4 \bracketedP ( e a cis e a
  e ) \override Rest #'staff-position = #9 r r r2 r4
  c,!4 \bracketedPP ( e a c e a
  e ) r r r2 r4
  \revert Rest #'staff-position
  \once \override MultiMeasureRest #'staff-position = #8
  R1 * 6/4
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/4
  \partcombineApart
  r4 c-. f,-. f,-. r r
  \partcombineAutomatic
  r2 r4 r e'4 \p ( d )
  d2. ( \< c2 bes4 ) \!
  a4 ( c4. \< ees8 ) ees4 \! ( d4. cis8 )
  cis4 \f ( d f ~ f ) e! ( d )
  e2. \aII ( ~ e2 \dim c4 )
  d2. \p ( ~ d2 \dim bes4 )
  a2. \aIIP \pp ( bes )
  \mark \default  % Mark A
  c4 r r r2 r4
  \repeat unfold 2 R1 * 6/4
  \partcombineApart
  <<{bes1. (}{s4 %{\fp \>%} s s s s s8 s \!}>>
  a4 ) \partcombineAutomatic r r r2 r4
  \repeat unfold 5 R1 * 6/4
  \TempoIIIAcc
  r4 f'-. \p r f-. r f-.
  r f-. \< r f-. r f-. \!
  r4 f8 \mf f r4 f8 \cresc f r4 f8 f
  r4 f8 f r4 f8 f r4 f8 f
  \TempoIIIViv
  f4 \ff r r r2 r4
  \repeat unfold 2 R1 * 6/4
  bes4-. \ff c8 ( cis d4 ) \clef tenor e8 ( f g a bes gis )
  \mark \default  % Mark A
  <<{a4 \clef bass a,2 ~ a2.}{s4 \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
    \once \override TrillSpanner #'outside-staff-priority = #500
    s ^\markup {\lower #1 \tiny \flat} \startTrillSpan}>>
  <<{a1. }{s4 s s s s s8 s \stopTrillSpan}>>
  a4-. a,-. r a'-. a,-. r
  a'-. a,-. r a'-. a,-. r
  a' r r r2 r4
  \repeat unfold 2 R1 * 6/4
  \bar "||"
  \key d \minor

  a4 \p ( b c cis2. )
  d4 ( a f d2. )
  d4 ( \< g a bes!2 b4 ) \!
  c ( \> g e c2. ) \!
  \partcombineApart
  <<{f'2. -\tweak #'extra-offset #'(-2 . -6) \f d4 ( %{\cresc%} e f )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{f4 e2 c4 ( d e )}{s4 s4 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{e4 d2 ~ d2.}{s4 s4 \< \startTrillSpan s s s8 \! s16 s \stopTrillSpan}>>
  cis2-> %{\mf%} ( b!4 ) cis2-> ( b4 )
  cis4 f ( \> e d c! b \!
  a ) %{\p%} \partcombineAutomatic r r r2 r4
  R1 * 6/4
  e2. \pp ( f
  e4 ) r r \partcombineApart r bes'!2-\parenthesize-> \p ~
  bes2. \> ~ bes4 \! r r
  \partcombineAutomatic
  \repeat unfold 3 R1 * 6/4
  \mark \default  % Mark A
  a4 \mf r a r8 a a4-. g-.
  f4 r f r8 f \< g4-. a-. \!
  bes r bes r8 bes \> bes4-. a-. \!
  g r g r8 g \< a4-. bes-. \!
  a2-> \f a4.-> c8 bes4-. a-.
  g2-> g4.-> bes8 a4-. g-.
  f2-> f4 g-. gis-. a-.
  d \f r f r8 f f4-. e-.
  f r f \cresc r8 f f4-. e-.
  d4 \ff c,!-. bes-. a-. g8 ( gis a4 )
  d-. c!-. bes-. a-. g8 (gis a4 )
  d-. a-. d-. a-. d-. a-.
  d-. a-. d-. \dim a-. d-. a-.
  d-. \mp a-. d-. \dim a-. d-. a-.
  d-. \p a-. \> d-. a-. d-. a-. \!
  d \p r r d r r
  r2 r4 d \pp r r
  r2 r4 d \pp r r
  R1 * 6/4
  \mark \default  % Mark A
  d4 ( \< a d a d a )
  d ( a d a d a ) \!
  \partcombineUnisono
  d' \f ( a bes \dim f g d )
  \partcombineApart
  g2 \p ( a4 bes2. )
  a4 \partcombineAutomatic r r r2 r4
  \repeat unfold 10 R1 * 6/4
  \partcombineApart
  g,1. ( %{\pp%}
  <<{ges )}{s4 %{\<%} s s s s s \!}>>
  \partcombineChords
  <<{des'1.-^ ~}{s4 \f \> s s s s s8 s \!}>>
  \TempoIIIPPr
  des2. d ~
  d1.
  <<{f1.}{s4 \> s s s s s \!}>>
  \partcombineApart
  d2. %{\pp%} ( e2 f4 )
  f1. %{\pp \>%} (
  g ) \!
  \TempoIIIiT
  \partcombineAutomatic
  f4 r r r2 r4
  d,-. \p \< e-. f-. g-. a-. bes-. \!
  d,-. \< e-. f-. g-. a-. bes-. \!
  d,-. \f e-. f-. g-. a-. bes-.
  \mark \default  % Mark A
  d2-> \ff d-> d->
  e-> e4 fis-. g-. a-.
  b-. c-. d-. ees-. d-. d-.
  cis2-> d4-. \fz cis2-> d4-. \fz
  ees2-> d4-. \fz ees2-> dis4-. \fz
  cis r d,! r dis r
  e r fis r g r
  gis cis,8 \< ( dis e fis gis! ais bis cis dis e ) \!
  g,!2. ~ g2 g4-.
  fis2.-^ \ff f-^
  e-^ a-^
  d,4-. bes'-. a-. f'-. d-. a-.
  bes-. a-. f-. d-. f'-. d-.
  d, \fz f a \fz bes d \fz f
  a \fz f d \fz bes a \fz f
  a r a r8 a a4 a
  a r r a r r
  a r r r2 r4
  \bar "|."
}

%{
  ****************************************************************
  *	Basson II                                                *
  ****************************************************************
%}

SgMcFagottoII = \relative c,{

  \include "Common/Properties.ly"

  \TempoIII
  r2 r4
  d4 \p r r d r r
  d r r d r r
  g r r g r r
  c, r r c r r
  <<{a'2 d1}{s8 \mf s %{\<%} s s s s \! s %{\>%} s s s s s \!}>>
  <<{g,2 c1}{s8 s %{\<%} s s s s \! s %{\>%} s s s s s \!}>>
  <<{f,2 bes g4-. gis-.}{s8 s %{\<%} s s s s \! s %{\>%} s s s s s \!}>>
  a4 \mf a'2 \dynamicSpannerOff a,4 \dim a'2
  <<{a,4 a'2 ~ a2. ~}{s4 -\tweak #'minimum-length #4 \< s \f \> s s s s8 s \!}>>
  a4 \p r r r2 r4
  R1 * 6/4
  cis,2. \pp ( c
  cis4 ) r r r2 r4
  \repeat unfold 4 R1 * 6/4
  f4 \mf r f r8 f f4-. e-.
  d r d r8 d \< e4-. f-. \!
  g r g r8 g \> g4-. f-. \!
  e r e r8 e \< f4-. g-. \!
  a2-> \f a4.-> c8 bes4-. a-.
  g2-> \aIIP g4.-> bes8 a4-. g-.
  f2 -> f4-. g-. gis-. a-.
  \mark \default  % Mark A
  d4 \f r d r8 d d4-. cis-.
  d4 r d \cresc r8 d d4-. cis-.
  d-. \ff c,!-. bes-. a-. g8 ( gis a4 )
  d4-. \aIIP c-. bes-. a-. g8 ( gis a4 )
  d, r r r2 r4
  \repeat unfold 3 R1 * 6/4
  d'4 \f d8 ([e]) e ([f]) f ([g]) g ([a]) a ([bes])
  bes ([a]) \< a ([b]) b ([c]) c ([cis]) cis ([d]) d ([e]) \!
  e, ([fis]) \< fis ([g]) g ([a]) a ([bes]) bes ([b]) b ([c]) \!
  b2 \ff c4-. b2 bes4-.
  bes-> a-. gis-. bes-> a-. gis-.
  bes-> \fz a g'!-> \fz f ees-> \fz d
  a-. r a-. r a-. r
  a-. r a-. r2 r4
  \repeat unfold 2 R1 * 6/4
  d,,4 \p r r d r r
  bes r r bes' r r
  g \fz r r g r r
  c, \p r r c' r r
  a-> \fz r d,-> \bracketedFz ~ d2 r4
  g-> \bracketedFz r c,-> \fz ~ c2 r4
  f-> \bracketedFz r bes,2-> \fz g'4-. gis-.
  \mark \default  % Mark A
  a4 \mf a'8 a a4 a, \p a'8 a a4
  a,-. a'-. a,-. r2 r4
  a4 \p a'8 a a4 a, a'8 a a4
  a, \aII r r r2 r4

  e \pp r r f r r
  e r r r2 r4
  \repeat unfold 4 R1 * 6/4
  \mark \default  % Mark A
  a'2 \ff a ( b4 cis )
  d2 ( a4 f2 d4 )
  d \aII ( g a bes2 b4 )
  c2 ( g4 e2 c4 )
  <<{f'2. d4( e f )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{f4 e2 c4 ( d e )}{s4 s4 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{e4 \aIIP  d2 d2 cis4-.}{s4 s4 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>
  d4-. \aII r r r2 a,4-.
  d,-. r r r2 a'4-.
  d ( c bes a ) g8 ( gis a4 )
  d ( c bes a ) g!8 ( gis a4 )
  d, r r r2 r4
  \repeat unfold 3 R1 * 6/4
  \mark \default  % Mark A
  d'2-> \ff d-> d->
  e-> e4fis-. g-. a-.
  g-. a-. b!-. c-. b-. bes-.
  f!2-> bes!4 \fz f2-> b4 \fz
  fis2-> b4 \fz fis2-> bis4 \fz
  cis, r d,! r dis r
  e r fis r g r
  gis cis8 ( \< dis e fis gis! ais bis cis dis e ) \!
  g,,!2.-> ~ g2 g4-.
  fis2.-^ \ff f-^
  e-^ a-^
  d,4-. bes'-. a-. f'-. d-. a-.
  bes-. a-. f-. d-.f'-. d-.
  d, \fz f a \fz bes d \fz f
  a \fz f d \fz bes a \fz f
  d r r d' r r
  <<{d,1. ~}{s2. \> s2 s4 \!}>>
  \bar "||"
  \TempoIIIMM
  \key g \major
  d4 \aII \aIIP r r r r r
  \repeat unfold 2 R1 * 6/4
  r2 r4 r r e'4 \p
  e2 ( d4 c2 b4 )
  a2. ( \< ~ a2 e'4 \! )
  e2. ( \> d2 c4 ) \!
  b ( d4. \< f8 f4 e4. dis8 \! )
  dis4 \aII ( e4. g8 g4 \f fis? e )
  dis2. ( \>d2 ) b4 \p
  a1. \dim
  e2. \pp ( c )
  \mark \default  % Mark A
  d4 r r r2 r4
  \repeat unfold 5 R1 * 6/4
  r2 r4 cis'2 \p ( b4 )
  ais1. (
  a2. \dim gis )
  fis ( c'! ~
  c \pp ) b
  e,4-. \pp r e-. r e-. r
  e-. r e-. r e-. r
  e-. r r r2 r4
  R1 * 6/4
  d4-. \pp r d-. r d-. r
  d-. r d-. r d-. r
  d-. r r r2 r4
  \repeat unfold 5 R1 * 6/4
  <<{b''1. (}{s4 \p \< s s s s s8 s \!}>>
  \mark \default  % Mark A
  <<{c!1. )}{s4 s s \> s s s8 s \!}>>
  <<{b1. (}{s4 \p \< s s s s s8 s \!}>>
  <<{c1. )}{s4 s \bracketedHairpin s \> s s s8 s \!}>>
  cis2. _\footnote \markup {"(18)"} #'(1 . 0)
    \markup { \italic "18 - Dynamic missing on our reference edition, but present in N. Simrock 1885"} \bracketedP ~
    cis4 r r
  d,,4 \p ( a' d fis a d)
  e,, r r r2 r4
  r e' ( gis d' e e, )
  e, r r r2 r4
  r e' \bracketedPP ( gis d' e e, )
  e r r r2 r4
  \repeat unfold 2 R1 * 6/4
  \once \override MultiMeasureRest #'staff-position = #-10
  R1 * 6/4
  r2 r4 r e4 \p ( d )
  d2. ( \< c2 bes4 ) \!
  a4 ( c4. \< ees8 ) ees4 \! ( d4. cis8 )
  cis4 \f ( d f ~ f ) e! ( d )
  e2. ( ~ e2 \dim c4 )
  d2. \p ( ~ d2 \dim bes4 )
  a2. \pp ( bes )
  \mark \default  % Mark A
  c4 r r r2 r4
  \repeat unfold 2 R1 * 6/4
  <<{bes,1. (}{s4 \fp \> s s s s s8 s \!}>>
  a'4 ) r r r2 r4
  \repeat unfold 5 R1 * 6/4
  \TempoIIIAcc
  r4 d-. \p r d-. r d-.
  r d-. \< r d-. r d-. \!
  r4 d8 \mf d r4 d8 \cresc d r4 d8 d
  r4 d8 d r4 d8 d r4 d8 d
  \TempoIIIViv
  d4 \ff r r r2 r4
  \repeat unfold 2 R1 * 6/4
  bes'4-. \ff c8 ( cis d4 ) \clef tenor e8 ( f g a bes gis )
  \mark \default  % Mark A
  <<{a4 \aII \clef bass a,2 ~ a2.}{s4 \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
    \once \override TrillSpanner #'outside-staff-priority = #500
    s ^\markup {\lower #1 \tiny \flat} \startTrillSpan}>>
  <<{a1.}{s4 s s s s s8 s \stopTrillSpan}>>
  a4-. a,-. r a'-. a,-. r
  a'-. a,-. r a'-. a,-. r
  a r r r2 r4
  \repeat unfold 2 R1 * 6/4
  \bar "||"
  \key d \minor
  d,4 \p r r d' r r
  d, r r d' r r
  g, \fz r r g \p r r
  c, r r c' r r
  <<{a2-> d1->}{s2. \f s2. \cresc}>>
  g,2-> c1->
  <<{f,2-> bes-> g4-. gis-.}{s4 s \< s s s s \!}>>
  a4-. \mf a'-. r a,-. a'-. r
  <<{a, a'2 ~ a2. ~}{s4 s \> s s s s \!}>>
  a4 \p r r r2 r4
  R1 * 6/4
  cis,2. \pp ( c
  cis4 ) r r r2 r4
  \repeat unfold 4 R1 * 6/4
  \mark \default  % Mark A
  f4 \mf r f r8 f f4-. e-.
  d4 r d r8 d \< e4-. f-. \!
  g r g r8 g \> g4-. f-. \!
  e r e r8 e \< f4-. g-. \!
  a2-> \f a4.-> c8 bes4-. a-.
  g2-> g4.-> bes8 a4-. g-.
  f2-> f4 g-. gis-. a-.
  d \f r d r8 d d4-. cis-.
  d r d \cresc r8 d d4-. cis-.
  d4 \ff c,!-. bes-. a-. g8 ( gis a4 )
  d-.  c!-. bes-. a-. g?8 (gis a4 )
  d-. a-. d-. a-. d-. a-.
  d-. a-. d-. \dim a-. d-. a-.
  d-. \aII \mp a-. d-. \dim a-. d-. a-.
  d-. \p a-. \> d-. a-. d-. a-. \!
  d \aIIP \p r r g, r r
  r2 r4 f \pp r r
  r2 r4 g \pp r r
  \partcombineApart
  <<{a1.}{s4 \> s s s s s8 s \!}>>
  \partcombineAutomatic
  d4 ( \< a d a d a )
  d ( a d a d a ) \!
  d' \f ( a bes \dim f g d )
  e2 \p ( f4 g2 gis4 )
  a4 r r r2 r4
  \repeat unfold 10 R1 * 6/4
  g,1. ( \pp
  <<{ges )}{s4 \< s s s s s \!}>>
  <<{bes1.-^ ~}{s4 \f \> s s s s s8 s \!}>>
  \TempoIIIPPr
  bes2. b ~
  b1.
  <<{d1.}{s4 \> s s s s s \!}>>
  g,2. \pp ( gis )
  a1. \pp \> ~
  a \!
  \TempoIIIiT
  d4 r r r2 r4
  d,-. \p \< e-. f-. g-. a-. bes-. \!
  d,-. \< e-. f-. g-. a-. bes-. \!
  d,-. \f e-. f-. g-. a-. bes-.
  \mark \default  % Mark A
  d2-> \aII \ff d-> d->
  e-> \aIIP e4 fis-. g-. a-.
  g-. a-. b!-. c-. b-. bes-.
  f2-> bes4-. \fz f2-> b4-. \fz
  fis2-> b4-. \fz fis2-> bis4-. \fz
  cis, r d,! r dis r
  e r fis r g r
  gis cis8 \< ( dis e fis gis! ais bis cis dis e ) \!
  g,,!2. ~ g2 g4-.
  fis2.-^ \ff f-^
  e-^ a-^
  d,4-. bes'-. a-. f'-. d-. a-.
  bes-. a-. f-. d-. f'-. d-.
  d, \fz f a \fz bes d \fz f
  a \fz f d \fz bes a \fz f
  f' r f r8 f f4 f
  f r r f r r
  f r r r2 r4

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMcFagottoIAII = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \key d \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Fagotti" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Fag." I+II}}
  \set Staff.midiInstrument = "bassoon"
  \clef bass
  \partcombine \SgMcFagottoI \SgMcFagottoII
}

