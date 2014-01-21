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
  * Fichier de notes, Clarinettes I et II, directrice                   *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ****************************************************************
  *	Clarinette I                                             *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMcClarinettoI = \relative c''' {

  \include "Common/Properties.ly"

  \TempoIII
  \transposition a
  r2 r4
  \repeat unfold 7 R1 * 6/4
  \partcombineApart
  g4.-> \mf ( aes8 f aes ) \dynamicSpannerOff g4.-> \dim ( aes8 f aes )
  <<{g4}{s8 \< s16 s32 s64 \!}>> \partcombineChords c4 ( \f \> bes aes g f \!
  ees \p ) r r r2 r4
  \partcombineAutomatic
  R1 * 6/4
  g,2. \pp ( aes
  g4 ) r r \partcombineApart r des'!2-> \p ~
  des2. \> ~ des4 \! r r
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/4
  f,4 \f \< -\tweak #'positions #'(4 . 0 )( e aes g des' c \! )
  c \mf r c r8 c c4-. bes-.
  aes r aes r8 aes \< bes4-. c-. \!
  des r des r8 des \> des4-. c-. \!
  bes r bes r8 bes \< c4-. des-. \!
  ees2-> \f aes,4.-> aes8 bes4-. c-.
  des2-> g,4.-> g8 aes4-. bes-.
  c2-> f,4.-> aes8 aes4-. g-.
  \mark \default  % Mark A
  aes \f r aes' r8 aes aes4-. g-.
  aes r aes \cresc r8 aes aes4-. g-. \!
  % necessité de tricher sur les trilles : les deux voix sont rassemblées en une
  % la seconde voix est faite de silences invisibles
  % directrice
  \set Staff.soloText = #""
  \ignoreNoteCollision
  \poly {
    <<
      {\stemDown aes2. %{\ff%} \stemNeutral}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  {
    <<
      {f2. \ff}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  r8 aes8 aes4-. g-.
  \poly {
    <<
      {\stemDown aes2. \stemNeutral}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  {
    <<
      {f2.}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  r8 aes8 aes4-. g-.
  \notifyNoteCollision
  \set Staff.soloText = #"1."
  \partcombineApartOnce f4 r r r2 r4
  \repeat unfold 3 R1 * 6/4
  f,4 \f f8 ([g!]) g ([aes]) aes ([bes]) bes ([c]) c ([des])
  des ([c \<]) c ([d]) d ([ees]) ees ([e]) e ([f]) f ([g]) \!
  g, ([a]) \< a ([bes]) bes ([c]) c ([des]) des ([d]) d ([ees]) \!
  d2 \ff ees4-. d2 des4-.
  des!-> c-. b-. des-> c-. b-.
  des-> \fz c bes'!-> \fz aes ges-> \fz f
  e-. r d-. r e-. r
  d-. r e-. r2 r4
  \repeat unfold 2 R1 * 6/4
  c4-. \mp r c-. r8 c c4-. bes-.
  aes-. r aes-. r8 aes \< bes4-. c-. \!
  des-. \fz r des-. r8 des \> des4-. c-. \!
  bes-. \p r bes-. r8 bes \< c4-. des-. \!
  ees2-> \fz aes,4.-> aes8 bes4-. c-.
  des2-> g,4.-> g8 aes4-. bes-.
  c2-> f4.-> f8 g4-. aes-.
  \mark \default  % Mark A
  g4. \mf ( aes8 f aes ) g4. \p ( aes8 f aes )
  g4 \< ( c bes \dim aes g \> f \! )
  ees!4. \p ( f8 d f ) ees4. ( f8 d f )
  ees4 ( aes \> g f ees des! ) \!
  c4. %{\pp%} ( des8 c des ) c4. ( des8 c des )
  c4 r r r2 r4
  \repeat unfold 3 R1 * 6/4
  r8 c,-. -\tweak #'X-offset #-3.5 \f \< c-. e-. e-. aes-. aes-. c-. c-. e-. e-. c'-. \!
  \mark \default  % Mark A
  c,2 \ff c ( d4 e )
  f2 ( c4 aes2 f4 )
  f ( bes c des?2 d4 )
  ees2 ( bes4 g2 ees4 )
  <<{aes'2. f4 ( g aes )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{aes4 g2 ees4 ( f g )}{s4 s4 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{g4 f2 f e4-.}{s4 s4 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>
  f4-. r r r2 c4-.
  f4-. r r r2 c4-.
  % necessité de tricher sur les trilles : les deux voix sont rassemblées en une
  % la seconde voix est faite de silences invisibles
  % directrice
  \set Staff.soloText = #""
  \ignoreNoteCollision
  \poly {
    <<
      {\stemDown aes'2. \stemNeutral}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  {
    <<
      {f2.}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  r8 aes8 aes4-. g-.
  \poly {
    <<
      {\stemDown aes2. \stemNeutral}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  {
    <<
      {f2.}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  r8 aes8 aes4-. g-.
  \notifyNoteCollision
  \set Staff.soloText = #"1."
  \partcombineApart
  f4 r r r2 r4
  c4-. \p d-. \< ees!-. f-. g-. a-. \!
  \override Rest #'staff-position = #6
  bes \f r r r2 r4
  \once \override MultiMeasureRest #'staff-position = #7
  R1.
  \partcombineAutomatic
  \mark \default  % Mark A
  f,2%{->%} \aII  %{\ff%} f-> f->
  g-> g4 a-. bes-. c-.
  d-. ees-. f-. ges-. f-. f-.
  e2-> f4 e2-> f4
  ges2-> f4 ges2-> ges4
  a r a r a r
  g r f r g r
  g \once \override Hairpin #'rotation = #'(3 0.8 0) e,8 \< ( fis g a b cis dis e! fis g ) \!
  gis2.-> a4-. bes!-. \partcombineApartOnce c!-.
  \partcombineAutomatic
  c2.-^ \ff des!-^
  des-^ c-^
  f,4-. r aes-. aes-. aes-. aes-.
  aes-. r aes-. aes-. aes-. aes-.
  aes \fz aes aes \fz aes aes \fz aes
  aes \fz aes aes \fz aes aes \fz aes
  aes r r f r r
  <<{f,1. ~}{s2. \> s2 s4 \!}>>
  \bar "||"
  \TempoIIIMM
  \key bes \major
  f4 r r r2 r4
  \repeat unfold 11 R1 * 6/4
  \mark \default  % Mark A
  f!4 %{\Solo \bracketedPP \< %} ( bes4. %{_\markup {\italic "legato"}%} d8 d4 f4. bes8 ) \!
  <<{bes1. ~}{s4 \f s \> s s s s8 s \!}>>
  bes4 \bracketedP r r r2 r4
  \partcombineApart
  <<{bes1.}{s4 \fz \> s s s s s8 s \!}>>
  <<{b1.-> ~}{s4 %{\<%} s4. s8 \! s4 %{\>%} s s8 s \!}>>
  b2 %{\p%} \partcombineAutomatic r4 r2 r4
  e,2 \p ( d4 b2 g4 )
  g2. ( b )
  \partcombineChords
  a \dim gis \!
  % \footnaote semble ne pas marcher avec les "ties" - on utilise donc des "slurs"
  \partcombineApart
  a ^\footnote \markup {"(15)"} #'(0 . 1)
    \markup { \italic "15 - Tie missing on our reference edition, but present in N. Simrock 1885"} ( a )
  \partcombineAutomatic
  fis1. \pp (
  g4 ) r r r2 r4
  R1 * 6/4
  r4 f'-. \p r f-. r f-.
  r ees-. r ees-. r ees-.
  ees r r r2 r4
  R1 * 6/4
  r4 ees-. \p r ees-. r ees-.
  r des-. r des-. r des-.
  \repeat unfold 4 R1 * 6/4
  \partcombineApart
  f,4 \mp \< ( b4. f'8 f4 f,4. d'8 ) \!
  \mark \default  % Mark A
  <<{d2 ( c4 f2. )}{s2. s4 \> s s8 s \!}>>
  f,4 \p %{\<%} ( b4. f'8 f4 f,4. d'8 ) \!
  <<{d2 \f ( c4 f2.)}{s2. s4 \> s s8 s \!}>>
  c4 \p %{\<%} ( e4. c'8 c4 e,4. b'8 ) \!
  \partcombineAutomatic
  <<{b2. ( a )}{s2. \f s4 \> s s8 s16 \! s}>>
  \partcombineApart
  <<{g1.}{s4 %{\p%} s s %{\<%} s s s8 s \!}>>
  <<{g1.}{s2 s4 ^\> s2 s4 \!}>>
  g1. %{\pp%}
  g1.
  ees4 r r r2 r4
  \partcombineAutomatic
  R1 * 6/4
  \partcombineApart
  aes,4 \Solo \p \< ( ees'4. aes8 \! aes4-> c,4. f8 )
  f2 ( ees4 \> c aes2 \! )
  g4 r r r2 r4
  \repeat unfold 4 R1 * 6/4
  \repeat unfold 2 R1 * 6/4
  \mark \default  % Mark A
  ees4 -\tweak #'extra-offset #'(0 . -2) \p -\tweak #'rotation #'(5.5 0.5 0) \< ( aes4. c8 ) c4 ( ees4. aes8 \! )
  <<{aes1. ~}{s2. \f \> s4 s s8 s \!}>>
  aes4 \p r r r2 r4
  \partcombineAutomatic
  \repeat unfold 3 R1 * 6/4
  \partcombineChords
  aes2 \pp ( f4 c aes!4. des8 )
  \partcombineAutomatic
  des2 ( c4 aes2 f4 )
  aes,1.-> ~
  aes
  \TempoIIIAcc
  r4 aes'-. \p r aes-. r aes-.
  r4 aes-. \< r aes-. r aes-. \!
  r4 aes8 \mf aes r4 aes8 \cresc aes r4 aes8 aes \!
  r4 aes8 aes r4 aes8 aes r4 aes8 aes
  \TempoIIIViv
  aes4 r r r2 r4
  R1 * 6/4
  f4-. \ff r g-. r8 aes bes4-. c-.
  des-. ees8 ( e f4 ) g8 ( aes bes c des b )
  \mark \default  % Mark A
  <<
    {c4 c,2 ~ c2.}{
      s4 \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
      \once \override TrillSpanner #'outside-staff-priority = #500
      s ^\markup {\lower #1 \tiny \flat} \startTrillSpan
    }
  >>
  <<
    {c1. }{s4 s s s s s8 s \stopTrillSpan
    }
  >>
  c'4-. c,-. r c'-. c,-. r
  c'-. c,-. r c'-. c,-. r
  c' r r r2 r4
  \repeat unfold 2 R1 * 6/4
  \bar "||"
  \key f \minor
  \repeat unfold 7 R1 * 6/4
  \partcombineApart
  g4.-> \mf ( aes8 f aes ) g4.-> ( aes8 f aes )
  g4 c ( %{\>%} bes aes g f \!
  ees4 ) \partcombineAutomatic r r r2 r4
  R1 * 6/4
  g,2. \pp ( aes
  g4 ) r r \partcombineApart r des'!2-\parenthesize-> \p ~
  des2. \> ~ des4 \! r r
  \partcombineAutomatic
  \repeat unfold 2 R1 * 6/4
  f,4 \f \< ( e aes g des' c \! )
  \mark \default  % Mark A
  c4 \mf r c r8 c c4-. bes-.
  aes r aes r8 aes \< bes4-. c-. \!
  des r des r8 des \> des4-. c-. \!
  bes r bes r8 bes \< c4-. des-. \!
  ees2-> aes,4.-> aes8 bes4-. c-.
  des2-> g,4.-> g8 aes4-. bes-.
  c2-> f,4.-> aes8 aes4-. g-.
  aes4 \f r aes' r8 aes aes4-. g-.
  aes r aes \cresc r8 aes aes4-. g-. \!
  % necessité de tricher sur les trilles : les deux voix sont rassemblées en une
  % la seconde voix est faite de silences invisibles
  % directrice
  \set Staff.soloText = #""
  \ignoreNoteCollision
  \poly {
    <<
      {\stemDown aes2. \stemNeutral}{
        s4 \startTrillSpan %{\ff%} s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  {
    <<
      {f2.}{
        s4 \startTrillSpan \ff s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  r8 aes8 aes4-. g-.
  \poly {
    <<
      {\stemDown aes2. \stemNeutral}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  {
    <<
      {f2.}{
        s4 \startTrillSpan s s8 s16 s32 s64 \stopTrillSpan
    }>>
  }
  r8 aes8 aes4-. g-.
  \notifyNoteCollision
  \set Staff.soloText = #"1."
  %	aes2. \startTrillSpan \ff r8 \stopTrillSpan aes aes4-. g-.
  %	aes2. \startTrillSpan r8 \stopTrillSpan aes aes4-. g-.
  aes4-. g-. aes-. g-. aes-. g-.
  aes-. g-. aes-. \dim g-. aes-. g-.
  aes4 \mp ( g f \dim ees des c ) \!
  \partcombineChords
  bes ( \p ( aes \> g f ees des ) \!
  c \p r r ges' r r
  r2 r4 f \pp r r
  r2 r4 \partcombineApartOnce des %{\pp%} r r
  <<{c1.}{s4 \> s s s s s8 s \!}>>
  \mark \default  % Mark A
  f'4 ( \< e f e f e )
  f ( e f e f e ) \!
  f ( \f ees! des \dim c bes aes ) \!
  bes \bracketedP r r r2 r4
  \repeat unfold 6 R1 * 6/4
  \partcombineApart
  \repeat unfold 4 R1 * 6/4
  \partcombineChords
  ees,1. \pp (
  fes )
  \partcombineAutomatic
  des2. %{\<%} ( ees2 fes4 ) \!
  <<{fes1.%{-^%} ~}{s4 %{\f \>%} s s s s s8 s \!}>>
  \TempoIIIPPr
  fes2. f ~
  f1. ~
  <<{f1.}{s4 %{\>%} s s s s s \!}>>
  des!1.
  c1. \pp \> (
  e \! )
  \TempoIIIiT
  f4 \aII r r r2 r4
  \partcombineUnisono
  \repeat unfold 3 R1 * 6/4
  \mark \default  % Mark A
  f2-> \ff f-> f->
  g-> \aIIP g4 a-. bes-. c-.
  d-. ees-. f-. ges-. f-. f-.
  e2-> f4-. e2-> f4-.
  ges2-> \aII f4-. ges2-> ges4-.
  \partcombineChords
  a r a r a r
  g r f r g r
  g \partcombineUnisono e,8 \< ( fis g a b cis dis e! fis g ) \!
  \partcombineAutomatic
  gis2. a4-. bes!-. c!-.
  \partcombineChords
  c2.-^ \ff des!-^
  des-^ c-^
  f,4-. r aes!-. aes-. aes-. aes-.
  aes-. r aes-. aes-. aes-. aes-.
  aes \fz aes aes \fz aes aes \fz aes
  aes \fz aes aes \fz aes aes \fz aes
  c r c r8 c c4 c
  c r r c r r
  c r r r2 r4
  \bar "|."
}

%{
  ****************************************************************
  *	Clarinette II                                            *
  ****************************************************************
%}

SgMcClarinettoII = \relative c'''{

  \include "Common/Properties.ly"

  \TempoIII
  \transposition a
  r2 r4
  \repeat unfold 8 R1 * 6/4
  r4 aes ( \f \> g f ees d \!
  c \p ) r r r2 r4
  R1 * 6/4
  e,2. \pp ( ees
  e4 ) r r r2 r4
  \repeat unfold 3 R1 * 6/4
  f4 \f \< ( e aes g des' c \! )
  aes \mf r aes r8 aes aes4-. g-.
  f r f r8 f \< g4-. aes-. \!
  bes r bes r8 bes \> bes4-. aes-. \!
  g r g r8 g \< aes4-. bes-. \!
  ees2-> \f aes,4.-> aes8 bes4-. c-.
  des2-> \aIIP g,4.-> g8 aes4-. bes-.
  c2-> f,4.-> f8 f4-. e-.
  \mark \default  % Mark A
  f \f r f' r8 f f4-. e-.
  f r f \cresc r8 f f4-. e-. \!
  % 2 trilles à placer au dessus et en dessous de la portée
  % on utilise la notation accordique et la seconde voix possède un silence invisible
  % directrice
  s2. s8 f8 f4-. e-.
  s2. s8 f8 f4-. e-.
  % parties
  %	f2. \ff \startTrillSpan r8 \stopTrillSpan f8 f4-. e-.
  %	f2. \startTrillSpan r8 \stopTrillSpan f8 f4-. e-.
  f r r r2 r4
  \partcombineApart
  c,4-. \p r ees!-. r g-. a-.
  bes1.
  \dynamicSpannerOff
  bes4 \dim ( aes! ) aes ( ges ) f ( e ) \!
  \partcombineAutomatic
  f4 \f f8 ([g!]) g ([aes]) aes ([bes]) bes ([c]) c ([des])
  des ([c \<]) c ([d]) d ([ees]) ees ([e]) e ([f]) f ([g]) \!
  g, \aII ([a]) \< a ([bes]) bes ([c]) c ([des?]) des ([d]) d ([ees?]) \!
  d2 \ff ees4-. d2 des4-.
  des!-> c-. b-. des-> c-. b-.
  des->  \fz c bes'!-> \fz aes ges-> \fz f
  c-. r c-. r c-. r
  c-. r c-. r2 r4
  \repeat unfold 2 R1 * 6/4
  aes4-. \mp r aes-. r8 aes aes4-. g-.|
  f-. r f-. r8 f \< g4-. aes-. \!|
  f-. \fz r f-. r8 f \> f4-. fis-. \!|
  g-. \p r g-. r8 g \< aes4-. bes-. \!|
  c2-> \fz c,4.-> \bracketedFz f8 g4-. aes-.|
  aes \fz ( g ) bes,4. \fz ees8 f4-. g-.|
  g \fz ( f ) aes4. \fz des8 ees!4-. f-.|
  \mark \default  % Mark A
  e4. \mf ( f8 d f ) e4. \p ( f8 d f )
  e4 \< ( aes g \dim f ees \> d \! )
  g,4. \p ( aes8 f aes ) g4. ( aes8 f aes )
  c4 ( c \> ees aes, g bes ) \!
  e,2. \pp ( ees
  e4 ) r r r2 r4
  \repeat unfold 3 R1 * 6/4
  r8 \rightDynamic c-. -\tweak #'X-offset #-3.5 \f \< c-. e-. e-. aes-. aes-. c-. c-. e-. e-. c'-. \!
  \mark \default  % Mark A
  c,2 \aIIP  \ff c ( d4 e )
  f2 ( c4 aes2 f4 )
  f \aII ( bes c des2 d4 )
  ees2 ( bes4 g2 ees4 )
  <<{aes'2. f4 ( g aes )}{s2 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{aes4 g2 ees4 ( f g )}{s4 s4 \startTrillSpan s8 s16 s \stopTrillSpan}>>
  <<{g4 \aIIP  f2 f e4-.}{s4 s4 \startTrillSpan s2 s8 s16 s \stopTrillSpan}>>
  f4-. \aII r r r2 c4-.
  f4-. r r r2 c4-.
  % 2 trilles à placer au dessus et en dessous de la portée
  % on utilise la notation accordique et la seconde voix possède un silence invisible
  % directrice
  s2. s8 f8 f4-. e-.
  s2. s8 f8 f4-. e-.
  % parties
  %	f2. \ff \startTrillSpan r8 \stopTrillSpan f8 f4-. e-.
  %	f2. \ff \startTrillSpan r8 \stopTrillSpan f8 f4-. e-.
  f,4-. \fp g-. aes-. \dim bes-. c-. des-. \!
  c4 r r r2 r4
  bes4-. \mp c-. \< d-. ees-. d-. des-. \!
  c8[ \f \< ( des c f] bes,[ \dim c bes f'] aes,[ \> c g c] \! )

  \mark \default  % Mark A

  % Le \partcombineAutomatic démarre deux temps trop tard. Il est nécessaire :
  % - de supprimer la hampe du f,2
  % - de supprimer le texte "a2" sur la seconde blanche
  % - de rajouter le texte "a2" sur la première voix si saut de page
  \tweak Stem #'stencil ##f f,2-> \aIIP \ff \once \override CombineTextScript #'stencil = ##f f-> f->
  g-> g4 a-. bes-. c-.
  d-. ees-. f-. ges-. f-. f-.
  e2-> \aII \aIIP  f4 e2-> f4
  ges2-> f4 ges2-> ges4
  c, r c r c r
  e r c r e r
  e \once \override Hairpin #'rotation = #'(4.5 0 0) e,8 \< ( fis g a b cis dis e! fis g ) \!
  e2.-> ~ e2 e4-.
  c2.-^ \ff des!-^
  des-^ c-^
  aes4-. r f'-. f-. f-. f-.
  f-. r f-. f-. f-. f-.
  f \fz f f \fz f f \fz f
  f \fz f f \fz f f \fz f
  f r r c r r
  <<{f,,1. ~}{s2. \> s2 s4 \!}>>
  \bar "||"
  \TempoIIIMM
  \key bes \major
  f4 r r r2 r4
  \repeat unfold 5 R1 * 6/4
  \partcombineApart
  r4 e'!8 \p ( f ) r4 e8 ( f ) r4 e8 ( f )
  r4 e8 \< ( f ) r4 e8 ( f ) r4 f8 ( fis ) \!
  r4 fis8 ( g ) r4 fis8 \f ( g ) r4 a8 ( bes )
  r4 gis8 \> ( a ) r4 gis8 ( a ) r4 fis8 ( g ) \!
  r4 fis8 \p \> ( g ) r4 fis8 ( g ) r4 e8 ( f ) \!
  r4 cis8 \pp ( d ) r4 fis8 ( g ) r4 a8 ( bes )
  \partcombineAutomatic
  \mark \default  % Mark A
  \once \override NoteColumn #'force-hshift = #1.2 f!4 \Solo \bracketedPP \< (
    d4. _\markup {\italic "legato"} bes'8 bes4 d4. d8 ) \!
  <<{bes1. ~}{s4 \f s \> s s s s8 s \!}>>
  bes4 \bracketedP r r r2 r4
  R1 * 6/4
  <<{b4 ( d4. g8 ) g2. ~}{s4 \fz \< s4. s8 \bindDynamics s4 \> s s8 s \!}>>
  g2 \p r4 r2 r4
  r2 r4 g,2 \bracketedP ( b,4 )
  e2. ( g )
  fis \dim ( f ) \!
  e ( fis )
  c1. \pp (
  b4 ) r r r2 r4
  R1 * 6/4
  r4 d'-. \p r d-. r d-.
  r c-. r c-. r c-.
  c r r r2 r4
  R1 * 6/4
  r4 c-. \p r c-. r c-.
  r bes-. r bes-. r bes-.
  \repeat unfold 5 R1 * 6/4
  \mark \default  % Mark A
  \repeat unfold 3 R1 * 6/4
   \once \override NoteColumn #'force-hshift = #1.1 c4 \p \< ( c4. e!8 e4 c4. g'8 ) \!
  <<{g2. \f ( f )}{s2. \f s4 \> s s8 s16 \! s}>>
  <<{g,4 ( c4. e8 e4 g,4. e'8 )}{s4 \p s s \< s s s8 s \!}>>
  <<{g2 r4 r2 r4}{s2 s4 %{\>%} s2 s4 \!}>>
  g,4 \pp ( c4. ees!8 ees4 g,4. ees'8 )
  g2 r4 r2 r4
  \repeat unfold 3 R1 * 6/4
  r2 r4 r des, \p ( c )
  bes4 ( des4. \< f8 ) f4 ( bes, des ) \!
  des2. \< ( c2 bes4 ) \!
  a4 ( ees'4. \< ges8 ) ges4 \! ( f4. e8 )
  e4 \f ( f aes ~aes ) g? ( f )
  e2. ( ees \dim ~
  ees2 d4 ) \dim des2.
  c \pp ( aes )
  \mark \default  % Mark A
  c4 r r r2 r4
  \repeat unfold 2 R1 * 6/4
  \repeat unfold 3 R1 * 6/4
  f'2 \pp ( c4 aes f4. f8 )
  f2 r4 r2 r4
  f,1.-> ~
  f
  \TempoIIIAcc
  r4 f'-. \p r f-. r f-.
  r4 f-. \< r f-. r f-. \!
  r4 f8 \mf f r4 f8 \cresc f r4 f8 f \!
  r4 f8 f r4 f8 f r4 f8 f
  \TempoIIIViv
  f4 r r r2 r4
  R1 * 6/4
  f4-. \ff r g-. r8 aes bes4-. c-.
  des-. \aIIP ees8 ( e f4 ) g8 ( aes bes c des b )
  \mark \default  % Mark A
  <<
    {c4 \aII c,2 ~ c2.}{
      s4 \once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -1.5 )
      \once \override TrillSpanner #'outside-staff-priority = #500
      s ^\markup {\lower #1 \tiny \flat} \startTrillSpan
    }
  >>
  <<
    {c1.}{s4 s s s s s8 s \stopTrillSpan
    }
  >>
  c4-. c,-. r c'-. c,-. r
  c'-. c,-. r c'-. c,-. r
  c' r r r2 r4
  \repeat unfold 2 R1 * 6/4
  \bar "||"
  \key f \minor
  \repeat unfold 7 R1 * 6/4
  R1 * 6/4
  r4 \mf aes' ( \> g f ees d \!
  c4 \p ) r r r2 r4
  R1 * 6/4
  e,2. \pp ( ees
  e4 ) r r r2 r4
  \repeat unfold 3 R1 * 6/4
  f4 \f \< ( e aes g des' c \! )
  \mark \default  % Mark A
  aes4 \mf r aes r8 aes aes4-. g-.
  f r f r8 f \< g4-. aes-. \!
  bes r bes r8 bes \> bes4-. aes-. \!
  g r g r8 g \< aes4-. bes-. \!
  ees2-> aes,4.-> aes8 bes4-. c-.
  des2-> g,4.-> g8 aes4-. bes-.
  c2-> f,4.-> f8 f4-. e-.
  f4 \f r f' r8 f f4-. e-.
  f r f \cresc r8 f f4-. e-. \!
  % 2 trilles à placer au dessus et en dessous de la portée
  % on utilise la notation accordique et la seconde voix possède un silence invisible
  % directrice
  s2. s8 f8 f4-. e-.
  s2. s8 f8 f4-. e-.
  % parties
  %	f2. \ff \startTrillSpan r8 \stopTrillSpan f8 f4-. e-.
  %	f2. \ff \startTrillSpan r8 \stopTrillSpan f8 f4-. e-.
  f-. e-. f-. e-. f-. e-.
  f-. e-. f-. \dim e-. f-. e-.
  f4 \mp ( ees des \dim c bes aes ) \!
  g ( \p ( f \> ees des c bes ) \!
  aes \p r r des r r
  r2 r4 c \pp r r
  r2 r4 des \pp r r
  <<{bes1.}{s4 \> s s s s s8 s \!}>>
  aes'4 ( \< g aes g aes g )
  aes ( g aes g aes g ) \!
  aes ( \f g f \dim ees des c ) \!
  bes \bracketedP r r r2 r4
  \repeat unfold 6 R1 * 6/4
  \override Rest #'staff-position = #-4
  r2 r4 c2. ( \pp
  aes1. ) ~
  aes ~
  aes4 r r r2 r4
  c1. \pp (
  g )
  <<{g1.}{s2. \< s2 s4 \!}>>
  <<{des'1.-^ ~}{s4 \f \> s s s s s8 s \!}>>
  \TempoIIIPPr
  des2. d ~
  d b (
  <<{c1. )}{s4 \> s s s s s \!}>>
  f,1. ~
  f4 \pp r r r2 r4
  R1 * 6/4
  \TempoIIIiT
  \repeat unfold 4 R1 * 6/4
  \mark \default  % Mark A
  f'2-> \ff f-> f->
  g-> g4 a-. bes-. c-.
  d-. ees-. f-. ges-. f-. f-.
  e2-> f4-. e2-> f4-.
  ges2-> f4-. ges2-> ges4-.
  c, r c r c r
  e r c r e r
  e e,8 \< ( fis g a b cis dis e! fis g ) \!
  e2. ~ e2 e4-.
  c2.-^ \ff des!-^
  des-^ c-^
  aes!4-. r f'-. f-. f-. f-.
  f-. r f-. f-. f-. f-.
  f \fz f f \fz f f \fz f
  f \fz f f \fz f f \fz f
  aes r aes r8 aes aes4 aes
  aes r r aes r r
  aes r r r2 r4
  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMcClarinettoIAII = \new Voice {
  \time 6/4
  % Permet de prendre en compte la levée dans le comptage des mesures 
  \set Timing.measurePosition = #(ly:make-moment 3 4)
  \key f \minor
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Clarinetti (A)" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Cl. (A)" I+II}}
  \set Staff.midiInstrument = "clarinet"
  \clef treble
  \partcombine \SgMcClarinettoI \SgMcClarinettoII
}

