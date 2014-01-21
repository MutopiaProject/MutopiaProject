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
  * Fichier de notes, Trompettes 1 et 2, parties                        *
  *                                                                     *
  * Ne pas compiler                                                     *
  *                                                                     *
  ***********************************************************************
%}
%{
  ***************************************************************
  *     Trompette I                                             *
  ***************************************************************
%}

\include "Common/Version.ly"

SgMdTrombaI = \relative c'' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 2)
  \cueEventType
  \oneMMRNumberOn

  \TempoIV

  \transposition d'	% Ligne à modifier pour obtenir une transposition vers une autre tonalité (bes)
%  \once \override Voice.MultiMeasureRest #'minimum-length = #19
  R1 * 41

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdViolinoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Violini"} R1}
  \oneMMRNumberOn

  \once \override Score.RehearsalMark #'X-offset = #1.5

  \mark \default

  g1-^ \ff ~
  g2 c->
  g2.-> c4
  c r g r
  R1
  r4 r8 g16-. \ff g-. g4-. g-.
  \repeat unfold 4 {
    R1
    r4 r8 g16-. g-. g4-. g-.
  }
  R1
  r4 r8 g16-. \ff g-. g4-. g-.
  g'1-^ ~
  g ~
  g4 r r2
  R1 * 3

  \noBreak
  \TempoIVRit

  R1

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 6
  r4 g,-. \ff c-. g-.
  g2. bes4-.
  bes-. bes-. g-. c-.
  d-. c-. g2->
  R1 * 2
  g2-> \ff g->
  g2.-> r4
  R1 * 2
  f2-> \ff f->
  c'2.-> r4
  R1 * 2
  g4 \f r r2
  R1

  \mark \default

  R1 * 2
  g4 \f r g r
  g r r2
  g4 r r2
  g4 r g r
  g r g r
  d' r r2
  R1 * 7

  \bar "||"

  \mark \default

  R1 * 13

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoIII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno III"} R1 * 2}
  \oneMMRNumberOn

  R1 * 5
  r2 g,4 \f r
  g r g r

  \mark \default

  d'\f d r d
  \repeat unfold 4 {r d r d}
  r d r e
  r d r d
  g, r r2
  R1 * 3
  g4 \f r r2
  R1 * 3
  d'4 \f r d r
  d r a r
  d r a r
  d r d r
  d r d-. d-.
  d r a r
  d r c r
  d r d r

  \bar "||"

  \mark \default

  g,4 r r2
  R1 * 17

  \noBreak
  \TempoIVPRit

  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 4

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  \once \override Voice.MultiMeasureRest #'minimum-length = #15
  R1 * 39

  \mark \default

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdViolinoI" #UP {s4 * 0 -\tweak #'X-offset #2 ^\markup { \fontsize #-3 "Vl I"} R1 * 3}
  \oneMMRNumberOn

  R1 * 5
  a1-^ \ff
  r2 d4-. r
  r2 d4-. r
  r2 d4-. r
  a1-^ \ff
  r2 c4-. r
  r2 c4-. r
  r2 r4 r8 d,
  g4 \f r c, r
  d r g r
  \mark \default
  R1 * 6
  r4 des'8 \mf des g,4 bes8 bes
  a4 r r2
  R1
  r4 a8 \mf a d,!4 fis8 fis
  cis4 r r2
  ces4 r r2
  R1
  r4 g'8 \f g c,!4 e8 e
  b4 b' r b
  r b r b
  b r r2
  R1 * 7

  \mark \default

  R1 * 26

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} R1 * 4}
  \oneMMRNumberOn

  \bar "||"

  \mark \default

  g1 \ff ~
  g4 g r g
  r g r g
  r g r c
  r c g g
  c r r2
  g4 r r2
  <<{
    r2 g4 \f r
    \repeat unfold 12 {r2 g4 r}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 13 {s1}
  }>>
  \mark \default
  g4 \f r r2
  R1 * 14

  \bar "||"

  R1 * 19

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1 * 3}
  \oneMMRNumberOn

  \mark \default

  g4 \f g r g
  <<{
    \repeat unfold 4 {r4 g r g}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 4 {s1}
  }>>
  r4 c r c
  r g r g
  c r r2
  R1 * 2
  r2 r4 g \f
  c r r2
  R1 * 3
  g4 \f r g r
  g r bes r
  bes r f r
  g r g r
  g r g-. g-.
  g r d' r
  g, r f r
  g r g r
  \bar "||"
  \mark \default
  g4 r r2
  R1 * 11
  c1-^ \ff ~
  c
  c-^ \ff ~
  c
  c-^ \fz
  c-^ \fz
  \mark \default
  g4 r r2
  R1 * 5
  g2 \f r
  g \f r
  g4 r r2
  R1 * 4
  c1 \ffz ~
  c
  c-^ \ffz ~
  c
  c-^ \ffz ~
  c
  c-^ \ffz ~
  c
  c-^ \ff
  c2 c
  c c
  f,2. f4
  r f r f
  r f f f
  f r r2
  \mark \default
  d'4-^ g,-^ r2
  g4 r c r
  g g r2
  \TempoIVPAn
  r2 c \ff
  r c
  r c
  r c
  c c
  c1 ~
  c4 r r2
  R1 * 2
  <<{
    g'4 \f r g r
    \repeat unfold 5 {g4 r g r}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 6 {s1}
  }>>
  \TempoIVMMaes
  g4 r r2
  c,1-^ \ff
  \repeat unfold 4 c1-^
  \repeat unfold 3 {c1-^ \fz}
  c4 \ffz r r2
  \bar "|."
}

%{
  ***************************************************************
  *     Trompette II                                            *
  ***************************************************************
%}

SgMdTrombaII = \relative c'' {

  \include "Common/Properties.ly"
  \set Staff.minimumPageTurnLength = #(ly:make-moment 4 2)
  \cueEventType
  \oneMMRNumberOn

  \TempoIV

  \transposition d'	% Ligne à modifier pour obtenir une transposition vers une autre tonalité (bes)
  \once \override Voice.MultiMeasureRest #'minimum-length = #19
  R1 * 41

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdViolinoI" #UP {s4 * 0 -\tweak #'extra-offset #'(0 . -2) ^\markup { \fontsize #-3 "Violini"} R1}
  \oneMMRNumberOn

  \once \override Score.RehearsalMark #'X-offset = #1.5

  \mark \default

  g1-^ \ff ~
  g2 c->
  g2.-> c4
  c r g r
  R1
  r4 r8 g16-. \ff g-. g4-. g-.
  \repeat unfold 4 {
    R1
    r4 r8 g16-. g-. g4-. g-.
  }
  R1
  r4 r8 g16-. \ff g-. g4-. g-.
  g1-^ ~
  g ~
  g4 r r2
  R1 * 3

  \noBreak
  \TempoIVRit

  R1

  \mark \default

  \noBreak
  \once \override Score.MetronomeMark #'X-offset = #2
  \TempoIVIT

  R1 * 6
  r4 g-. \ff c,-. g-.
  g2. bes4-.
  bes-. bes-. g-. c-.
  g'-. c,-. g2->
  R1 * 2
  g'2-> \ff g->
  g2.-> r4
  R1 * 2
  f2-> \ff f->
  c2.-> r4
  R1 * 2
  g'4 \f r r2
  R1

  \mark \default

  R1 * 2
%  \pageTurn
  g4 \f r g r
  g r r2
  g4 r r2
  g4 r g r
  g r g r
  d' r r2
  R1 * 7

  \bar "||"

  \mark \default

  R1 * 13

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoIII" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno III"} R1 * 2}
  \oneMMRNumberOn

  R1 * 5
  r2 g,4 \f r
  g r g r

  \mark \default

  d \f d r d
  \repeat unfold 4 {r d r d}
  r d r e
  r d r d
  g r r2
  R1 * 3
  g4 \f r r2
  R1 * 3
  d4 \f r d r
  d r a' r
  d, r a' r
  d, r d r
  d r d-. d-.
  d r a' r
  d, r c r
  d r d r

  \bar "||"

  \mark \default

  g4 r r2
  R1 * 17

  \noBreak
  \TempoIVPRit

  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 4

  \mark \default

  \once \override Score.MetronomeMark #'X-offset = #2
  \noBreak
  \TempoIVIT

  \once \override Voice.MultiMeasureRest #'minimum-length = #16
  R1 * 39

  \once \override Score.RehearsalMark #'X-offset = #-2
  \mark \default

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} R1 * 3}
  \oneMMRNumberOn

  R1 * 5
  a1-^ \ff
  r2 d,4-. r
  r2 d4-. r
  r2 d4-. r
  a1-^ \ff
  r2 c4-. r
  r2 c4-. r
  r2 r4 r8 d
  g4 \f r c, r
  d r g r

  \mark \default

  R1 * 6
  r4 des'8 \mf des g,4 bes8 bes
  a4 r r2
  R1
  r4 a8 \mf a d,!4 fis8 fis
  cis4 r r2
  ces4 r r2
  R1
  r4 g'8 \f g c,!4 e8 e
  b4 b' r b
  r b r b
  b r r2
  R1 * 7

  \mark \default

  R1 * 26

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdViolinoI" #UP {s4 * 0 ^\markup { \fontsize #-3 "Vl I"} R1 * 4}
  \oneMMRNumberOn

  \bar "||"

  \mark \default

  g1 \ff ~
  g4 g, r g
  r g r g
  r g r c
  r c g g
  c r r2
  g'4 r r2
  <<{
    r2 g,4 \f r
    \repeat unfold 12 {r2 g4 r}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 13 {s1}
  }>>

  \mark \default

  g'4 \f r r2
  R1 * 14

  \bar "||"

  R1 * 19

  \oneMMRNumberOff
  \cueDuring #"scoreSgMdCornoI" #DOWN {s4 * 0 ^\markup { \fontsize #-3 "Corno I"} R1 * 3}
  \oneMMRNumberOn

  \mark \default

  g,4 \f g r g
  <<{
    \repeat unfold 4 {r4 g r g}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 4 {s1}
  }>>
  r4 c r c
  r g r g
  c r r2
  R1 * 2
  r2 r4 g' \f
  c, r r2
  R1 * 3
  g'4 \f r g r
  g r bes r
  bes r f r
  g r g r
  g r g-. g-.
  g r d' r
  g, r f r
  g r g r

  \bar "||"

  \mark \default

  g4 r r2
  R1 * 11
  c,1-^ \ff ~
  c
  c-^ \ff ~
  c
  c-^ \fz
  c-^ \fz

  \mark \default

  g'4 r r2
  R1 * 5
  g,2 \f r
  g \f r
  g'4 r r2
  R1 * 4
  c1 \ffz ~
  c
  c-^ \ffz ~
  c
  c-^ \ffz ~
  c
  c-^ \ffz ~
  c
  c-^ \ff
  c2 c
  c c
  f,2. f4
  r f r f
  r f f f
  f r r2

  \mark \default

  d'4-^ g,-^ r2
  g4 r c r
  g g r2

  \TempoIVPAn

  r2 c, \ff
  r c
  r c
  r c
  c c
  c1 ~
  c4 r r2
  R1 * 2
  <<{
    g'4 \f r g r
    \repeat unfold 5 {g4 r g r}
    }
    \new Voice
    {
      \set countPercentRepeats = ##t
      \override PercentRepeat #'transparent = ##t
      \override PercentRepeatCounter #'staff-padding = #2
      \repeat percent 6 {s1}
  }>>

  \TempoIVMMaes

  g4 r r2
  c,1-^ \ff
  \repeat unfold 4 c1-^
  \repeat unfold 3 {c1-^ \fz}
  c4 \ffz r r2

  \bar "|."
}

%{
  ***************************************************************
  * Création des voix                                           *
  ***************************************************************
%}

voiceSgMdTrombaI = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup \fontsize #3 \center-column {"Tromba I" "in D"}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \SgMdTrombaI
}

voiceSgMdTrombaII = \new Voice {
  \time 2/2
  \set Staff.instrumentName = \markup {\fontsize #3 \center-column {"Tromba II" "in D"}}
  \set Staff.shortInstrumentName = ""
  \set Staff.midiInstrument = "trumpet"
  \clef treble
  \SgMdTrombaII
}

quoteScoreSgMdTrombaI = \SgMdTrombaI
quoteScoreSgMdTrombaII = \SgMdTrombaII
