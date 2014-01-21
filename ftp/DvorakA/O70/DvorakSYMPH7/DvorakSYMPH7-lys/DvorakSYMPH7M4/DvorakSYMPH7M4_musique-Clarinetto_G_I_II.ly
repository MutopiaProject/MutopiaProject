%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement IV - Finale allegro                       *
  * Fichier de notes, Clarinettes 1 et 2, parties                       *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ****************************************************************
  *	Clarinette 1                                                 *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMdClarinettoI = \relative c' {

  \include "Common/Properties.ly"
  \TempoIV
  \transposition a
  \partcombineApart
  <<{c2 ( c' )}{s4 \p \< s s s8 s \!}>>
  b2. \fz ( aes4
  f g \> aes f8 \! c )
  \partcombineAutomatic
  \dynamicSpannerOff
  e2. ( -\tweak #'stencil ##f \f \dim f4 \!
  des! b c c-- )
  aes2 \pp ( bes!
  g1 ) ~
  g
  aes'2-- \pp ( bes-- )
  g2. ( f4 )
  e2-- ( f-- )
  des ( c )
  \hairpinToBarLineFalse
  bes' \< ( c
  <<{bes2. aes4 )}{s8 \bindDynamics s \> s4 s s8 s \!}>>
  g2 ( aes
  f e )
  \TempoIVPPCresc
  g ( aes
  bes1 \fz )
  <<{g2 ( aes}{s4 s \< s s8 s \!}>>
  bes1 \fz )
  <<{g2 ( aes )}{s4 \< s s s8 s \!}>>
  <<{f'1-^ ~}{\rightDynamic s4 %{\fz%} s8 s8 %{\>%} s4 s8 s16 s \!}>>
  \once \override NoteColumn #'force-hshift = #-0.5 \tweak Stem #'direction #DOWN f2. %{\p%} r4
  r4 \partcombineApart \times 2/3 {c,8 ( %{\f \<%} f aes} \times 2/3 {c f aes} c8 ) \! [
  \once \override Voice.Rest #'extra-offset = #'(0.0 . 3 ) r16 c-.]
  b2. %{\fp \>%} ( aes4 )
  f \! ( g aes %{\p%} f8 c
  \tweak Dots #'extra-offset #'(0 . 0.3) e2. f4 )
  des %{\dim%} ( b c ) c \!
  a2 ( %{\pp%} bes!
  aes! ges )
  \once \override NoteColumn #'force-hshift = #-0.5 \tweak Stem #'direction #DOWN des'4
  \partcombineAutomaticOnce r \partcombineAutomaticOnce r2
  r r4 \times 2/3 {des,8 \mp ( ges bes}
  des2. ) \> r4 \!
  \partcombineAutomatic
  \repeat unfold 8 R1
  r2 r4 c'4 \ff (
  \mark \default
  b2.->  aes4 )
  \partcombineApart
  f ( g aes f8 c )
  \partcombineAutomatic
  e2.-> ( f4 )
  f-. r g-. r
  r8 f,-. g16 ([f e f]) bes2-.
  g-. r
  r8 f-. g16 ([f e f])des'2-.
  c-. r
  r8 c-. d16 ([c b c]) ges'2-.
  f-. r
  r8 c-. d16 ([c b c]) g'!2-.
  fis-. r
  r8 c-. d16 ([c b c]) g'2-.
  a-. r
  r8 c,-. \< d16 ([c b c]) a'2-. \!
  e'1 \ff ~
  e2 g, ~
  g1 ~
  g4 r r2
  \repeat unfold 3 R1
  \TempoIVRit
  R1
  \mark \default
  \TempoIVIT
  \repeat unfold 4 R1
  g2-> \f g->
  g-> r
  r4 \times 2/3 {c8 ( \ff des c )} f,4 g8-. g-.
  aes4 ( bes) c ( ees8 des )
  c-. c-. bes4-> aes ( bes )
  g-. aes-. bes2->
  g-> g->
  g4-. g2-> r4
  ees2-> \ff ees->
  ees8 r \times 2/3 {
    \once \override Hairpin #'rotation = #'(6 0.6 0)  c,8 ( \<
    ees ges
  } \times 2/3 {a c ees \!} ges8. ) [ges16-.]
  ees4-. r c-. r
  R1
  f2-> \ff f->
  f8 r \times 2/3 {d,8 ( f aes} \times 2/3 {b d! f} aes8. ) [aes16-.]
  f4-. r d-. r
  \repeat unfold 3 R1
  \mark \default
  \repeat unfold 2 R1
  c'4 \ff r8. bes16 bes4 r8. aes16
  aes4 r8. g16 g4 r8. aes16
  aes4 r8. e16 e4 r8. f16
  f4 r8. ges16 ges4 r8. ees!16
  ees4-. r d-. r
  g!8 r r4 r2
  \repeat unfold 2 R1
  \partcombineApart
  r4 \times 2/3 {ees8 \p ( f ees} fis,4 ) \times 2/3 {d'8 ( ees d}
  g,4 ) r r2
  \partcombineAutomatic
  \repeat unfold 2 R1
  \partcombineApart
  r8 g' ( \p f! d b g f g )
  \bar "||"
  \key c \major
  \mark \default
  e!4 r r2
  \partcombineAutomatic
  \repeat unfold 7 R1
  \partcombineApart
  <<
    {r4 e' ( -\tweak #'X-offset #-3 \bracketedMP \< gis  fis8 e )}
    {s4 \rightDynamic s4 \< s8 s s \> s16 s \!}
  >>
  e2 r
  r4 e4 \pp ( g! f!8 e
  e2 ) r
  \partcombineAutomatic
  r4 \hairpinToBarLineFalse c \< ( d \! c8 \> bes!
  a4 ) \! r r2
  r4 \hairpinToBarLineFalse c \< ( des \! c8 \> bes!
  a4 ) \! r r2
  \repeat unfold 4 R1
  r2 \partcombineApart c %{\f \<%} ~
  c1 \!
  \partcombineAutomatic
  \mark \default
  e2 \f ( d
  e f )
  e ( f
  e d )
  e ( f )
  e ( d )
  e ( f )
  e8 \ff
  \repeat unfold 15 e8	% 2 mesures
  ees1-^ \fz
  d-^ \fz
  e?8
  \repeat unfold 15 e8	% 2 mesures
  ees1-^ \fz
  d-^ \fz
  ees4-. \ff r f-. r
  ees-. r aes-. r
  g-. r f-. r
  ees-. r d-. r
  g-. r g-. f-.
  ees-. r aes-. r
  g-. r aes-. r
  g-. r f-. r
  \bar "||"
  \key c \minor
  \mark \default
  ees r r2
  R1
  \hairpinToBarLineFalse
  c,8-. \f ees-. fis-. g-. a-. \< c-. ees-. fis-.
  g-. \! fis-. ees-. c-. a-. g-. fis-. ees-.
  c4 r r2
  R1
  c8-. \mp ees-. fis-. g-. aes!-. c-. ees-. fis-.
  g-. \! fis-. ees-. \dim c-. aes-. g-. fis-. ees-. \!
  c4 r r2
  \partcombineApart
  r4 \times 2/3 {\once \override Hairpin #'rotation = #'(10 0.6 0) g8 ( \< c ees} \times 2/3 {g c ees} g8. ) \! [g16-.]
  <<{fis1}{s4 \fz \> s s s8 s \!}>>
  r4 \times 2/3 {g,,8 ( \dim c ees} \times 2/3 {g \! c ees} g8. ) [g16-.]
  fis1 \p \> (
  g4 ) \! r r2
  \partcombineAutomatic
  \repeat unfold 4 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \mark \default
  \TempoIVIT
  \repeat unfold 6 R1
  r4 c, \pp ( a! ges!
  ees ) r r2
  \repeat unfold 6 R1
  r4 cis' \pp ( bes! g
  e ) r r2
  \repeat unfold 3 R1
  g1 -\tweak #'extra-offset #'(0 . -1) \bracketedP ~
  g
  f4 r r2
  \repeat unfold 11 R1
  \partcombineApart
  \once \override Voice.DynamicText #'extra-offset = #'(-2 . -3) d''8-.-> \f a-. d-. d,-. d4 r
  d'8-. -> bes!-. d-. d,-. d4 r
  \partcombineAutomatic
  ees8-> \fz c r4 a'8-> \fz fis r4
  c8-> \fz a r4 ees'8-> \fz c r4
  fis \ff r r2
  R1
  \mark \default
  \repeat unfold 8 R1
  r4 d8-. \ff d-. g,4-> bes8-. bes-.
  r4 d8-. c-. bes4-. r
  r8 bes'8-. a-. g-. bes4-. r
  r4 cis,8-. d-. r4 fis8-. g-.
  r4 d8-. \ff d-. f,!4-> aes!8-. aes-.
  r4 ces8-. bes-. aes4-. r
  r f'8-. ees-. d4-. r

  % 2 trilles à placer au dessus et en dessous de la portée
  % on utilise la notation accordique et la seconde voix possède un silence invisible
  % directrice
  r2
  \set Staff.soloText = #""
  \ignoreNoteCollision
    \poly {
    <<
      {\stemDown b'2 \stemNeutral}{
        s4 \startTrillSpan s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  {
    <<
      {b,2}{
        s4 \startTrillSpan s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  \notifyNoteCollision
  \set Staff.soloText = #"1."
  %	r2 b' \trill
  c'8-. g-. ees-. c-. ees-. f-. d-. bes'?-.
  g-. d-. b-. g-. g-. aes-. g-. ees'-.
  \mark \default
  \repeat unfold 9 R1
  b4 \f r8 e f4 r8 ces
  des4 r8 c bes?4 r8 des
  e4 r8 a bes4 r8 fes
  ges4 r r2
  \repeat unfold 11 R1
  \mark \default
  \partcombineApart
  a,2 ( \mf \< e'
  ees2. \> c4 \! )
  a ( \> b c \< a8 e \! )
  <<{f1}{s4 \fz \> s s s \!}>>
  <<{a2 ( e'}{s4 \< s s s8 s \!}>>
  g2 \p \> ) ( f4 e \!
  g2 \pp f4 \dim ees ) \!
  c ( a f f' ~
  f ) r r2
  \partcombineAutomatic
  R1
  \partcombineApart
  r4 \times 2/3 {f,8 \bracketedP ( bes des} \times 2/3 {
    \once \override Hairpin #'rotation = #'(8 0.24 0) f \< bes des
  } f8. ) [f16-.] \!
  e2. \fz \> ( des4 ) \!
  bes ( \p c des bes8 f )
  \partcombineAutomatic
  fes1 \fp ~
  <<{fes1 ~}{s4 \> s s s8 s \!}>>
  fes1 \pp (
  eeses4 ) r d,!2 \pp ~
  d d ~
  d d ~
  d d ~
  d d ~
  d d ~
  d d ~
  % insérer ici un crescendo sur 4 mesures
  \override TextSpanner #'staff-padding = #3.5
  \set crescendoText = \PocoCrescL
  \set crescendoSpanner = #'text
  \override DynamicTextSpanner #'style = #'dashed-line
  d \< d ~
  d f ~
  f f ~
  f4 aes2 <<{f4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  f4 \< aes2 f4 ~
  f4 aes2 f4 ~
  f4 b2 f'4 \!
  \bar "||"
  \key f \minor
  \mark \default
  aes4 \ff \times 2/3 {c,,8 \< ( f aes} \times 2/3 {c f aes} c8. ) [c16-.] \!
  b2. \ff ( aes4 )
  f \< ( g aes f8 c ) \!
  e2. ( f4 )
  des ( bes ) c-. c-.
  aes2-^ bes-^
  g8 c c,4 r8 c' c,4
  \repeat unfold 13 {r8 c' c,4 r8 c' c,4}
  \mark \default
  f'1-> \fz \> ~
  <<{f1}{s4 s s s8 s16 s \!}>>
  f8-. r \times 2/3 {
    \once \override Hairpin #'rotation = #'(7 0.8 0) \once \override Voice.DynamicText #'extra-offset = #'(0.0 . -4.0 )
    c,8 \f \< ( f aes
  } \times 2/3 {c f aes} c8 ) \! [\tweak #'staff-position #10 r16 c-.]
  <<{b2. ( aes4 ) ~}{s4 \> s s s8 s16 s \!}>>
  aes1 \p
  bes?2 \pp ( aes ~
  aes g )
  ges ( f
  fes ees )
  \partcombineChords
  des ( c
  bes aes
  aes1 ~
  aes )
  g ~
  g
  \bar "||"
  \key f \major
  \partcombineApart
  a4 r r2
  \repeat unfold 3 R1
  c2 \mp ( d4 c8 bes )
  <<{a2 ( %{\<%} c4 bes}{s4 %{\<%} s s s8 s \!}>>
  a2 g4 f )
  e ( \> d8 cis bes'4-. ) \! \partcombineAutomatic bes-.
  \TempoIVTran
  a4 r r2
  r4 fis' %{\p%} ( a g8 fis
  fis4 ) r r2
  \partcombineApart
  R1
  r4 f \bracketedP %{\<%} ( g f8 ees!\!
  d4 ) \partcombineAutomatic r r2
  r4 \rightDynamic f4 \mf \< ( ges \! f8 \> ees! \!
  d4 ) r r2
  r2 \partcombineApart a-> %{\ff%}
  a,-> aes->
  g2. \partcombineAutomatic r4
  r2 ees'' \f (
  des ) f ~
  <<{f2. f4}{s4 \< s s s8 s \!}>>
  \mark \default
  f4 \ff r8 f g4 r8 g
  f4 r8 f bes4 r8 bes
  a4 r8 a e4 r8 e
  f4 r8 f g4 r8 g
  f4 r8 f bes4 r8 bes
  a4 r8 a g4 r8 g
  a4 r8 a g4 r8 g
  a8 \ff
  \repeat unfold 15 f	% 2 mesures
  aes1 \fz
  g \fz
  a!8
  \repeat unfold 15 f	% 2 mesures
  des1 \fz
  des1 \fz
  c4 \f r bes'! r
  aes r g r
  ees r g r
  aes r g r
  aes r c-. bes-.
  aes r g r
  aes r ges r
  aes r bes r
  \bar "||"
  \key f \minor
  \mark \default
  aes4 r r2
  R1
  f,8 \f \< aes b c d f aes b \!
  c b aes f d c b aes
  f4 r r2
  R1
  %	Nécessité de tricher pour un partcombine correct : report de la seconde voix sur la première
  \set Staff.soloText = #""						% directrice
  \poly {\rightDynamic f8 \f \< aes! b c des! f aes bes! \!}{s2 des,!8 f, aes bes!}	% directrice
  \set Staff.soloText = #"1."						% directrice
  ces' bes aes f \partcombineApart des c! ces aes				% directrice
  %	f8 \f \< aes! b c \partcombineApart des! f aes bes! \!			% parties
  %	ces bes aes f \partcombineApart des c! ces aes				% parties
  f4 \partcombineAutomatic r r2
  d1-> \f
  ges-> ~
  ges
  c-^\ffz ~
  c
  f-^ \ffz ~
  f
  f \fz
  f \fz
  \mark \default
  aes4 r r2
  \repeat unfold 2 R1
  \partcombineApart
  r2 r4 c8 \ff c
  f,4 g8 g aes aes bes4->
  c-> ( ees8 des ) c4-.bes-.
  a4-. %{\ff%} ges8 ges c,4 ees8 ees
  r4 ges8 ges c,4 ees8 ees
  \partcombineAutomatic
  r2 bes'2-> \mp (
  aes ges )
  f ( %{\dim%} ges \!
  ces, c ) %{pp%}
  des ( c )
  aes'1 \ff ~
  aes
  a \fz ~
  a
  a \fz ~
  a
  c %{\fz%} (
  bes )
  f \f
  des!4. ( d16 ees f4-. ) c-.
  des!4. ( d16 ees f4-. ) c-.
  ges'2. ges4
  r ges r ges
  r ges ges f
  e r r2
  \mark \default
  g4-^ fis-^ r2
  fis4 r f r
  e-> \partcombineApartOnce c-. r2
  \TempoIVPAn
  aes'!2 \ff aes
  aes2. aes4
  aes2 aes
  aes2. aes4
  aes2 f
  f1 ~
  f4 r r2
  \repeat unfold 2 R1
  c'4 \f r c r
  c r c r
  c-^ g, aes-^ b
  c-^ b c-^ e
  f-^ g aes-^ b
  c-^ b c-^ g
  \TempoIVMMaes
  f,2 ( \ff \< f'4 e ) \!
  ees2.-> ( c4-. )
  bes2.-> c4-\parenthesize->
  des2-> bes4-> f->
  a1->
  bes->
  c \fz
  c \fz
  c \fz
  c4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ****************************************************************
  *	Clarinette II                                            *
  ****************************************************************
%}

SgMdClarinettoII = \relative c' {

  \include "Common/Properties.ly"
  \TempoIV
  \transposition a
  c1 \p
  b \fz  ~
  <<{b2 c}{s4 s \> s s \!}>>
  e2. \dim ( f4 \!
  des! b c c-- )
  f,2 \pp ( ges!
  e1 ) ~
  e
  f'2-- \pp ( g-- )
  e2. ( c4 )
  c2-- ( c-- )
  f, ( e )
  \hairpinToBarLineFalse
  g' \< ( aes
  <<{g2. f4 )}{s8 \bindDynamics s \> s4 s s8 s \!}>>
  e2 ( f
  des c )
  \TempoIVPPCresc
  e ( f
  g1 \fz )
  <<{e2 ( f}{s4 s \< s s8 s \!}>>
  g1 \fz )
  <<{e2 ( f )}{s4 \< s s s8 s \!}>>
  <<{d'1%{-^%} \fz (}{s4 s8 s8 \> s4 s8 s16 s \!}>>
  c2. ) \p r4
  r4 \times 2/3 {c,8 ( \f \< f aes} \times 2/3 {c f aes} c,8 ) \! [
  \once \override Voice.Rest #'extra-offset = #'(0.0 . 2.0 ) r16 c-.]
  b1 \fp \> ~
  b2 \! ( c \p )
  \tweak NoteColumn #'force-hshift #1.7 des!2 ( c
  aes \dim g ) \!
  c,2 \pp des ~
  des1 ~
  des4 r r2
  \once \override MultiMeasureRest #'staff-position = #-8
  R1
  \repeat unfold 9 R1
  r2 r4 c'4 \ff (
  \mark \default
  b2.->  aes4 )
  f ( g aes f'8 c )
  c2.-> ( des4 )
  des-. r c-. r
  r8 f,-. g16 ([f e f]) bes2-.
  g-. r
  r8 f-. g16 ([f e f])des'2-.
  c-. r
  r8 c-. \aII \aIIP d16 ([c b c]) ges'2-.
  f-. r
  r8 c-. d16 ([c b c]) g'!2-.
  fis-. r
  r8 c-. d16 ([c b c]) g'2-.
  a-. r
  r8 c,-. \aII \< d16 ([c b c]) a'2-. \!
  e1 \ff ~
  e2 e ~
  e1 ~
  e4 r r2
  \repeat unfold 3 R1
  \TempoIVRit
  R1
  \mark \default
  \TempoIVIT
  \repeat unfold 4 R1
  e2-> \f e->
  e-> r
  r4 \times 2/3 {c8 ( \ff des c )} f,4 g8-. g-.
  aes4 ( bes ) c ( ees8 des )
  c-. c-. bes4-> aes ( bes )
  g-. aes-. bes2->
  e-> ees->
  d4-. des2-> r4
  c2-> \ff c->
  c8 r \times 2/3 {\once \override Hairpin #'rotation = #'(6 0.6 0) c,8 ( \< ees ges}
  \times 2/3 {a c ees \!} ges8. ) [ges16-.]
  ees4-. r c-. r
  R1
  des2-> \ff des->
  d8 r \times 2/3 {d,8 ( f aes} \times 2/3 {b d! f} aes8. ) [aes16-.]
  f4-. r d-. r
  \repeat unfold 3 R1
  \mark \default
  \repeat unfold 2 R1
  c4 \ff r8. bes16 bes4 r8. aes16
  aes4 r8. g16 g4 r8. aes16
  aes4 r8. e16 e4 r8. f16
  f4 r8. ges16 ges4 r8. ees!16
  ees4-. r d-. r
  g!8 r r4 r2
  \repeat unfold 2 R1
  \once \override MultiMeasureRest #'staff-position = #-8
  \repeat unfold 2 R1
  \repeat unfold 2 R1
  \override MultiMeasureRest #'staff-position = #-6
  R1
  \bar "||"
  \key c \major
  \mark \default
  R1
  \revert MultiMeasureRest #'staff-position
  \repeat unfold 7 R1
  a,1 \fp ~
  a ~
  a ~
  a
  r4 \hairpinToBarLineFalse a' \< ( bes \! a8 \> g
  f4 ) \! r r2
  r4 \hairpinToBarLineFalse a \< ( bes \! a8 \> g
  f4 ) \! r r2
  \repeat unfold 4 R1
  r2 c' \f \< ~
  c1 \!
  \mark \default
  c2 \f ( b
  c d )
  c ( b
  c b )
  c ( d )
  c ~ c
  c ( b )
  c8 \ff
  \repeat unfold 15 c8	% 2 mesures
  a1-^ \fz
  b-^ \fz
  c8
  \repeat unfold 15 c8	% 2 mesures
  aes1-^ \fz
  aes-^ \fz
  bes4-. \ff r b-. r
  c-. r f-. r
  ees-. r d-. r
  c-. r b-. r
  ees-. r ees-. b-.
  c-. r f-. r
  ees-. r f-. r
  ees-. r d-. r
  \bar "||"
  \key c \minor
  \mark \default
  c r r2
  R1
  \hairpinToBarLineFalse
  c,8-. \f ees-. fis-. g-. a-. \< c-. ees-. fis-.
  g-. \! fis-. ees-. c-. a-. g-. fis-. ees-.
  c4 r r2
  R1
  c8-. \mp ees-. fis-. g-. aes!-. c-. ees-. fis-.
  \dynamicSpannerOff
  g-. \aII \! fis-. ees-. \dim c-. aes-. g-. fis-. ees-. \!
  c4 r r2
  \once \override MultiMeasureRest #'staff-position = #-8
  R1
  \once \override MultiMeasureRest #'staff-position = #-4
  R1
  \once \override MultiMeasureRest #'staff-position = #-8
  R1
  \once \override MultiMeasureRest #'staff-position = #-2
  R1
  <<{g1-> ~}{s4 \pp \> s s s8 s16 s \!}>>
  g1 ~
  g4 r r2
  \repeat unfold 2 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \mark \default
  \TempoIVIT
  \partcombineApart
  c4-. \pp r g'-. r
  fis-. r r ees-.
  c-. d-. ees-. c8-. g-.
  b4 r r2
  \partcombineAutomatic
  \repeat unfold 2 R1
  r4 a' \pp ( ges ees!
  c ) r r2
  \repeat unfold 6 R1
  r4 ais' \pp ( g! e
  cis ) r r2
  f!1 ( \p ~
  f ~
  f
  e ~
  e )
  d4 r r2
  \repeat unfold 11 R1
  r2 \once \override Voice.DynamicText #'extra-offset = #'(-2 . 3) \once \override NoteColumn #'force-hshift = #1.1
  d'8 \f d, d r
  r2 \once \override Voice.DynamicText #'extra-offset = #'(-2 . 3) \once \override NoteColumn #'force-hshift = #1.1
  d'8 \f d, d r
  ees'8-> \fz c r4 a'8-> \fz fis r4
  c8-> \fz a r4 ees'8-> \fz c r4
  fis \aIIP \ff r r2
  R1
  \mark \default
  \repeat unfold 8 R1
  r4 d8-. \aII \aIIP  \ff d-. g,4-> bes8-. bes-.
  r4 bes8-. a-. g4-. r
  r8 g'8-. f-. ees-. d4-. r
  r4 cis8-. d-. r4 fis8-. g-.
  r4 d8-. \ff d-. f,!4-> aes!8-. aes-.
  r4 aes8-. g-. f4-. r
  r d'8-. c-. b4-. r
  r2
  % 2 trilles à placer au dessus et en dessous de la portée
  % on utilise la notation accordique sur la première voix et la seconde voix possède un silence invisible
  % Directrice *****
  s2
  % Parties
  %	r2 b \trill
  c8-. g-. ees-. c-. ees-. f-. d-. bes'?-.
  g-. d-. b-. g-. g-. aes-. g-. ees'-.
  \mark \default
  \partcombineApart
  g,2 \fz ( f
  g1 )
  \partcombineAutomatic
  \repeat unfold 7 R1
  b'4 \f r8 e f4 r8 ces
  des4 r8 c bes!4 r8 des
  e4 r8 a bes4 r8 fes
  ges4 \aIIP r r2
  \repeat unfold 11 R1
  \mark \default
  \override MultiMeasureRest #'staff-position = #-4
  \repeat unfold 7 R1
  \override MultiMeasureRest #'staff-position = #-5.5
  \repeat unfold 2 R1
  \revert MultiMeasureRest #'staff-position
  R1
  \override MultiMeasureRest #'staff-position = #-4
  \repeat unfold 3 R1
  \revert MultiMeasureRest #'staff-position
  des1 \fp ~
  <<{des1 ~}{s4 \> s s s8 s \!}>>
  des1 \pp (
  ces4 ) r b,!2 \pp ~
  b b ~
  b b ~
  b b ~
  b b ~
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
  d4 f2 <<{d4 ~}{s8 s \!}>>
  \revert TextSpanner #'staff-padding
  \unset crescendoText
  \unset crescendoSpanner
  \dynamicSpannerOff
  d4 \< f2 d4 ~
  d4 f2 d4 ~
  d4 aes'!2 b!4 \!
  \bar "||"
  \key f \minor
  \mark \default
  f'4 \ff \times 2/3 {c,8 \< ( f aes} \times 2/3 {c f aes} c8. ) [c16-.] \!
  b2. \ff ( aes4 )
  f \< ( g aes f8 c ) \!
  e2. ( f4 )
  des ( bes ) c-. c-.
  aes2-^ bes-^
  g8 \aII c c,4 r8 c' c,4
  r8 c' c,4 r8 c' c,4
  r8 c' \aIIP c,4 r8 c' c,4
  \repeat unfold 3 {r8 c' c,4 r8 c' c,4}
  r8 c' \aII c,4 r8 c' c,4
  r8 c' c,4 r8 c' c,4
  r8 c' c,4 r8 c' c,4
  r8 c' c,4 r8 c' c,4
  r8 c' \aIIP c,4 r8 c' c,4
  r8 c' c,4 r8 c' c,4
  r8 c' \aII c,4 r8 c' c,4
  r8 c' c,4 r8 c' c,4
  \mark \default
  d'1-> \fz \> ~
  <<{d1}{s4 s s s8 s16 s \!}>>
  c8-. r r4 r c8 \bracketedF [\tweak #'staff-position #-1 r16 c-.]	% transformer le s en r pour les parties
  b1 ( \fp \> ~
  <<{b2 c )}{s4 s s s8 s16 s \!}>>
  g'2 \pp ( f ~
  f e )
  ees ( d
  des! c )
  bes ( aes
  g f
  f1 ~
  f )
  e ~
  e
  \bar "||"
  \key f \major
  f4 \< ( c' d \! c8 bes )
  a2 \< ( c4 \! bes )
  a2 ( g4 f )
  e -\tweak #'positions #'(-5 . -4 ) ( d8 \> c bes'4-. ) bes-. \!
  a2 \bracketedMP ( bes4 g )
  <<{f2 ( e}{s4 \< s s s \!}>>
  f2 c )
  cis4 \>( d8 cis g'4-. ) \! g-.
  \TempoIVTran
  fis4 r r2

  r4 a \p ( cis2
  d4 ) r r2
  a,1-> ~
  a4 d' ( \< ees d8 c \!
  bes4 ) r r2
  r4 \rightDynamic d4 \mf \< ( ees \! d8 \> c \!
  bes4 ) r r2
  r2 a-> \ff
  a,-> aes->
  g2. r4
  r2 ees' \f (
  des ) f ~
  <<{f2. d'?4}{s4 \< s s s8 s \!}>>
  \mark \default
  c4 \ff r8 c e4 r8 e
  c4 r8 c g'4 r8 g
  f4 r8 f bes,4 r8 bes
  c4 r8 c e4 r8 e
  c4 r8 c g'4 r8 g
  f4 r8 f f4 r8 f
  f4 r8 f e4 r8 e
  f8 \ff
  \repeat unfold 15 c	% 2 mesures
  d1 \fz
  e \fz
  f8
  \repeat unfold 15 c	% 2 mesures
  aes1 \fz
  bes!1 \fz
  aes4 \f r e'! r
  f r des r
  c r des r
  f r e! r
  f r ees-. e!-.
  f r des r
  c r des r
  f r e! r
  \bar "||"
  \key f \minor
  \mark \default
  f4 r r2
  R1
  f,8 \f \< aes b c d f aes b \!
  c  b aes f d c b aes
  f4 r r2
  R1

  %	Nécessité de tricher pour un partcombine correct : report de la seconde voix sur la première
  %	f8 \f \< aes! b c des! f, aes bes! \!	% parties
  %	ces8 bes aes f des' c! ces aes		% parties
  s1					% directrice
  ces'8 bes aes f des' c! ces aes		% directrice
  f4 r r2
  b,1-> \f
  c!-> ~
  c
  a'-^\ffz ~
  a
  bes-^ \ffz ~
  bes
  b \fz
  b \fz
  \mark \default
  f'4 r r2
  \repeat unfold 5 R1

  ees4 \ff ges8 ges c,4 ees8 ees
  r4 ges8 ges c,4 ees8 ees
  r2 des2-> \mp (
  ces bes )
  ces ( \dim bes \!
  <<{aes1 )}{s2 s \pp}>>
  f2 ( e )
  f'1 \ff ~
  f
  f \fz ~
  f
  f \fz ~
  f
  f \fz ~
  f
  f \f
  des!4. ( d16 ees f4-. ) c-.
  des!4. \aIIP ( d16 ees f4-. ) c-.
  des2. des4
  r des r des
  r des des des
  bes r r2
  \mark \default
  e4-^ dis-^ r2
  c!4 r b r
  c-> c-. r2
  \TempoIVPAn
  f2 \ff f
  f2. f4
  f2 f
  f2. f4
  f2 \partcombineApart f
  f1 ~
  f4 \partcombineAutomatic r r2
  \repeat unfold 2 R1
  c4 \f r c r
  c r c r
  c-^ e, f-^ g
  aes-^ g aes-^ g
  aes-^ e' f-^ g
  aes-^ g aes-^ e
  \TempoIVMMaes
  f,2 ( \ff \< f'4 e ) \!
  ees2.-> ( c4-. )
  bes2.-> c4-\parenthesize->
  des2-> bes4-> f->
  a1->
  bes->
  a \fz
  a \fz
  a \fz
  a4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdClarinettoIAII = \new Voice {
  \time 2/2
  \key f \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Clarinetti (A)" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Cl. (A)" I+II}}
  \set Staff.midiInstrument = "clarinet"
  \clef treble
  \partcombine \SgMdClarinettoI \SgMdClarinettoII
}

