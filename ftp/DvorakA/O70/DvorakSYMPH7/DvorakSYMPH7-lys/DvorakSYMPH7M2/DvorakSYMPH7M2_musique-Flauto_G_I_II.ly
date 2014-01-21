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
  ***************************************************************
  *     Flûte I                                                 *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMbFlautoI = \relative c'' {

  \include "Common/Properties.ly"

  \TempoII

  \repeat unfold 9 R1
  <<{r4 f2 \f ~ f16 f ( a c )}{s4 s \f s8 s \dim}>>

  \mark \default    % Mark A - mesure 11

  f2 \pp ( e4.\<  c8 ) \!
  e2-> \> ( d8 ) \! r d8. \p \< ( bes'16 ) \!
  \partcombineAutomatic
  <<{bes4. ( a8 ~ a g f16 e! f g}{\dynamicSpannerOff s8 \fz s4. \dim s4 \> s8 s16 s \!}>>
  e8 ) r8 ees4. %{\p%} ( ees8 ~ ees16 d? ees f
  d8 ) r des4 %{\pp%} ( ~ des8 des ~ des16 c des ees
  c8 ) r c4 %{\<%} ( b8 g f f' ) \!
  e8 %{\<%} ( c bes bes' %{\f%} ~ bes16 ) g8 ( e16 \times 4/5 {c16 des! bes g f}
  e8 ) r r4 r2
  \repeat unfold 8 R1
  \partcombineApart
  r8.. \once \override Hairpin #'rotation = #'(8 0 0) bes'32 \p \< ( c8.. des32 ) \! g,8-. \f r16. e'32 \< f8.. g32 \!
  des8 \ff r16. g32 a8.. bes32 e,16 ( f g bes, c \> des! e, f \!
  g8 ) r r4 r2
  \partcombineAutomatic
  \repeat unfold 2 R1

  \mark \default    % Mark B - mesure 32

  R1
  \partcombineApart
  r4 bes'8. ( \mp \once \override Hairpin #'rotation = #'(-5 0 0) g16 \> e8. c16 bes8. c16 \!
  a8 ) \pp r r4 r2
  <<
    {r4 bes'8. ( g16 e8. c16 bes8. d32 c )}
    {s4 \once \override Hairpin #'rotation = #'(-5 0 0) s4 \mp \> s4 s16 s16 \! s16 s \pp}
  >>
  a'8. ( f16 c4 ) r2
  \partcombineAutomatic
  r2 r8. a16 \pp ( bes a g a )
  bes8 ( a gis a \< gis a gis a ) \!
  f'2 \f \< e \!
  \partcombineApart
  f4-> %{\ff%} c8. ( bes32 c ) aes4-> des->
  ees-> c8. ( bes32 c ) \partcombineAutomatic aes!4-> bes->
  <<{f4 \partcombineUnisono aes8.( ees32 aes ) f4 ( ges )}{s4 s8 s \dim s4 \> s \!}>>
  f4 \aIIP \p ( des ) \> ees4. ( des8 ) \!

  \mark \default    % Mark C - mesure 44

  des4 \aII r r2
  \repeat unfold 3 R1
  \partcombineApart
  gis'4 \Solo \p ( fis8. e!16 b8. [gis16 fis8. e16])
  \once \override Slur #'positions = #'(2 . 9.5)
  \once \override Slur #'extra-offset = #'(0 . 1.3)
  b2 ( ~ \times 2/3 {
    \once \override Hairpin #'rotation = #'(13.6 0 0)
    \once \override DynamicLineSpanner #'avoid-slur = #'inside
    \once \override Hairpin #'extra-offset = #'(0 . -1.76)
    %\once \override Hairpin #'Y-extent = #'(-0.0 . 0.0)
    \once \override DynamicLineSpanner #'outside-staff-priority = ##f
    b8 \< e gis
  }
  b16[ e a-. \tweak #'extra-offset #'(-0.5 . 3 ) r32 \! gis]-. )
  \dynamicSpannerOff
  \partcombineChords
  <<{gis16 ( fis ) r e-. e ( dis ) r cis-. cis ( b! ) r a-. \partcombineAutomatic a ( gis! fis e )}
    {s4 \f s s8 s16 s32 \dim s \!}>>
  <<{
      \once \override NoteColumn #'force-hshift = #0.7
      g!4. ( fis16 e \once \override NoteColumn #'force-hshift = #0.7
      \once \override Beam #'positions = #'(5.0 . 5.9) d8 [b' c!8. fis,!16]
    }
    {s8 s %{\>%} s4 s %{\p%}}>>
  \once \override NoteColumn #'force-hshift = #0.4 g4 ) r r2
  \partcombineUnisono
  R1
  \partcombineApart
  <<{r4 b2.}{s4 s \fz \< s s8 s16 s \!}>>
  \partcombineAutomatic
  \set Staff.aDueText = ""
  d4-^ \ff d,-^ cis-^ cis'-^
  \unset Staff.aDueText
  c!-^ c,?-^ dis-^ \partcombineApart
  \once \override NoteColumn #'force-hshift = #-0.5 \tweak Stem #'direction #DOWN dis'-^ ~
  \dynamicSpannerOff
  dis cis8. %{\dim%} gis!16 \! b4 ( a )
  \partcombineAutomatic
  \once \override NoteColumn #'force-hshift = #-0.55 gis2 %{\p \>%} ( gis'4.. ) \! gis16
  gis4 %{\p%} ( e8. bis16 cis!4. ) r8
  \partcombineApart
  fis4 ( \< cis8. ais16 b4. ) \! r8
  <<{g'!4 ( e8. ais,16 b4. ) r8}{s4 \p s \> s s \!}>>
  e4 \pp \< ( c8. g16 a?4. ) \! r8
  \partcombineAutomatic

  \mark \default    % Mark D - mesure 63

  fis'16 \ff r r8 r4 r2
  \dynamicSpannerOff
  \partcombineApart
  r16 bis,16-. \mp cis8 ~ cis16 bis-. cis8 \dim ~ cis16 dis-. cis8 ~ cis16 bis-. cis8 \! ~
  cis16 bis-. cis8 ~ cis16 dis-. cis8 ~ cis16 bis-. cis8 ~ cis16 bis-. cis8 ~
  cis16 dis-. cis8 ~ cis16 bis-. \cresc cis8 ~ cis16 bis-. cis8 ~ cis16 e-. d!8 \! ~
  d16 dis-. e8 ~ e16 eis-. fis8 \f ~ fis16 ( e! d! b! gis e d b
  gis8 ) r r4 r2
  \partcombineAutomatic
  R1
  \partcombineApart
  r4 c'4 \p ( d4. f8 )
  \once \override Hairpin #'rotation = #'(-8 -0.6 0) a ( \> f c a c2 ) \!
  \partcombineAutomatic
  c16 \p ( a f ) r c' ( a f ) r c' ( e, c ) r c' ( e, c ) r
  cis' ( g e ) r cis' ( g e ) r d' (\< f, d ) r d' ( bes f ) \! r
  ees' \fz ( c fis,! ) r ees' ( c fis, ) r d' \> ( bes g ) r des' ( bes f! ) \! r
  c' \p ( g e ) r a \> ( ees! c ) r fis ( ees c ) \! r fis ( ees c ) r
  g' ( d bes ) r \partcombineApart g' \pp ( des bes ) \partcombineAutomatic r ees! ( bes g ) r e'! ( des! g, ) r
  f' ( c a ) r \cresc a' ( f c ) r g' ( \< f b,! ) r b' ( f b, ) \! r
  c' ( \f \< g e ) r des' ( bes f \! ) r g'8 \ff r r4
  \partcombineApart
  r2 r4 e, \pp -\tweak #'positions #'(4 . 5) (
  g aes bes des, )
  e ( f g e )
  g ( aes bes des )
  ces8 ( g! aes \< des ces4 aes8. bes16 ) \!
  \once \override Hairpin #'rotation = #'(8 0 -20) ces8 ( \< g! aes ges' f g! \times 2/3 {aes8 \f [a bes!])}
  \override Rest #'staff-position = #9
  bes8 r r4 r2
  \revert Rest #'staff-position
  \partcombineAutomatic
  r2 \partcombineApart e,! %{\ff%}

  % necessité de tricher sur les trilles : les deux voix sont rassemblées en une
  % la seconde voix est faite de silences invisibles
  %	Parties
  %{	\afterGrace {a,4-> \fz \startTrillSpan}{gis16 \stopTrillSpan ([a])}
        \afterGrace {ees'4-> \fz \startTrillSpan}{d16 \stopTrillSpan ([ees])}
        \afterGrace {f,4-> \fz \startTrillSpan}{e!16 \stopTrillSpan ([f])}
        \afterGrace {c'4-> \fz \startTrillSpan}{b16 \stopTrillSpan ([c])}
        \afterGrace {d,4-> \fz \startTrillSpan}{cis16 \stopTrillSpan ([d])}
        \afterGrace {f4-> \fz \startTrillSpan}{e!16 \stopTrillSpan ([f])}
  %}

  %	Directrice
  \poly {
    \afterGrace {a,4-> \startTrillSpan}{gis16 \stopTrillSpan ([a])}
    \afterGrace {ees'4-> \startTrillSpan}{d16 \stopTrillSpan ([ees])}
    \afterGrace {
      \once \override TextScript #'extra-offset = #'(0.0 . -0.5)
      \once \override TrillSpanner #'extra-offset = #'(0.0 . -1 )
      \once \override TrillSpanner #'outside-staff-priority = #500
      f,4-> ^\markup {\tiny \natural} \startTrillSpan
    }{e!16 \stopTrillSpan ([f])}
    \afterGrace {c'4-> \startTrillSpan}{b16 \stopTrillSpan ([c])}
    \afterGrace {
      \once \override TextScript #'extra-offset = #'(0.0 . 0)
      \once \override TrillSpanner #'extra-offset = #'(0.0 . -0.5 )
      \once \override TrillSpanner #'outside-staff-priority = #500
      d,4-> ^\markup {\tiny \flat} \startTrillSpan
    }{cis16 \stopTrillSpan ([d])}
    \afterGrace {f4-> \startTrillSpan}{e!16 \stopTrillSpan ([f])}
    e8
  }
  {
    \afterGrace {a4 \fz \startTrillSpan}{gis16 \stopTrillSpan ([a])}
    a4 \fz
    \afterGrace {
      f4 _\markup {\tiny \natural} -\tweak #'outside-staff-priority #2000
        -\tweak #'X-offset #-4.5 -\tweak #'Y-offset #-3.5 \fz \startTrillSpan
    }
    {e!16 \stopTrillSpan ([f])}
    \afterGrace {c'4 \fz \startTrillSpan}{b16 \stopTrillSpan ([c])}
    \afterGrace {
      d,4 _\markup {\tiny \flat} -\tweak #'outside-staff-priority #2000
        -\tweak #'X-offset #-4.5 -\tweak #'Y-offset #-3.5 \fz \startTrillSpan
    }
    {cis16 \stopTrillSpan ([d])}
    \afterGrace {f4 \fz \startTrillSpan}{e!16 \stopTrillSpan ([f])}
    e8
  }

  \partcombineAutomatic
  r8 r4
  R1
  <<{r2 e'}{s2 s4 \ff \< s8 s16 s \!}>>
  <<{a1 (}{s2 %{\ffz%} s4 %{\>%} s8 s16 s \!}>>
  <<{f1 ) ~}{\once \override Voice.Hairpin #'stencil = ##f s4 %{\p \>%} s %{\dim%}}>>
  f8 %{\pp%} \partcombineChords r r4 r2
  \repeat unfold 6 R1
  \partcombineApart
  \override Rest #'staff-position = #4
  r2 b,,8 \p ( c f4 )
  b,8 ( c f4 ) b,16 ( c b c f4 )
  b,16 ( c b c f4) b,!8 %{\bracketedP \<%}  ( c a'4 ) \!
  e8 \cresc ( f c'4 ) gis!8 ( a d %{\f%} c )
  \time 2/4
  e ( %{\<%} [f g gis]) \!
  \time 4/4
  \mergeDifferentlyDottedOn
  a4 _\f ( _\> g!8. f16 c8. [a16 g8. f16] \!
  c4. ) _\p r8 r2
  \partcombineAutomatic
  R1
  r2 f'2 \pp ~
  f r
  R1 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  *	Flûte II                                                *
  ***************************************************************
%}

SgMbFlautoII = \relative c'' {

  \include "Common/Properties.ly"

  \TempoII

  \repeat unfold 9 R1
  <<{r4 f2 \f ~ f16 f ( a c )}{s4 s \f s8 s \dim}>>

  \mark \default    % Mark A - mesure 11

  a2 \pp ( c4.\<  e,8 ) \!
  c'2-> \> ( bes8 ) \! r bes8. \p \< ( d16 ) \!
  <<{ees2 ( d4 des}{\dynamicSpannerOff s8 \fz s4. \dim s4 %{\>%} s8 s16 s \!}>>
  c8 ) r8 a2 \p a4 (
  bes8 ) r g2 \pp g4 (
  a!8 ) r f2 \< f8 ( b! ) \!
  c8 \< ( e, f des' ) \f ~ des16 ( c8 g16 e8 ) r
  \repeat unfold 14 R1

  \mark \default    % Mark B - mesure 32

  \repeat unfold 5 R1
  r2 r8. f16 \pp ( g f e f )
  g8 ( f e f \< e f e f ) \!
  d'2 \f \< c \!
  c4-> \ff c8. ( bes32 c ) aes4-> des->
  g,4-> aes-> aes-> bes->
  <<{f4 aes8.( ees32 aes ) f4 ( ges )}{s4 s8 s \dim s4 \> s \!}>>
  f4 \p ( des ) \> ees4. ( des8 ) \!

  \mark \default    % Mark C - mesure 44

  des4 r r2
  \repeat unfold 5 R1
  \dynamicSpannerOff
  <<{e'16 ( b ) r gis-. gis ( b ) r e,-. e ( gis ) r b,-. b8 ( b'? ) ~}{s4 \f s s8 s16 s32 \dim s \!}>> 
  <<{
      \once \override Stem #'length = #8 b8 ( c4 d16 e
      \once \override Tie #'Y-offset = #1.4 d2 ) ^~
    }{s8 s \> s4 s \p}>>
  d4 r r2
  R1
  <<{r2 g,2}{s2 \bracketedHairpin s4 \f -\tweak #'X-offset #1.8 \< s8 s16 \!}>>
  b4-^ \ff b,-^ ais-^ ais'-^
  a!-^ a,?-^ a-^ a'%{-^%}
  <<{gis2:16 a:}{\dynamicSpannerOff s4 s \dim s \!}>>
  <<{\once \override NoteColumn #'force-hshift = #0.55 gis2: bis:}{s2 \p \> s4 \!}>>
  cis8 \p r r4 r2
  \repeat unfold 3 R1

  \mark \default    % Mark D - mesure 63

  cis16 \ff r r8 r4 r2
  \repeat unfold 8 R1
  a16 \p ( f c ) r a' ( f c ) r e ( c g ) r e' ( c a ) r
  g' ( e cis ) r g' ( e cis ) r f (\< d bes ) r bes' ( f d ) \! r
  c'? \fz ( fis, ees ) r c' ( fis, ees ) r bes' \> ( g d ) r bes' ( f! des ) \! r
  g \p ( e? c ) r ees! \> ( c a ) r ees' ( c a )\! r ees' ( c a ) r
  d ( bes g ) r ees' \pp ( des g, ) r des' ( g, ees ) r des' ( g, e! ) r
  c' ( a f ) r \cresc f' ( c a ) r f' ( \< b, g ) r f' ( b, g ) \! r
  g' ( \f \< e bes! ) r bes'? ( f des \! ) r des'!8 \ff r r4
  \repeat unfold 7 R1
  r2 e! \ff

  % parties
  %{	\afterGrace {a,4-> \fz \startTrillSpan}{gis16 \stopTrillSpan ([a])}
        a4-> \fz
        \afterGrace {f4-> \fz \startTrillSpan}{e!16 \stopTrillSpan ([f])}
        \afterGrace {c'4-> \fz \startTrillSpan}{b16 \stopTrillSpan ([c])}
        \afterGrace {d,4-> \fz \startTrillSpan}{cis16 \stopTrillSpan ([d])}
        \afterGrace {f4-> \fz \startTrillSpan}{e!16 \stopTrillSpan ([f])}
        e8 r r4
        R1
        <<{r2 bes'}{s2 s4 \ff \< s8 s16 s \!}>>%}
  % Directrice
  s1
  s2
  s8 r r4
  R1
  <<{r2 bes}{s2 s4 \ff \< s8 s16 s \!}>>
  <<{f'1 ~}{s2 \ffz \bindDynamics s4 -\tweak #'minimum-length #8 \> s8 s16 s \!}>>
  <<{f1 ~}{\once \override Voice.Hairpin #'stencil = ##f s4 \p \> s \dim}>>
  f8 \pp r r4 r2
  \repeat unfold 8 R1
  r2 b,,!8 \bracketedP \<  ( c f4 \!
  c4 ) %{\cresc%} gis'8 ( a ) e ( f gis \f a )
  \time 2/4
  <<{b2}{s8 \< s s s \!}>>
  \time 4/4
  c2 %{\f \>%} ~ c8 \! r r4
  \repeat unfold 2 R1
  r2 a2 \pp ~
  a r
  R1 \fermataMarkup

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMbFlautoIAII = \new Voice {
  \time 4/4
  \key f \major
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Flauto" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Fl." I+II}}
  \set Staff.midiInstrument = "flute"
  \clef treble
  \partcombine \SgMbFlautoI \SgMbFlautoII
}

