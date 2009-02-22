\header {
  enteredby = 	"Allen Garvin"
  copyright = 	"Public Domain"
  filename = 	"division-violin-23.ly"
  title = 	"23. Johnny Cock thy Beaver"
  subtitle = "A Scotch Tune to a Ground"
  composer =	"Anonymous"
  style =	"Baroque"
  source =	"Facsimile from 1685 edition of Playford's Division Violin, Bodleian Library"
  lastupdated =	"2007/Mar/17"

  mutopiainstrument = "Violin"
  mutopiatitle =      "23. Johnny Cock thy Beaver: A Scotch Tune to a Ground"
  mutopiacomposer =   "Anonymous"
  maintainer = "Allen Garvin"
  maintainerEmail = "allen.garvin@dal.tribalddb.com"
  maintainerWeb = "http://agarvin.nitfol.com"
 footer = "Mutopia-2009/02/22-93"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\version "2.10.0"
\include "english.ly"

violin =  \relative c'' {
  \key f \major
  \time 6/4
  \clef "treble"

  \partial 4 d4 	|
  \repeat "volta" 2 {
    c2 f,4 a4. g8 f4	|
    g a g bf2 d,4	|
    c'2 f,4 a4. g8 a4	|
    f f' c a bf c	|
    d c d f c a		|
    g a g bf2 d4	|
    c2 f,4 a2 g4	|
    f(  f') c a2 f4	|
  }
  \repeat "volta" 2 {
    f(  f') c  a8[ bf] c4 a 	|
    g4(  g') d bf2 g4		|
    f(  f') c  a8[ bf] c4 a 	|
    f4(  f') c a4. bf8 c4 	|
     bf8[ a bf c d e] f4. f,8 a4	|
    g4 a g bf2 f'4		|
    c2 bf4 a2 g4		|
    f(  f') c a2 f4		|
  }
  \repeat "volta" 2 {
    c'4 a f c'  a8[ bf c a]	|
    d4 bf g  d'8[ c]  bf[ a] g4	|
    c4 a f  c'8[ bf a bf c a]	|
     c[ bf a bf c a]  c[ bf a bf c a] |
     d[ c bf c d bf]  c[ bf a bf c a] |
     g[ f g a bf c] d2 f4	|
    c4.  d8[ bf c] a4.  bf8[ g a]	|
    f4(  f') c a2 f4		|
  }
  \repeat "volta" 2 {
     c'8[ bf a g] f4  c'8[ bf a g] f4 	|
     d'8[ c bf a] g4  d'8[ c bf a] g4	|
     c8[ bf a g] f4  c'8[ bf a g] f4 	|
     c'8[ bf a bf a c]  c[ bf a g a bf]	|
     c[ d bf c d bf]  c[ bf a bf c a]	|
     g[ f g a bf g]  bf[ a bf c d f]	|
     c[ bf c d bf c]  a[ bf c a bf g]	|
    f4(  f') c a2 f4			|
  }
  \repeat "volta" 2 {
    f4 f f' f, f f'		|
    g, g g' f4.  e16[ f] g4	|
    f, f f' a, a f'		|
    f c d  c8[ bf a bf c a]	|
     bf[ a bf c d e] f4 f, a	|
    g g' g,  bf8[ a bf c d e]	|
    f4  g8[ f e d] c4  d8[ c bf a]|
    f4(  f') c a2 g4		|
  }
  \repeat "volta" 2 {
    f4.  g8[ a bf] c4  d8[ c bf a]	|
    g4 a g bf2 d,4			|
    f4.  g8[ a bf] c4  d8[ c bf a]	|
    c4  d8[ c bf a] c4  d8[ c bf a]	|
    f'4  g8[ f e d] c4  d8[ c bf a]	|
    f4  a8[ bf c a] d4  bf8[ c d bf]	|
    c4  a8[ bf c a] bf4  g8[ a bf g]	|
    f4(  f') c a2 g4			|
  }
  \repeat "volta" 2 {
     f8[ e f g a bf]  c[ bf a bf c a]	|
     g[ f g a bf c]  d[ c bf c d bf]	|
     f[ e f g a bf]  c[ bf a bf c a]	|
     c[ bf a bf c a]  c[ bf a bf c a]	|
     d[ c bf c d bf]  c[ bf a bf c a]	|
     g[ f g a bf c]  d[ c bf c d f]	|
     c[ bf c d bf c]  a[ bf c a bf g]	|
    f4(  f') c a2 f4			|
  }
  \repeat "volta" 2 {
    f'4 f f, a a f	|
    g' g g, bf2 d4	|
    f f c d d g,	|
    c c f, a a f	|
    bf bf g a a f	|
    g4. a8 g4 bf2 e,4	|
    f' f c a a g	|
    f(  f') c a2 d,4	|
  }
  \repeat "volta" 2 {
    f2. a		|
    g4. a8 g4 bf2 d,4	|
    f2. a		|
    f4 f' c a bf c	|
    d c d f c a		|
    g4. a8 g4 bf2 d,4	|
    f2. a		|
    f4(  f') c a2 f4\fermata |
  }
}

groundbass =  \relative c {
  \key f \major
  \time 6/4
  \clef "bass"

  \partial 4 r4 	|
  \repeat "volta" 2 {
    f2. f |
    c g' |
    f( f) |
    f,( f) |
    c' g2 d4 |
    f2. f' |
    f,1. |
  }
  \repeat "volta" 2 {
    f'2. f |
    g g,2 c4 |
    f2.( f) |
    f,( f) |
    bf f |
    c' g2 d4 | 
    f2. f' |
    f,1. |
  }
  \repeat "volta" 2 {
    f'2. f4. g8 a4 |
    g2. g, |
    f'( f) |
    f,( f) |
    bf f |
    c' g2 d4 |
    f2.( f) |
    f1. |
  }
  \repeat "volta" 2 {
    f'2. f4. g8 a4 |
    g2. g, |
    f( f) |
    f( f) |
    bf f |
    c' g2 d4 |
    f2.( f) |
    f1. |
  }
  \repeat "volta" 2 {
    f'2. f4. g8 a4 |
    g2. d2 e4 |
    f2. f, |
    f'( f) |
    bf, f |
    g( g) | 
    f( f) |
    f1. |
  }
  \repeat "volta" 2 {
    f'2.( f) |
    c g |
    f( f) |
    f'( f) |
    bf, f' |
    f, bf |
    f g |
    f' f, |
  }
  \repeat "volta" 2 {
    f'( f) |
    c g' |
    f( f) |
    f,( f) |
    bf f |
    c' g2 d4 |
    f2.( f) |
    f1. |
  }
  \repeat "volta" 2 {
    f2. f' |
    c g |
    f bf |
    f( f) |
    g f |
    c' g |
    f( f) |
    f1.
  }
  \repeat "volta" 2 {
    f'2.( f) |
    c g' |
    f( f) |
    f,( f) |
    bf f |
    c' g |
    f( f) |
    f1.\fermata |
  } 
}

\book {

\score {
   \context GrandStaff <<
    \context Staff = "one" <<
      \set Staff.instrumentName = \markup { "Violin" }
      \violin
    >>
  >>

  \layout{ }


  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 160 2)
      }
    }
}

\score {
   \context GrandStaff <<
    \context Staff = "one" <<
      \set Staff.instrumentName = \markup { \column { Ground Bass } }
      \groundbass
    >>
  >>

  \layout{ }


  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 160 2)
      }
    }
}

}

