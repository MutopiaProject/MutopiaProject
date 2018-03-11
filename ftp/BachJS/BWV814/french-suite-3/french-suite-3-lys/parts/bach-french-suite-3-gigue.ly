\version "2.18.2"
\language "english"

% Repeat 1

highVoiceOne = \relative c'' {
  \partial 8 b8
  | fs4 b32 cs d16
  | cs4 \mordent fs8
  | e8 fs16 e d cs
  | d16 cs b d fs d
  | b'16 fs d b fs' d
  | g16 e b e g e
  | a16 e cs a e' cs

  \barNumberCheck #8

  | fs16 d a d fs d
  | g16 d fs d e d
  | a'16 d, g d fs d
  | b'8 a g
  | fs8 e d
  | e16 d cs e b e
  | a,16 e' g, e' fs, d'
  | e,16 d' cs b a g

  \barNumberCheck #16

  | fs16 e d e fs g
  | a16 d, fs a d8 ~
  | d16 b gs e cs' a
  | fs'16 d gs8. fs32 gs
  | a8 a, a'
  | b,8 a'16 gs a b
  | gs4. ~
  | gs8 a,16 gs' a gs

  \barNumberCheck #24

  | fs16 es fs4 ~
  | fs16 a gs fs es fs
  | es16 gs cs, b a fs'
  | d8 cs b
  | a8 gs fs
  | b16 fs' a, fs' gs, fs'
  | cs16 fs b, fs' a, fs'
  | b16 a gs b fs b

  \barNumberCheck #32

  | es,16 b' d, b' cs, a'
  | b,16 gs' cs,8 es
  | fs4 % partial bar
}

lowVoiceOne = \relative c' {
  \partial 8 r8
  | r8 r b
  | fs4 d'8
  | cs4 fs8
  | b,4 r8
  | r8 r16 b d b
  | e b g e b' g
  | cs16 a e a cs a

  \barNumberCheck #8

  | d16 a fs d a' fs
  | b8 a g
  | fs8 e d
  | g16 d' fs, d' e, d'
  | a16 d g, d' fs, d'
  | g,16 fs e g d g
  | cs,16 g' b, g' a, fs'
  | g,16 e' a,8 cs

  \barNumberCheck #16

  | d8 d, a'
  | fs4 b32 cs d16
  | gs,4 \prall e'8
  | d8 e16 d cs b
  | cs16 b a b cs a
  | d16 b fs d d' b
  | e16 b gs e d' b
  | cs16 a cs e a cs,

  \barNumberCheck #24

  | d16 a d fs a fs
  | b16 a b cs d b
  | cs16 b a cs fs, a
  | b16 fs a fs gs fs
  | cs'16 fs, b fs a fs
  | d'8 cs b
  | a8 gs fs
  | gs16 fs es gs ds gs

  \barNumberCheck #32

  | cs,16 gs' b, gs' a, fs'
  | d16 b cs8 cs,
  | fs4 % partial bar
}

% Repeat two

highVoiceTwo = \relative c'' {
    cs8 % partial bar
  | b16 as gs fs fs' as,
  | b16 cs d4 ~
  | d16 cs b a e' b
  | cs8 a cs
  | d16 a fs d a' fs

  \barNumberCheck #40

  | b16 g d' b g' d
  | e16 b gs e b' gs
  | cs16 a e' cs a' e
  | fs16 cs as fs cs' as
  | d16 b fs' d b' e,
  | a16 e g e fs e
  | b'16 e, a e g e
  | c'8 b a

  \barNumberCheck #48

  | g8 fs e
  | fs16 e ds fs c fs
  | b,16 fs' a, fs' g, e'
  | fs,16 a e'ds cs ds
  | e4 e8
  | d16 cs b a a' cs,
  | d16 e fs4 ~
  | fs16 d cs b g' b,

  \barNumberCheck #56

  | cs16 d e4 ~
  | e16 cs d as fs' as,
  | b16 cs d4 ~
  | d16 g, fs e d' cs
  | b16 as gs fs gs as
  | b16 e b d b cs
  | b16 fs' b, e b d
  | g8 fs e

  \barNumberCheck #64

  | d8 cs b
  | e16 d cs e b e
  | as,16 e' g, e' fs, d'
  | e,16 cs' fs,8 as
  | b4
}

lowVoiceTwo = \relative c {
    r8 % partial bar
  | r8 r fs
  | e16 d cs b b' d,
  | e16 fs gs4
  | a16 g fs e a e
  | fs16 d fs a d a

  \barNumberCheck #40

  | g16 d g b d b
  | gs16 e gs b e b
  | a16 e a cs e cs
  | as16 fs as cs fs cs
  | b16 d cs b a g
  | c8 b a
  | g8 fs e
  | a16 e' g, e' fs, e'

  \barNumberCheck #48

  | b16 e a, e' g, e'
  | a,16 g fs a e a
  | ds,16 a' c, a' b, g'
  | a,16 fs' b, g' b, a'
  | e16 a g fs g e
  | a8 a, g' ~
  | g16 fs e d d' fs,
  | g16 a b4 ~

  \barNumberCheck #56

  | b16 g fs e cs' e,
  | fs16 g fs e d cs
  | d16 e d cs b a
  | g8 b e
  | fs,16 fs' e d cs b
  | g'8 fs e
  | d8 cs b
  | e16 b' d, b' cs, b'

  \barNumberCheck #64

  | fs16 b e, b' d, b'
  | cs16 b as cs g cs
  | fs,16 cs' e, cs' d, b'
  | g16 e fs8 fs,
  | b4
}

global = {
  \key b \minor
  \time 3/8
  \accidentalStyle Score.piano-cautionary
}

upper = {
  \clef treble
  \global
  \new Voice { \repeat volta 2 \highVoiceOne }
  \new Voice { \repeat volta 2 \highVoiceTwo }
}

lower = {
  \clef bass
  \global
  \new Voice { \repeat volta 2 \lowVoiceOne }
  \new Voice { \repeat volta 2 \lowVoiceTwo }
}

\bookpart {
  \header {
    maintainer         = "Knute Snortum"
    maintainerEmail    = "knute (at) snortum (dot) net"
    maintainerWeb      = "http://www.musicwithknute.com/"
  }
  \include "../header.ily"
  \header { title = "Gigue" }
  \score {
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
    \layout {
    }
    \midi {
      \tempo 8 = 160
    }
  }
}

\language "nederlands"