\version "2.16.0"
\include "2-shared.ly"

IIVlnII =  \relative c'' {
  \clef "treble"
  \key bes\major

  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  % end beams on quarters by default

  \partial 8 d8 | 
  %1 page 17
  d16. f32 d8 \times 4/6 {r16 bes c d es f} es16. g32 es8
    \times 4/6 {r16 es f g f es} |
  es16 d32 es d8 \times 4/6 {r16 f es d c bes} a8 \times 2/3 {a16 bes c}
    \times 4/6 {f, a bes a bes c} |
  bes32 a bes c d8 \times 4/6 {r16 f es d c bes} a8
    \times 2/3 {a16 bes c} \times 4/6 {f, a bes a bes c} |
  %4 page 18
  \IISharedB
  r4 |
  %11 page 19
  d8 d d d es es es es |
  %12 page 20
  es d d bes a a a c | bes bes bes bes a a a c | bes bes bes4 d8 d d4 |
  %15 page 21 Note: All notes in this bar are quite clear d:s in the manuscript, which doesn't make sense.
  c4 c8 c c c c bes | bes a r4 r2 |
  %17 page 22
  r2 c  | a bes | a4 r f'8 f e e | f4 r f8 f e e |
  %21 page 23
  f16 f f f r f, a c bes bes bes bes r bes e g |
  f f f f r c f a \times 4/6 {f e e e bes bes bes g g g f e |
  %23 Note: The second group of 6 notes,  a[ g g a g f], is very unclearly written, looks like a g f g g f but could be just anything.
   f'[ c c c a a]  a[ g g a g f]  g'[ e e e bes bes]  bes[ g g g f e]} |
  %24 page 24
  f a a c c8 f, f e r g' |
  \IISharedD
  %29 page 25
  f,4 r  a8[ a a a] |
  %30 Note: The music gets out of sync here. Bars 30-31 were originally:
  %bes bes bes bes bes a a f' | e e e g, f4 r |
  %and have now been changed into three bars:
  bes bes bes bes bes a a f' | e e e g, f a a f' | e e e g, f4 r |
  %33 page 26
  d'8 d d d es es es es | es d c bes a a a c | bes bes bes bes a a a a |
  %34 page 27
  bes bes bes4 f' r | f r es r | f r f r |
  %39 page 28
  es r g r | g r f r | 
  %41 page 28.5
  g r g r |
  %42 Note: I have omitted bar 42, "g4 r g r".
  \IISharedE
  %46 page 30
  d16 d d d r bes d f es es es es r f, a c |
  bes bes bes bes r f bes d c8 a16 c c a c a |
  bes8 \times 2/3 {bes16 c d} c8 bes bes a r c |
  \IISharedG
}
