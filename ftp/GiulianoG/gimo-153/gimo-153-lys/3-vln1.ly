\version "2.16.0"

IIIVlnI =  \relative c'' {
  \clef "treble"
  \time 3/8
  \key bes \major
  
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  % Note: This removes tuplet brackets from  c8[ \times 2/3 {c16 c c]}.
  \override TupletBracket   #'bracket-visibility = ##f

  %page 14
  \partial 8 f8 | \times 2/3 { bes16[ f g]}  f8[ f] | f16 d g es d c |
  \times 2/3 { bes'16[ f g]}  f8[ f] | f16 d g es d c |
  %5
  \times 2/3 { d16[ c bes} bes8] r |  d32[ d d d]  bes[ bes bes bes]  d[ d d d] |
   f[ f f f]  bes[ bes bes bes]  d,[ d d d] |  c[ c c c]  a[ a a a]  c[ c c c] |
  %9
   f[ f f f]  a[ a a a]  c,[ c c c] |  bes[ bes bes bes]  g[ g g g]  bes[ bes bes bes] |
   e[ e e e]  g[ g e e]  c[ c bes bes] | bes8 a r |
  %13
   f16[( a c  es)-. es-. es-.] |  f,[( a c  es)-. es-. es-.] |
   bes[( d f  f)-. f-. f-.] |  bes,[( d f  f)-. f-. f-.] |
  %17
   f,[( a c  es)-. es-. es-.] |  f,[( a c  es)-. es-. es-.] |
   d[ bes es c f d] |  g[ es]  a8.[\trill g32 a] | bes8 bes, d | c16 g' f es d c |
  %23
   d[ bes es c f d] |  g[ es]  a8.[ g32 a] | bes8 bes, d | c16 g' f es d c |
  %27
  bes8 bes'16 f bes f | bes8 d,, f | bes, bes''16 f bes f |
  bes8 bes,,16 bes bes bes | bes4 r8 |
  %32
  d d d | a' a, bes | d d d | a' a a | \times 2/3 { bes16[ a bes} bes8] r |
  %37
  d, d d | a' a a | e e e | f f f | bes r r | bes r r | a r r | a r r |
  %45 Note: the g in measure 45 is probably wrong; it should probably be an f.
  g r r | e r r | f a f | f e r | a r r | a a a | bes r r | d, d d |
  %53
  <a' c,> r r | <a c,> <a c,> <a c,> | <bes d,> r r | e, e e | f a a |
  %58
  bes a bes | e, e e | f a a | bes a bes | e, e e |
  %63
   f16[ a'32 bes]  c16[ c c c] |  bes[ g32 a]  bes16[ bes bes bes] |
   a16[ a,32 bes]  c16[ c c c] |  bes32[ a g a]  bes16[ bes bes bes] |
  %67
  a c c f f c | a f' f a a f | c a' a c c a |
  %70
   d,8[ r \times 2/3 {bes'16 a g] |  a[ g f]}  a8[ g] |
  f16 c' c a a f | f  c c a a f | f8 a16 bes c bes | a8 <f' c f,> <f c f,> |
  %76
  <f c f,>  a16[ bes c bes] | a8 c c | c4 r8 |
  %79
  a,^"Dolce" a a | a g g | a a a | g e e | \times 2/3 { f16[ e f} f8] r |
  %84
  r g g | d r r | fis? r r | bes, r r | bes r r | fis' g a | bes c a | g bes g |
  %92 Note: Measure 92 should probably be "fis a fis".
  fis g a | g a bes | c bes a | g bes g | fis a fis | g bes bes |
  %98
  <<a \\ fis>> r r | <<{bes bes bes} \\ {g g g}>> | <<a \\ fis>> r r | bes bes bes | a r r | bes bes bes |
  %104
  a r r | g16 g' g g g g |
  %106
  g fis a fis d c | c bes g' g g g | g fis a fis d c |
  %109 Note: The fis16\trill in 109 and 111 are fis16.\trill in the manuscript
  % but that gives one 32th too much in those measures so I removed the dot.
   bes[ d] r d  fis16[\trill es32 fis] |  g16[ d] r  es[ d c] |
  %111
   bes[ d] r d  fis16[\trill es32 fis] |  g16[ d] r  es[ d c] |
   bes[ d] r bes r g |  d[ c'] r a r fis |  g[ d'] r bes r g |
  %116
   d[ c'] r a r fis | g g' g g g g |
  \times 2/3 { es16[ d c]}  bes8[ a] | bes16 g' g g g g |
  %120
  \grace f8 \times 2/3 { es16[ d c]}  bes8[ a] | g8 f16 es d c |
  %122
  d8 d d | a' a, bes | d d d | a' a ais? | \times 2/3 { bes16[ a bes} bes8] r |
  %127
  r bes a | g r r | r g f | es r r | r g f | es r r | r es d | c r r |
  %135
  d4 r8 | d4 r8 | a'4 r8 | <f d>4 r8 | a4 r8 | a4 r8 |
  %141
  bes8 c, d | es es es | <d bes>4 r8 | <d bes>4 r8 |
  %145 page 11
  f f f |  bes16[ d32 es]  f16[ f f g32 a] |
   bes16[ a32 g]  f16[ f f g32 a] |  bes16[ d,,32 es]  f16[ f f g32 a] |
  %149
   bes16[ a32 g]  f16[ f f g32 a] |  bes8[ bes'32 a g f]  bes[ a g f] |
   bes8[ d,, d] |  es[ bes''32 a g f]  bes[ a g f] |
  %153
  bes8 d,, f | bes, bes''16 bes bes bes |
  <<{ bes8[ d,16 d d d]} \\ {s8 f,16 f f f}>> | <d' f,>4 r8^\fermata \bar "|."
}
