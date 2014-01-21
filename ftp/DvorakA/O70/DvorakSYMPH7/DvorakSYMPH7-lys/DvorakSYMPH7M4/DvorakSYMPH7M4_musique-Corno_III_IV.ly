%{
  *************************************************************************
  * Dvořák - Symphony nr 7                                                *
  *                                                                       *
  * encodage par J.F. Lucarelli                                           *
  * 18/11/12 - 01/11/2013                                                 *
  * Ver 0.0 : 04/09/2013                                                  *
  * Ver 1.0 : 01/11/2013                                                  *
  *                                                                       *
  * Symphonie n°7 : mouvement IV - Finale allegro                         *
  * Fichier de notes, Cors 3 et 4, parties                                *
  *                                                                       *
  * Ne pas compiler                                                       *
  *                                                                       *
  *************************************************************************
%}
%{
  *****************************************************************
  * Cor 3                                                         *
  *****************************************************************
%}

\include "Common/Version.ly"

SgMdCornoIII = \relative c' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 8 4)
  \cueEventType
  \oneMMRNumberOn

  \TempoIV

  \transposition d
  R1
  c1 \fz \> ~
  <<{c1}{s4 s s s8 s \!}>>
  R1 * 5
  g'2 \pp g
  g2. g4
  g2 g
  g,1
  <<{g'2 g}{s4 s \< s s8 s16 s \!}>>
  g2. \> g4 \!
  g2 g, ~
  g1

  \TempoIVPPCresc

  g1 \p ~
  g1 \fp
  g ~
  g \fz
  g
  g'4 \fz r r2
  R1 * 2
  g1 \fp \> ~
  g \p ~
  <<{g1 ~}{\rightDynamic s4 \pp s s \>}>>
  <<{g1 ~}{s4 s \!}>>
  g2 ( aes ~
  aes1 ~
  aes4 ) r r2
  R1 * 3
  <<{c1 ~}{s4 \p -\tweak #'minimum-length #4 \< s s s8 s \!}>>
  <<{c1 ~}{s4 \fz -\tweak #'minimum-length #6 \> s s \!}>>
  <<{c1 ~}{s4 \p -\tweak #'minimum-length #4 \< s s s8 s \!}>>
  <<{c1}{s4 \fz -\tweak #'minimum-length #6 \> s s \!}>>
  <<{c1 ~}{s4 \p -\tweak #'minimum-length #4 \< s s s8 s \!}>>
  <<{c1~}{s4 \fz -\tweak #'minimum-length #6 \> s s s8 s \!}>>
  c4 r r2
  R1

  \mark \default

  g1-^ \ff
  c-^
  ees2.-> ees4-.
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
  e1-^ \ff
  f2-^ d ~
  d1 ~
  d4 r r2
  R1 * 3

  \noBreak
  \TempoIVRit

  R1

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 4
  d2-> \f d->
  d-> r
  r4 c2-> \ff d8-. d-.
  ees-. ees-. f4-. g-. bes-.
  g-. f-. ees-. f-.
  d-. c-. b!2->
  d-> d->
  d4-. d2-> r4
  bes2-> \ff bes->
  bes2.-> r4
  R1 * 2
  c2-> \ff c->
  c2.-> r4
  R1 * 2
  g4 \f r r2
  R1

  \mark \default

  R1 * 15

  \bar "||"

  \mark \default

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdVioloncello" #UP "bass" {s4 * 0 -\tweak #'extra-offset #'(0 . -1.5)
    ^\markup { \fontsize #-3 "Violoncello"} R1 * 4}
  \oneMMRNumberOn

  r4 d'2 \p d4 ~
  d d2 d4
  r b r d
  r dis2 dis4
  e r r2
  R1 * 4
  \pageTurn

  % Citation polyphonique sur le cor I sur 3 mesures - impossible à réaliser avec \cueDuring
  % La seconde voix est rajoutée manuellement sur la partie du cor I en réduisant la dimension des objets
  r4 e \p \< ( f e8 \> d
  e4 \! ) r r2

  \tag #'quoteCornoI \tag #'quoteCornoII {
    r4 e \< ( f e8 \> d ) \!
  }
  \elseTag #'quoteCornoI \elseTag #'quoteCornoII {
    r4 e \< ( f e8 \> d
  }
  e4 \! ) r d,2-^ \f ~
  d1
  r2 d,-> -\tweak #'X-offset #-4 \fz ~
  d2. r4
  r2 g' \f ~
  g1

  \mark \default

  d'1-^ \f ~
  d ~
  d
  d-^ \f ~
  d
  d4 ( g ) e ( c )
  b ( a8 g ) e'4. ( d8-. )
  b2:8 \ff b:
  b: b:
  d1-> \fz
  c-> \fz
  b2:8 \ff b:
  b: b:
  bes1-> \fz
  c-> \fz
  d4 \f r d r
  d r a r
  d r a r
  d r d r d r d-. d-.
  d r a r
  d r c r
  bes r a r

  \mark \default

  \bar "||"

  bes4 r r2
  R1 * 7
  g1 \p ~
  g ~
  g ~
  g ~
  g
  d4 r r2
  R1 * 4

  \noBreak
  \TempoIVPRit

  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 4

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  \mark \default

  R1 * 25

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdOboeI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -1.5) ^\markup { \fontsize #-3 "Oboe"} R1 * 4}
  \oneMMRNumberOn

  \tag #'quoteCornoI \tag #'quoteCornoII \tag #'quoteCornoIV {
    d'4 \p cis8 b cis4 d8 e
    r e d cis cis4 ( b )
  }
  \elseTag #'quoteCornoI \elseTag #'quoteCornoII \elseTag #'quoteCornoIV {
    d4 \p \Solo cis8 b cis4 d8 e
    r e d cis cis4 ( b )
  }

  R1 * 4
  cis4 \f r e \< r
  e r g \! r
  g \ff r r2
  R1

  \mark \default

  R1 * 4
  d,1 \f ~
  d2 d4. d8
  d'1 \fz
  a \fz
  d-^ \ff
  R1 * 3
  c1-\parenthesize-^ \ff
  R1 * 5

  \mark \default

  R1 * 7
  r4 e8 \ff e a,4 cis8 cis
  gis4 r r2
  R1 * 2
  r4 d'8 \f d g,4 b8 b
  fis4 r r2
  R1
  r4 b \f r b
  r b r b
  b r r2
  r2 r4 fis'8 \f fis
  fis4 r r2
  R1 * 5

  \mark \default

  R1 * 26

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdViolinoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -1.5)
    ^\markup { \fontsize #-3 "Vl. I"} R1 * 4}
  \oneMMRNumberOn

  \bar "||"

  \once \override Score.RehearsalMark #'X-offset = #1.4
  \mark \default

  g,1 \ff ~
  g4 r r2
  R1 * 2
  r2 r4 d' \ff
  ees r f r
  d1-^
  <<{
    r2 g,4 \f r4
    \repeat unfold 12 {r2 g4 r4}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 13 {s1}
  }>>

  \mark \default

  g1 \fz \> ~
  <<{g}{s4 s s s8 s16 s \!}>>
  g1 \p
  g1 \fp ~
  g ~
  g ~
  g ~
  g4 r r2
  R1 * 7

  \bar "||"

  R1 * 8

  \TempoIVTran

  \tag #'quoteCornoI {
    e'2 \p ( gis4 fis8 e
  }
  \elseTag #'quoteCornoI {
    e2 \p -\tweak #'extra-offset #'(-4 . -2) \Solo ( gis4 fis8 e
  }
  e1 )
  e2 \pp ( g!4 f!8 e
  e1 ) ~
  e4 r r2
  R1 * 3
  r2 g,2-^ \f ~
  g1 ~
  g2 g-^ ~
  g2. r4
  r2 c \f ~
  c2. \< c4 \fz

  \mark \default

  <<{
    g4 \ff r8 g g4 r8 g
    \repeat unfold 4 {g4 r8 g g4 r8 g}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 5 {s1}
  }>>

  g4 r8 g c4 r8 c
  e4 r8 e f4 r8 f
  e2:8 \ff e:
  e: e:
  ees1-> \fz
  d-> \fz
  c4 r r2
  R1 * 3
  bes4 \f r b r
  c r bes r
  bes r aes r
  g r g r
  g r g-. g-.
  g r bes r
  bes r aes r
  g r f' r

  \bar "||"

  \once \override Score.RehearsalMark #'X-offset = #1.4
  \mark \default

  ees r r2
  R1
  ees1 \fz ( ~
  <<{ees}{s4 -\tweak #'minimum-length #6 \> s s s8 s \!}>>
  e!4 ) \p r r2
  R1
  <<{ees1 ~}{s4 \fz -\tweak #'minimum-length #7 \> s s s8 s \!}>>
  ees1 ~
  ees4 \f r r2
  \override DynamicLineSpanner #'staff-padding = #2
  a,1-> \ffz
  des-> \ffz ~
  des
  e!-^\ffz ~
  e
  c-^ \ffz ~
  c
  c-^ \ffz
  c-^ \ffz
  \dynamicLineSpannerStandard

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
  R1 * 2
  r2 r8 g,4. \pp
  r8 g,4. r8 g4.
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
  r aes des c
  b r r2

  \mark \default

  d!4-^ des-^ r2
  des4 r c r
  d! g, r2

  \TempoIVPAn

  r2 ees' \ff
  r c
  r ees
  r c
  c c
  c1 ~
  c4 r r2
  R1 * 2
  <<{
    g4 \f r g r
    \repeat unfold 5 {g r g r}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 6 {s1}
  }>>

  \TempoIVMMaes

  c,1-^ \ff
  c'-^
  c-^
  c-^
  c-^c-^
  g-^\fz
  g-^\fz
  g-^\fz
  g4 \ffz r r2

  \bar "|."
}

%{
  *****************************************************************
  * Cor IV                                                        *
  *****************************************************************
%}

SgMdCornoIV = \relative c {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 4)
\cueEventType  \oneMMRNumberOn

  \TempoIV

  \transposition d'
  R1

  \clef bass
  c,1 \fz \> ~
  <<{c1}{s4 s s s8 s \!}>>
  R1 * 5

  \clef treble

  \transposition d
  g''2 \pp g
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
  R1 * 2
  g,1 \fp \> ~
  g ~ \p
  g1 \pp ~
  g4 r r2
  R1 * 6
  <<{c1 ~}{s4 \p -\tweak #'minimum-length #6 \< s s s8 s \!}>>
  <<{c1 ~}{s4 \fz -\tweak #'minimum-length #6 \> s s \!}>>
  <<{c1 ~}{s4 \p -\tweak #'minimum-length #6 \< s s s8 s \!}>>
  <<{c1}{s4 \fz -\tweak #'minimum-length #6 \> s s \!}>>
  <<{c1 ~}{s4 \p -\tweak #'minimum-length #6 \< s s s8 s \!}>>
  <<{c1~}{s4 \fz -\tweak #'minimum-length #6 \> s s s8 s \!}>>
  c4 r r2
  R1

  \mark \default

  g1-^ \ff
  c-^
  ees'2.-> c4-.
  c-. c-. b2
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
  e1-^ \ff
  g,2-^ g ~
  g1 ~
  g4 r r2
  R1 * 3

  \TempoIVRit

  R1

  \mark \default

  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 4
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
  R1 * 2
  aes2-> \ff aes->
  a!2.-> r4
  R1 * 2
  g,4 \f r r2
  R1

  \mark \default

  R1 * 15

  \bar "||"

  \mark \default

  \oneMMRNumberOff
  \cueDuringWithClef #"scoreSgMdVioloncello" #UP "bass" {s4 * 0 -\tweak #'extra-offset #'(0 . -2)
    ^\markup { \fontsize #-3 "Vlc"} R1 * 4}
  \oneMMRNumberOn

  r4 d'2 \p d4 ~
  d d2 d4
  r g r b
  r a2 a4
  e r r2
  R1 * 4
  r4 <<{c' ( b2}{s4 \p \< s s8 \>}>>
  c4 \! ) r r2
  r4 <<{c ( b2}{s4 \< s s8 \>}>>
  c4 \! ) r d,2-^ \f (
  d,1 )
  r2 d-> \fz ~
  d2. r4
  r2 g \f ~
  g1

  \mark \default

  d'1-^ \f ~
  d ~
  d
  d-^ \f ~
  d
  d4 r e r
  g r r2
  R1 * 2
  bes1 \fz
  a \fz
  g2:8 \ff g:
  g: g:
  ges1 \fz
  f! \fz
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
  R1 * 7
  <<{
    g,1 \p ~
    \repeat unfold 3 {g ~}
    g
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 5 {s1}
  }>>
  d ~
  d ~
  d4 r r2
  R1 * 2

  \noBreak
  \TempoIVPRit

  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 4

  \once \override Score.MetronomeMark #'X-offset = #2
  \noBreak
  \TempoIVIT

  \mark \default

  R1 * 29

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoIII" #UP {s4 * 0 ^\markup { \fontsize #-3 "Corno III"} R1 * 2}
  \oneMMRNumberOn

  R1 * 4
  g'4 \f r cis! \< r
  cis r e \! r
  e \ff r r2
  R1

  \mark \default

  R1 * 4
  d,1 \f ~
  d2 d4. d8
  d'1 \fz
  a \fz
  d-^ \ff
  R1 * 3
  c1-\parenthesize-^ \ff
  R1 * 5

  \mark \default

  g,1 \f ~
  g
  R1 * 5
  r4 e''8 \ff e a,4 cis8 cis
  gis4 r r2
  R1 * 2
  r4 d'8 \f d g,4 b8 b
  fis4 r r2
  R1
  r4 b \f r b
  r b r b
  b r r2
  r2 r4 fis'8 \f fis
  fis4 r r2
  R1 * 5

  \mark \default

  R1 * 26

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl. I"} R1 * 4}
  \oneMMRNumberOn

  \bar "||"

  \mark \default

  g,,1 \ff ~
  g4 r r2
  R1 * 2
  r2 r4 g' \ff
  c r des r
  b!1-^

  <<{
    r2 g,4 \f r4
    \repeat unfold 12 {r2 g4 r4}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 13 {s1}
  }>>

  \mark \default

  g'1 \fz \> ~
  <<{g}{s4 s s s8 s16 s \!}>>
  g1 \p
  g,1 \fp ~
  g ~
  g ~
  g ~
  g4 g'2 \p g,4 ~
  g g'2 g,4 ~
  g g'2 g,4 ~
  g g'2 g,4 ~
  g1 ~
  g1 ~
  g1 ~
  g1

  \bar "||"

  c4 r r2
  R1 * 7

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoIII" #UP {s4 * 0 ^\markup { \fontsize #-3 "Corno III solo"} R1 * 5}
  \oneMMRNumberOn

  R1 * 3
  r2 g'2-^ \f (
  g,1 ) ~
  g2 g-^ ~
  g2. r4
  r2 c \f ~
  c2. \< a'4 \fz

  \mark \default

  <<{
    g,4 \ff r8 g g4 r8 g
    \repeat unfold 4 {g4 r8 g g4 r8 g}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 5 {s1}
  }>>
  g4 r8 g c4 r8 c
  c'4 r8 c b4 r8 b
  c2:8 \ff c:
  c: c:
  c1-> \fz
  g-> \fz
  c4 r r2
  R1 * 3
  g4 \f r g r
  g r bes r
  bes r aes r
  g r g r
  g r g-. g-.
  g r bes r
  bes r aes r
  g r g r

  \bar "||"

  \mark \default

  g r r2
  R1
  ees'1 \fz ( ~
  <<{ees}{s4 \> s s s8 s \!}>>
  e!4 ) \p r r2
  R1
  <<{ees1 ~}{s4 \fz -\tweak #'minimum-length #6 \> s s s8 s \!}>>
  ees1 ~
  ees4 \f r r2
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
  R1 * 2
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
  R1 * 2
  <<{
    g,4 \f r g r
    \repeat unfold 5 {g r g r}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 6 {s1}
  }>>

  \TempoIVMMaes

  c1-^ \ff
  c-^
  c-^
  c-^
  c-^c-^
  c-^\fz
  c-^\fz
  c-^\fz
  c4 \ffz r r2

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdCornoIII = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup \fontsize #3 \center-column {"Corno III" "in D"}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMdCornoIII
}

voiceSgMdCornoIV = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Corno IV" "in D"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "french horn"
  \clef treble
  \SgMdCornoIV
}

quoteScoreSgMdCornoIII = \SgMdCornoIII
quoteScoreSgMdCornoIV = \SgMdCornoIV
