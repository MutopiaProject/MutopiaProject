%
\version "1.4.0"

\header {
  title = "Aria"
  subtitle = "Bist du bei mir"
  composer = "J. S. Bach"
  opus = "Anna Magdalena Nb 2, BWV 508"
  tagline = "Public Domain"

  % Mutopia
  mutopiatitle = "Aria Bist Du Bei Mir"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 508"
  % Don't really know the instrument, but I play it on the trumpet....
  mutopiainstrument = "Trumpet"
  date = "1722 (?)"
  source = "Transcribed"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Shamim Mohamed"
  maintainerEmail = "shamim-mu@languid.org"
  lastupdated = "2002/Aug/6"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/08/06-257"
}

\score {
  \notes \context Staff = staffA {
    \time 3/4
    \clef treble
    \key c \major
    \relative c'' {
      % 1'
      g4--^"\em espressivo e legato"\mf
      \< c4.( \! )d8 b2 \> \! r4 |
      c4( \< )f,4 \! f4-- f2( \> \! )e4 | 
      r8^"\bf\it\Large (1)" g8--\p [ b8 \( ( )g8 ] [ fis8( ) \) g8 ] |

      [ d8--( )g8-- ] [ b8 \( ( )g8 ] [ fis8( ) \) g8 ] c,4-- a'4.( b16 )c16 |
      b8.(-\f )a16 g8.( )a16 d,8.( )fis16 g2 \> \! r4 | \bar "||"
      c4-\mf^"\bf\it\Large (2)" [ e8( )c8 \< ] [ bes8( \! )a8 ] |

      a2. \< \!
      f'4-- d4.( )c8 | b4-\trill \( ( )b8 a16 \> b16 \! \) c4 
      r8^"\bf\it\Large (3)" c8--\mf [e8\(( )c8] [b8( )\)c8]|[g8-- c8--]
      [ e8( \< )c8 ][ b8( \! )c8] |

      f,4-- d'4.( e16 )f16| [e8.( )d16] [c8.( )d16] [g,8.( )b16]| c2 r4
       \bar "||"
      | e4--\p^"\bf\it\Large (4)" c4.( )b8 | a2 r4| d4 g,4.( )a8 |
      fis4( e8 fis8 )c4 |

      r8^"\bf\it\Large (5)" a'8-\p [c8( a8][ gis8 )a8] |
      [e8 a8--][c8( \< a8][gis8 \! )a8]|
      d,8( \> cis8 \! )d4 b'8.( \< c!32 \! )d32 |
      [c8.( )b16][a8.( )b16][e,8.( )gis16]

      a2. \> \! d,4--^"\bf\it\Large (6)" c'4.( \< \! )d8 | b2 \> \! r4 |
       c4( \< )f,4 \! f4-- |
      f2 \> \! e4 |
      r8^"\bf\it\Large (7)" g8--\p [b8 \(( )g8][fis8( )\)g8]|
      \break %7
      [d8--( \< )g8--][b8\(( \! )g8][fis8( )\)g8] | c,8( b8 )c4 a'8.( b32 )c32 |
      [b8.( )a16][g8.( )a16][d,8.( )fis16]| g2 r4 |

      c4--\f^"\bf\it\Large (8)" [e8( )c8] [bes8( )a8] a2. \< \!
      f'4--\f d4.( )c8 |  b4-\trill \( ( )b8 a16 \> b16 \! \) c4 |
      r8 c8--\mf [e8( )c8] [b8( )c8] |

      [g8-- \< c8] [e8( )c8] [b8( \! )c8] | f,4-- d'4.( \< e16 \! )f16 |
      [e8.(\f )d16_#'(lines "\ " (bold (italic "rit. al fine")))
      ] [c8.( )d16] [g,8.( )b16] | 
      c2.^\fermata \bar "|."
    }
  }
  \header { piece = "moderato" }
  \midi { \tempo 4 =108 }
  \paper {}
}

