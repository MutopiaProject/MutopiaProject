\header {
  enteredby = 	"Allen Garvin"
  maintainer = 	"Allen Garvin"
  copyright = 	"Public Domain"
  filename = 	"anna-magdalena-20a.ly"
  title = 	"Aria"
  opus = 	"BWV 515"
  composer =	"Johann Sebastian Bach (1685-1750)"
  style =	"Baroque"
  source =	"Bach-Gesellschaft"

  mutopiainstrument = "Harpsichord, Piano, Clavichord"
  mutopiatitle =      "Aria"
  mutopiacomposer =   "BachJS"
  mutopiaopus =       "BWV 515"
  maintainerEmail =   "AGarvin@tribalddb.com"

 footer = "Mutopia-2013/01/22-78"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.16.1"

\include "english.ly"

voiceone =  \relative c' {
  \key d \minor
  \time 3/4
  \clef "treble"

  \repeat "volta" 2 {
    d4 d d |
    g4.(  a16[  bf)] a4 |
    g  f8[ e] a4 |
    f  e8[ f] d4 |
    f f f |
    a4.(  bf16[  c)] f,4 |
    g e2 |
    f2. |
  }
  \repeat "volta" 2 {
    g4 g g |
    g2 e4 |
    a  g8[ f e d] |
    cs2. |
    a4 cs e |
    g4.  a16[ bf] a4 |
    f(  d) cs |
    d2. |
  }
}

voicetwo =  \relative c {
  \clef "bass"
  \key d \minor
  \time 3/4

  \repeat "volta" 2 {
    d4 d' c |
    bf e, f |
    g a a, |
    d a f |
    d d' bf |
    f' c d |
    bf c c, |
    f2. |
  }
  \repeat "volta" 2 {
    c''4 e, g |
    b g c |
    f,2 g4 |
    a  g8[ f e d] |
     cs[ b a b cs d] |
    e4 d cs |
    d f a |
    d, a d, |
  }
}
   
\score {
   \context GrandStaff << 
    \context Staff = "one" <<
      \voiceone
    >>
    \context Staff = "two" <<
      \voicetwo
    >>
  >>

  \layout{}
  
  \midi {
    \tempo 4 = 105
    }
}

