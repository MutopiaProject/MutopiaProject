\version "2.16.0"

IIIVlnII =  \relative c'' {
  \clef "treble"
  \time 3/8
  \key bes \major
  
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  % Note: This removes tuplet brackets from  c8[ \times 2/3 {c16 c c]}.
  \override TupletBracket   #'bracket-visibility = ##f

  %page 18
  \partial 8 f8 | \times 2/3 { bes16[ d, es]}  d8[ d] | d16 bes es c bes a |
  \times 2/3 { bes16[ d es]}  d8[ d] | d16 bes es c bes a |
  %5
  \times 2/3 { bes16[ a bes} bes8] r | 
   f32[ bes d bes]  f[ bes d bes]  f[ bes d bes] |
   f32[ bes d bes]  f[ bes d bes]  f[ bes d bes] |  f[ a c a]  f[ a c a]  f[ a c a] |
  %9
   f[ a c a]  f[ a c a]  f[ a c a] |  c,[ e g e]  c[ e g e]  c[ e g e] |
   c[ e g e]  c[ e g e]  c[ e g e] | g8 f r |
  %13
   f16[( a  c)-. c-. c-. c-.] |  f,[( a  c) c-. c-. c-.] |
   bes[( d  d) d-. d-. d-.] |  bes[( d  d) d-. d-. d-.] |
  %17
   f,[( a c  c)-. c-. c-.] |  f,[ a c c c c] |
   d[ bes es c f d] |  g[ es]  a8.[\trill g32 a] | bes8 bes, d | c16 g' f es d c |
  %23
   d[ bes es c f d] |  g[ es]  a8.[ g32 a] | bes8 bes, d | c16 es d c bes a |
  %27
  bes8 bes'16 f bes f | bes8 d,, f | bes, bes''16 f bes f |
  bes8 bes,,16 bes bes bes | bes4 r8 |
  %32
  bes bes bes | f' a, bes | bes bes bes | f' a, <bes f'> | bes4. | bes8 bes bes |
  %38
  f' f f | c c c | f f f | f r r | f r r | f r r | f r r | c r r | c r r | 
  %47
  f f f |  d[ c'16 bes a g] | f8 r r | f f f | bes, r r | bes bes bes |
  %53
  f' r r | f f f | bes, r r | c c c | f f f | f f f | c c c |
  %60  
  f f f | f f f | c c c |
  %63
   f16[ f'32 g]  a16[ a a a] |  g[ e32 f]  g16[ g g g] |
   f16[ f,32 g]  a16[ a a a] |  g32[ f e f]  g16[ g g g] |
  %67
  a a a c c a | a c c f f c | c f f a a f |
  %70
   d8[ r \times 2/3 {bes'16 a g] |  a[ g f]}  f8[ e?] |
  f16 a a f f c | a a a f f f | f8 f16 g a g | f8 <f' c f,> <f c f,> |
  %76
  <f c f,>  f16[ g a g] | f8 a a | a4 r8 |
  %79
  f, f f | f e c | f f f | c c c | f f f | es es es | d r r | d r r | g, r r |
  %88
  g r r | d' d d | d d d | d d d | d d d | d d d | d d d | d d d | d d d |
  %97
  g g g | d r r | g g g | d d d | g g g | fis r r | g g g | fis r r |
  %105
  g16 g' g g g g | g fis a fis d c | c bes g' g g g | g fis a fis d c |
  %109 Note: The fis16\trill in 109 and 111 are fis16.\trill in the manuscript
  % but that gives one 32th too much in those measures so I removed the dot.
   bes[ d] r d  fis16[\trill es32 fis] |  g16[ d] r  c[ bes a] |
  %111
   bes[ d] r d  fis16[\trill es32 fis] |  g16[ d] r  c[ bes a] |
   bes[ d] r bes r g |  d[ c'] r a r fis |  g[ d'] r bes r g |
  %116
   d[ c'] r a r fis | g bes bes bes bes bes |
  \times 2/3 { c16[ bes a]}  g8[ fis] | g16 bes bes bes bes bes |
  %120
  \times 2/3 { c16[ bes a]}  g8[ fis] | g8 f16 es d c |
  %122
  bes8 bes bes | f' a, bes | bes bes bes | f' a, <f' bes,> | bes,4. |
  %127
  r8 bes' a | g r r | r g f | es r r | r g f | es r r | r es d | c r r |
  %135
  bes4 r8 | bes4 r8 | f'4 r8 | bes,4 r8 | f'4 r8 | f4 r8 | bes c, d |
  %142
  es es es | <d bes>4 r8 | <d bes>4 r8 | 
  %145
  f f f |  bes16[ bes32 c]  d16[ d d es32 f] |
   g16[ f32 es]  d16[ d d es32 f] |  g16[ bes,,32 c]  d16[ d d es32 f] |
  %149
   g16[ f32 es]  d16[ d d es32 f] |  d8[ bes''32 a g f]  bes[ a g f] |
   bes8[ d,, d] |  es[ bes''32 a g f]  bes[ a g f] |
  %153 page 15
  bes8 d,, f | bes, bes''16 bes bes bes |
  <<{ bes8[ d,16 d d d] | d4} \\ {s8 f,16 f f f | f4}>> r8^\fermata \bar "|."
}
