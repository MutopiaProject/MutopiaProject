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
  * Fichier de notes, Cors 1 et 2, directrice                           *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ***************************************************************
  *     Cor I                                                   *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMdCornoI = \relative c' {

  \include "Common/Properties.ly"
  \TempoIV
  \transposition f
  \partcombineApart
  e2 \p ( e' ) \<
  dis2. \fz ( c4 )
  a ( b c \> a8 e \!
  gis2. \dim a4 ) \!
  f! ( dis e e-- )
  c2 \pp ( d )
  b1 ~
  b
  \partcombineAutomatic
  \repeat unfold 13 R1
  \partcombineApart
  <<{dis'1 (}{s4 \fz s8 s8 \> s4 s8 s16 s \!}>>
  e2. ) \p r4
  \partcombineAutomatic
  R1
  c1 \fp \> ~
  c2. \p r4
  \repeat unfold 13 R1
  r4 c8 \f c fis,4 g8 g
  a4 b8 b c-. \< cis-. d-. dis-. \!
  e4 \ff r r2
  \mark \default
  \partcombineApart
  dis1-^ \ff ~
  dis2 e->
  \partcombineAutomatic
  e2.-> f4-.
  f2-. e-.
  e4 r d r
  b r r2
  a4 r b r
  b r r2
  \partcombineApartOnce b4 r \partcombineApartOnce d r
  cis r r2
  b4 r e r
  e r r2
  cis4 r d r
  cis r r2
  c!4 r cis r
  e1 \ff
  e2-^ d ~
  d1 ~
  d4 r r2
  \partcombineAutomatic
  \repeat unfold 3 R1
  \TempoIVRit
  R1
  \TempoIVIT
  \mark \default
  \repeat unfold 4 R1
  \partcombineApart d2-> \f dis->
  d!-> \partcombineAutomatic r
  r4 e-. \ff c-. e-.
  \partcombineApartOnce a,2. \partcombineApartOnce b4-.
  \partcombineApartOnce c-. d-. c-. d-.
  b-. c-. d2->
  d-> d->
  d4-. d2-> r4
  c2-> \ff c->
  bes2.-> r4
  \repeat unfold 2 R1
  d2-> \ff d->
  c2. r4
  \repeat unfold 2 R1
  b4 \f r r2
  R1
  \mark \default
  r4 \dynamicSpannerOff d \p r c \dim
  r b r c \!
  b-^ \f r r2
  \repeat unfold 12 R1
  \bar "||"
  \mark \default
  \repeat unfold 13 R1
  \repeat unfold 3 R1
  r2 b-^\f ~
  b1 ~
  b2 b-> \fz ~
  b2. r4
  \repeat unfold 2 R1
  \mark \default
  \repeat unfold 7 R1
  b8 ^\ff
  \repeat unfold 15 b8	% 2 mesures
  cis1-> \fz
  dis-> \fz
  b8 \ff
  \repeat unfold 15 b8	% 2 mesures
  c1-> \fz
  c-> \fz
  b8 \ff b b4.-> b8 b4-> ~
  b8 b b4-> ~ b8 d d4-> ~
  d8 d d4-> ~ d8 c c4-> ~
  c8 b b4.-> b8 b4-> ~
  b8 b b4.-> b8 b4-> ~
  b8 b b4-> ~ b8 \< c8 e4-> \! ~
  e8 d d4.-> c8 c4 ~
  c8 b b4.-> b8 b4
  \bar "||"
  \mark \default
  b4 r r2
  \repeat unfold 17 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \mark \default
  \repeat unfold 4 R1
  \repeat unfold 4 R1
  f1 \pp ~
  f ~
  f4 r r2
  \repeat unfold 18 R1
  \repeat unfold 2 R1
  \dynamicSpannerOff
  \partcombineApart
  r8 c'-. \p \cresc bes-. a-. bes4 c8-. des-.
  r d!-. \< c-. b!-. \! b4 ( a )
  r2 \once \override Voice.DynamicText #'extra-offset = #'(-1.5 . -2) fis'8 \f fis, fis r
  r2 fis'8 fis, fis r
  \partcombineAutomatic
  \repeat unfold 4 R1
  \mark \default
  \repeat unfold 4 R1
  b,1 \f ~
  b2 b4. b8
  b'1 \fz
  fis \fz
  b-^ \ff
  \repeat unfold 3 R1
  \partcombineApartOnce
  c!1-\parenthesize-^ %{\ff%}
  \repeat unfold 5 R1
  \mark \default
  \repeat unfold 8 R1
  r4 ees8 \ff ees a,4 c8 c
  b4 r r2
  r4 f'8 \f f bes,4 d8 d
  cis4 r r2
  r4 des8 \f des g,4 bes8 bes
  a4 r r2
  \repeat unfold 6 R1
  \partcombineApart
  r4 e'8 \mp e dis2
  e8 \> e dis2 e8 e \!
  dis2 \pp e8 e \once \override Slur #'positions = #'(4 . 3) dis4 ( ~
  dis \> e2 dis4 \!
  \mark \default
  cis ) r r2
  \partcombineAutomatic
  \repeat unfold 4 R1
  \partcombineApart
  <<{cis1 ~}{s4 \pp \> s s s8 s \!}>>
  cis1 ~
  cis (
  d4 ) r r2
  \partcombineAutomatic
  \repeat unfold 4 R1
  \partcombineApart
  <<{d1 ~}{s4 \fp \> s s s8 s16 s \!}>>
  d1 \pp ~
  d (
  ees4 ) r r2
  \partcombineAutomatic
  \repeat unfold 13 R1
  \bar "||"
  \mark \default
  e1 \ff (
  c4 ) r c r
  c r c r
  \partcombineApart
  c %{\ff%} d8-. e-. f4 b,8-. c-.
  d4-. b-. gis-. e-.
  \partcombineAutomatic
  c' r d r
  b1-^
  \repeat unfold 13 R1
  \mark \default
  \repeat unfold 2 R1
  R1
  \partcombineApart
  fis'2 ( \mp \> f ~
  <<{f e ~}{s4 s s s8 s16 s \!}>>
  e1 \pp ~
  e )
  \partcombineAutomatic
  \repeat unfold 8 R1
  \bar "||"
  \repeat unfold 8 R1
  \repeat unfold 5 R1
  \partcombineApart
  <<{r4 d4 ( cis2}{s4 \rightDynamic s \mf \< s8 s \! s4 \>}>>
  d4 ) \! r r2
  <<{r4 d4 ( cis2}{s4 \rightDynamic s \< s8 s \! s4 \>}>>
  d4 ) \! r r2
  \partcombineAutomatic
  R1
  R1
  \partcombineApart
  r2 c! ( \f ~
  <<{c4 b c cis )}{s8 s \<}>>
  <<{d4 ( cis d dis )}{s4 s s s8 s \!}>>
  \mark \default
  e2 \ff gis4 ( fis8 e )
  e2 fis4 ( e8 d )
  cis2 e4 ( d )
  cis ( e ) gis ( fis8 e )
  e2 fis4 ( e8 d )
  cis4 ( a' ) fis ( d )
  cis ( a ) fis'4. gis,8
  a4 r r2
  \partcombineAutomatic
  <<{R1}{s4 s s s8 s -\tweak #'extra-offset #'(2 . -1) \ff}>>

  % Pas de saut ici pour ne pas couper le décalage des nuances
  % Le \noBreak est reporté sur les violons I

  e'1-> \fz
  d-> \fz
  \repeat unfold 16 cis8
  c!1 \fz
  d \fz
  e4 \f r d r
  c r d r
  e r d r
  c r b r
  c r e-. d-.
  c r f! r
  e r d r
  c r b r
  \bar "||"
  \mark \default
  c4 r r2
  \repeat unfold 8 R1
  c1-> \ffz
  cis-> \ffz ~
  cis
  e-^ \ffz ~
  e
  d-^ \ffz ~
  d
  ees-^ \ffz
  ees-^ \ffz
  \mark \default
  e4 r r2
  \repeat unfold 5 R1
  r4 bes8 \ff bes e,4 g8 g
  r4 bes8 bes e,4 g8 g
  \partcombineAutomatic
  r2 r8 d' \p d d
  r c c c r d d d
  r c \> c c r d d d
  r c c \! c r c \pp c c
  r c c \! c r b b b
  e1 \ff ~
  e
  e -\parenthesize -^ \ffz ~
  e
  e -\parenthesize -^ \ffz ~
  e
  \partcombineChords
  e-^ \ffz (
  d )
  \partcombineAutomatic
  g-^ \ff
  f2 cis
  d cis
  d2. d4
  r d r d
  r f f f
  d r r2
  \mark \default
  f!4-^ e-^ r2
  e4 r dis r
  e \partcombineApartOnce e, r2
  \TempoIVPAn
  r2 e' \ff
  r c
  r e
  r c
  e \partcombineApart a,
  a1-^ ~
  a4 \partcombineAutomatic r r2
  R1
  R
  %<<{
  e'4 \f r e r
  \repeat unfold 5 {e r e r}
  %}
  %\new Voice
  % {
  %	\set countPercentRepeats = ##t
  %	\override PercentRepeat #'transparent = ##t
  %	\override PercentRepeatCounter #'staff-padding = #1
  %	\repeat percent 6 {s1}
  %}>>
  \TempoIVMMaes
  \partcombineApart
  a,1-^ \ff
  e'-^
  d2.-> e4->
  \partcombineAutomatic
  f1->
  e-^
  d-^
  e-^ \fz
  e-^ \fz
  e-^ \fz
  e4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ****************************************************************
  *     Cor IV                                                   *
  ****************************************************************
%}

SgMdCornoII = \relative c'' {

  \include "Common/Properties.ly"
  \TempoIV
  \transposition f
  \override MultiMeasureRest #'staff-position = #-6
  R1
  <<{a1~}{s4 \fz \> s s s8 s16 s \!}>>
  \once \override NoteColumn #'force-hshift = #1.1 a4 r \once \override Rest #'staff-position = #-6 r2
  R1
  \override MultiMeasureRest #'staff-position = #-7.5
  \repeat unfold 2 R1
  \override MultiMeasureRest #'staff-position = #-8.5
  \repeat unfold 2 R1
  \revert MultiMeasureRest #'staff-position
  \override MultiMeasureRest #'staff-position = #-4
  \repeat unfold 13 R1
  \override MultiMeasureRest #'staff-position = #-4
  \repeat unfold 2 R1
  R1
  \hairpinToBarLineFalse
  a1 \fp \> ~
  a2. \p r4
  \repeat unfold 13 R1
  r4 c8 \f c fis,4 g8 g
  a4 b8 b c-. \< cis-. d-. dis-. \!
  e4 \aIIP \ff r r2
  \mark \default
  dis1-^ \ff ~
  dis2 e->
  e2.-> f4-.
  f2-. e-.
  e4 r d r
  b r r2
  a4 r b r
  e, r r2
  b'4 r d r
  cis r r2
  b4 r b r
  cis r r2
  cis4 r d r
  cis r r2
  c!4 \aII r cis r
  gis1 \ff
  gis2-^ gis ~
  gis1 ~
  gis4 r r2
  \repeat unfold 3 R1
  \TempoIVRit
  R1
  \TempoIVIT
  \mark \default
  \repeat unfold 4 R1
  \repeat unfold 2 R1

  r4 e-. \ff c-. e-.
  a2. b4-.
  c-. b-. a-. a-.
  gis-. a-. b2->
  e,-> f!->
  fis4-. g!2-> r4

  c,2-> \ff c->
  g'2.-> r4
  \repeat unfold 2 R1
  d2-> \ff d->
  a'2. r4
  \repeat unfold 2 R1
  gis4 \f r r2
  R1
  \mark \default
  r4 \dynamicSpannerOff b \p r g! \dim
  r gis r a \!
  gis-^ \f r r2
  \repeat unfold 12 R1
  \bar "||"
  \mark \default
  \repeat unfold 13 R1
  \repeat unfold 3 R1
  r2 b,-^\f ~
  b1 ~
  b2 b-> \fz ~
  b2. r4
  \repeat unfold 2 R1
  \mark \default
  \repeat unfold 7 R1
  e8 ^\ff
  \repeat unfold 15 e8	% 2 mesures
  e1-> \fz
  fis-> \fz
  e8 \ff
  \repeat unfold 15 e8	% 2 mesures
  ees1-> \fz
  d-> \fz
  b'8 \ff b b4.-> b8 b4-> ~
  b8 b b4-> ~ b8 d d4-> ~
  d8 d d4-> ~ d8 c c4-> ~
  c8 \aII b b4.-> b8 b4-> ~
  b8 \aIIP b b4.-> b8 b4-> ~
  b8 b b4-> ~ b8 \< c8 e4-> \! ~
  e8 d d4.-> c8 c4 ~
  c8 b b4.-> b8 b4
  \bar "||"
  \mark \default
  b4 \aIIP r r2
  \repeat unfold 17 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \mark \default
  \repeat unfold 4 R1
  \repeat unfold 4 R1
  f,1 \pp ~
  f ~
  f4 r r2
  \repeat unfold 18 R1
  \repeat unfold 2 R1
  \repeat unfold 2 R1
  \override MultiMeasureRest #'staff-position = #-6
  \repeat unfold 2 R1
  \repeat unfold 4 R1
  \mark \default
  \repeat unfold 4 R1
  b1 \f ~
  b2 b4. b8
  b'1 \fz
  fis \fz
  b-^ \ff
  \repeat unfold 3 R1
  c!1-\parenthesize-^ \ff
  \repeat unfold 5 R1
  \mark \default
  \repeat unfold 8 R1
  r4 ees8 \ff ees a,4 c8 c
  b4 \aII r r2
  r4 f'8 \f f bes,4 d8 d
  cis4 r r2
  r4 des8 \f des g,4 bes8 bes
  a4 r r2
  \revert MultiMeasureRest #'staff-position
  \repeat unfold 6 R1
  \override MultiMeasureRest #'staff-position = #-4
  \repeat unfold 4 R1
  \mark \default
  \repeat unfold 30 R1
  \bar "||"
  \mark \default
  c1 \ff (
  a4 ) r a r
  a r a r
  c \ff d8-. e-. f4 b,8-. c-.
  d4-. b-. gis-. e-.
  a r bes r
  gis1-^
  \repeat unfold 13 R1
  \mark \default
  \repeat unfold 3 R1
  \override MultiMeasureRest #'staff-position = #-4
  \repeat unfold 4 R1
  \repeat unfold 8 R1
  \bar "||"
  \repeat unfold 22 R1
  \mark \default
  \repeat unfold 8 R1
  <<{R1}{s4 s s s8 s -\tweak #'extra-offset #'(2 . -1) \f}>>
  e1-> \fz
  b'-> \fz
  \repeat unfold 16 a8
  aes1 \fz
  g \fz



  g4 \f r gis r
  a r b r
  c r b r
  a r gis r
  a r g!-. gis-.
  a r b r
  c r bes r
  a r gis r
  \bar "||"
  \mark \default
  a4 r r2
  \repeat unfold 8 R1
  c1-> \ffz
  cis->  \ffz ~
  cis
  cis-^ \ffz ~
  cis
  d,-^ \ffz ~
  d
  ees-^ \ffz
  ees-^ \ffz
  \mark \default
  e4 r r2
  \repeat unfold 5 R1
  r4 bes'8 \ff bes e,4 g8 g
  r4 bes8 bes e,4 g8 g
  r2 r8 bes \p bes bes
  r f f f r bes bes bes
  r f \> f f r bes bes bes
  r f f \! f r a \pp a a
  r a a \! a r e e e
  c'1 \ff ~
  c
  cis -\parenthesize -^ \ffz ~
  cis
  cis -\parenthesize -^ \ffz ~
  cis
  a-^ \ffz ~
  a
  a-^ \ff
  a2 g
  f g
  bes2. bes4
  r bes r bes
  r d d d
  b! r r2
  \mark \default
  b4-^ g!-^ r2
  g4 r a r
  gis e r2
  \TempoIVPAn
  r2 e \ff
  r c
  r e
  r c
  e a
  a1-^ ~
  a4 r r2
  R1
  R
  %<<{
  e4 \f r e r
  \repeat unfold 5 {e r e r}
  %}
  %\new Voice
  % {
  %	\set countPercentRepeats = ##t
  %	\override PercentRepeat #'transparent = ##t
  %	\override PercentRepeatCounter #'staff-padding = #1
  %	\repeat percent 6 {s1}
  %}>>
  \TempoIVMMaes
  a1-^ \ff
  e'-^
  d2.-> e4->
  d1->
  cis-^
  a-^
  cis-^ \fz
  cis-^ \fz
  cis-^ \fz
  cis4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdCornoIAII = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corni (F)" I+II}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Cor. (F)" I+II}}
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \partcombine \SgMdCornoI \SgMdCornoII
}

