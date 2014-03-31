\version "2.18.2"
\language "english"

\header {
  title        = "French Suite III: Menuet"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 814"
  style        = "Baroque"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/Mar/29"
  date         = "1722"
  source       = "Bach-Gesellschaft, 1863"

  mutopiatitle       = "French Suite no. 3 in B minor"
  mutopiacomposer    = "BachJS"
  mutopiaopus        = "BWV 814"
  mutopiainstrument  = "Harpsichord, Piano"
  maintainer         = "Knute Snortum"
  maintainerEmail    = "knute (at) snortum (dot) net"
  maintainerWeb      = "http://www.musicwithknute.com/"

 footer = "Mutopia-2014/03/30-100"
 copyright =  \markup { \override #'(baseline-skip . 0 ) \right-column { \sans \bold \with-url #"http://www.MutopiaProject.org" { \abs-fontsize #9  "Mutopia " \concat { \abs-fontsize #12 \with-color #white \char ##x01C0 \abs-fontsize #9 "Project " } } } \override #'(baseline-skip . 0 ) \center-column { \abs-fontsize #12 \with-color #grey \bold { \char ##x01C0 \char ##x01C0 } } \override #'(baseline-skip . 0 ) \column { \abs-fontsize #8 \sans \concat { " Typeset using " \with-url #"http://www.lilypond.org" "LilyPond " \char ##x00A9 " " 2014 " by " \maintainer " " \char ##x2014 " " \footer } \concat { \concat { \abs-fontsize #8 \sans{ " " \with-url #"http://creativecommons.org/licenses/by-sa/4.0/" "Creative Commons Attribution ShareAlike 4.0 International License " \char ##x2014 " free to distribute, modify, and perform" } } \abs-fontsize #13 \with-color #white \char ##x01C0 } } }
 tagline = ##f
}

% Repeat one

highVoiceOne = \relative c'' {
  | d8 fs b fs cs fs
  | d8 fs b, fs' as, fs'
  | b,8 fs' b fs cs fs
  | d8 fs b, fs' as, fs'
  | d8 fs d b g' e
  | cs8 e cs a fs' d
  | b8 fs' e d cs b
  
  \barNumberCheck #8
  
  | as8 fs as cs fs e
  | d8 fs b fs cs fs
  | d8 fs b, fs' as, fs'
  | b,8 fs' b fs cs fs
  | d8 fs b, fs' as, fs'
  | d8 fs d b g' e
  | cs8 e cs a a' e
  | fs8 a fs d a cs 
  
  \barNumberCheck #16
  
  | d2.
}

lowVoiceOne = \relative c' {
  | b4 b, as'
  | b4 d fs
  | d4 b as
  | b4 d, fs
  | b,4 b' e,
  | a,4 a' d,
  | g,4 g' e
  
  \barNumberCheck #8
  
  | fs8 g fs e d cs
  | b4 b' as
  | b4 d fs
  | d4 b as
  | b4 d, fs
  | b,4 b' e,
  | a,4 a' cs,
  | d4 fs a
  
  \barNumberCheck #16
  
  | d,4 a d,
}

% Repeat two

highVoiceTwo = \relative c''' {
  | a8 g fs e d cs
  | d e fs d e g
  | fs8 g a4 cs,
  | d4 fs e
  | fs4 b gs
  | b,8 cs d4 cs
  | b8 a gs fs gs es
  
  \barNumberCheck #24
  
  | fs2.
  | a4. ( b16 c b4 )
  | a8 g a fs g e
  | b'4. ( cs16 d cs4 )
  | b8 as b gs as fs
  | e'8 cs fs, cs' e fs
  | g8 cs, fs cs e cs
  | d8 b fs b d b
  
  \barNumberCheck #32
  
  | fs'8 b, e b d b
  | cs8 b d b e b
  | fs' b, g' b, e b
  | fs'4 e8 d cs d
  | b2.
  
  \barNumberCheck #37
}

lowVoiceTwo = \relative c {
  | fs8 a d a cs a
  | fs8 a d, a' cs, a'
  | d,8 a' d a cs a
  | fs8 a d, a' cs, a'
  | d,8 fs d b b' gs
  | es8 gs es cs gs' es
  | fs4 cs' cs,
  
  \barNumberCheck #24
  
  | fs8 a cs a e a
  | ds,8 fs b, fs' ds fs
  | e4 b e,
  | es'8 gs cs, gs' es gs
  | fs4 cs fs,
  | as4 cs fs
  | as4 fs as
  | b,4 d fs
  
  \barNumberCheck #32
  
  | b4 cs d
  | e4 fs g
  | d4 e cs
  | d4 e fs
  | b,4 fs b,
  
  \barNumberCheck #37
}

global = { 
  \key b \minor
  \time 3/4
  \accidentalStyle Score.piano-cautionary
}

\score {
  \new PianoStaff <<
    \new Staff = "upper" {
      \clef treble
      \global
      \new Voice { \repeat volta 2 { \highVoiceOne } }
      \new Voice { \repeat volta 2 { \highVoiceTwo } }      
    }
    \new Staff = "lower" {
      \clef bass
      \global
      \new Voice { \repeat volta 2 { \lowVoiceOne } }
      \new Voice { \repeat volta 2 { \lowVoiceTwo } }
    }
  >>
  \layout { 
  } 
  \midi { 
    \tempo 4 = 100
  }
}
