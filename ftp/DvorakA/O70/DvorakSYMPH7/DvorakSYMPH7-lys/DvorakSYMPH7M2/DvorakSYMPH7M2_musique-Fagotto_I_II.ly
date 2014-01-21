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
  * Fichier de notes, Bassons 1 et 2, parties                           *
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

  %   \set Staff.minimumPageTurnLength n'est pas défini dans cette partie
  \cueEventType
  \oneMMRNumberOn

  \TempoII

  \leftDynamic d2 \Plegato ( bes4 c )
  c2 ~ c4 r8 c \pp (
  bes4 c bes a )
  g8 ( f e4 f ) r
  d'4. \p \<d8 ( c d e4 ) \!
  d8 ( \> [c bes8. d16] cis2 ) \! ~
  cis4 \p \dim ( d g,4. gis8 )
  a ( \pp bes c?4 a ) r
  r <<{b,,8 ([c gis' a]) e ([f}{s4 \p \< s s8 s16 s \!}>>
  d'8 c]) f,16 \f ([a c f] a ) r8. r4

  \mark \default    % Mark A - mesure 11

  \override DynamicLineSpanner #'staff-padding = #2
  f2 \pp ( g4 a )
  <<{bes ( f2. )}{s4 s \< s s8 s16 s \!}>>
  <<{fis2 ( g )}{s2 \fz -\tweak #'minimum-length #5 \< s4 \> s8 s16 s \!}>>
  g8 r c8. \bracketedP ( f,!16 fis2 )
  g4 \pp ( ees'8. ees,16 e2 )
  <<{f4 ( c' b2 )}{s4 s \< s s \!}>>
  c4 -\tweak #'minimum-length #6 \< ( g ) \f e,16 ( g c e g8 ) r
  \dynamicLineSpannerStandard
  R1
  r4 aes-- \pp ( aes-- ) r
  R1
  r4 aes-- \pp ( aes-- ) r
  R1
  r4 g-- \pp ( g-- ) r8 g ~
  <<{g ( a!4 bes c d8 ~}{s4 s8 \< s4 s \!}>>
  <<{d8 ) d-> f2.-> ~}{s8 \< s \! s4 \f s8 s \> s s16 s \!}>>
  f8 r r4 r2

  \tag #'quoteCornoII {
    r8.. bes,32 \p \< ( c8.. des32 \! ) g,8 \f r16. e'32 \< f8.. g32 \!
  }
  \elseTag #'quoteCornoII {
    r8.. bes,32 \p \< ( c8.. des32 ) g,8 \f r16. e'32 \< f8.. g32 \!
  }

  des8 \ff r r4 r2
  r2 r8 bes,16 \p ( a g8 ) r
  R1 * 2

  \mark \default    % Mark B - mesure 32

  <<{f'1 ~}{\rightDynamic s4 \pp -\tweak #'minimum-length #7 \< s s \! }>>
  <<{f1}{s4 \mf -\tweak #'minimum-length #7 \> s s8 s \! }>>
  <<{f1 ~}{s4 \pp -\tweak #'minimum-length #7 \< s s s \!}>>
  <<{f1}{s4 \mf -\tweak #'minimum-length #7 \> s s \!}>>
  f1 \pp ~
  f8 r16 a ( bes a g a ) r2
  R1
  <<{d4-> bes-> g->c,->}{s4 \f \< s8 s16 s32 s s4 \ff}>>
  f4-> \ff aes-> des,-> bes->
  ees-> aes-> des,-> ges->
  \override DynamicLineSpanner #'staff-padding = #2
  <<{bes aes des, ges}{s4 s8 \rightDynamic s -\tweak #'minimum-length #6 \dim s4 \> s \!}>>
  <<{g!4 aes ( c4. bes8 )}{s4 \p s4 \> s s8 s \!}>>

  \mark \default    % Mark C - mesure 44

  aes8 r aes4 ( \pp f4. ) r8
  <<{f4 ( aes2. ) ~}{s4 s -\tweak #'minimum-length #6 \< s8 s \!}>>
  <<{aes1}{s16 s s s s s -\tweak #'minimum-length #5 \dim}>>
  <<{e!2 ~ e8 ( b' \dim c! a \! )}{s4 \p \> s s s \!}>>
  gis4 r r2
  \clef tenor
  <<{gis'4-> \Solo ( fis8. e16 b2 ) ~}{s4 \mp s \< s s \!}>>
  b8 gis ( \< b! e ) \bindDynamics a16 ( \> gis e b fis' e ) \! r8
  \dynamicLineSpannerStandard
  R1
  \clef bass
  g,,!8 \p ( b d g, ) b ( d \cresc g b )
  dis ( b g dis ) b ( g' dis b )
  g \mf ( b dis \cresc g, ) e' ( b eis eis, )
  fis' \ff r d'4-> cis-> cis->
  c!-> c-> a-> dis->
  <<{cis2:16 cis2:16}{s4 s \dim}>>
  cis2:16 \p \dim gis: \!
  gis2 \p ( g )
  fis ( g )
  g1 ~
  <<{g}{s2 s \bracketedCresc}>>

  \mark \default    % Mark D - mesure 63

  cis16 \ff r8. r cis16-. cis-. r8. r4
  R1 * 3
  r2 r4 r16 e ( \f d b
  gis8 ) r \rightDynamic gis \p \< ( fis eis4 \f fis8 g )
  <<{gis1}{s8 s \> s4 s8. s16 \!}>>
  a1 \pp ~
  a2 \> ( bes ) \!
  a8 r r4 r2
  R1 * 3
  r4

  \oneMMRNumberOff
  \cueDuring #"scoreSgMbVioloncello" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vlc"} r4 r2 R1 r2 r4}
  \oneMMRNumberOn

  e'8.. \p -\tweak #'minimum-length #5 \> ( f32
  g8 ) \pp r r4 r2
  r4 \textLengthOn aes, \pp ^\Tenuto aes ^\Tenuto r \textLengthOff
  r g! ^\markup {\italic "[sim]"} g r
  r aes aes r
  <<{r des, des r}{s4 s8 s \cresc}>>
  r4 \rightDynamic d! \mf -\tweak #'minimum-length #4 \< d \! r
  bes'16-> \ff aes-> ges!8-> des' c16 bes c bes aes8 \clef tenor ees' d!16 c
  \override DynamicLineSpanner #'staff-padding = #2
  d-> c-> bes!8-> f' e!16 d \clef bass a4 \ff ( bes )
  \afterGrace {a4-> \fz \trill}{gis16 ([a])}
  \afterGrace {ees'4-> \fz \trill}{d16 ([ees])}
  \afterGrace {
    \once \override TextScript #'Y-offset = #6.5
    f,4-> \fz ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1 \tiny \natural}}
  }
  {e!16 ([f])}
  \afterGrace {c'4-> \fz \trill}{b16 ([c])}
  \afterGrace {
    \once \override TextScript #'Y-offset = #5.5
    d,4-> \fz ^\markup {\center-column {\musicglyph #"scripts.trill" \raise #1 \tiny \flat}}
  }
  {cis16 ([d])}
  \afterGrace {f4-> \fz \trill}{e!16 ([f])} e8 r r4
  c16-^ \ff c-^ r8 r4 c16-^ c-^ r8 r4
  \dynamicLineSpannerStandard
  <<{c2-> c8-> bes-> g-> c->}{s2 s4 \< s8 s16 s \!}>>
  <<{f1-^ ~}{s2 \ffz -\tweak #'minimum-length #7 \> s8 s16 s \!}>>
  f1 \p \dim
  <<{c4 ( b c b )}{s4 \pp s s \dim}>>
  c ( b c b )
  c r r2
  ees'2 \pp ( d )
  des4 ( c b2 )
  bes! ( a )
  gis ( a )
  gis (a4 ) r
  R1 * 3
  \time 2/4
  R2
  \time 4/4
  <<{f1 (}{s4 \f -\tweak #'minimum-length #5 \> s s s8 s \!}>>
  a1 ) ~ \p \dim
  a1 \pp ~
  a8 r r4 c2 ~
  c2 r
  \oneMMRNumberOff
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

  \set Staff.minimumPageTurnLength = #(ly:make-moment 8 4)
\cueEventType  \oneMMRNumberOn

  \TempoII

  \leftDynamic bes2 \Plegato ( g4 f )
  e4 ( a8 g f4) r8 f \pp (
  d4 f g d )
  bes4 ( c f, ) r
  \override DynamicLineSpanner #'staff-padding = #2
  <<{d'4 ( f8 g a2 )}{s4 \p \< s s s \!}>>
  g2 ( \> g2 ) \!
  f2 \p \dim ( bes,4 b )
  c2 ( \pp f,4 ) r
  r <<{b,8 ([c gis' a]) e ([f}{s4 \p \< s s8 s16 s \!}>>
  d'8 c]) f,2. \f

  \mark \default    % Mark A - mesure 11

  f2 \pp ( g4 a )
  <<{bes1}{s4 s \< s s8 s16 s \!}>>
  \polyNeutral {s2 \fz -\tweak #'minimum-length #7 \< s4 -\tweak #'minimum-length #4 \> s8 s16 s \!}{bes1}
  bes1 \p
  bes1 \pp
  <<{a4 d2 ( des4 )}{s4 s \< s s \!}>>
  c4 \< ( g \f e8. c16 ) c8 r
  \dynamicLineSpannerStandard
  R1
  r4 aes'-- \pp ( aes-- ) r
  R1
  r4 aes-- \pp ( aes-- ) r
  R1
  r4 ees'-- \pp ( ees-- ) r8 e ~
  <<{e ( f4 g a bes8 ~}{s4 s8 \< s4 s \!}>>
  <<{bes8 ) b-> c2.-> ~}{s8 \< s \! s4 \f s8 s -\tweak #'minimum-length #4 \> s s16 s \!}>>
  c8 r r4 r2
  R1 * 2
  r2 r8 g,16 \p ( f e4 ) ~
  <<{e2. ~ e8 r}{s4 s \dim s s \!}>>
  R1

  \mark \default    % Mark B - mesure 32

  <<{f1 ~}{s4 \pp -\tweak #'minimum-length #7 \< s s \bindDynamics}>>
  <<{f1}{s4 \mf -\tweak #'minimum-length #7 \> s s8 s \!}>>
  <<{f1 ~}{s4 \pp -\tweak #'minimum-length #7 \< s s s \!}>>
  <<{f1}{\once \override Voice.Hairpin #'stencil = ##f s4 \mf \> s s \!}>>
  f1 \pp ~
  f8 r16 f' ( g f e f ) r2
  R1
  d'4-> \f \< bes-> g,-> \ff c,->
  f4-> \ff aes-> des,-> bes->
  ees-> aes-> des,-> ges->
  \override DynamicLineSpanner #'staff-padding = #3
  <<{bes aes des, ges}{s4 s8 \rightDynamic s -\tweak #'minimum-length #6 \dim  s4 \> s \!}>>
  <<{g!4 aes2.}{s4 \p s4 \> s s8 s \!}>>

  \mark \default    % Mark C - mesure 44

  des8 r f4 ( \pp des4. ) r8
  <<{des4 ( f2. ) ~}{s4 s -\tweak #'minimum-length #4 \< s8 s \!}>>
  <<{f1}{s16 s s s s s \dim}>>
  <<{cis4. ( b16 a ) b2}{s4 \p \> s s s \!}>>
  \dynamicLineSpannerStandard
  e4 r r2
  R1 * 3
  g,!8 \p ( b d g, ) b, ( d \cresc g b )
  dis ( b g dis ) b ( g' dis b )
  g' \mf ( b, dis \cresc g ) e ( b eis eis )
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
  R1 * 4
  r4 \rightDynamic e8 \p \< ( dis d4 \f ) e,4 ~
  <<{e1}{s8 s -\tweak #'minimum-length #4 \> s4 s8. s16 \!}>>
  f2 ( \pp bes! )
  c!4 \> ( a' ) g2 \!
  f8 r f,-. \p f'-. g, r a-. a'-.
  bes, r bes-. bes'-. bes, \< r bes-. bes'-. \!
  bes, \fz r bes-. bes'-. bes, \dim r bes-. bes'-.
  bes, \p r bes-. bes'-. bes, r bes-. bes'-.
  bes, r bes-. \pp bes'-. bes, r bes-. bes'-.
  a, r d,-. \cresc d'-. d, r des-. des'-.
  c \f r g-. \< g'-. e \! r r4
  R1
  \textLengthOn r4 des \pp ^\Tenuto des ^\Tenuto r \textLengthOff
  r bes ^\markup {\italic "[sim]"} bes r
  r des des r
  <<{r f, f r}{s4 s8 s \cresc}>>
  r4 \rightDynamic aes \mf \< aes \! r
  ges'16-> \ff f-> ees8-> bes' e,! aes!16 g! f8 c' fis,
  \override DynamicLineSpanner #'staff-padding = #2.2
  bes16-> a!-> g8-> d' gis, e2 \ff
  f4-> \fz a-> \fz bes,-> \fz fis'-> \fz
  g,-> \fz des'-> \fz c8 r r4
  \dynamicLineSpannerStandard
  c,16-^ \ff c-^ r8 r4 c16-^ c-^ r8 r4
  \override DynamicLineSpanner #'staff-padding = #4.0
  <<{c2-> c8-> bes-> g'-> c,->}{s2 s4 \< s8 s16 s \!}>>
  <<{f1-^ ~}{s2 \ffz \bindDynamics s4 -\tweak #'minimum-length #4 \> s8 s16 s \!}>>
  \dynamicLineSpannerStandard
  \leftDynamic f1 \p -\tweak #'minimum-length #9 \dim ~
  <<{f1 ~}{s4 \pp \bindDynamics s s \dim}>>
  \dynamicLineSpannerStandard
  f1 ~
  f4 r r2
  R1 * 4
  r2 c' \pp ~
  c1 ~
  c2 ~ c8 r r4
  R1
  \time 2/4
  R2
  \time 4/4
  <<{f,1 (}{s4 \f -\tweak #'minimum-length #4 \> s s s8 s \!}>>
  <<{f'1 ) ~}{s4 \p s \dim}>>
  f1 \pp ~
  f8 r r4 f2 ~
  f2 r
  \oneMMRNumberOff
  R1 \fermataMarkup

  \bar "|."
}

%{
  *****************************************************************
  * Création des voix                                             *
  *****************************************************************
%}


voiceSgMbFagottoI = \new Voice {
  \time 4/4
  \key f \major
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Fagotto" I}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "bassoon"
  \clef bass
  \SgMbFagottoI
}

voiceSgMbFagottoII = \new Voice {
  \time 4/4
  \key f \major
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Fagotto" II}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "bassoon"
  \clef bass
  \SgMbFagottoII
}

quoteScoreSgMbFagottoI = \SgMbFagottoI
quoteScoreSgMbFagottoII = \SgMbFagottoII
