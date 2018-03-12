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

% Repeat 1

highVoiceOne = \relative c'' {
  \stemNeutral
  | b8 d fs b ~ b as
  | b8 fs e16 d cs b ~ b8 as
  | b8 g' ~ g16 fs e fs ~ fs e d e
  \stemUp
  | e2. ~
  | e16 d cs b cs a g a b cs d e
  | as,16 fs e fs g a b cs d e fs g
  | a16 b cs, d fs, e fs d' g, fs g e

  \barNumberCheck #8

  | d4 s s
  |
}

upperMiddleOne = \relative c' {
  | s2. * 2
  | s4 s \staffDown b4 ~
  | b8 as \staffUp cs fs ~ fs fs ~
  | fs8 g4 fs e8 ~
  | e8 d4 cs d8 ~
  | d8 e cs d4 cs8

  \barNumberCheck #8

  | r8 r16 cs d2
  |
}

lowerMiddleOne = \relative c' {
  | d2 e4
  | fs2 e4
  | d4 cs s1
  | s2. * 3

  \barNumberCheck #8

  |
  <<
    { r16 e, fs8 ~ \stemDown fs8. d16 a fs d8 \stemUp }
    \\
    { s4 \stemUp r16 a'' fs ~ fs4 \stemDown }
  >>
  |
}

lowVoiceOne = \relative c' {
  | b2 cs4
  | d2 cs4
  | b4 a g
  | fs2 as4
  | b4 a g
  | fs4 e fs
  | g4 a8 g a4

  \barNumberCheck #8

  | d,4 s s
  |
}

% Repeat two

highVoiceTwo = \relative c' {
  | fs2 g8. \trill fs32 g
  | a4 ~ a8 b16 cs d e fs e
  | fs16 d cs b e a, gs a d gs, fs gs
  | e16 gs b d <cs a>2
  | r4 b' a ~
  | a4 gs fs ~
  | fs4 fs es

  \barNumberCheck #16

  | fs2.
  | c16 b c fs a g a c b a g fs
  | e ds fs a g2
  | fs4 es fs
  | gs4 ~ gs16 fs es gs fs e d cs
  | d16 b as b fs b cs d e, cs' d e
  | fs,16 d' e fs gs, e' fs g cs, g' fs e
  | d16 b' g e fs b, as b fs b cs as

  \barNumberCheck #24

  | b4 b2
  |
}

upperMiddleTwo = \relative c {
  | \staffDown r8 fs a \staffUp d ~ d cs
  | r8 d4. ~ d8 cs
  | s2.
  | e4 ~ e2
  | d'2 cs4
  | b2 a4
  | gs2.

  \barNumberCheck #16

  | s2. * 2
  | s4 e'2
  | b4 cs d ~
  | d4 cs2
  | s2. * 3

  \barNumberCheck #24

  | r8 r16 fs,16 ~ fs \slurUp fs ( d8 ~ <fs d>4 )
  |
}

lowerMiddleTwo = \relative c {
  | s2. * 7

  \barNumberCheck #16

  | r8 a cs fs ~ fs g
  | a4 b c ~
  | c4 b8 c16 b a g fs e
  | \stemDown d16 cs d fs b as b d cs b a es
  | fs16 es gs b ~ \stemUp b8 b as4
  | r8 d, fs b ~ b as
  | b8 fs ~ fs4 g
  | fs8 as b cs d e ~

  \barNumberCheck #24

  | e16 cs d8 ~ d s s4
  |
}

lowVoiceTwo = \relative c {
  | d2 e4
  | fs4 a8 fs e4
  | d8 d' ~ d16 cs b cs ~ cs b a b
  | a4 ~ a8 gs16 a b gs a fs
  | es16 gs a b a gs fs es fs gs a fs
  | cs16 es fs gs fs es ds cs d e fs d
  | b8 cs16 d cs b a gs cs8 cs,

  \barNumberCheck #16

  | fs2 e'4
  | ds2.
  | e2.
  | s2.
  | s4 fs2
  | b,2 cs4
  | d4 ~ d8 b4 as8
  | b8 cs d e fs4

  \barNumberCheck #24

  | b4. r16 b fs d b8
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
  <<
    \new Voice { \repeat volta 2 { \voiceThree \lowerMiddleOne } }
    \new Voice { \repeat volta 2 { \voiceFour \lowVoiceOne } }
  >> <<
    \new Voice { \repeat volta 2 { \voiceThree \lowerMiddleTwo } }
    \new Voice { \repeat volta 2 { \voiceFour \lowVoiceTwo } }
  >>
}

\bookpart {
  \header {
    maintainer         = "Knute Snortum"
    maintainerEmail    = "knute (at) snortum (dot) net"
    maintainerWeb      = "http://www.musicwithknute.com/"
  }
  \include "../header.ily"
  \header { title = "Sarabande" }
  \score {
    \new PianoStaff \with {
                                % Added to prevent warning: "no viable initial configuration found: may
                                % not find good beam slope"
      \override StaffGrouper #'staff-staff-spacing #'basic-distance = #11
    }
    <<
      \new Staff = "upper" \upper
      \new Staff = "lower" \lower
    >>
    \layout {
    }
    \midi {
      \tempo 4 = 72
    }
  }
}

\language "nederlands"
