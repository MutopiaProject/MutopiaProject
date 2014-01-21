%{
  ***********************************************************************
  * Dvořák - Symphony nr 7                                              *
  *                                                                     *
  * encodage par J.F. Lucarelli                                         *
  * 18/11/12 - 01/11/2013                                               *
  * Ver 0.0 : 04/09/2013                                                *
  * Ver 1.0 : 01/11/2013                                                *
  *                                                                     *
  * Symphonie n°7	: mouvement IV - Finale allegro                       *
  * Fichier de notes, Cors 3 et 4, directrice                           *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ****************************************************************
  *       Cor 3                                                  *
  ****************************************************************
%}

\include "Common/Version.ly"

SgMdCornoIII = \relative c' {

  \include "Common/Properties.ly"
  \TempoIV
  \transposition d
  R1
  c1 \fz \> ~
  <<{c1}{s4 s s s8 s \!}>>
  \repeat unfold 5 R1
  g'2 \pp g
  g2. g4
  g2 g
  \partcombineApartOnce
  g,1
  <<{g'2 g}{s4 s \< s s8 s16 s \!}>>
  g2. \> g4 \!
  g2 \partcombineApart g, ~
  g1
  \TempoIVPPCresc
  g1 %{\p%} ~
  g1 % \fp
  g ~
  g % \fz
  g
  g'4 %{\fz%} \partcombineAutomatic r r2
  \repeat unfold 2 R1
  g1 %{\fp \>%} ~
  g %{\p%} ~
  <<{g1 ~}{s4 -\tweak #'stencil ##f \p s s \>}>>
  <<{g1 ~}{s4 s \!}>>
  g2 ( aes ~
  aes1 ~
  aes4 ) r r2
  \repeat unfold 3 R1
  <<{c1 ~}{s4 \p \< s s s8 s \!}>>
  <<{c1 ~}{s4 \fz \> s s \!}>>
  <<{c1 ~}{s4 \p \< s s s8 s \!}>>
  <<{c1}{s4 \fz -\tweak #'minimum-length #8 \> s s \!}>>
  <<{c1 ~}{s4 \p \< s s s8 s \!}>>
  <<{c1~}{s4 \fz \> s s s8 s \!}>>
  c4 r r2
  R1
  \mark \default
  g1-^ \ff
  c-^
  \partcombineApartOnce ees2.-> ees4-.
  ees-. f-. d2
  r4 c8 \f c f,4 aes8 aes
  g2 -\parenthesize -. r
  r4 ees'8 es aes,4 c8 c
  g2 -\parenthesize -. r
  r4 g'8 g bes,4 f'8 f
  e!2-. r
  r4 g8 g bes,4 d8 d
  cis2-. r
  r4 g'8 g d4 f!8 f
  e2-. r
  r4 g8 \ff g b,4-> e8 e
  \partcombineApartOnce
  e1-^ %{\ff%}
  f2-^ d ~
  d1 ~
  d4 r r2
  \repeat unfold 3 R1
  \TempoIVRit
  R1
  \mark \default
  \TempoIVIT
  \repeat unfold 4 R1
  d2-> \f d->
  d-> r
  r4 \partcombineApart c2-> %{\ff%} d8-. d-.
  ees-. ees-. f4-. g-. \partcombineAutomatic bes-.
  g-. f-. ees!-. f-.
  d-. c-. b!2->
  d-> d->
  d4-. d2-> r4
  bes2-> \ff bes->
  bes2.-> r4
  \repeat unfold 2 R1
  c2-> \ff c->
  c2.-> r4
  \repeat unfold 2 R1
  g4 \f r r2
  R1
  \mark \default
  \repeat unfold 15 R1
  \bar "||"
  \mark \default
  \repeat unfold 4 R1
  r4 d'2 \p d4 ~
  d d2 d4
  r b r d
  r dis2 dis4
  e r r2
  \repeat unfold 4 R1
  r4 \hairpinToBarLineFalse e \<  ( f e8 \! d8 \>
  e4 \! ) r r2
  r4 \hairpinToBarLineFalse e \< ( f e8 \! d8 \>
  e4 \! ) r d,2-^ ~
  d1
  r2 d, \fz ~
  d2. r4
  r2 g'-> -\tweak #'X-offset #-4 \f ~
  g1
  \mark \default
  d'1-^ \f ~
  d ~
  d
  d-^ \f ~
  d
  \partcombineApart
  d4 ( g ) e ( c )
  b ( a8 g ) e'4. ( d8-. )
  b8 \ff
  \repeat unfold 15 b8
  %	b2:8 \ff b:
  %	b: b:
  \partcombineAutomatic
  d1-> \fz
  c-> \fz
  b8 \ff
  \repeat unfold 15 b8
  %	b2:8 \ff b:
  %	b: b:
  bes1-> \fz
  c-> \fz
  \partcombineChords
  d4 \f r d r
  d r \partcombineApartOnce a r
  d r \partcombineApartOnce a r
  d r d r d r d-. d-.
  d r \partcombineApartOnce a r
  d r c r
  bes r a? r
  \partcombineAutomatic
  \mark \default
  \bar "||"
  bes4 r r2
  \repeat unfold 7 R1
  g1 \p ~
  g ~
  g ~
  g ~
  g
  d4 \override Rest #'staff-position = #0 r r2
  \override MultiMeasureRest #'staff-position = #0
  \repeat unfold 4 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \TempoIVIT
  \mark \default
  \repeat unfold 25 R1
  \repeat unfold 4 R1
  \partcombineApart
  \once \override Voice.TextScript #'X-offset = #3
  d'4 \p \Solo cis8 b cis4 d8 e
  r e d cis cis4 ( b )
  \partcombineAutomatic
  \repeat unfold 4 R1
  cis4 \f r e \< r
  e r g \! r
  g \ff r r2
  R1
  \mark \default
  \repeat unfold 4 R1
  d,1 \f ~
  d2 d4. d8
  d'1 \fz
  a \fz
  d-^ \ff
  \repeat unfold 3 R1
  \partcombineApartOnce
  c1-\parenthesize-^ %\ff
  \repeat unfold 5 R1
  \mark \default
  \partcombineApart
  \override MultiMeasureRest #'staff-position = #2
  R1
  R1
  \revert MultiMeasureRest #'staff-position
  \partcombineAutomatic
  \repeat unfold 5 R1
  r4 e8 \ff e a,4 cis8 cis
  gis4 r r2
  \repeat unfold 2 R1
  r4 d'8 \ff d g,4 b8 b
  fis4 r r2
  R1
  r4 b \f r b
  r b r b
  b r r2
  r2 r4 fis'8 \f fis
  fis4 r r2
  \repeat unfold 5 R1
  \mark \default
  \repeat unfold 26 R1
  \repeat unfold 4 R1
  \bar "||"
  \mark \default
  g,1 \ff ~
  g4 r r2
  \repeat unfold 2 R1
  r2 r4 d' \ff
  ees r f r
  d1-^
  r2 g,4 \f r4
  \repeat unfold 2 {r2 g4 r4}
  \repeat unfold 5 {r2 g4 r4}
  \repeat unfold 5 {r2 g4 r4}
  \mark \default
  \partcombineApart
  g1 %{\fz \>%} ~
  <<{g}{s4 %{s s s8 s16 s \!%}}>>
  g1 %\p
  g1 \fp ~
  g ~
  g ~
  g ~
  \override Rest #'staff-position = #4
  g4 r r2
  \override MultiMeasureRest #'staff-position = #4
  \repeat unfold 7 R1
  \bar "||"
  R1
  \partcombineAutomatic
  \revert MultiMeasureRest #'staff-position
  \repeat unfold 7 R1
  \partcombineApart
  \TempoIVTran
  \once \override Slur #'positions = #'(4 . 3.2) e'2\p \Solo ( gis4 fis8 e
  e1 )
  \once \override Slur #'positions = #'(4 . 3.2) e2 \pp ( g!4 f!8 e
  e1 ) ~
  e4 r r2
  \partcombineAutomatic
  \repeat unfold 3 R1
  r2 g,2-^ ~
  g1 ~
  \once \override NoteColumn #'force-hshift = #0.5 g2 g-^ ~
  g2. r4
  r2 c \f ~
  c2. \< c4 \fz
  \mark \default
  g4 \ff r8 g g4 r8 g
  \repeat unfold 4 {g4 r8 g g4 r8 g}
  g4 r8 g c4 r8 c
  e4 r8 e f4 r8 f
  e8 \ff
  \repeat unfold 15 e8
  %	e2:8 \ff e:
  %	e: e:
  ees1-> \fz
  d \fz
  \partcombineApartOnce c4 r r2
  \repeat unfold 3 R1
  bes4 \f r b r
  c r bes r
  bes r aes r
  g r g r
  g r g-. g-.
  g r bes r
  bes r aes r
  g r f' r
  \bar "||"
  \mark \default
  ees r r2
  R1
  \partcombineUnisono
  \set Staff.soloText = #"a2"
  ees1 \fz ( ~
  <<{ees}{s4 \> s s s8 s \!}>>
  e!4 ) \p r r2
  \partcombineAutomatic
  R1
  <<{ees1 ~}{s4 \fz \> s s s8 s \!}>>
  ees1 ~
  ees4 \f r r2
  a,1-> \ffz
  des-> \ffz ~
  des
  e!-^\ffz ~
  e
  c-^ \ffz ~
  c
  c-^ \ffz
  c-^ \ffz
  \mark \default
  ees4 r r2
  r4 g,-> \f c,-> d->
  ees-> g-> a-> b->
  c-> d-> ees-> e->
  f2-> bes,4-> aes->
  g1
  e'!2 \ff r
  e \ff r
  e4 r r2
  \repeat unfold 2 R1
  r2 r8 g,4. \pp
  r8 \partcombineApartOnce g,4. r8 \partcombineApartOnce g4.
  c'1 \ff ~
  c
  c-^ \ffz ~
  c
  c-^ \ffz ~
  c
  c-^ \ffz ~
  c
  c-^\ff
  c2 c
  c c
  aes2. aes4
  r aes r aes
  r \partcombineApart aes des c
  b! \partcombineAutomatic r r2
  \mark \default
  d!4-^ des-^ r2
  des4 r c r
  d! \partcombineApartOnce g, r2
  \TempoIVPAn
  r2 ees' \ff
  r c
  r ees
  r c
  c \partcombineApart c
  c1 ~
  c4 \partcombineAutomatic r r2
  \repeat unfold 2 R1
  g4 \f r g r
  \repeat unfold 5 {g r g r}
  \TempoIVMMaes
  \partcombineApartOnce
  c,1-^
  c'-^
  c-^
  c-^
  c-^c-^
  g-^\fz
  g-^\fz
  g-^\fz
  g4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ***************************************************************
  *     Cor IV                                                  *
  ***************************************************************
%}

SgMdCornoIV = \relative c {

  \include "Common/Properties.ly"
  \TempoIV
  \transposition d
  R1
  c1 \fz \> ~
  <<{c1}{s4 s s s8 s \!}>>
  \repeat unfold 5 R1
  g'2 \pp g
  g2. g4
  g2 g
  g1
  <<{g2 g}{s4 s \< s s8 s16 s \!}>>
  g2. \> g4 \!
  g2 g ~
  g1
  \TempoIVPPCresc
  g1 \p ~
  g1 \fp
  g ~
  g \fz
  g
  g'4 \fz r r2
  \repeat unfold 2 R1
  \hairpinToBarLineFalse
  g,1 \fp \> ~
  g \p ~
  g1 \pp ~
  g4 r r2
  \repeat unfold 6 R1
  <<{c1 ~}{s4 \p \< s s s8 s \!}>>
  <<{c1 ~}{s4 \fz \> s s \!}>>
  <<{c1 ~}{s4 \p \< s s s8 s \!}>>
  <<{c1}{s4 \fz -\tweak #'minimum-length #8 \> s s \!}>>
  <<{c1 ~}{s4 \p \< s s s8 s \!}>>
  <<{c1~}{s4 \fz \> s s s8 s \!}>>
  c4 r r2
  R1
  \mark \default
  g1-^ \ff
  c-^
  ees'2.-> c4-.
  c-. c-. b!2
  r4 c8 \f c f,4 aes8 aes
  g2 r
  r4 ees'8 es aes,4 c8 c
  g2 r
  r4 g'8 \aII \aIIP g bes,4 f'8 f
  e!2-. r
  r4 g8 g bes,4 d8 d
  cis2-. r
  r4 g'8 g d4 f8 f
  e2-. r
  r4 g8 \aII \ff g b,4-> e8 e
  e1-^ \ff
  g,2-^ g ~
  g1 ~
  g4 r r2
  \repeat unfold 3 R1
  \TempoIVRit
  R1
  \mark \default
  \TempoIVIT
  \repeat unfold 4 R1
  g2-> \f b->
  g-> r
  r4 c2-> \ff d8-. d-.
  ees-. ees-. f4-. g-. bes,-.
  ees-. d-. c-. c-.
  g-. g-. g2->
  g-> aes->
  a!4-. bes2-> r4
  g2-> \ff g->
  g2.-> r4
  \repeat unfold 2 R1
  aes2-> \ff aes->
  a!2.-> r4
  \repeat unfold 2 R1
  g,4 \f r r2
  R1
  \mark \default
  \repeat unfold 15 R1
  \bar "||"
  \mark \default
  \repeat unfold 4 R1
  r4 d'2 \p d4 ~
  d d2 d4
  r g r b
  r a2 a4
  e r r2
  \repeat unfold 2 R1
  \repeat unfold 2 R1
  r4 c' \p %{(%} b2
  c4 %{)%} r r2
  r4 c %{(%} b2
  c4 \! %{)%} r \once \override NoteColumn #'force-hshift = #1.1 \once \override Slur #'positions = #'(0 . -5) d,2-^ 
    -\tweak #'X-offset #-3.5 \f (
  d,1 )
  r2 d-> -\tweak #'X-offset #-4 \fz ~
  d2. r4
  r2 g -\tweak #'X-offset #-4 \f ~
  g1
  \mark \default
  d'1-^ \f ~
  d ~
  d
  d-^ \f ~
  d
  d4 r e r
  g r r2
  R1
  R1
  bes1 \fz
  a \fz
  g8 \ff
  \repeat unfold 15 g8
  %	g2:8 \ff g:
  %	g: g:
  ges1-> \fz
  f!-> \fz
  f4 \f r d r
  d r a' r
  d, r a' r
  d, r d r
  d r d-. d-.
  d r a' r
  bes r aes r
  g r fis r
  \mark \default
  \bar "||"
  g r r2
  \repeat unfold 7 R1
  g,1 \p ~
  g ~
  g ~
  g ~
  g
  d ~
  d ~
  \override Rest #'staff-position = #-6
  d4 r r2
  \repeat unfold 2 R1
  \TempoIVPRit
  \repeat unfold 4 R1
  \TempoIVIT
  \mark \default
  \repeat unfold 29 R1
  \repeat unfold 2 R1
  \repeat unfold 4 R1
  g'4 \f r cis! \< r
  cis r e \! r
  e \ff r r2
  R1
  \mark \default
  \repeat unfold 4 R1
  d,1 \f ~
  d2 d4. d8
  d'1 \fz
  a \fz
  d-^ \ff
  \repeat unfold 3 R1
  c1-\parenthesize-^ \ff
  \repeat unfold 5 R1
  \mark \default
  g,1 \f ~
  g
  \repeat unfold 1 R1
  \repeat unfold 4 R1
  r4 e''8 \ff e a,4 cis8 cis
  gis4 r r2
  \repeat unfold 2 R1
  r4 \aII d'8 \f d g,4 b8 b
  fis4 r r2
  R1
  r4 b \aIIP \f r b
  r b \aII r b
  b r r2
  r2 r4 fis'8 \f fis
  fis4 r r2
  \repeat unfold 5 R1
  \mark \default
  \repeat unfold 26 R1
  \repeat unfold 4 R1
  \bar "||"
  \mark \default
  g,,1 \ff ~
  g4 r r2
  \repeat unfold 2 R1
  r2 r4 g' \ff
  c r des r
  b!1-^
  r2 g,4 \f r4
  \repeat unfold 12 {r2 g4 r4}
  \mark \default
  g'1 \fz \> ~
  <<{g}{s4 s s s8 s16 s \!}>>
  g1 \p
  g,1 \fp ~
  g ~
  g ~
  g ~
  g4 \partcombineApart g'2 \p g,4 ~
  g g'2 g,4 ~
  g g'2 g,4 ~
  g g'2 g,4 ~
  g1 ~
  g1 ~
  g1 ~
  g1
  \bar "||"
  c4 \override Rest #'Y-offset = #-4 r r2
  \partcombineAutomatic
  \revert Rest #'Y-offset
  \repeat unfold 5 R1
  \repeat unfold 2 R1
  \repeat unfold 8 R1
  r2 \once \override Slur #'positions = #'(0 . -5) g'2-^ ( \f
  g,1 ) ~
  \tweak Stem #'direction #UP g2 g-^ ~
  g2. r4
  r2 c \f ~
  c2. \< a'4 \fz
  \mark \default
  g,4 \ff r8 g g4 r8 g
  \repeat unfold 4 {g4 r8 g g4 r8 g}
  g4 r8 g c4 r8 c
  c'4 r8 c b4 r8 b
  c8 \ff
  \repeat unfold 15 c8
  %	c2:8 \ff c:
  %	c: c:
  c1-> \fz
  g \fz
  c4 r r2
  \repeat unfold 3 R1
  g4 \f r g r
  g r bes r
  bes r aes r
  g  r g r
  g \aII r g-. g-.
  g r bes r
  bes r aes r
  g r g r
  \bar "||"
  \mark \default
  g r r2
  R1
  ees'1 \fz ~
  <<{ees  (}{s4 \> s s s8 s \!}>>
  e!4 ) \p r r2
  R1
  <<{ees1 ~}{s4 \fz \> s s s8 s \!}>>
  ees1 ~
  ees4 \aII \f r r2
  fis,1-> \ffz
  g-> \ffz ~
  g
  c-^\ffz ~
  c
  aes-^ \ffz ~
  aes
  c,-^ \ffz
  c-^ \ffz
  \mark \default
  c'4 r r2
  r4 g-> \f c,-> d->
  ees-> g-> a-> b->
  c-> d-> ees-> e->
  f2-> bes,4-> aes->
  g1
  e!2 \ff r
  e \ff r
  e4 r r2
  \repeat unfold 2 R1
  r2 r8 g,4. \pp
  r8 g4. r8 g4.
  c1 \ff ~
  c
  c-^ \ffz ~
  c
  c-^ \ffz ~
  c
  c-^ \ffz ~
  c
  c-^\ff
  c2 c
  c c
  f2. f4
  r f r f
  r aes des c
  b r r2
  \mark \default
  b!4-^ bes-^ r2
  bes4 r a r
  g g r2
  \TempoIVPAn
  r2 ees \ff
  r c
  r ees
  r c
  c c'
  c1 ~
  c4 r r2
  \repeat unfold 2 R1
  g,4 \f r g r
  \repeat unfold 5 {g r g r}
  \TempoIVMMaes
  c1-^ \ff
  c-^
  c-^
  c-^
  c-^c-^
  c-^\fz
  c-^\fz
  c-^\fz
  c4 _\footnote \markup {"(24)"} #'(1 . 0) \markup {\null} \ffz r r2
  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdCornoIIIAIV = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corni (D)" III+IV}}
  \set Staff.shortInstrumentName = \markup {\center-column {"Cor. (D)" III+IV}}
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \partcombine \SgMdCornoIII \SgMdCornoIV
}

