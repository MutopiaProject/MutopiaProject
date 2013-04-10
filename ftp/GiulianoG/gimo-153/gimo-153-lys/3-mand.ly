\version "2.16.0"

IIIMand =  \relative c'' {
  \clef "treble"
  \time 3/8
  \key bes \major
  
  \set tupletSpannerDuration = #(ly:make-moment 1 8)
  % Note: This removes tuplet brackets from  c8[ \times 2/3 {c16 c c]}.
  \override TupletBracket   #'bracket-visibility = ##f

  %page 9
  \partial 8 f8 | \times 2/3 { bes16[ f g]}  f8[ f] | f16 d g es d c |
  \times 2/3 { bes'16[ f g]}  f8[ f] | f16 d g es d c |
  %5
  \times 2/3 { d16[ c bes} bes8] r |  d32[ d d d]  bes[ bes bes bes]  d[ d d d] |
   f[ f f f]  bes[ bes bes bes]  d,[ d d d] |  c[ c c c]  a[ a a a]  c[ c c c] |
  %9
   f[ f f f]  a[ a a a]  c,[ c c c] |  bes[ bes bes bes]  g[ g g g]  bes[ bes bes bes] |
   e[ e e e]  g[ g e e]  c[ c bes bes] | bes8 a r |
  %13
   f16[( a c es-. es-.  es)-.] |  f,[( a c  es)-. es-. es-.] |
   bes[( d f  f)-. f-. f-.] |  bes,[( d f  f)-. f-. f-.] |
  %17
   f,[( a c  es)-. es-. es-.] |  f,[( a c  es)-. es-. es-.] |
   d[ bes es c f d] |  g[ es]  a8.[ g32 a] | bes8 bes, d | c16 g' f es d c |
  %23
   d[ bes es c f d] |  g[ es]  a8.[ g32 a] | bes8 bes, d | c16 g' f es d c |
  %27
  bes8 bes'16 f bes f | bes8 d,, f | bes, bes''16 f bes f |
  bes8 bes,,16 bes bes bes | bes4 f''8^"Solo" |
  %32
   bes32[ f g f]  f8[ f] | \times 2/3 { es16[ d es]  g[ f es]  d[ c bes]} |
   bes'32[ f g f]  f8[ f] | \times 2/3 { es16[ d es]  g[ f es]  d[ c bes] |
  %36
   d[ c bes} bes8] r | d16(  bes) r32  f'[ e f g f e f] |
  c16(  a) r32  f'[ e f g f e f] |  g[ a g a]  bes[ a g f e d c bes] |
  %40
   a[ bes c d]  c8[ c] |  d32[ bes a bes]  c[ bes a bes]  d[ bes a bes] |
   d16[ bes]  bes'32[ a g f e d c bes] |  c[ bes a bes]  c[ bes a bes]  c16[ a] |
  %44
  c a  a'32[ g f e d c bes a] |  a[ c bes a]  a[ c bes a]  bes[ c bes a] |
  bes16 g  g'32[ f e d c bes a g] | a16 c \times 2/3 { f[ es d]  c[ bes a]} |
  %48
  a8 g r |  a32[ bes a bes]  c[ d c bes] a8 |
   a16[ c f c a'8] |  bes,32[ c bes c]  d[ es d c] bes8 |  bes16[ d f d bes'8] |
  %53
   a,32[ bes a bes]  c[ d c bes] a8 |  a16[ c f c a'8] |
   bes,32[ c bes a]  bes[ c bes a] g8 |  g'16[ f e d c bes] |
  %57
  \times 2/3 { a16[ f' f]  c[ f f]  a,[ f' f] |  d[ f f]  c[ f f]  d[ f f]} |
   g,32[( bes  e) e-|]  g,[( bes  e) e-|]  g,[( bes  e) e-|] |
  %60
  \times 2/3 { a,16[ f' f]  c[ f f]  a,[ f' f] |  d[ f f]  c[ f f]  d[ f f]} |
   g,32[( bes  e) e-|]  g,[( bes  e!) e-|]  g,[( bes  e) e-|] |
  %63
   f16[ a32 bes]  c16[ c c c] |  bes[ g32 a]  bes16[ bes bes bes] |
   a16[ a,32 bes]  c16[ c c c] |  bes32[ a g a]  bes16[ bes bes bes] |
  %67
  a c c f f c | a f' f a a f | c a' a c c a |
  %70
   d,8[ r \times 2/3 {bes'16 a g] |  a[ g f]}  a8[ g] |
  f16 c' c a a f | f  c c a a f | f8 a16 bes c bes | a8 <f' c f,> <f c f,> |
  %76
  <f c f,>  a16[ bes c bes] | a8 c c | <c f,>4 c,8 |  f32[ c d c]  c8[ c] |
  \times 2/3 { f16[ e f]  g[ f e!]  d[ c bes]} |  f'32[ c d c]  c8[ c] |
  %82
  \times 2/3 { bes16[ a bes]  g'[ f e]  d[ c bes] |  a[ g f]} f8 r16 c' |
  \times 2/3 { c[ d c]  es![ d c]  bes[ a g]} |
  %85
   fis8[ r32 d es d es d es d] |  fis16[ d r32 d es d es d es d] |
   g16[ d r32 d es d es d es d] |  g16[ d r32 d es d es d es d] | 
  %89
  a'16 d, bes' d, c' d, | d' d, es'! d, c' d, | bes'! d, d' d, bes' d, |
  a' d, c' d, a' d, | bes' d, c' d, d' d, | es' d, d' d, c' d, |
  %95
  bes' d, d' d, bes' d, | a' d, c' d, a' d, | g bes! d g bes g |
  %98 page 10
   a32[ bes a g]  fis[ g fis es]  d[ es d c] |  bes16[ d g bes g bes] |
   a32[ bes a g]  fis[ g fis es]  d[ es d c] |  bes16[ d g bes g d] |
  %102
  \times 2/3 { es[ d c]  bes[ d bes]  a[ c a]} | bes d g bes g d |
   c32[ es d c]  bes[ d c bes]  a[ c bes a] | g16 g' g g g g |
  %106
  g fis a fis d c | c bes g' g g g | g fis a fis d c |
   bes[ d] r d  fis16[\trill es32 fis] |  g16[ d] r  es[ d c] |
  %111
   bes[ d] r d  fis16[ es32 fis] |  g16[ d] r  es[ d c] |
   bes[ d] r bes r g |  d[ c'] r a r fis |  g[ d'] r bes r g |
  %116
   d[ c'] r a r fis | g g' g g g g |
  \grace f8 \times 2/3 { es16[ d c]}  bes8[ a] | bes16 g' g g g g |
  %120
  \grace f8 \times 2/3 { es16[ d c]}  bes8[ a] | g8 r f' | 
   bes32[ f g f]  f8[ f] | \times 2/3 { es16[ d es]  g[ f es]  d[ es c]} |
  %124
   bes'32[ f g f]  f8[ f] | \times 2/3 { es16[ d es]  g[ f es]  d[ es c] |
   d[ c bes} bes8] bes |
  %127
  \times 2/3 { d,16[ bes'' bes]  d,[ bes' bes]  c,[ bes' bes] |
   bes,[ bes' bes]  a,[ bes' bes]  g,[ bes' bes] |
   f,[ bes' bes]  bes,[ bes' bes]  a,[ bes' bes] |
   g,[ bes' bes]  f,[ bes' bes]  es,,[ bes'' bes] |
  %131
   d,,[ bes'' bes]  bes,[ bes' bes]  a,[ bes' bes] |
   g,[ bes' bes]  f,[ bes' bes]  es,,[ bes'' bes] |
   d,,[ bes'' bes]  g,[ bes' bes]  f,[ bes' bes] |
   es,,[ bes'' bes]  d,,[ bes'' bes]  c,,[ bes'' bes]} |
  %135
  bes,, d f bes d f | bes f d bes f d |
   es'32[ c bes c]  es[ c bes c]  es[ c bes c] |
   d[ bes a bes]  c[ bes a bes]  c[ bes a bes] |
  %139
   es[ c bes c]  es[ c bes c]  es[ c bes c] |
   d[ bes a bes]  c[ bes a bes]  c[ bes a bes] |
  %141
  \times 2/3 { d16[ bes d]  es[ c es]  f[ d f] |  g[ a g]  g[ a g]  g[ a g] |
   bes[ a g]  f[ es d]  d[ c bes] |  bes'[ a g]  f[ es d]  d[ c bes]} |
  %145
   f16[ bes32 c]  d8[ c] |  bes16[ d32 es]  f16[ f f g32 a] |
   bes16[ a32 g]  f16[ f f g32 a] |  bes16[ d,,32 es]  f16[ f f g32 a] |
  %149
   bes16[ a32 g]  f16[ f f g32 a] |  bes8[ bes'32 a g f]  bes[ a g f] |
   bes8[ d,, d] |  es[ bes''32 a g f]  bes[ a g f] |  bes8[ d,, f] |
  %154
   bes,[ bes''16 bes bes bes] |  bes8[ d,16 d d d] | d4 r8^\fermata \bar "|."
}
