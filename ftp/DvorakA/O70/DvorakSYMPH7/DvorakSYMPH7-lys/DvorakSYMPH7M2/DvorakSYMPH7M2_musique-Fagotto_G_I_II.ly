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
  * Fichier de notes, bassons 1 et 2, directrice                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Basson I                                                      *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMbFagottoI = \relative c' {

  \include "Common/Properties.ly"

  \TempoII

  \leftDynamic d2 \Plegato ( bes4 c )
  c2 ~ c4 r8 c \pp (
  bes4 c bes a )
  g8 ( f e4 f ) r
  d'4. \p \<d8 ( c d e4 ) \!
  d8 ( \> [c bes8. d16] cis2 ) \! ~
  \dynamicSpannerOff cis4 \p \dim ( d g,4. gis8 )
  a ( \pp bes c?4 a ) r
  r <<{b,,8 ([c gis' a]) e ([f}{s4 \p \< s s8 s16 s \!}>>
  d'8 c]) f,16 %{\f%} ([a c f] a ) r8. r4

  \mark \default    % Mark A - mesure 11

  \partcombineChords
  f2 %{\pp%} ( g4 a )
  \partcombineApart
  <<{bes ( f2. )}{s4 s %{\<%} s s8 s16 s \!}>>
  <<{fis2 ( g )}{s2 %{\fz%} %{\<%} s4 %{\>%} s8 s16 s \!}>>
  g8 r c8. \bracketedP ( f,!16 fis2 )
  g4 %{\pp%} ( ees'8. ees,16 e2 )
  <<{f4 ( c' b2 )}{s4 s %{\<%} s s \!}>>
  \mergeDifferentlyHeadedOn
  \mergeDifferentlyDottedOn
  c4 %{\<%} ( g ) %{\f%} e,16 ( g c e g8 ) r
  \mergeDifferentlyHeadedOff
  \mergeDifferentlyDottedOff
  \partcombineChords
  R1
  r4 aes-- \pp ( aes-- ) r
  R1
  r4 aes-- \pp ( aes-- ) r
  R1
  r4 g-- \pp ( g-- ) r8 g ~
  <<{g ( a!4 bes c d8 ~}{s4 s8 \< s4 s \!}>>
  <<{d8 ) d-> f2.-> ~}{s8 \< s \! s4 \f s8 s \> s s16 s \!}>>
  f8 r r4 r2
  \partcombineApart
  r8.. bes,32 \p \< ( c8.. des32 ) \! g,8 \f r16. e'32 \< f8.. g32 \!
  des8 \ff r r4 r2
  \partcombineAutomatic
  r2 r8 \partcombineApart bes,16 %{\p%} ( a g8 ) r
  R1
  \partcombineAutomatic
  \once \override MultiMeasureRest #'staff-position = #2
  R1

  \mark \default    % Mark B - mesure 32

  <<{f'1 ~}{s4 %{\pp%} s %{\<%} s s \!}>>
  <<{f1}{s4 %{\mf%} s \> s s8 s \!}>>
  <<{f1 ~}{s4 \pp \< s s s \!}>>
  <<{f1}{s4 \mf s \> s s \!}>>
  f1 \pp ~
  f8 r16 a ( bes a g a ) r2
  R1
  <<{\partcombineApart d4-> bes-> \partcombineAutomatic g-> %{\ff%} c,->}{%{s4 \f \< s8 s8 \!%}}>>
  f4-> \ff aes-> des,-> bes->
  ees-> aes-> des,-> ges->
  <<{bes aes des, ges}{s4 s8 \rightDynamic s \dim s4 \> s \!}>>
  <<{g!4 aes ( c4. bes8 )}{s4 \p s4 %{\>%} s s8 s \!}>>

  \mark \default    % Mark C - mesure 44

  aes8 r aes4 ( \pp f4. ) r8
  <<{f4 ( aes2. ) ~}{s4 s \< s8 s \!}>>
  <<{aes1}{s16 s s s s s %{\dim%}}>>
  <<{e!2 ~ e8 ( b' \dim c! a? \! )}{s4 %{\p \>%} s s s \!}>>
  gis4 r r2
  \clef tenor
  \partcombineApart
  <<{gis'4-> \Solo ( fis8. e16 b2 ) ~}{s4 \mp s \< s s \!}>>
  b8 gis ( \< b! e ) \! a16 ( \> gis e b fis' e ) \! r8
  \partcombineAutomatic
  R1
  \clef bass
  \partcombineApart
  g,,8 %{\p%} ( b d g, ) \partcombineChords b ( d \cresc g b )
  dis ( b g dis! ) b! ( g' dis b )
  \partcombineApart g %{\mf%} ( b dis \cresc g, ) e' ( b eis eis,! )
  \partcombineChords
  fis' %{\ff%} r d'4-> cis-> cis->
  c!-> c-> a-> dis->
  <<{\partcombineApartOnce cis2:16 cis2:16}{s4 s \dim}>>
  cis2:16 \p \dim gis!2:16 \!
  \partcombineApart
  gis2 %{\p%} ( g )
  fis ( g )
  g1 ~
  <<{g}{s2 s %{\bracketedCresc%}}>>
  \partcombineChords

  \mark \default    % Mark D - mesure 63

  cis16 \ff r8. r cis16-. cis-. r8. r4
  \repeat unfold 3 R1
  \partcombineApart
  r2 r4 r16 e ( \f d b
  gis8 ) r \rightDynamic gis \p \< ( fis eis4 \f fis8 g )
  <<{gis1}{s8 s %{\>%} s4 s8. s16 \!}>>
  a1 \pp ~
  a2 \> ( bes ) \!
  a8 r r4 r2
  \override MultiMeasureRest #'staff-position = #8
  \repeat unfold 5 R1
  \revert MultiMeasureRest #'staff-position
  \hairpinToBarLineFalse
  r2 r4 e'8.. \p \> ( f32
  g8 ) \pp r r4 r2
  \partcombineAutomatic
  r4 aes, %{\pp ^\Tenuto%} aes %{^\Tenuto%} r
  r g! %{^\markup {\italic "[sim]"}%} g r
  r aes aes r
  <<{r des, des r}{s4 s8 s \cresc}>>
  r4 \rightDynamic d! \mf \< d \! r
  \partcombineApart
  bes'16-> %{\ff%} aes-> ges!8-> des' c16 bes c bes aes8 \clef tenor ees' d!16 c
  d-> c-> bes!8-> f' e!16 d \clef bass a4 %{\ff%} ( bes )
  \afterGrace {a4-> \startTrillSpan}{gis16 \stopTrillSpan ([a])}
  \afterGrace {ees'4-> \startTrillSpan}{d16 \stopTrillSpan ([ees])}
  \afterGrace {
      \once \override TextScript #'extra-offset = #'(0.0 . -0.5)
      \once \override TrillSpanner #'extra-offset = #'(0.0 . -0.8 )
      \once \override TrillSpanner #'outside-staff-priority = #500
    f,4-> ^\markup {\tiny \natural} \startTrillSpan}{e!16 \stopTrillSpan ([f])}
  \afterGrace {
      \once \override TextScript #'extra-offset = #'(0.0 . -0.5)
      \once \override TrillSpanner #'extra-offset = #'(0.0 . -0.8 )
      \once \override TrillSpanner #'outside-staff-priority = #500
  c'4-> ^\markup {\tiny \natural} \startTrillSpan}{b16 \stopTrillSpan ([c])}
  \afterGrace {
      \once \override TextScript #'extra-offset = #'(0.0 . 0)
      \once \override TrillSpanner #'extra-offset = #'(0.0 . -0.5 )
      \once \override TrillSpanner #'outside-staff-priority = #500
    d,4-> ^\markup {\lower #0.3 \tiny \flat} \startTrillSpan}{cis16 \stopTrillSpan ([d])}
  \afterGrace {f4-> \startTrillSpan}{e!16 \stopTrillSpan ([f])} \partcombineAutomatic e8 r r4
  c16-^ \ff c-^ r8 r4 c16-^ c-^ r8 r4
  <<{c2-> \partcombineApart c8-> bes-> g-> c->}{s2 s4 %{\<%} s8 s16 s \!}>>
  \partcombineAutomatic
  <<{f1-^ ~}{s2 %{\ffz%} s4 %{\>%} s8 s16 s \!}>>
  <<{f1}{s4 %{\p%} s %{\dim%}}>>
  <<{c4 ( b c b )}{s4 %{\pp%} s s %{\dim%}}>>
  c ( b c b )
  c \partcombineChords r r2 \partcombineApart
  ees'2 \pp ( d )
  des4 ( c b2 )
  bes! ( a )
  gis ( a )
  gis (a4 ) r
  \override MultiMeasureRest #'staff-position = #4
  \repeat unfold 2 R1
  \revert MultiMeasureRest #'staff-position
  \partcombineAutomatic
  R1
  \time 2/4
  R2
  \time 4/4
  <<{f1 (}{s4 \f \> s s s8 s \!}>>
  <<{a1 ) ~}{s4 \p s \dim}>>
  a1 \pp ~
  a8 r r4 c2 ~
  c2 r
  R1 \fermataMarkup

  \bar "|."
}

%{
  *****************************************************************
  * Basson II                                                     *
  *****************************************************************
%}

SgMbFagottoII = \relative c' {

  \include "Common/Properties.ly"

  \TempoII

  \leftDynamic bes2 \Plegato ( g4 f )
  e4 ( a8 g f4) r8 f \pp (
  d4 f g d )
  bes4 ( c f, ) r
  <<{d'4 ( f8 g a2 )}{s4 \p \< s s s \!}>>
  g2 ( \> g2 ) \!
  \dynamicSpannerOff f2 \p \dim ( bes,4 b )
  c2 ( \pp f,4 ) r
  r <<{b,8 ([c gis' a]) e ([f}{s4 \p \< s s8 s16 s \!}>>
  d'8 c]) <<{f,2.}{s4 \f s8 s \dim}>>

  \mark \default    % Mark A - mesure 11

  f2 \pp ( g4 a )
  <<{bes1}{s4 s \< s s8 s16 s \!}>>
  <<{bes1}{s2 \fz \< s4 \> s8 s16 s \!}>>
  bes1 \p
  bes1 \pp
  <<{a4 d2 ( des4 )}{s4 s \< s s \!}>>
  c4 \< ( g \f e8. c16 ) c8 r
  R1
  r4 aes'-- \pp ( aes-- ) r
  R1
  r4 aes-- \pp ( aes-- ) r
  R1
  r4 ees'-- \pp ( ees-- ) r8 e ~
  <<{e ( f4 g a bes8  ~}{s4 s8 \< s4 s \!}>>
  <<{bes8 ) b-> c2.-> ~}{s8 \< s \! s4 \f s8 s \> s s16 s \!}>>
  c8 r r4 r2
  \repeat unfold 2 R1
  r2 r8 g,16 \p ( f e4 ) ~
  <<{e2. ~ e8 r}{s4 s \dim s s \!}>>
  \partcombineAutomatic
  \once \override MultiMeasureRest #'staff-position = #2
  R1

  \mark \default    % Mark B - mesure 32

  <<{f1 ~}{s4 \pp s \< s s \!}>>
  <<{f1}{s4 \mf s \> s s8 s \!}>>
  <<{f1 ~}{s4 \pp \< s s s \!}>>
  <<{f1}{s4 \mf s \> s s \!}>>
  f1 \pp ~
  f8 r16 f' ( g f e f ) r2
  R1
  <<{d'4-> bes->}{s4 \f \< s8 s8 \!}>> \once \override NoteColumn #'force-hshift = #-0
    \tweak Stem #'direction #UP g,4-> \ff c,->
  f4-> \ff aes-> des,-> bes->
  ees-> aes-> des,-> ges->
  <<{bes aes des, ges}{s4 s8 \rightDynamic s \dim s4 \> s \!}>>
  <<{g!4 aes2.}{s4 \p s4 \> s s8 s \!}>>

  \mark \default    % Mark C - mesure 44

  des8 r f4 ( \pp des4. ) r8
  <<{des4 ( f2. ) ~}{s4 s \< s8 s \!}>>
  <<{f1}{s16 s s s s s \dim}>>
  <<{cis4. ( b16 a ) b2}{s4 \p \> s s s \!}>>
  e4 r r2
  \clef tenor
  \repeat unfold 3 R1
  \clef bass
  g,8 \p ( b d g, ) b, ( d \cresc g b )
  dis ( b g dis ) b ( g' dis b )
  g' \mf ( b, dis \cresc g ) e ( b eis eis! )
  fis \ff r b'4-> ais-> ais->
  a!-> a-> dis,-> a'->
  <<{cis2:16 fis,2:16}{s4 s \dim}>>
  gis2:16 \p \dim fis2:16 \!
  e,1 \p ~
  e ~
  e ~
  <<{e}{s2 s \bracketedCresc}>>

  \mark \default    % Mark D - mesure 63

  e'16 \ff r8. r e16-. e-. r8. r4
  \repeat unfold 4 R1
  r4 \rightDynamic e8 \p \< ( dis d4 \f ) e,?4 ~
  <<{e1}{s8 s \> s4 s8. s16 \!}>>
  f2 ( \pp bes! )
  c4 \> ( a' ) g2 \!
  f8 r f,-. \p f'-. g, r a-. a'-.
  bes, r bes-. bes'-. bes, \< r bes-. bes'-. \!
  bes, \fz r bes-. bes'-. bes, \dim r bes-. bes'-.
  bes, \p r bes-. bes'-. bes, r bes-. bes'-.
  bes, r bes-. \pp bes'-. bes, r bes-. bes'-.
  a, r d,-. \cresc d'-. d, r des-. des'-.
  c \f r g-. \< g'-. e \! r r4
  R1
  r4 des \pp ^\Tenuto des ^\Tenuto r
  r bes ^\markup {\italic "[sim]"} bes r
  r des des r
  <<{r f, f r}{s4 s8 s \cresc}>>
  r4 \rightDynamic aes \mf \< aes \! r
  ges'16-> \ff f-> ees8-> bes' e,! aes!16 g! f8 c' fis,
  bes16-> a!-> g8-> d' gis, e2 \ff
  f4 \fz a \fz bes, \fz fis' \fz
  g, \fz des' \fz c8 r r4
  c,16-^ \ff c-^ r8 r4 c16-^ c-^ r8 r4
  <<{c2-> c8-> bes-> g'-> c,->}{s2 s4 \< s8 s16 s \!}>>
  <<{f1-^ ~}{s2 \ffz \bindDynamics s4 -\tweak #'minimum-length #8 \> s8 s16 s \!}>>
  <<{f1 ~}{s4 \p s \dim}>>
  <<{f1 ~}{s4 \pp s s \dim}>>
  f1 ~
  f4 r r2
  \repeat unfold 4 R1
  r2 c' \pp ~
  c1 ~
  c2 ~ c8 r r4
  R1
  \time 2/4
  R2
  \time 4/4
  <<{f,1 (}{s4 \f \> s s s8 s \!}>>
  <<{f'1 ) ~}{s4 \p s \dim}>>
  f1 \pp ~
  f8 r r4 f2 ~
  f2 r
  R1 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMbFagottoIAII = \new Voice {
  \time 4/4
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Fagotti" I+II}}
  \tag #'conductorScore \tag #'pocketScore {\set Staff.shortInstrumentName = \markup {\center-column {"Fag." I+II}}}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "bassoon"
  \key f \major
  \clef bass
  \partcombine \SgMbFagottoI \SgMbFagottoII
}

