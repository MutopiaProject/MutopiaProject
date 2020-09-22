\version "2.18.2"
\include "articulate.ly"

\header {
  title = "Fugue in G minor"
  composer = "J. S. Bach"
  opus = "BWV 578"
  mutopiacomposer = "BachJS"
  instrument = "Organ"
  source = "Breitkopf und Härtel, 1891"
  style = "Baroque"
  license = "Creative Commons Attribution-ShareAlike 4.0"
  maintainer = "Padraic Fanning"
  maintainerEmail = "luxverdans AT sbcglobal DOT net"
}

\layout {
  \context {
    \Voice
    \consists "Melody_engraver"
    \override Stem #'neutral-direction = #'()
  }
}

global = {
  \key g \minor
  \time 4/4
}

rightOne = \relative c'' {
  \global
  % Music follows here.
  \once \override Score.ParenthesesItem.font-size = 0
  g4 d' bes4.-\parenthesize\mordent a8
  g bes a g fis a d,4
  g8 d a' d, bes' a16 g a8 d,
  g d16 g a8 d,16 a' bes8 a16 g a d, d' c
  bes a g bes a g fis a g d g a bes c d e
  f e d f e d cis e d8 a d e
  f16 g f g g8.\trill f32 g a16 g a bes a g f e
  f a g a cis, a' g a d, a' g a cis, a' g a
  f d cis d g d cis d a' d, cis d g d cis d
  a8 f' g, e' f, a d f
  ees a r ees d g r d
  c16 bes c d c a' g a bes, g' fis g a, fis' e fis
  g2 r
  r bes,16 d c d fis, d' c d
  g, d' c d fis, d' c d bes4 c
  d c r8 bes r a
  r d, g16 a bes g a8 d cis e
  a16 bes a g f e d cis d8 r bes' r
  e, r r a a2~\trill
  a1~-\hide\trill
  a2~-\hide\trill a16 g a bes a g f e
  f2 r8 d g f
  ees2~ ees8 c f ees
  d4~ d16 g fis g c,4~ c16 bes a c
  bes a g bes a g fis a g d e fis g d g a
  bes g bes c d a d c bes4. a8
  g bes a g fis a d,4
  g8 d a' d, bes' a16 g a8 d,
  g d16 g a8 d,16 a' bes8 a16 g a d, d' c
  bes a g bes a g fis a g bes c d ees bes a g
  fis a bes c d a g f ees g a bes c g f ees
  d f g a bes d c bes a c d ees f g f ees
  d f ees d c bes a c bes f g a bes c bes c
  d e d e e8.\trill d32 e f16 ees f g f ees d c
  d f ees f a, f' ees f bes, f' ees f a, f' ees f
  d bes a bes ees bes a bes f' bes, a bes ees bes a bes
  bes c d bes ees d c ees d c d ees d c bes d
  c bes c d c bes a c bes a bes c bes a g bes
  a8 f' r aes, g ees' r g,
  f d' r f, ees16 g c bes a g f ees
  d ees f g a bes c a bes f g a bes c bes c
  d e d e e8.\trill d32 e f16 e f g f8 f
  f1~\trill
  f1~-\hide\trill
  f16 ees f g c,8. a'16 bes a bes c bes a g f
  ees d ees f ees d c bes a' g a bes a g f ees
  d c d ees d c bes a g' f g aes g f ees d
  c b c d c d ees c f4~ f16 aes g f
  ees2~ ees16 c d ees f g aes f
  b c d b g8 r c,4 g'
  ees4. d8 c ees d c
  b d g,4 c8 g d' g,
  ees' d16 c d8 g, c g16 c d8 g,16 d'
  ees8 d16 c d g, g' f ees d c ees d c b d
  c g' ees g c, ees g, bes a c \stemNeutral a c f, a c, ees
  d \noBeam f' d f bes, d f, a g bes g bes ees, g bes, d
  c ees' c ees a, c e, g fis a fis a d, fis a, c
  bes8 g' a, fis' g4 \once \override Rest.direction = #CENTER r
  g16 bes a g d' a d, c' \stemUp bes d c bes f' c f, ees'
  d f ees d g d g, f' e g f e a e a, g'
  fis4 g8 a bes2~
  bes4 a2 g4~
  g fis g r
  r8 d g a bes16 a g a fis g fis g
  a g fis e d c bes a bes d c d fis, d' c d
  g, d' c d fis, d' c d bes g fis g c g fis g
  d' g, fis g c g fis g bes8 g' a, fis'
  g1\fermata \bar "|."
}

rightTwo = \relative c' {
  \global
  % Music follows here.
  R1 * 5
  d4 a' f4. e8
  d f e d cis e a,4
  d8 a e' a, f' e16 d e8 a,
  d a16 d e8 a,16 e' f8 e16 d e a, a' g
  f e d f e d cis e d a d e f g a b
  c bes c d c bes a c bes a bes c bes a g bes
  a8 g fis d g4 r
  r8 d g a bes16 c bes c c8.\trill bes32 c
  d16 c d ees d c bes a d,8 r c r
  d r c r r16 g' fis g r g fis g
  r g fis g r g fis g d4 c
  bes r r2
  R1 * 4
  r8 a' d c bes2~
  bes8 g c bes a2~
  a4 g2 fis4
  g8 r r4 r2
  R1 * 7
  bes,4 f' d4. c8
  \change Staff = "left"
  \showStaffSwitch
  \stemUp
  bes d c bes a c \hideStaffSwitch \change Staff = "right" \stemDown r f
  \stemNeutral f1~
  f1
  s1 * 8
  s2 r8 \stemDown f bes a
  g2~ g8 c, a' g
  f2~ f8 bes, g' f
  ees2~ ees16 ees d c b4
  c r r8 c aes' f~
  f4~ f16 f ees d ees d c ees d c b d
  c g c d ees f ees f g ees c g' aes f g aes
  d, ees d c b8 d g,2~
  g1~
  g2~ g8 g' f16 ees d f
  ees4 r r8 \stemUp \change Staff = "left" c a f
  \tieUp bes2~ bes8 bes g ees
  a2~ a8 a fis d
  g4 \once \override Rest.direction = #UP r g16 bes a g d' a d, c'
  bes8 d a d8~ d \stemDown \tieDown \change Staff = "right" g c, f~
  f f d g~ g g e a~
  a16 ees' d c bes d a d g, aes' g f g f ees d
  ees2 d
  c bes16 d c bes a bes g a
  bes c bes c d ees d c bes8 d c bes
  a4 r8 d, d2~-\parenthesize\trill
  d1~
  d2~ [d8 ees~] [ees d]
  d1\fermata \bar "|."
}

left = \relative c' {
  \global
  % Music follows here.
  R1 * 11 
  r2 g4 d'
  bes4. a8 g bes a g 
  fis a d,4 g8 d a' d, 
  bes' a16 g a8 d, g d16 g a8 d,16 a' 
  bes8 a16 g a d, d' c bes a g bes a g fis a 
  g d g a bes c d e f e d f e d cis e 
  d8 a d e \clef treble f16 g f g g8.\trill f32 g
  a16 g a bes a g f e f a g a cis, a' g a 
  d, a' g a cis, a' g a f d cis d g d cis d 
  \once \override Score.ParenthesesItem.font-size = 0
  a' d, cis d g d cis d f8 e16 d cis8.-\parenthesize\trill d16
  d c d e d c bes a \clef bass g f g a g f ees d
  c' bes c d c bes a g f ees f g f ees d c
  bes bes' c d ees4 r16 a, bes c d4
  g,4 d' bes4. a8
  g16 bes a g fis g e fis g d e fis g d g a
  bes c bes c c8.\trill bes32 c d16 c d ees d c bes a
  bes d c d fis, d' c d g, d' c d fis, d' c d
  bes g fis g c g fis g d' g, fis g c g fis g
  g8 bes c16 bes a c bes4~ bes16 d c bes
  a4~ a16 c bes a g4~ g16 bes a g
  f4. e8 f ees d c
  bes4 r r8 c' bes a
  g2 f4 \stemUp f
  \stemNeutral bes8 f c' f, d' c16 bes c8 f,
  bes f16 bes c8 f,16 c' d8 c16 bes c f, f' ees
  d c bes d c bes a c bes8  g'  r g,
  a  f'  r f, g \change Staff = "right" f' c e
  \stemDown f16 ees f g f ees d f ees d ees f ees d c ees
  d c d ees d c bes d c bes c d c bes a c
  bes c d bes c d ees c d c bes c d ees d ees
  f g f g g8._\trill f32 g a16 g a bes a g f ees
  d f ees f a, f' ees f bes, f' ees f a, f' ees f
  d bes' a bes ees, bes' a bes f bes a bes ees, bes' a bes
  bes d c bes a g f ees \showStaffSwitch \change Staff = "left" \stemNeutral d2~
  d8 g, c bes a2~
  a8 f bes a g2~
  g8 ees aes g f4 g~
  g16 g a b c d ees c aes2
  g8 a b4 c8 r r4
  R1 * 4
  r8 g ees c \stemDown f4 r
  r8 f d bes ees4 r
  r8 ees c a d4 r
  g,16 bes a g d' a d, c' bes8 d fis, d'
  g4 fis g \stemNeutral a
  bes b c cis d \clef treble e8 fis g4 a8 bes
  c16 g f ees c' a f a bes, f' ees d bes' g ees g
  a, ees' d c a' fis d fis g, bes d g fis g e fis
  g4. fis8 g4 a8 d,
  d4 \clef bass r8 fis, g r c r
  bes r c r bes r a r
  g r a r g bes c a
  b1\fermata \bar "|."
}

pedal = \relative c {
  \global
  % Music follows here.
  R1 * 16
  r2 d4 a'
  f4. e8 d f e d 
  cis e a,4 d8 a e' a,
  f' e16 d e8 a, d a16 d e8 a,16 e' 
  f8 e16 d e8 a, d g, a4
  d, r r2
  R1 * 3
  r2 r8 g g' f
  \once \override Score.ParenthesesItem.font-size = 0
  ees r ees, r d d' d4~-\parenthesize\trill
  d1~
  d1~
  d2. c4~
  c4 bes2 a4
  bes8 a g4 f r
  R1 * 8
  bes4 f' d4. c8
  bes d c bes a c f,4
  bes8 f c' f, d' c16 bes c8 f,
  bes f16 bes c8 f,16 c' d8 c16 bes c8 f,
  d' ees f f, bes4 r
  c r f, r
  bes r ees, r
  aes r d, g
  c, r f r
  g1
  c,8 g' c d ees4 f
  g~ g16 g f g ees g f g b, g' f g
  c, g' f g b, g' f g ees c' b c f, c' b c
  g c b c g b a b c,8 ees f g
  c,4 r r2
  R1 * 7
  r2 g'4 d'
  bes4. a8 g bes a g 
  fis a d,4 g8 d a' d, 
  bes' a16 g a8 d, g d16 g a8 d,16 a' 
  bes8 a16 g a8 d, g ees c d
  g,1\fermata \bar "|."
}

\score {
  <<
    \new PianoStaff \with {
      instrumentName = "Org."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } << \rightOne \\ \rightTwo >>
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass \left }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass \pedal }
  >>
  \layout { }
}
\score {
  \unfoldRepeats \articulate
  <<
    \new PianoStaff \with {
      instrumentName = "Org."
    } <<
      \new Staff = "right" \with {
        midiInstrument = "church organ"
      } << \rightOne \\ \rightTwo >>
      \new Staff = "left" \with {
        midiInstrument = "church organ"
      } { \clef bass \left }
    >>
    \new Staff = "pedal" \with {
      midiInstrument = "church organ"
    } { \clef bass \pedal }
  >>
  \midi {
    \tempo 4=80
  }
}
