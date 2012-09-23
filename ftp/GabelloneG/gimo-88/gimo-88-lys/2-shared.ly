\version "2.16.0"

% Note: This file contains notes shared between parts. Almost all are marked with a // in each bar

%m+1
IISharedA =  \relative c'' {
  \partial 8 f8 |
  %1 page 17
  f16. bes32 f8 \times 4/6 {r16 bes, c d es f} g16. bes32 g8
    \times 4/6 {r16 g a bes a g} |
  g16 f32 g f8 \times 4/6 {r16 f es d c bes} a8 \times 2/3 {a16 bes c}
    \times 4/6 {f,16 a bes c d es} |
  d32 c d es f8 \times 4/6 {r16 f es d c bes} a8 \times 2/3 {a16 bes c}
    \times 4/6 {f,16 a bes c d es} |
}
%m+1+2
IISharedB =  \relative c'' {
  %4 page 18
  \times 2/3 {d16 c bes} bes8 r f' bes,!16. c32 d16. es32 f16. g32 as16. f32 |
  \times 2/3 {g16 f es} es4 d8 c16. d32 e16. f32 g16. a32 bes16. g32 |
  a16. g32 f8 r f es! es ~  es32[ f g f]  g[ es d c] | 
  d8 d ~  d32[ es f es]  f[ d c bes] es8 es ~  es32[ f g f]  g[ es d c] |
  %8 page 19
  d8 d ~  d32[ es f es]  f[ d c bes] c8 \times 2/3 {c16 d es}
    \times 4/6 {d es f a, bes c} |
  bes16. bes'32 a16. g32 f16. es32 d16. c32 f,8 bes32 a bes c c4 | 
  bes16 f d bes es8 f bes,4
}
%m+1
IISharedC =  \relative c'' {
  r16 a c f e e e e r e g bes |
  %22 page 23
  a a a a r f a c \times 4/6 {bes g g g e e e bes bes bes a g |
  %23 Note:  c[ c bes c bes a] does look like  c[ bes bes c bes a], but that doesn't sound as good.
   a'[ f f f c c]  c[ c bes c bes a]  bes'[ g g g e e]  e[ bes bes bes a g]} |
  %24 page 24
  a16 c c f f8 a, a g r g' |
}
%m+1+2
IISharedD =  \relative c''' {
  %25 Note: "bes32 c d c" is "bes32 bes d c" in manuscript.
  bes8 bes ~  bes32[ c d c d bes a g] a8 a ~  a32[ bes c bes]  c[ a g f] |
  %26 Note: An extra line is missing under the  bes32[ c d c], so it looks like  g[ a bes g].
  bes8 bes ~  bes32[ c d c]  d[ bes a g] a8 a ~  a32[ bes c bes c bes a g] |
   f8[ \times 2/3 {g16 a bes]} \times 4/6 {a bes c e, f g} f16. f32 e16. d32 c16. c32 bes16. a32 |
  %28 page 25
   c,8[ f'32( e f  g)] g4^\trill f16. c32 a16. f32 bes8 c |
}
%1+2
IISharedE =  \relative c'' {
  %42 page 28.5
  f8 a,16 bes a8 a r  c[ a f] |
  %43 page 29
  r  bes[ f d] r  c'[ a f] | r  bes[ f d] es es f f |
  bes, c d es f f f f |
}
%m+1
IISharedF =  \relative c''' {
  a16 a a a r a, c es |
  %47 page 30
  d d d d r bes d f es8 c16 es es c es c |
  d8 \times 2/3 {d16 es f} es8 d d c r c |
}
%m+1+2
IISharedG =  \relative c'' {
  %49
  es!8 es ~  es32[ f g f]  g[ es d c] d8 d ~  d32[ es f es]  f[ d c bes] |
  %50 page 31
  es8 es ~  es32[ f g f]  g[ es d c] d8 d ~  d32[ es f es]  f[ d c bes] |
  c8 \times 2/3 {c16 d es} \times 4/6 {d es f a, bes c} bes16. bes'32
    \slashedGrace bes8 a16. g32 \slashedGrace g8 f16. es32 \slashedGrace es8 d16. c32 |
  f,8 bes32( a bes  c) c4^\trill bes16 f d bes es8 f |
  bes,2 r2^\fermata \bar "|."
}






