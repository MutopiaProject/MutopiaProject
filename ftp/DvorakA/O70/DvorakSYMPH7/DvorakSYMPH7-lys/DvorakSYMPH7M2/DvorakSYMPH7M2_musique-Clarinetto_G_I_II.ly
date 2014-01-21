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
  * Fichier de notes, Clarinettes 1 et 2, directrice                    *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  *****************************************************************
  * Clarinette I                                                  *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMbClarinettoI = \relative c'' {

  \include "Common/Properties.ly"

  \TempoII

  \transposition bes
  \partcombineApart
  \leftDynamic e4. \Plegato ( e8 d4 b )
  a8 ( b d4 b ) r8 \once \override Slur #'positions = #'(3.7  . 3) b \pp (
  c4 b a g )
  fis8 ( g b4 g ) r8 b \p
  g'4. ( \< g8 fis4 d \! )
  c8 \> ( d e d16 c b4 ) \! r8 b
  c4 ( \p \dim b a g \! )
  fis \pp ( b g ) r
  \partcombineAutomatic
  R1
  r2 \partcombineApart b,16 %{\f%} ( d \dynamicSpannerOff g %{\dim%} b d g b d  \!

  \mark \default    % Mark A - mesure 11

  g8 ) \p r r4 r2
  \partcombineAutomatic
  R1
  \partcombineApart
  <<{d,2 ( c )}{\rightDynamic s2 %{\fp \<%}  s4 %{\>%} s8 s16 s \!}>>
  fis,?8 \partcombineAutomatic r r4 r2	% fis à vérifier
  \repeat unfold 2 R1
  \partcombineApart
  d'4 %{\<%} c %{\f%} ~ c \partcombineAutomatic r
  R1
  r4 c,-- \pp ( c-- ) r
  R1
  r4 c-- \pp ( c-- ) r
  \repeat unfold 5 R1
  \partcombineApart
  r8.. c'32 \p \< ( d8.. ees32 ) \! a,8 \f r16. fis'32 \< g8.. a32 \!
  ees8 \ff r r4 r2
  \partcombineAutomatic
  r2 r4 r8 \partcombineApart fis,,8-> %{\p%} ~
  <<{fis1 ~}{s4 s %{\dim%} s s \!}>>
  fis1

  \mark \default    % Mark B - mesure 32

  R1
  d''2 \mf ~ d8 d \> ( fis e16 d \! )
  <<{d1 ~}{s4 \pp \< s s s \!}>>
  <<{d2 ~ d8 d ( fis e16 d )}{s4 \mf s s \> s8 s \pp}>>
  d8 r r4 b'8. \pp ( g16 d4 ~
  d8 ) \partcombineAutomatic r16 b ( c b a b ) r2
  \partcombineApart
  r4 <<{d2.}{s8 \p s \< s4 s8 s \!}>>
  \partcombineAutomatic
  g2 \f \< fis \!
  \partcombineApart
  g4-> %{\ff%} d8.-> ( c32 d ) bes!4-> ees->
  f4-> d8. ( c32 d ) bes!4-> c->
  <<{g bes8. ( f32 bes ) g4 ( aes )}{s4 s8 \rightDynamic s \dim s4 \> s \!}>>
  g \p r r2

  \mark \default    % Mark C - mesure 44

  % ne pas employer le \Espressivo qui est une marque dynamique, non compatible avec le \<
  g'4 \p -\tweak #'extra-offset #'(0 . -1.5) \Solo
    f8. \< -\tweak #'extra-offset #'(0 . -1.5) ^\markup {\large \italic "espressivo"} ( ees16 bes8. [g16 ees!8. c16]) \!
  bes2 \mf ~ \times 2/3 {\once \override Hairpin #'rotation = #'(8 1 0) bes8 \< ( ees g} bes16 [ees aes r32 g]) \!
  g16-> ( %{\f%} f ) \partcombineChordsOnce r ees! ees-> ( d ) \dim
    \partcombineChordsOnce r c c-> ( bes! ) \partcombineChordsOnce r aes aes ( g f ees! )
  ges4. \p \> ( f16 ees des8 [bes' ces8. \! f,!16]
  ges4 ) r r2
  \partcombineChords
  R1
  \partcombineApart
  r2 r4 r16 fis! \p ( cis'8 ~
  cis ) (\once \override DynamicLineSpanner #'avoid-slur = #'inside
  \once \override DynamicLineSpanner #'outside-staff-priority = ##f
  d!4 \dim e16 fis ) cis8 ( \p a gis b )
  a4 r r2
  \partcombineAutomatic
  R1
  \partcombineApart
  <<{\partcombineAutomatic r4 \partcombineApart cis2.}{s4 s \bracketedFz \< s s8 s16 s \!}>>
  \partcombineAutomatic
  e4-> \ff e-> dis-> dis->
  d!-> d-> b-> \partcombineApart \once \override NoteColumn #'force-hshift = #-0.5 \tweak Stem #'direction #DOWN f'!-> ~
  f ees8. %{\dim%} bes!16 des4 ( ces )
  bes2 %{\p \>%} ( bes'4.. ) \! bes16
  bes4.  %{\p%} r8 a!4 \fz \> (  fis!8. dis16 \!
  bis4 )  r a' ( \mf \> e!8. cis16
  bis4 ) \! r a' ( \pp fis8.cis16
  d!4 ) r dis \mf \< ( a8. fis16 ) \!
  \partcombineAutomatic

  \mark \default    % Mark D - mesure 63

  dis'16 \ff r8. r8. a'!16-. \ff gis-. r8. r4
  \repeat unfold 4 R1
  \partcombineApart
  r4 \rightDynamic ais,8 ^\p ^\< ( b dis2 ^\f ) ~
  <<{dis4. ( d8 ) cis4 ( ais8. fis16 )}{s8 s \> s4 s8. s16 \! s4 \p}>>
  cis'4 ( \pp b2 a!8 e )
  g!2 \> ( ~ g8 fis e fis ) \!
  g8 r r4 r2
  \partcombineAutomatic
  \repeat unfold 5 R1
  \partcombineApart
  \hairpinToBarLineFalse
  r2 r4 fis'8.. \p \> ( g32
  a8 ) \pp r r4 r2
  \repeat unfold 5 R1
  c,16-> \bracketedFF bes-> aes8-> ees' [d16 c] d c bes8 f' [e!16 d]
  e-> d-> c8-> g' [fis!16 e] b?4 %{\ff%} ( c )
  \afterGrace {b4 -> \startTrillSpan}{ais16 \stopTrillSpan ([b])}
  \afterGrace {f'4 -> \startTrillSpan}{e16 \stopTrillSpan ([f])}
  \afterGrace {
    \once \override TextScript #'extra-offset = #'(0.0 . -0.5)
    \once \override TrillSpanner #'extra-offset = #'(0.0 . -1 )
    \once \override TrillSpanner #'outside-staff-priority = #500
    g,4 -> ^\markup {\lower #0.3 \tiny \natural} \startTrillSpan}{fis!16 \stopTrillSpan ([g])}
  \afterGrace {
    \once \override TextScript #'extra-offset = #'(0.0 . -0.5)
    \once \override TrillSpanner #'extra-offset = #'(0.0 . -1 )
    \once \override TrillSpanner #'outside-staff-priority = #500
    d'4 -> ^\markup {\tiny \natural} \startTrillSpan}{cis16 \stopTrillSpan ([d])}
  \afterGrace {
      \once \override TextScript #'extra-offset = #'(0.0 . -0.5)
      \once \override TrillSpanner #'extra-offset = #'(0.0 . -0.5 )
      \once \override TrillSpanner #'outside-staff-priority = #500
    e,4 -> ^\markup {\lower #0.3 \tiny \flat} \startTrillSpan}{dis16 \stopTrillSpan ([e])}
  \afterGrace {g4 -> \startTrillSpan}{fis!16 \stopTrillSpan ([g])}
  \partcombineAutomatic
  c?8 r r4
  c,16-^ \ff c-^ r8 r4 g'16-^ g-^ r8 r4
  <<{a2 -> a'}{s2 s4 \ff \< s8 s16 s \!}>>
  <<{b1 (}{s2 \ffz \bindDynamics s4 -\tweak #'minimum-length #8 \> s8 s16 s \!}>>
  <<{g1 )}{s4 \p s %{\dim%}}>>
  b,,1 %{\pp%} ~
  b ~
  b4 \partcombineAutomatic r r2
  \partcombineApart
  \repeat unfold 2 R1
  r2 cis'8 \pp ( d g4
  e ) r cis8 ( d g4
  e ) r r2
  \partcombineAutomatic
  R1
  r2 r4 \partcombineApart cis,8 ( %{\p%} d
  ais' \cresc [b]) \partcombineChords fis ( g e' \! d c? \f b )
  \time 2/4
  <<{r8 g' g4}{s8 s \< s s \!}>>
  \time 4/4
  \partcombineApart
  g2 \f ~ g8 r r4
  b,8 \p ( a g \dim d b a g b )
  d4. \pp ( b8 d4. b8
  b'2 ) \partcombineAutomatic b' ~
  b r
  R1 \fermataMarkup

  \bar "|."
}

%{
  ****************************************************************
  *	Clarinette II							                             *
  ****************************************************************
%}

SgMbClarinettoII = \relative c' {

  \include "Common/Properties.ly"

  \TempoII

  \transposition bes
  \repeat unfold 3 R1
  r4 d \pp ( b ) r
  \repeat unfold 5 R1
  r2 b16 \f ( d \dynamicSpannerOff g \dim b d8 ) r \!

  \mark \default    % Mark A - mesure 11

  \repeat unfold 2 R1
  <<{f,2 ( e4 ees}{\rightDynamic s2 \fp \<  s4 \> s8 s16 s \!}>>
  d8 ) r r4 r2
  \repeat unfold 2 R1
  fis4 \< g \f ( a ) r
  R1
  r4 fis,-- \pp ( fis-- ) r
  R1
  r4 fis-- \pp ( fis-- ) r
  \repeat unfold 7 R1
  r2 r4 r8 fis8-> \p ~
  <<{fis1 ~}{s4 s \dim s s \!}>>
  fis1

  \mark \default    % Mark B - mesure 32

  <<{b1}{s4 \pp s \< s s \!}>>
  <<{c1}{{s4 \mf s \> s s8 s \!}}>>
  <<{b1}{s4 \pp \< s s s \!}>>
  <<{c1}{s4 \mf s \> s s \!}>>
  b1 \pp ~
  b8 r16 g' ( a g fis g ) r2
  R1
  e'2 \f \< c \!
  bes4-> \ff d8.-> ( c32 d ) g,4-> c->
  a4-> bes8. ( c32 d ) g,4-> aes->
  <<{ees d ees ees}{s4 s8 \rightDynamic s \dim s4 \> s \!}>>
  ees4 \p ees! \> ( f4. ees8 ) \!

  \mark \default    % Mark C - mesure 44

  ees r r4 r2
  \once \override MultiMeasureRest #'staff-position = #-8
  R1
  ees'16-> ( \f bes ) r g g-> ( bes ) \dim r ees, ees-> ( g ) r bes, bes4
  \once \override MultiMeasureRest #'staff-position = #-8
  R1
  R1
  \partcombineChords
  R1
  \repeat unfold 4 R1
  <<{r4 cis'4 ( a2 )}{s4 \rightDynamic s \f \< s s8 s16 s \!}>>
  cis4-> \ff cis-> bis-> bis->
  b!-> b-> f-> ces'%{->%}
  <<{bes2:16 f:}{s4 s \dim}>>
  <<{ges2: d'!:}{s2 \p \> s4 \!}>>
  ees8 \p r8 r4 r2
  \repeat unfold 3 R1

  \mark \default    % Mark D - mesure 63

  bis16 \ff r8. r8. a!16-. \ff gis-. r8. r4
  \repeat unfold 7 R1
  \once \override MultiMeasureRest #'staff-position = #-6
  R1
  \repeat unfold 7 R1
  r2 r4 fis, \pp (
  a bes c ees )
  fis, ( g a fis )
  a ( bes c ees )
  des8 ( a! bes \< ees des4 bes8. c16 ) \!
  des8 \< ( a! bes aes' g a \! \times 2/3 {bes8 \f b c )}
  f,16-> %{\ff%} f-> f8-> c' [fis,] g16 g g8 d' [gis,]
  a!16-> a-> a8-> e' [ais,] fis!2 \ff
  g4 \fz b \fz c, \fz gis' \fz
  a, \fz ees' \fz a?8 r r4
  a,16-^ \ff a-^ r8 r4 ees'16-^ ees-^ r8 r4
  <<{fis2 -> fis'}{s2 s4 \ff \< s8 s16 s \!}>>
  <<{g1 (}{s2 \ffz \bindDynamics s4 -\tweak #'minimum-length #8 \> s8 s16 s \!}>>
  <<{b,1 )}{\dynamicSpannerOff s4 \p s \dim s \!}>>
  g,1 \pp ~
  g ~
  g4 r r2
  r2 g'2 \pp ( ~
  g e )
  ees ( d )
  cis ( d )
  cis ( d4 ) r
  R1
  r2 r4 cis8 ( \p d
  ais \cresc [b]) fis ( \< g e' \! d c? \f b )
  \time 2/4
  <<{r8 g' g4}{s8 s \< s s \!}>>
  \time 4/4
  <<{g1 ~ }{s4 \f \> s s s8 s \!}>>
  g8 \p r r4 r2
  \override MultiMeasureRest #'staff-position = #-8
  R1
  g2 \pp d' ~
  d r
  R1 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMbClarinettoIAII = \new Voice {
  \time 4/4
  \key g \major
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Clarinetti (B)" I+II}}
  \tag #'conductorScore \tag #'pocketScore {
    \set Staff.shortInstrumentName = \markup {\center-column {"Cl. (B)" I+II}}}
  \tag #'partScore {\set Staff.shortInstrumentName = ""}
  \set Staff.midiInstrument = "clarinet"
  \clef treble
  \partcombine \SgMbClarinettoI \SgMbClarinettoII
}

