\version "2.18.2"
\language "english"

\header {
  title        = "French Suite VI: Gavotte"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 814"
  style        = "Baroque"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/Apr/12"
  date         = "1722"
  source       = "Bach-Gesellschaft, 1863"

  mutopiatitle       = "French Suite no. 6 in E major"
  mutopiacomposer    = "BachJS"
  mutopiaopus        = "BWV 817"
  mutopiainstrument  = "Harpsichord, Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2014/04/27-1935"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

staffUp = \change Staff = "upper" 
staffDown = \change Staff = "lower"

% Repeat one

highVoiceOne = \relative c'' {
  \partial 2 b4 cs
  | cs4 ds ds8 e fs4
  | fs4 e gs fs8 gs16 a
  | gs4 ds8 e16 fs e4 fs8 gs16 a
  | ds,4 cs16 b8. b4 cs
  | cs4 ds ds8 e fs4
  | fs4 e cs cs8 ds16 e
  | ds4 ds8 e16 fs ds4 cs8 b
  
  \barNumberCheck #8
  
  | b2 % partial bar
}

middleVoiceOne = \relative c'' {
  \partial 2 gs4 a
  | a4 fs fs8 gs a4
  | a4 gs b2 ~
  | b2. cs4
  | fs,2 gs4 a
  | a4 fs fs8 gs a4
  | a4 gs b2 ~
  | b2 b4 as
  
  \barNumberCheck #8
  
  | b2 % partial bar
}

lowVoiceOne = \relative c {
  \partial 2 e4 r
  | e,4 r e' r
  | e,4 r e' ds
  | e4 fs gs a 
  | b8 a gs fs e4 r
  | e,4 r e' r 
  | e,4 e'8 fs gs e ds cs
  | fs8 ds cs b fs'4 fs,
  
  \barNumberCheck #8
  
  | b2 % partial bar
}

% Repeat two

highVoiceTwo = \relative c'' {
    ds4 fs % partial bar
  | ds4 cs8 b e fs gs4 ~
  | gs4 cs, fs e
  | e4 ds ds8 bs cs4
  | bs4 as8 gs b4 d
  | d4 gs gs8 b, cs4
  | a2 a4 cs
  | cs4 fs fs8 ds e4
  
  \barNumberCheck #16
  
  | ds4 cs16 b8. gs'4 a
  | a4 b b2 ~
  | b8 a gs fs e2 ~
  | e2. ds4
  | e2
}

middleVoiceTwo = \relative c' {
    fs2 ~ % patrial bar
  | fs2 b
  | b2 a4 gs
  | gs4 fs fs e
  | ds2 gs
  | b2 r4 es,
  | fs2 fs
  | a2. gs4
  
  \barNumberCheck #16
  
  | fs2 b4 cs
  | cs4 d d8 b cs4
  | cs2 fs,4 fs16 gs a8
  | gs4 gs16 a b8 gs4 fs8 e
  | e2
}

lowVoiceTwo = \relative c' {
    b4 a % partial bar
  | a4 gs gs8 fs e4
  | a2 ds,8 cs ds e
  | fs8 e fs gs a gs a fs
  | gs8 a gs fs es4 r
  | gs4 r cs, r
  | fs8 gs a b cs ds e cs
  | ds8 cs b a gs fs gs e
  
  \barNumberCheck #16
  
  | b'8 a gs fs e4 r
  | e,4 r es r 
  | fs8 gs a b cs a gs fs
  | b8 gs fs e b'4 b
  | e,2
}

global = { 
  \key e \major
  \time 4/4
  \accidentalStyle Score.piano-cautionary
}

upper = {
  \clef treble
  \global
  <<
    \new Voice { \repeat volta 2 { \voiceOne \highVoiceOne } }
    \new Voice { \repeat volta 2 { \voiceTwo \middleVoiceOne } }
  >> <<
    \new Voice { \repeat volta 2 { \voiceOne \highVoiceTwo } }
    \new Voice { \repeat volta 2 { \voiceTwo \middleVoiceTwo } }
  >>
}

lower = {
  \clef bass
  \global
  \new Voice { \repeat volta 2 \lowVoiceOne }
  \new Voice { \repeat volta 2 \lowVoiceTwo }
}

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
