\version "2.18.2"
\language "english"

\header {
  title        = "French Suite VI: Sarabande"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 817"
  style        = "Baroque"
  lisense      = "Creative Commons Attribution-ShareAlike 4.0"
  copyright    = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/Apr/06"
  date         = "1722"
  source       = "Bach-Gesellschaft, 1863"

  mutopiatitle       = "French Suite no. 6 in E major"
  mutopiacomposer    = "BachJS"
  mutopiaopus        = "BWV 817"
  mutopiainstrument  = "Harpsichord, Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"
}

upperVoice = {
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

staffUp = \change Staff = "upper" 
staffDown = \change Staff = "lower"
voiceFive = #(context-spec-music (make-voice-props-set 4) 'Voice)
voiceSix = #(context-spec-music (make-voice-props-set 5) 'Voice)

% Repeat one

upperHighOne = \relative c'' {
  | \staffUp \upperVoice gs8. a16 fs4. \trill e16 fs
  | e4 << { \voiceFive e2 } \\ { \upperVoice a2 } >>
  | a8. b16 gs4. fs16 gs
  | fs4 fs2
  | b8. \mordent cs16 a4. gs8
  | cs8 ds16 e e4. ds8
  | cs16 as b8 as4. b8
  | b4 << { \voiceFive fs2 } \\ { \upperVoice b2 } >>
  |
}

upperLowOne = \relative c' {
  | \staffDown \upperVoice b4 bs2
  | \staffUp \lowerVoice cs4 cs 2
  | \staffDown \upperVoice b4 \staffUp \lowerVoice e2
  | \voiceFive \upperVoice ds4 ds2
  | \voiceTwo ds4 e2
  | \voiceFive \upperVoice fs4 cs'4. b8
  | \voiceTwo e,8 ds cs ds e4 ~
  | e8 cs ds2
  |
}

lowerHighOne = \relative c' {
  | \staffDown \upperVoice gs4 gs2
  | gs4 ~ gs16 b a gs fs e ds e
  | fs4 b << { \voiceFive as } \\ { \upperVoice cs } >>
  | \staffUp \lowerVoice b4 b2
  | \staffDown \upperVoice b4 s2
  | \staffUp \lowerVoice cs4 fs4. fs8
  | \staffDown \upperVoice s4 fs,2 ~
  | fs4 fs2
  |
}

lowerLowOne = \relative c {
  | \staffDown \lowerVoice e4 ds2
  | cs2.
  | ds4 e2
  | b4 ~ b16 cs ds e fs gs a fs
  | gs4 cs b
  | as4 ~ as8 gs16 fs b4
  | gs8 e fs4 fs,
  | b4 b2
  |
}

% Repeat two

upperHighTwo = \relative c'' {
  | \staffUp \upperVoice ds8. e16 cs4. \trill bs8
  | bs4 \glissando << { \voiceFive fs'2 } \\ { \upperVoice a2 } >>
  |
}

upperLowTwo = \relative c'' {
  | \staffUp \upperVoice \voiceFive b4 fs2
  | \voiceSix \upperVoice gs4 ds'2
  |
}

lowerHighTwo = \relative c' {
  | \staffUp \lowerVoice fs4 cs2
  | ds4 bs'2
  |
}

lowerLowTwo = \relative c' {
  | \staffDown \lowerVoice b4 a2
  | gs4 ~ gs16 fs ( a gs fs e fs ds )
  |
}

global = { 
  \key e \major
  \time 3/4
  \accidentalStyle Score.piano-cautionary
}

upper = {
  \clef treble
  \global
  <<
    \new Voice { \repeat volta 2 { \voiceOne \upperHighOne } }
    \new Voice { \repeat volta 2 { \voiceTwo \upperLowOne } }
  >> <<
    \new Voice { \repeat volta 2 { \voiceOne \upperHighTwo } }
    \new Voice { \repeat volta 2 { \voiceTwo \upperLowTwo } }
  >>
}

lower = {
  \clef bass
  \global
  <<
    \new Voice { \repeat volta 2 { \voiceThree \lowerHighOne } }
    \new Voice { \repeat volta 2 { \voiceFour \lowerLowOne } }
  >> <<
    \new Voice { \repeat volta 2 { \voiceThree \lowerHighTwo } }
    \new Voice { \repeat volta 2 { \voiceFour \lowerLowTwo } }
  >>
}

\score {
  \new PianoStaff <<
    \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  >>
  \layout { 
  } 
  \midi { 
    \tempo 4 = 54
  }
}