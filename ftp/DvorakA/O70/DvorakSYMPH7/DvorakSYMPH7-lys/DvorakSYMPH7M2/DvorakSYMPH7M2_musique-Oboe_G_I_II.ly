%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7 : mouvement II - Poco Adagio                          *
  * Fichier de notes, Hautbois 1 et 2, directrice                       *
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

SgMbOboeI = \relative c'' {

  \include "Common/Properties.ly"

  \TempoII

  \repeat unfold 9 R1
  <<{r4 \partcombineChordsOnce f2.}{s4 s \f s8 s %{\dim%}}>>

  \mark \default    % Mark A - mesure 11

  f2 ( %{\pp%} e4. %{\<%} c8 ) \!
  \partcombineChords e2-> \> ( d8 ) \! r  \rightDynamic d8. \p \< bes'16 \!
  \partcombineAutomatic
  bes4. ( a8 ~ a g f16 e f g %{// \dynamicSpannerOff s8 \fz s4. \dim s4 \> s8 s16 s \!}>>%}
  e8 ) r ees4. %{\p%} ( ees8 ~ ees16 d? ees f
  d8 ) r des4 %{\pp%} ( ~ des8 des ~ des16 c des ees
  c8 ) r c4 ( %{\<%} b8 g f f' ) \!
  e %{\<%} ( c bes! bes' %{\f%} ) ~ bes16 [g8 ( e16] \times 4/5 {c16 des! bes g f}
  e8 ) r r4 r2
  \partcombineChords
  R1
  r4 g-- \pp ( g-- ) r
  R1
  r4 g-- \pp ( g-- ) r
  \repeat unfold 5 R1
  \partcombineApart
  r8 r16. g'32 \ff a8.. bes32 e,16 ( f g bes, c \> des e, f \!
  g8 ) r r4 r2
  \partcombineAutomatic
  \repeat unfold 2 R1

  \mark \default    % Mark B - mesure 32

  \partcombineApart
  R1
  r4 bes'8. ( \mp g16 \once \override DynamicLineSpanner #'avoid-slur = #'inside
  \once \override Voice.DynamicLineSpanner #'Y-offset = #5.5
  \once \override DynamicLineSpanner #'outside-staff-priority = ##f
  e8. \dim c16 bes8. c16
  a8 ) %{\pp%} r r4 r2
  <<{r4 bes'8. ( g16 e8. c16 bes8. d32 c )}{s4 s4 \mp \> s4 s16 s16 \! s16 s \pp}>>
  \partcombineChords
  a1 \pp ~
  a8 r r4 r8. a16 \pp ( bes a g a )
  bes8 ( a gis a \< gis a gis a \! )
  \partcombineAutomatic
  a'4 %{\f \<%} ( bes ) bes2 \!
  \partcombineChords
  aes4-> \ff f-> f-> bes->
  bes-> aes-> f-> ges->
  <<{des ees ( f des)}{s4 s8 s \dim s4 \> s \!}>>
  \partcombineAutomatic
  <<{des4 ( aes2. ) ~}{s4 %{\p%} s %{\>%} s s8 s \!}>>

  \mark \default    % Mark C - mesure 44

  aes4 \partcombineChords r r2
  \repeat unfold 3 R1
  gis1 \pp ~
  <<{gis4 b2. ~}{s4 s \< s s8 s16 s32 s \!}>>
  <<{b1}{s4 \f \> s s s8 s16 s \!}>>
  \partcombineAutomatic
  <<{g!2 ~ g8 d' ( ees c )}{s8 s %{\dim%} s4 s \p}>>
  b4 \partcombineChords r r2
  R1
  <<{r4 \partcombineAutomatic b'2.}{s4 s \fz \< s s8 s16 s \!}>>
  \partcombineChords
  d4-^ \ff d,-^ cis-^ cis'-^
  c!-^ c,?-^ dis-^ a'-^
  <<{gis2:16 a:}{s4 s \dim}>>
  gis2: \p \> gis: \!
  \partcombineAutomatic
  gis4 %{\p%} ( e8. bis16 cis4. ) r8
  fis4 ( \< cis8. ais16 b4. \! ) r8
  <<{g'!4 ( e8. ais,16 b4. ) r8}{s4 \p s \> s s \!}>>
  e4 \pp \< ( c8. g16 a?4. ) \! r8
  \partcombineChords

  \mark \default    % Mark D - mesure 63

  ais'16 \ff r r8 r8. cis,16-. \ff cis-. r8. r4
  \partcombineApart
  r16 bis16-. \mp cis8 ~ cis16 bis-. cis8 \dim ~ cis16 dis-. cis8 ~ cis16 bis-. cis8 \! ~
  cis16 bis-. cis8 ~ cis16 dis-. cis8 ~ cis16 bis-. cis8 ~ cis16 bis-. cis8 ~
  cis16 dis-. cis8 ~ cis16 bis-. \cresc cis8 ~ cis16 bis-. cis8 ~ cis16 e-. d!8 \! ~
  d16 dis-. e8 ~ e16 eis-. fis8 \f ~ fis16 ( e! d! b! gis8 ) r
  \partcombineChordsOnce r4 \partcombineAutomatic \rightDynamic <gis e>8 %{\p \<%} (
    <fis dis> eis4 %{\f%} fis8 g! )	% directice
  %	r4 \rightDynamic gis8 \p \< ( fis eis4 \f fis8 g! )	% parties
  <<{gis1 (}{s8 s %{\>%} s4 s8. s16 \!}>>
  a8 ) r c4 \p ( d4. f8 ) \once \override Hairpin #'rotation = #'(-8 -1 0) a ( \> f c a c2 \! )
  \partcombineApart
  f16 \p ( c a ) r f' ( c a ) r c ( g e ) r c' ( a e ) r
  e' ( cis g ) r e' ( cis g ) r d' ( \< bes f ) r f' ( d bes ) \! r
  fis' \fz ( ees c? ) r fis ( ees c ) r g' ( \> d bes ) r f'! ( des bes ) \! r
  e? \p ( c g ) r c \> ( a f ) r c' ( a fis \! ) r c' ( a fis ) r
  bes ( g d ) r des' \pp ( g, ees ) r g ( ees des ) r g ( e! des ) r
  a' ( f c ) r \cresc c' ( a f ) r b ( \< g f ) r b ( g f ) \! r
  e' \f \< ( bes g ) r f' des bes \! r16 bes'8 \ff r r4
  r2 r4 e,,4 \pp -\tweak #'positions #'(3 . 3) (
  g aes bes des, )
  e ( f g e )
  g ( aes bes des )
  ces8 ( g! aes \< des ces4 aes8. bes16 ) \!
  \once \override Hairpin #'rotation = #'(6 0 -20) ces8 ( \< g! aes ges' f g! \times 2/3 {aes8 \f [a bes!])}
  bes8 r r4 r2
  \partcombineChordsOnce
  r a4 ( bes )
  \afterGrace {a4-> \startTrillSpan}{gis16 \stopTrillSpan ([a])}
  \once \override Voice.DynamicText #'extra-offset = #'(0.0 . -3.0 ) a4->
  \afterGrace {
    \once \override TextScript #'extra-offset = #'(0.0 . -0.5)
    \once \override TrillSpanner #'extra-offset = #'(0.0 . -1 )
    \once \override TrillSpanner #'outside-staff-priority = #500
    f4-> ^\markup {\lower #0.3 \tiny \natural} \startTrillSpan
  }
  {
    e!16 \stopTrillSpan ([f])}
  \once \override Voice.DynamicText #'extra-offset = #'(0.0 . -3.0 ) fis4->
  \afterGrace {
    \once \override TextScript #'extra-offset = #'(0.0 . -0.5)
    \once \override TrillSpanner #'extra-offset = #'(0.0 . -0.5 )
    \once \override TrillSpanner #'outside-staff-priority = #500
    d4-> ^\markup {\tiny \flat} \startTrillSpan}{cis16 \stopTrillSpan ([d])}
  \afterGrace {f4-> \startTrillSpan}{e!16 \stopTrillSpan ([f])} \partcombineChords e8 r r4
  \partcombineApartOnce e,16-^ %{\ff%} \partcombineApartOnce e-^ r8 r4 bes'16-^ bes-^ r8 r4
  <<{bes2-> bes'}{s2 s4 \ff \< s8 s16 s \!}>>
  <<{a1 ~}{s2 \ffz \bindDynamics s4 -\tweak #'minimum-length #8 \> s8 s16 s \!}>>
  <<{a1 ~}{\once \override Voice.Hairpin #'stencil = ##f s4 \p \> s \dim}>>
  a8 \pp r r4 r2
  R1
  \partcombineApart
  d,4. \p ( d8 c4 a )
  g8 ( a c4 a ) r8 a -\tweak #'positions #'(4 . 4) (
  bes4 a \dim g f )
  e8 ( f a4 f ) r
  e8 ( \pp f g4 f ) r
  e8 ( f g4 f ) r
  \partcombineChords
  R1
  r2 r4 \partcombineApart <<{a4 (}{s8 %{\p \<%} s16 s32 s \!}>>
  <<{e'8 f c4 ) gis'8 ( a e f )}{s4 %{\<%} s8 s \! s4 s %{\f%}}>>
  \time 2/4
  e8 ( %{\<%} [f g gis]) \!
  \time 4/4
  a2 ( %{\f \>%} ~ a8 f c a ) \!
  f8 r r4 r2
  \partcombineChords
  R1
  f'2 \pp f ~
  f r
  R1 \fermataMarkup

  \bar "|."
}

%{
  *****************************************************************
  * Hautbois II                                                   *
  *****************************************************************
%}

SgMbOboeII = \relative c' {

  \include "Common/Properties.ly"

  \TempoII

  \partcombineApart
  \leftDynamic f2 \Plegato ( e4 f )
  c ( e f ) r8 f \pp ( ~
  f2 d ~
  d4 ) c ~ c r
  <<{a'4. a8 a2}{s4 \p \< s s8 s \!}>>
  f2 ( \> e \! ~
  e4 \p \dim f d2 ) \!
  c4 \pp ( e f ) r
  \partcombineAutomatic
  R1
  <<{r4 a2.}{s4 s \f s8 s \dim}>>

  \mark \default    % Mark A - mesure 11

  <<{a2 ( c ) \!}{s2 ( \pp s4. \< s8 \!}>>
  c2-> \> ( bes8 ) \! r \rightDynamic bes8. ( \p \< d16 ) \!
  <<{ees2 ( d4 des}{\dynamicSpannerOff s8 \fz s4. \dim s4 %{\>%} s8 s16 s \!}>>
  c8 ) r a2 \p a4 (
  bes8 ) r g2 \pp g4 (
  a!8 ) r f2 \< f8 ( b! ) \!
  c8 \< ([e,] f [des'] \f ) ~ des16 ([c8 g16] e8 ) r|
  \repeat unfold 2 R1
  r4 f-- \pp ( f-- ) r
  R1
  r4 f-- \pp ( f-- ) r
  \repeat unfold 9 R1

  \mark \default    % Mark B - mesure 32

  <<{f1 ~}{s4 \pp s \< s s \!}>>
  f16 \mf ( e d e ) e2. \dim
  <<{f1 ~}{s4 \pp \< s s s \!}>>
  f16 %{\mf%} ( e d e ) e2. \dim
  f1 \pp ~
  f8 r r4 r8. f16 \pp ( g f e f )
  g8 ( f e f \< e f e f \! )
  f'2 \f \< e \!
  f4-> \ff c-> des-> des->
  ees-> ees-> des-> des->
  <<{bes c ( des! bes)}{\dynamicSpannerOff s4 s8 s \dim s4 \> s \!}>>
  <<{bes4 ( f ges2}{s4 \p s \> s s8 s \!}>>

  \mark \default    % Mark C - mesure 44

  f4 ) r r2
  \repeat unfold 3 R1
  e1 \pp ~
  <<{e4 gis2. ~}{s4 s \< s s8 s16 s32 s \!}>>
  <<{gis1}{s4 \f \> s s s8 s16 s \!}>>
  <<
    {e4. ( d!16 c! ) d2 ~}
    {
      s8 \once \override DynamicLineSpanner #'avoid-slur = #'inside
      \once \override DynamicLineSpanner #'outside-staff-priority = ##f
      s \dim s4 s \p
   }
  >>
  d4 r r2
  R1
  <<{r4 b'4 ( g'2 )}{s4 s \fz \< s s8 s16 s \!}>>
  b4-^ \ff b,-^ ais-^ ais'-^
  a-^ a,?-^ a-^ dis!-^
  \dynamicSpannerOff
  <<{e2:16 dis:}{s4 s \dim}>>
  e2: \p \> dis: \!
  gis,2 ( \p g )
  fis2 ( \p g! ) ~
  g1 ~
  <<{g1}{s4 %{\pp \<%} s s \!}>>

  \mark \default    % Mark D - mesure 63

  fis16 \ff r r8 r8. a16-. \ff ais-. r8. r4
  \repeat unfold 4 R1
  %	r4 \rightDynamic e8 \p ( \< dis d2 ) \f ~	%parties
  r4 \rightDynamic s8 \p \< s d,2 \f ~	%directrice
  <<{d1}{s8 s \> s4 s8. s16 \!}>>
  c2 \pp ( d )
  c1
  \override MultiMeasureRest #'staff-position = #-4
  \override Rest #'staff-position = #-8
  c8 r r4 r2
  \revert Rest #'staff-position
  \override MultiMeasureRest #'staff-position = #-4
  \repeat unfold 3 R1
  \override MultiMeasureRest #'staff-position = #-6
  \repeat unfold 10 R1
  \override  MultiMeasureRest #'staff-position = #-4
  r2 e'2 \ff
  f4 \fz
  \afterGrace {\once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -12 )
               ees4 \startTrillSpan}{\stemDown d16 \stopTrillSpan ([ees])}
  bes4 \fz
  \afterGrace {\once \override Voice.TrillSpanner #'extra-offset = #'(0.0 . -11 )
               c4 \startTrillSpan}{\stemDown b16 \stopTrillSpan ([c])}
  g4 \fz des' \fz bes8 r r4
  e,16-^ \ff e-^ r8 r4 f16-^ f-^ r8 r4
  <<{g2-> e'}{s2 s4 \ff \< s8 s16 s \!}>>
  <<{f1 ~}{s2 \ffz \bindDynamics s4 -\tweak #'minimum-length #8 \> s8 s16 s \!}>>
  <<{f1 ~}{\once \override Voice.Hairpin #'stencil = ##f s4 \p \> s \dim}>>
  f8 \pp r r4 r2
  \repeat unfold 8 R1
  r2 r4 <<{f,4 (}{s8 \p \< s16 s32 s \!}>>
  <<{c4 ) ( gis'8 a ) e'8 ( f c4 )}{s4 \< s8 s \! s4 s \f}>>
  \time 2/4
  <<{b2}{s8 \< s s s \!}>>
  \time 4/4
  <<{c2 ~ c8 r r4}{s2 \f \> s8 s s s \!}>>
  R1
  R1
  f,2 \pp f ~
  f r
  R1 %{\fermataMarkup%}

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMbOboeIAII = \new Voice {
  \time 4/4
  \key f \major
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Oboe" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Ob." I+II}}
  \set Staff.midiInstrument = "oboe"
  \clef treble
  \partcombine \SgMbOboeI \SgMbOboeII
}

