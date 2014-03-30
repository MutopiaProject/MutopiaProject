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

highVoiceTwo = \relative c' {
}


lowVoiceTwo = \relative c {
}

global = { 
  \key b \minor
  \time 3/4
  \accidentalStyle Score.piano-cautionary
}

\score {
  \new PianoStaff \with {
    % Added to prevent warning: "no viable initial configuration found: may 
    % not find good beam slope"
    %%\override StaffGrouper #'staff-staff-spacing #'basic-distance = #11
  } 
  <<
    \new Staff = "upper" {
      \clef treble
      \global
      <<
        \new Voice { \repeat volta 2 { \highVoiceOne } }
      >> <<
        \new Voice { \repeat volta 2 { \highVoiceTwo } }
      >>      
    }
    \new Staff = "lower" {
      \clef bass
      \global
      <<
        \new Voice { \repeat volta 2 { \lowVoiceOne } }
      >> <<
        \new Voice { \repeat volta 2 { \lowVoiceTwo } }
      >>
    }
  >>
  \layout { 
  } 
  \midi { 
    \tempo 4 = 100
  }
}
