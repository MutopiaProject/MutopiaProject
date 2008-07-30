% This file prints Bach BWV 830, movement 5. Gavotta

\version "2.10.33"

\header
{
  title    	    = "Keyboard partita in E minor"
  composer 	    = "Johann Sebastian Bach"
  opus     	    = "BWV 830"
  mutopiacomposer   = "BachJS"
  mutopiainstrument = "piano"
  source	    = "Bach-Gesellschaft Ausgabe 1851-1899 Band 43 (1894)"
  sourceurl         = "http://imslp.org/wiki/Notebook_for_Anna_Magdalena_Bach_(Bach,_Johann_Sebastian)"
  sourceurltwo      = "http://world.std.com/~swmcd/steven/music/bach/Bach-AnnaMagdalena1725.pdf"
  style	            = "Baroque"
  copyright	    = "Public Domain"
  maintainer	    = "Steven McDougall"
  maintainerEmail   = "swmcd@world.std.com"
  maintainerWeb     = "http://world.std.com/~swmcd/steven/"
 footer = "Mutopia-2008/07/30-1497"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "english.ly"

upper = \relative c''
{
  \clef treble 
  \key e \minor
  \time 2/2

  \repeat volta 2
  {
    \partial 2 e16[ fs g8]  b,8.[ g'16] |

    a,8. g'16  fs4  c16[ b a8]  fs'8.[ a,16] | % 1

    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    g8. b16  e,4 ~ \times 2/3 { e8[ ds e]  a8[ g fs] } | % 2

    \override TupletNumber #'transparent = ##t
    \times 2/3 { e 8[ ds e]  b'[ g fs]  e[ ds! e]  c'[ g fs] } | % 3

    \times 2/3 { e 8[ ds e]  fs[ g a ]  g[ fs g]  a [ b c ] } | % 4

    \times 2/3 { b 8[ a  b]  c [ d e ]  d[ c d ]  e [ fs g] } | % 5

    \times 2/3 { fs8[ g  a] }  d,4 ~ \times 2/3 { d8[ c d]  g[ fs e] } | % 6

    \times 2/3 { e 8[ d  c]  c [ b a ]  a[ g fs]  fs[ e d ] } | % 7

    \times 2/3 { d 8[ c  b]  b [ a g ] }  g8.[ g'16]  fs8.[ g16] | % 8

    a,8.[ g'16]  fs8.[ g16]  b,8.[ g'16]  fs8.[ g16] | % 9

    c,8.[ g'16]  fs8.[ g16] \times 2/3 { d8[ e fs]  fs[ g a] } | % 10

    \times 2/3 { a 8[ b c]  d[ c b]  a[ b g]  d[ g fs] } | % 11
  }

  \alternative
  {
    {
      g2
    }
    {
      g2 % 12
    }
  }

  \repeat volta 2
  {
    \partial 2 b16[ c d8]  g,8. e'16 |

    a8.[ cs,16]  d4  cs!16[ b a8]  g'8.[ e16] | % 13

    fs8.[ a16]  d,4 ~  \times 2/3 { d8[ g d]  b[ g fs] } | % 14

    \times 2/3 { g[ b d]  f[ e d]  e[ a e]  cs[ a gs] } | % 15

    \times 2/3 { a8[ cs e]  g[ fs e]  fs[ b fs]  ds[ b as] } | % 16

    \times 2/3 { b8[ ds fs]  a[ g fs]  g[ fs e]  d[ cs b] } | % 17

    \times 2/3 { as8[ b cs]  fs,[ gs as!]  b[ as b]  e[ d cs!] } | % 18

    \times 2/3 { b8[ as b]  fs'[ d cs]  b[ as! b]  g'[ d cs!] } | % 19

    \times 2/3 { b8[ as b]  b'[ a! g]  g[ fs e]  e[ d cs] } | % 20

    \times 2/3 { cs8[ b as]  as[ gs fs]  fs[ e d]  d[ cs b] } |  % 21

    b4 ~  b16[ a'! b c!]  d[ c b8]  f'8.[ a,16] | % 22

    gs8.[ b16]  d4  \times 2/3 { f,8[ e f]  d'[ c b] } | % 23

    \times 2/3 { e,8[ ds e]  c'[ b a]  ds,![ cs ds]  c'![ b a] } | % 24

    \times 2/3 { g8[ fs g]  b[ ds e]  a,[ gs a]  g'![ fs e] } | % 25

    \times 2/3 { ds8[ e fs] }  b,4  e16[ fs g8]  b,8.[ g'16] | % 26

    a,8.[ g'16]  fs4  d16[ c b8]  f'8.[ g,16] | % 27

    f'8.[ g,16]  e'4 ~  e8.[ e16]  ds8.[ e16] | % 28

    fs,8.[ e'16]  ds8.[ e16]  g,8.[ e'16]  ds!8.[ e16] | % 29

    a,8.[ e'16]  ds8.[ e 16]  \times 2/3 { b8[ cs ds!]  ds[ e fs] } | % 30

    \times 2/3 { fs8[ g a]  b[ a g]  fs[ g e]  b[ e ds] } | % 31

    e2 % 32
  }

  \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.ufermata" }
}

lower =
{
  \clef bass
  \key e \minor
  \time 2/2

  \repeat volta 2
  {
    \partial 2  e4 g |

    c'4 ~  c'16 b a8  ds'4  b | % 1

    e'4 ~  e'8. d'!16  c'8.[ e16]  ds8.[ e16] | % 2

    b8.[ e16]  ds8.[ e16]  a8.[ e16]  ds!8.[ e16] | % 3

    g8.[ e16]  ds8.[ b16]  e8.[ c'16]  fs8.[ d'!16] | % 4

    g8.[ e'16]  a8.[ fs'16]  b8.[ g'16]  c'8.[ a'16] | % 5

    d'4 ~  d'16[ c' b a]  g[ a b8]  e8.[ b16] | % 6

    c8.[ b16]  a4  fs16[ e d8]  a8.[ c16] | % 7

    \set tupletSpannerDuration = #(ly:make-moment 1 4)
    \override TupletNumber #'transparent = ##t
    b,8.[ a16]  g4  \times 2/3 { e8[ fs g]  b,[ a, g,] } | % 8

    \times 2/3 { fs8[ g a]  c[ b, a,]  g[ a b]  d[ c b,] } | % 9

    \times 2/3 { a8[ b c']  e[ d c] }  b,8.[ g16]  a,8.[ fs16]  | % 10

    g,8.[ e16]  fs,8.[ d16]  e,8.[ c16]  d,8.[ c16] | % 11
  }

  \alternative
  {
    {
      \times 2/3 { b,8[ c d]  }  g,8. b,16
    }
    {
      \times 2/3 { b,8[ d fs]  g[ d b,] } % 12
    }
  }

  \repeat volta 2
  {
    \partial 2 g,4 g ~ |

    \times 2/3 { g8[ fs e] }  fs8.[ b16]  \times 2/3 { e8[ fs g]  a[ b cs'] } | % 13

    d'4 ~  d'16[ c'! b a]  b8.[ d'16]  g4 ~ | % 14

    \times 2/3 { g8[ d b,] }  g,8.[ b16]  c'8.[ e'16]  a4 ~ | % 15

    \times 2/3 { a8[ e cs] }  a,8.[ cs'16]  d'8.[ fs'16]  b4 ~ | % 16

    \times 2/3 { b8[ fs ds] }  b,8.[ ds'16]  e'8.[ as16]  b8.[ g16] | % 17

    fs4 ~  \times 2/3 { fs8[ e fs] }  g!8.[ b16]  as8.[ b16] | % 18

    fs8.[ b16]  as8.[ b16]  e8.[ b16]  as!8.[ b16] | % 19

    d8.[ b16]  as8.[ b16]  cs16[ d e8 ]  b,8.[ g16] | % 20

    as,8.[ g16]  fs4  \times 2/3 { d8[ cs b,] }  fs8.[ fs,16] | % 21

    \times 2/3 { b,8[ d fs]  a[ gs fs]  gs[ a b] }  d4 ~ | % 22

    \times 2/3 { d8[ e f]  b,[ c d]  gs,[ a, b,] }  e,8.[ gs16] | % 23

    \times 2/3 { a8[ b c'] }  g!8.[ c'16]  fs8.[  c'16]  ds8.[ b16] | % 24

    e8.[ b16]  d!8.[ b16]  c8.[ a16]  cs8.[ as16] | % 25

    b4 ~  b16[ ds' e' fs']  \times 2/3 { g'8[ fs' e']  e'[ d' cs'] } | % 26

    \times 2/3 { cs'8[ b a]  a[ g fs]  fs[ e d]  d[ c! b,] } | % 27

    \times 2/3 { b,8[ a, g,]  g,[ a, b,]  cs,[ e, g,]  as,[ b, cs] } | % 28

    \times 2/3 { c!8[ ds fs]  a[ b c']  b[ a g]  fs[ g e] } | % 29

    \times 2/3 { c'8[ b a]  g[ fs e] }  ds8.[ b,16]  fs8.[ b,16] | % 30

    a8.[ b,16]  g8.[ e16]  \times 2/3 { a8[ b c']  b[ a b] } | % 31

    \times 2/3 { e8[ g b] }  e'4 % 32
  }


  \override Staff.RehearsalMark #'direction = #-1
  \override Score.RehearsalMark #'extra-offset = #'( -0.6 . 0.0 )
  \mark \markup { \musicglyph #"scripts.dfermata" }
}

\score 
{
  \new PianoStaff 
  <<
    \new Staff = "upper" \upper
    \new Staff = "lower" \lower
  >>
  
  \layout 
  {
    \context 
    {
      \Score
      \remove "Mark_engraver"
    }
    \context 
    {
      \Staff
      \consists "Mark_engraver"
    }
  }
  \header { piece = "5. Tempo di Gavotta" }
  \midi   { }
}
