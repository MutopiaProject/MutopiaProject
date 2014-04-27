\version "2.18.2"
\language "english"

\header {
  title        = "French Suite VI: Bourrée"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 817"
  style        = "Baroque"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/Apr/15"
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

% Repeat 1

highVoiceOne = \relative c'' {
  \partial 4 gs8 a
  | b4 gs8 b e4 b
  | fs'4 b, gs' b,
  | a'4 gs8 a b a gs fs
  | a8 gs fs gs e gs fs gs
  | e8 gs ds gs cs, gs' bs, gs'
  | cs,8 ds e fs gs fs e fs
  | ds8 fs cs fs b, fs' as, fs'
  
  \barNumberCheck #8
  
  | b,8 cs ds e fs gs as b
  | e,8 fs ds e fs e fs e
  | ds8 e cs ds e ds e ds
  | cs8 ds b cs ds cs ds cs 
  | b2. % partial bar
}

lowVoiceOne = \relative c {
  \partial 4 r4
  | r4 e8 fs gs fs gs e
  | a8 gs a e b' a b e,
  | cs'8 b cs e, ds' cs ds e,
  | e'4 b gs bs
  | cs4 gs ds' gs,
  | e'8 ds cs ds e4 as,
  | b4 fs cs' fs,
  
  \barNumberCheck #8
  
  | ds'8 cs b cs ds4 fs,
  | cs'8 b cs b as b gs as
  | b8 as b as gs fs gs fs
  | e8 ds e cs fs4 fs,
  | b2. % partial bar
}

% Repeat two

highVoiceTwo = \relative c''' {
    b4 % partial bar
  | ds,8 cs b cs ds cs ds b
  | e8 ds e b fs' e fs b,
  | gs'8 fs gs b, as' gs as b,
  
  \barNumberCheck #16
  
  | b'8 fs e fs ds4 gs8 bs,
  | cs4 gs' ds gs
  | e8 ds e fs gs a gs fs
  | e8 gs ds gs cs, gs' bs, gs'
  | cs,8 bs cs ds e fs gs a
  | b8 a b a gs a fs gs
  | a gs a gs fs gs es fs
  | gs8 fs gs fs es fs ds es
  
  \barNumberCheck #24
  
  | fs2. fs,8 gs
  | a4 fs8 a cs4 a
  | fs'4 cs a' fs
  | ds4 b8 cs ds4 b8 ds
  | fs4 ds b' fs
  | gs8 a fs gs a gs a gs
  | fs gs e fs gs fs gs fs
  | e8 fs ds e fs e fs e
  
  \barNumberCheck #32
  
  | ds8 e ds cs b cs a b
  | gs8 b fs b e, b' ds, b'
  | e,8 fs gs a b cs ds e
  | fs4 b, gs' b, 
  | a'8 gs fs gs a4 b
  | gs4 fs8 e gs fs e ds 
  | e8 fs e ds cs b a gs
  | a8 b gs a b a b a
  
  \barNumberCheck #40
  
  | gs8 a fs gs a gs a gs
  | fs8 gs e fs gs fs gs fs
  | e2. % partial bar
}

lowVoiceTwo = \relative c {
    ds8 e % partial bar
  | fs4 ds8 fs b4 fs
  | cs'4 fs, ds' fs,
  | e'4 ds8 e fs e ds cs 
  
  \barNumberCheck #16
  
  | e8 ds cs ds b gs' fs gs
  | e8 gs ds gs cs, gs' bs, gs'
  | cs,4 gs'8 fs e fs e ds 
  | cs4 gs ds' gs,
  | e'8 fs e ds cs ds e fs
  | gs8 fs gs fs es ds es ds
  | cs8 b cs b a b gs a 
  | b8 cs a b cs4 cs,
  
  \barNumberCheck #24
  
  | fs4 e8 d cs b a gs
  | fs4 r r cs''8 b
  | a4 cs8 a fs4 a8 fs
  | b8 a gs b fs b e, b'
  | ds,8 b' cs, b' ds, b' b, b'
  | e,4 ds' cs e,
  | ds4 cs' b ds,
  | cs4 b' as fs
  
  \barNumberCheck #32
  
  | b4 b,8 cs ds4 b8 ds
  | e4 b fs' b,
  | gs'8 fs e fs gs a b cs
  | ds8 cs ds b e ds e b
  | fs'8 e ds cs b a gs fs
  | e4 gs a b
  | cs4 cs, ds e
  | fs8 e fs e ds e cs ds
  
  \barNumberCheck #40
  
  | e ds e ds cs b cs b
  | a8 gs a fs b4 b,
  | e4 b' e % partial bar
}

global = { 
  \key e \major
  \time 2/2
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

\score {
  \new PianoStaff <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  \layout { 
  } 
  \midi { 
    \tempo 2 = 80
  }
}
