\version "2.18.2"
\language "english"

\header {
  title        = "French Suite VI: Gigue"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 817"
  style        = "Baroque"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/Apr/18"
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
  \partial 8 b8
  | e8 b gs e gs fs
  | gs4. ~ gs4 a8
  | b8 a16 gs fs e cs' b a gs fs e
  | ds8 e16 ds cs b a'4. ~
  | a16 gs fs gs a b cs8 b a
  | gs16 fs e fs gs a b a gs a b cs
  | ds8 b e fs, e' ds
  
  \barNumberCheck #8
  
  | e4. ~ e4 gs8
  | a16 gs fs e ds cs bs ds gs fs e ds
  | e16 fs e ds cs b as cs fs e ds cs
  | ds16 e ds cs b a gs b e ds cs b
  | as16 gs fs gs as b cs b as b cs ds
  | e16 ds cs ds e fs gs fs e fs gs as
  | b16 as gs fs e ds gs fs e ds cs b
  | as16 cs e gs fs8 ~ fs8 e16 ds cs b
  
  \barNumberCheck #16
  
  | b16 ds fs b fs ds b ds fs b fs ds
  | b2.~
  | b16 d es gs es d b d es gs es b
  | as16 fs gs as b cs ds4. ~
  | ds16 gs, as b cs ds e4. ~
  | e16 gs, fs e ds e as gs fs e ds e
  | b'16 gs fs e ds e cs' gs fs e ds e
  | ds' cs b cs ds e fs8 b, as
  
  \barNumberCheck #24
  
  | b4. ~ b4 % partial bar
}

lowVoiceOne = \relative c' {
  \partial 8 r8
  | r4. r8 r b
  | e8 b gs e gs fs
  | gs4 r8 a4 r8
  | b8 fs ds b ds cs
  | ds4. ~ ds8 e16 ds cs b
  | e8 b gs e e' ds 
  | a'8 gs16 fs gs e b'8 b, b'
  
  \barNumberCheck #8
  
  | e8 b gs e gs cs,
  | fs4 r8 gs as bs
  | cs,8 ds e fs gs as
  | b,8 cs ds e cs e
  | fs8 cs as fs e' ds
  | cs gs e cs b' as
  | gs8 as b e,4 e'8 ~
  | e16 gs fs e ds cs b8 fs' fs,
  
  \barNumberCheck #16
  
  | b4 r8 as4 r8
  | gs16 b ds gs ds b fs b ds fs ds b
  | es4 r8 cs4 r8
  | fs4. ~ fs16 gs as b cs ds
  | e4. ~ e16 fs e ds cs b 
  | as8 b cs fs,4 r8
  | gs4 r8 as4 r8
  | b8 as gs ds e fs
  
  \barNumberCheck #24
  
  | b,8 ds fs b4 % partial bar
}

% Repeat two

highVoiceTwo = \relative c'' {
    fs8 % partial bar
  | b,8 ds fs b fs a 
  | gs4. ~ gs4 gs8
  | a16 gs a b a gs fs es fs gs a fs
  | gs16 fs gs a b gs es8 cs es
  | fs2. \trill ~
  | fs4. ~ fs16 a gs fs es fs
  | b,16 d cs b as b es d cs b as b
  
  \barNumberCheck #32
  
  | fs'16 d cs b as b gs' d cs b a gs
  | a16 gs fs gs a b cs8 fs, es
  | fs4. ~ fs4 a8
  | a2. \trill ~
  | a4. ~ a8. cs16 b a
  | gs16 fs e fs gs a b a gs a b cs 
  | d8. fs16 e d cs b a b cs ds
  | e16 ds e gs fs e ds cs b cs ds e
  
  \barNumberCheck #40
  
  | fs16 e ds e fs gs a4. ~
  | a16 b, cs ds e fs gs4. ~
  | gs16 a, b cs ds e fs e ds cs b a
  | gs16 e' ds cs b a gs8 a fs
  | e16 gs b e b gs e gs b e b gs
  | e2. ~
  | e16 g as cs as g e g as cs as g
  | e'16 ds cs b a' gs fs e b' a gs fs
  
  \barNumberCheck #48
  
  | e4. ~ e4 % partial bar
}

lowVoiceTwo = \relative c' {
    r8 % partial bar
  | r4. r8 r b
  | e,8 gs b e cs d
  | cs4 r8 d4 r8
  | b4 r8 cs16 b cs d cs b
  | a16 gs a b a gs fs e fs gs fs e
  | d16 cs d e d cs b a b cs b a
  | gs4 r8 b4 r8
  
  \barNumberCheck #32

  | d4 r8 es,4 r8
  | fs8 fs' d a b cs
  | fs,8 e''16 d cs b a b cs b a gs
  | fs16 gs a gs fs e ds e fs e ds cs
  | b16 cs ds cs b a gs a b a gs fs
  | e8 gs b e b d
  | gs16 fs e d cs b a8 cs e
  | as,8 cs fs b, ds fs
  
  \barNumberCheck #40
  
  | a8 fs a ds16 cs b a gs fs
  | e4. ~ e16 e fs gs a b
  | cs4 r8 ds4 r8
  | e8 gs, a b a b
  | e,4 r8 ds4 r8
  | cs16 e gs cs gs e b e gs b gs e
  | as4 r8 fs4 r8
  | b,8 e cs gs a b
  
  \barNumberCheck #48
  
  | e,8 gs b e4 % partial bar
}

global = { 
  \key e \major
  \time 6/8
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
    \tempo 4. = 72
  }
}
