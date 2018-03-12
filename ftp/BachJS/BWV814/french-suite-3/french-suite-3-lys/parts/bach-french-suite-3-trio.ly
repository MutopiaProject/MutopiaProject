\version "2.18.2"
\language "english"

staffUp = {
  \change Staff = "upper"
  \stemDown
}

staffDown = {
  \change Staff = "lower"
  \stemUp
}

textCapo = "Menuet da Capo."

% Repeat 1

highVoiceOne = \relative c' {
  | fs8 g a4 g
  | c4 b a
  | g4 b8 a g fs
  | a8 g fs g e g
  | as8 b cs as b d
  | e16 fs g8 fs4. e8
  | d8 cs e d cs b

  \barNumberCheck #8

  | fs'2.
  |
}

upperMiddleOne = \relative c' {
  | d4 ds e
  | fs2.
  | e2 ds4
  | e2.
  | r4 e d
  | r4 r8 cs' fs,4
  | b2.

  \barNumberCheck #8

  | as2.
  |
}

lowVoiceOne = \relative c' {
  | b2.
  | ds,2.
  | e4 a, b
  | e,4 b' e
  | g2.
  | as,2.
  | b4 a g

  \barNumberCheck #8

  | fs2.
  |
}

% Repeat two

highVoiceTwo = \relative c''' {
  | a4 fs e
  | ds2.
  | e4 fs g
  | cs,8 b d cs b a
  | d8 e fs d e g
  | b4 a g
  | fs8 e g fs e fs

  \barNumberCheck #16

  | d2.
  | a'8 g fs4 g
  | e4 fs g
  | fs4 e8 d cs b
  | b8 as gs as fs as
  | cs8 d e cs d fs
  | g4 fs e
  | d8 cs e d cs d

  \barNumberCheck #24

  | b2.
  |
}

upperMiddleTwo = \relative c'' {
  | cs4 c b
  | b8 a a g g fs
  | b2.
  | r4 e, g
  | fs8 g a4 g ~
  | g4 fs e
  | d4 d' cs

  \barNumberCheck #16

  | d2.
  | fs8 e d4 e
  | cs4 d e ~
  | e8 d cs b as b
  | r4 \staffDown b,4 \tieUp as ~
  | as8 \tieNeutral b cs as b d
  | e4 d cs
  | b4 \staffUp b' as

  \barNumberCheck #24

  | b2.
}

lowVoiceTwo = \relative c, {
  | fs'8 g a4 g
  | c4 b a
  | g8 fs a g fs e
  | a2. ~
  | a2. ~
  | a4 b cs
  | d4 g, a

  \barNumberCheck #16

  | d,4 a d,
  | d'8 e fs e fs g
  | a8 b cs b as cs
  | d,4 g e
  | \tieDown fs2. ~
  | fs2. ~
  | fs4 \tieNeutral gs as
  | b4 e, fs _ \textCapo

  \barNumberCheck #24

  | b,2.
  |
}

global = {
  \key b \minor
  \time 3/4
  \accidentalStyle Score.piano-cautionary
}

upper = {
  \clef treble
  \global
  <<
    \new Voice { \repeat volta 2 { \voiceOne \highVoiceOne } }
    \new Voice { \repeat volta 2 { \voiceTwo \upperMiddleOne } }
  >> <<
    \new Voice { \repeat volta 2 { \voiceOne \highVoiceTwo } }
    \new Voice { \repeat volta 2 { \voiceTwo \upperMiddleTwo } }
  >>
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
  \header { title = "Trio" }
  \score {
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
    \layout {
    }
    \midi {
      \tempo 4 = 100
    }
  }
}

\language "nederlands"
