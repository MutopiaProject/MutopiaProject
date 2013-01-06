\header {
  enteredby = 	"Allen Garvin"
  maintainer = 	"Allen Garvin"
  maintainerEmail = "AGarvin@tribalddb.com"
  copyright = 	"Public Domain"
  filename = 	"anna-magdalena-03.ly"
  title = 	"Menuet"
  opus = 	"BWV Anh. 113"
  composer =   "J. S. Bach (1685-1750)"
  style =	"Baroque"
  source =	"Bach-Gesellschaft"

  mutopiainstrument = "Harpsichord, Piano, Clavichord"
  mutopiacomposer =   "BachJS"
  mutopiatitle =      "Menuet"
  mutopiaopus =       "BWV Anh. 113"

 footer = "Mutopia-2013/01/06-74"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\version "2.16.1"

voiceone =  \relative c'' {
  \clef "treble"
  \time 3/4
  \key f \major

  \repeat "volta" 2 {
    c4  d16 e f8 e4 |
     \times 2/3 {f8( e  d)} c2 | %A grace might be missing here
     \times 2/3 { d8 ees d }  \times 2/3 {c d c }  \times 2/3 {bes c bes} |
    \grace bes8 a2 g4 |
     a8 c f, c' g c |
     a c bes c g c |
     a c f, c' g c |
     a c bes c g c |
     a c d e f d |
     c b a g  c16( d c  b) |
     c8 f e4  d16\trill c d8 |
    c2. |
  }
  \repeat "volta" 2 {
    g'4  f8 e f d |
     e g bes4 r |
    a  g8 f e d |
    \grace d8 cis2. |
     cis8 d e cis d e |
    a,4 a a |
     cis8 d e cis d e |
    g,4 g g |
     cis8 d e cis d e |
     a, d c! bes a g |
    f4 g e |
    d2. |
     c'8 f e f ees f |
     a f d f c f |
     d g fis g f g |
     bes g e g c, bes |
     a f' g a g f |
     bes, g' a bes a g |
     c, c' bes a g a |
    \grace g8 f2. |
  }
}

voicetwo =  \relative c {
  \time 3/4
  \key f \major
  \clef "bass" 

  \repeat "volta" 2 {
    f4 a g |
    a  f8 g a f |
    bes4 c c, |
    f  c8 d e c |
    f4 a, g |
    f g e |
    f a g |
    f g e |
    f f' d |
    g e a |
    f g g, |
    c2. |
  }
  \repeat "volta" 2 {
    c4 g' g, |
    c  e8 d e c |
    f4 bes g |
    a e cis |
    a a' e |
     cis8 d e cis d e |
    a,4 a a |
     cis8 d e cis d e |
    g,4 g g |
    f f' g |
    a2 a,4 |
     d8 d' c bes a g |
    a2 g4 |
    f bes a |
    bes2 a4 |
    g c e, |
    f r r |
    g r r |
    a bes c |
    f,2. |
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
    \tempo 4 = 120
    }


}

