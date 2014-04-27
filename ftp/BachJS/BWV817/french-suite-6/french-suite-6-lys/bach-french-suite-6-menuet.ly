\version "2.18.2"
\language "english"

\header {
  title        = "French Suite VI: Menuet"
  composer     = "J. S. Bach (1685-1750)"
  opus         = "BWV 817"
  style        = "Baroque"
  license      = "Creative Commons Attribution-ShareAlike 4.0"
  enteredby    = "Knute Snortum"
  lastupdated  = "2014/Apr/17"
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
  | gs8 fs e fs gs a
  | << { b4 ( cs ) b } \\ { gs4 a gs } >>
  | ds8 e fs gs a ds
  | << { e4 ( fs ) e } \\ { gs,4 a gs } >>
  | gs'8 fs e ds cs b
  | << { fs'4 ( gs ) fs } \\ { as,4 ( b ) as } >>
  | b8 ( as gs fs ) e' ( ds )
  
  \barNumberCheck #8
  
  | << { cs4 ( b2 ) } \\ { e,4 ( ds2 ) } >>
  |
}

lowVoiceOne = \relative c {
  | r2.
  | r8 e ds e e,4
  | r2.
  | r8 e' ds e e,4
  | r2.
  | r8 e' ds e e, e'
  | ds4 e fs
  
  \barNumberCheck #8
  
  | r8 b as b b,4
  |
}

% Repeat two

highVoiceTwo = \relative c'' {
  | ds8 cs b cs ds e
  | << { fs4 ( gs ) fs } \\ { ds4 ( e ) ds } >>
  | a'8 ( gs fs e ds cs )
  | bs8 ( a' gs fs e ds )
  | e8 cs gs ( a b cs )
  | d8  b cs a b ds,
  | e8 gs fs a b cs
  
  \barNumberCheck #16
  
  | << { fs,2. } \\ { ds2. } >>
  | gs8 fs e fs gs a
  | << { b4 ( cs ) b } \\ { gs4 ( a ) gs } >>
  | b,8 cs ds e fs gs
  | << { a4 ( b ) a } \\ { fs4 ( gs ) fs } >>
  | gs8 b e ( ds ) gs ( fs )
  | a8 gs fs e ds cs
  | b8 e << { gs,4 \trill fs8 e } \\ { e4 ds } >>
  
  \barNumberCheck #24
  
  | e2.
  |
}

lowVoiceTwo = \relative c' {
  | r2.
  | r8 b as b b,4
  | r2.
  | r8 cs' bs cs cs,4
  | r2.
  | r8 a' gs a a, a'
  | gs4 fs e
  
  \barNumberCheck #16
  
  | r8 b' a b b,4
  | r2.
  | r8 b' a b b,4
  | r2.
  | r8 b' a b b,4
  | r2. 
  | r8 b' a b b, a'
  | gs8 a b4 b,
  
  \barNumberCheck #24
  
  | << { r8 b' gs2 } \\ { e4. b8 e,4 } >>
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
    \tempo 4 = 116
  }
}
