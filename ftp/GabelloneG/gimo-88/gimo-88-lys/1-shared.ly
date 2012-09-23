\version "2.16.0"

% Note: This file contains notes shared between parts. Almost all are marked with a // in each bar

% mand+vln1+vln2
ISharedA =  \relative c'' {
  \partial 8 c8 |
  %1 page 2
  <f c f,>4 <f c f,> <f c f,>8 f,16 f a a c c |
  <f c f,>4 <f c f,> <f c f,>8 f,16 f a a c c |
  f8 f, r c' d16 bes f' d bes'8 r | bes16 a g f e d c bes c a f' c a'8 r |
  %5
  a16 g f e d c bes a bes g e' bes g'8 r |
  g16 f e d c bes a g a g f8 r4 | f'32 g a8. f8 c f,16 f a a c c f f |
  %8 page 3
  e32 f g8. e8 c e,16 e g g c c e e | d32 e f8. d8 b  g16 g b b d d f f
}
% mand+vln1
ISharedB =  \relative c'' {
  %10 page 3
  e d c8 r c bes16 a bes c bes4 |
  bes'16 a bes c bes a bes c bes a g f e d c bes |
  a g a bes a4 a'16 g a bes a g a bes | a g f e d c bes a bes a bes c bes4 |
  bes'16 a bes c bes a bes c bes a g f e d c bes |
}
%mand+vln1+vln2
ISharedC =  \relative c'' {
  %15 page 4
  a16 f f a a c c f f a, a c c f f a | a c, c f f a a c c8 bes16 a g f e d |
}
%mand+vln1
ISharedD =  \relative c'' {
  %17 page 4
  c8 f32( e f  g) g4^\trill f r16 f a c | 
  bes16. a32 g8 r16 bes d bes a16. g32 f8 \times 4/6 {r16  f,[ g a bes c]} |
  bes16. a32 g8 \times 4/6 {r16  bes[ c d c bes]}
}
%mand+vln1+vln2
ISharedE =  \relative c'' {
  a16 f f a a c c f |
  %20 page 4
  f a, a c c f f a a c, c f f a a c |
  c8 bes16 a g f e d c8 f32( e f  g) g4^\trill |
}
%m+1
ISharedF =  \relative c'' {
  %22 page 4
   f8[ \times 2/3 {a16 bes c]}  a8[ \times 2/3 {a16 bes c]} a8
    <f c f,> <f c f,> <f c f,> |
}
%1+2
ISharedFF =  \relative c' {
  %27 page 5
  e8 c d g, r c e f | e c d g, c c c4 |
}

%m+1+2
ISharedG =  \relative c'' {
  %41 page 7
  <c e, g,>8 c,16 c e e g g <c e, g,>4 <c e, g,> |
  <c e, g,>8 c,16 c e e g g c8 c, r4 |
  %43 page 8
  <<{e'16 s g s e s g s f s a s f s a s | e s g s e s g s}
   {s a, s a s a s a s a s a s a s a | s a s a s a s a}>> f e f g f4^\trill |
  %45
  f16 b d c b a g f e8 d16 e f e d c | g'8 g, r g a16 a f' f b, b g' g |
  c, c a' a d, d f f e8 f16 g a8 c, | 
  g c16. d32 d4^\trill e16 e g g g g a! c |
  %49 page 9
  g,8 c16. d32 d4^\trill  c8[ \times 2/3 {e16 f g]}
     e8[ \times 2/3 {e16 f g]} |
  %Note: The <e c g>4 chord is left out in mand 1, making the bar a quarter too short. My interpretation: The chord should be there just as in violin 1+2.
  e8 <e c g>8 <e c g> <e c g> <e c g>4
}
%1+2
ISharedH =  \relative c' {
  %53 page 9
   cis8[ cis cis cis]  cis[ cis cis cis] |  d[ d e cis] d f g a |
  % 55 page 10
  d,4 r  b8[ b b b] | b? b b b c c d b | c e f g c,4 r |
}

%m+1+2
ISharedJ =  \relative c' {
  f16 f a a c c f f |
  %80
  e32 f g8. e8 c e,16 e g g c c e e |
  %81 page 15
  d32 e f8. d8 b g16 g b b d d f f |
}
%m+1
ISharedK =  \relative c'' {
  %82
  e16 d c8 r c bes!16 a bes c bes4 |
  bes'16 a bes c bes a bes c bes a g f e d c bes |
  a g a bes a4 a'16 g a bes a g a bes |
  a g f e d c bes a bes a bes c bes4 |
  bes'16 a bes c bes a bes c bes a g f e d c bes |
}
%m+1+2
ISharedL =  \relative c'' {
  %87 page 16
  a16 f f a a c c f f a, a c c f f a |
  a c, c f f a a c c8 bes16 a g f e d | c8 f32 e f g g4^\trill
}
%m+1
ISharedM =  \relative c'' {
  f8 \times 2/3 {a16 bes c} a8 \times 2/3 {a16 bes c} |
  %90
   a8[ <f c f,> <f c f,> <f c f,>] <f c f,>4 r4^\fermata \bar "|."
}



