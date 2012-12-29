\version "2.16.0"
\include "1-shared.ly"

IVlnI =  \relative c'' {
  \clef "treble"
  \key f\major

  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  % end beams on quarters by default

  \ISharedA \ISharedB \ISharedC \ISharedD \ISharedE \ISharedF
  %23 page 5 Note: The r4 looks like a r8 in the manuscript
  <f c f,>4 r4 c8_ \markup{\italic "do:"} r c r |  c[ c c c] c2:8 | d:  d8[ c c c] |
  bes2:  bes8[ a a f] |
  \ISharedFF
  %29
  r8 d' d d r c c c |
  %30 page 6
  c b b b c4 r | r8 b b b c2: | c: d: | d: e8 r e r | f r f r g r g r | 
  a4 r r r8 f |
  %36 page 7
  e e d d c4 c ~ | c8 b16 a b8 b c4 c ~ | c8 b16 a b8 b c4 r8 f, |
  g g g, g c4 r8 f g g g, g <c' e, g,>4 <c e, g,> |
  \ISharedG r4 |
  %51 page 9
  e4 r8 d e4 r8 d | e e e e e4 r |
  \ISharedH 
  %58 page 10
  r8  bes[ bes bes] bes r bes r | r  a[ a a] a r a r | 
  %60 page 11
  r  bes[ bes bes] bes r bes r | a a a a a g r4 | c8 r c r c c c c |
  c c c c d d d d | d c c c bes bes bes bes |
  %65 page 12
  a a a4 c8 r c r | d r d r c r c r | d4 r d8 r d r |
  %68 Note: The e!8 looks like an e!4 in the manuscript.
  e!8 r e r d r d r | e4 r8 c bes!4 bes |
  %70 page 13
  bes r a a | a r bes bes | bes r  a8[ f f f] | f f f f f f f f |
   f[ g, a bes]  c[ c c c] |
  %75 page 14
  f4 f' ~ f8 e16 d e8 e |
  %76 Note: the d looks like a bes, which does not make sense.
  f4 f, ~ f8 e16 d e8 e | f4 r8 bes,  c[ c c c] | f4 r8 bes,  c[ c c c] |
  %79
  f'32\f g a8. f8 c
  \ISharedJ \ISharedK \ISharedL \ISharedM
} 




