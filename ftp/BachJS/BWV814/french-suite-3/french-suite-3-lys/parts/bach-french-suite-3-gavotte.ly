\version "2.18.2"
\language "english"

staffUp = {
  \change Staff = "upper"
  \stemDown
  \tieDown
}

staffDown = {
  \change Staff = "lower"
  \stemUp
  \tieUp
}

lowerVoice = {
  \stemDown
  \tieDown
}

neutralVoice = {
  \stemNeutral
  \tieNeutral
}

% Repeat 1

highVoiceOne = \relative c' {
  | fs4 b8 as b cs d b
  | g'4 g8 fs e4 d
  | cs4 b8 as b cs d e
  | fs4 e8 d e d cs b
  | d8 cs b as b cs d b
  | g'4 g8 fs e4 fs8 g
  | a4 cs, d8 cs b a

  \barNumberCheck #8

  | g'8 fs e fs d2
}

upperMiddleOne = \relative c' {
  | d4 cs d fs
  | e4 d cs b
  | e2 \staffDown fs,
  | b2 as4 b \staffUp
  | r4 cs d fs
  | e4 d cs2 ~
  | cs4 e d2 ~

  \barNumberCheck #8

  | d4 cs d2
}

lowVoiceOne = \relative c' {
  | b1 ~
  | b2 g ~
  | g4 fs8 e \lowerVoice d4 cs
  | d4 e fs b,
  | \neutralVoice b'1 ~
  | b2. a8 g
  | fs4 e fs g

  \barNumberCheck #8

  | a2 r4 d,
}

% Repeat two

highVoiceTwo = \relative c'' {
  | \stemNeutral a4 d8 cs d e fs d
  | g,4 g8 fs g4 e'
  | g,8 fs e fs gs a b cs
  | d8 cs b e d cs b a
  | cs4 fs8 es fs gs a gs
  | b8 a gs fs es ds fs es
  | ds8 cs fs4 b,8 a gs a

  \barNumberCheck #16

  | fs1
  | a'4 ds,8 cs ds e fs ds
  | b'8 a g a b2 ~
  | b4 cs,8 b cs d e cs
  | a'8 g fs g a2 ~
  | a4 b,8 as b4 g'
  | as,8 b cs d e4 g,4 ~
  | g8 fs e fs d' b as b

  \barNumberCheck #24

  | e8 d cs b cs4 fs, ~
  | fs4 b8 as b cs d b
  | g'4 g8 fs e4 d
  | cs4 b8 as b cs d e
  | fs8 e d cs e d cs b
  | d8 cs b as g'8 fs e ds
  | a'8 g fs e b' as gs fs
  | b4 fs d \prall cs8 b

  \barNumberCheck #32

  | b1
}

upperMiddleTwo = \relative c {
  | \staffDown fs4 g a2
  | b2 a ~
  | a4 a b a ~
  | a4 gs a b
  | cs4 b cs2
  | fs,4 b2 gs4
  | es4 fs2 es4

  \barNumberCheck #16

  | s1 * 8

  \barNumberCheck #24

  | r4 b'= as2 ~
  | as4 fs b2 ~
  | b4 e, as b
  | cs2 b ~
  | b4 as b s4
  | s1 * 3

  \barNumberCheck #32

  | \staffUp r8 fs'=' d2.
  |
}

lowVoiceTwo = \relative c {
  | \lowerVoice d4 e fs d ~
  | d4 d4 ~ d8 cs b a
  | d2. cs4
  | b4 e a,2
  | a'4 gs a fs
  | d2 cs4 b ~
  | b4 a8 b cs2

  \barNumberCheck #16

  | \neutralVoice fs,4 fs'8 es fs gs a fs
  | ds4 fs b a
  | g8 fs e fs g fs e d
  | cs4 e a g
  | fs8 e d e fs e d cs
  | b8 d g fs e d cs b
  | cs8 d e fs gs as b as
  | b4 as b g

  \barNumberCheck #24

  | \lowerVoice fs2. e4
  | d2. d4
  | cs2. d4
  | e4 fs g fs8 e
  | d4 fs b \neutralVoice a
  | g4 fs e g
  | cs,4 g' fs e
  | e'8 d cs b fs'4 fs,

  \barNumberCheck #32

  | b4. fs8 b,2
  |
}

global = {
  \key b \minor
  \time 2/2
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
  \header { title = "Anglaise" }
  \score {
    \new PianoStaff <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
    \layout {
    }
    \midi {
      \tempo 4 = 144
    }
  }
}

\language "nederlands"
