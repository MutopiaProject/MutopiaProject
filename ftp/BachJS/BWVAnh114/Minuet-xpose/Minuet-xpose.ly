%
\version "1.4.0"

\header {
  title = "Minuet"
  composer = "J. S. Bach"
  opus = "Anna Magdalena Nb 2, BWV Anh. 114"
  tagline = "Public Domain"

 % Mutopia
 mutopiatitle = "Minuet in G"
 mutopiacomposer = "J. S. Bach (1685-1750)"
 % Transcribed for two trumpets (or other soprano instrument)
 mutopiainstrument = "Trumpet, Trumpet"
 date = "1725"
 source = "Transcribed"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Shamim Mohamed"
 maintainerEmail = "shamim-mu@languid.org"
 maintainerWeb = "http://www.drones.com"
 lastupdated = "2002/Aug/6"

 tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
 footer = "Mutopia-2002/08/06-258"
}

\score {
  \notes \context StaffGroup
  <
    \context Staff = staffA {
      \time 3/4
      \clef treble
      \key g \major
      \relative c' { 
        \repeat "volta" 2 {
          d'4-\p \< g,8( )a8 b8 c8 \! d4( )g,4-. g4 |
          e'4 \< c8( )d8 e8 fis8 \! g4( )g,4-. g4 |
          c4 d8( )c8 b8 a8
          b4 c8( )b8 a8 g8 |
          fis4 g8( )a8 b8 g8 b4 a2 |
          d4 \< g,8( )a8 b8 c8 \! d4( )g,4-. g4 |
          e'4 c8( \< )d8 e8 fis8 \! g4( )g,4-. g4 |
          c4 d8( )c8 b8 a8 b4 c8( )b8 a8 g8 |
          a4 b8( )a8 g8 fis8 g2.
          \bar "|."
        }
	\repeat "volta" 2 {
          b'4-\mf g8( )a8 b8 g8 |
          a4 d,8( )e8 fis8 d8 |
          g4 e8( )fis8 g8 d8 | cis4 b8( )cis8 a4 |
          a8( \< )b8 cis8 d8 e8 \! fis8 |
          g4-. fis4-. e4-. fis4-. a,4-. cis4 | d2. \> \!
          d4-\p g,8( fis8 )g4 | e'4 g,8( fis8 )fis4 d'4( )c4 b4 |
          a8( )g8 fis8 g8 a4 d,8( \< )e8 fis8 g8 a8 \! b8 |
          c4-. b4-. a4-. b8( \> )d8 g,4-. \! fis4 g2.
          \bar "|."
        }
      }
    }
    \context Staff = staffB {
      \time 3/4
      \clef treble
      \key g \major
      \relative c' {
        \repeat "volta" 2 {
          g'2 a4 b2. c2. b2. a2. |
          g2. d'4 b4 g4 | d'4 d,8 c'8 b8 a8 b2 a4 g4 b4 g4 |
          c2. b4 c8( )b8 a8 g8 | a2 fis4 g2 b4 c4 d4 d,4 g4 d4 g4
          \bar "|."
        }
	\repeat "volta" 2 {
          g2. fis2. e4 fis4 e4 a2 a,4 a'2. |
          b4-. d4-. cis4-. d4-. fis,4-. a4-. d4( )d,4 c'4 |
          b4 d,4 b'4 c4 fis,4 cis'4 b4( )a4 g4 |
          d'2 r4 d,2 fis4 e4-. g4-. fis4-. g4( )b,4-. d4-. g4-. d4-. g4-.
	  \bar "|."
        }
      }
    }
  >
  \header { piece = "allegro"}
  \midi { \tempo 4 =132 }
  \paper {}
}


