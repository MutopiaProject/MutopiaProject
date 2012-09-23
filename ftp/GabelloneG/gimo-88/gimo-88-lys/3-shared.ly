\version "2.16.0"

% Note: This file contains notes shared between parts. Almost all are marked with a // in each bar

%1+2
IIISharedA =  \relative c'' {
  %1 page 32
  c16. f32 c8 c |
  %2 Note: Originally "a'16 c a8 a"
  a'16. c32 a8 a |
}
%m+1+2
IIISharedB =  \relative c''' {
  %3
  a16. c32 a8 a | g c,16 d e f | g8 e16 f g a |
}
%m+1
IIISharedC =  \relative c''' {
  %6
  bes16 c, a' c, g' c, |
}
%m+1+2
IIISharedD =  \relative c''' {
  %7
  \times 2/3 { a16[ g f} f8] r | \times 2/3 {a16 g f} c'8. a16 |
  \times 2/3 { g16[ f e} c'8.] g16 | f a g f e d |
  %11 page 33
  e g f e d c | a' g f e d c | g'8 g, r | \times 2/3 {f'16 e f} a8 dis, |
  \grace f e4. | \times 2/3 {d!16 c d} f8 b, |
  \grace b? c4. | \times 2/3 {f16 g a g f e d c b} | c8 c, r |
  %20 page 34
  \times 2/3 {f'16 e f} a8 dis, | \grace dis? e4. |
  \times 2/3 {d!16 c d} f8 b, | \grace b? c4. |
  \times 2/3 {f16 g a g f e d c b} | c8 c, r | c'16 g e' c g' e |
}
%m+1
IIISharedE =  \relative c''' {
  %27
  bes!8 e,16 f g a | bes8 e,16 f g a | bes16 c, a' c, g' c, |
  %30 page 35
  a'8 g16 a f8 |
}
%m+1+2
IIISharedF =  \relative c''' {
  %31
  \grace {a16[ bes]} c8 bes16 a g f | c'8 c, r |
  \times 2/3 {bes'16 a bes} d8 gis, | \grace gis? a4. |
  \times 2/3 {g!16 f g} bes8 e, | \grace e f4. |
  \times 2/3 {bes16 c d c bes a g f e} | f8 f, r |
  \times 2/3 {bes'16 a bes} d8 gis, |
  %40 page 36
  \grace gis? a4. | \times 2/3 {g!16 f g} bes8 e, | 
  \grace e f4. |
  \times 2/3 {bes16 c d c bes a g f e} | f8 c16 a f' c |
  a'8 c,16 a f' c | \times 2/3 {d c bes} a8 g | a c16 a f' c |
  a'8 c,16 a f' c |
  %49 page 37
  \times 2/3 {d c bes} a8 g | f \times 2/3 {f'16 g a f g a} |
  <f c f,>8 <f c f,> <f c f,> | <f c f,>4 r8 |
}
%1+2
IIISharedG =  \relative c' {
  %63 page 39
  b4 g8 | c4 c8 | b4 g8 | c4 c8 | b4 g8 | c4 e8 | f e d | f e d |
  %71 page 40
  b4 r8 |
}
%1+2
IIISharedH =  \relative c' {
  %82 page 41
   c16[ g'']  f[ e]  d[ c] |  b[ d]  g,[ b]  d[ f] | b, d g, b d f |
  e g f e d c | g'8 g, r | f'8 a16. f32 d16. f32 | e8 g16. e32 c16. e32 |
  %89 page 42
   d16[ f]  e[ d]  c[ b] |
  %90 Note: Bars 90-91 were originally: "[c c'] [b a] [g f] | [e g] [f e] [d c]"
   c[ c']  b[ a]  g[ e] |  d[ f]  e[ d]  c[ b] |
  c8 c, r | f'  a16.[ f32]  d16.[ f32] | e8 g16. e32 c16. e32 | 
  %95 page 43 Note: Bars 95-96 were originally "f8 [a16. f32 d16. f32] | e8 [g16. e32 c16. e32]"
  %Replaced by bars 89-90:
   d16[ f]  e[ d]  c[ b] |  c[ c']  b[ a]  g[ e] 
  d16 f e d c b |
}
%m+1+2
IIISharedI =  \relative c'' {
  %98 page 43
  c16 e e g g e | c'8 c, g' | \times 2/3 {a16 g f} e8 d | c16 g' f e d c |
  b d g, b d f |
  %103 page 44
  e g f e d c | b? d g, b d f | e g f e d c | g'8 g, r |
}
%1+2
IIISharedJ =  \relative c'' {
  %107 page 44 Note: The 8 bars of rest have been added by me.
  R4.*8 |
  %115
  e8 e e | e4 d8 | e4 d8 | e e e | e  e,16[ f e d] |
  %120 page 45
  cis8 cis cis | cis cis cis | d4 r8 | cis cis cis | d8 d16 e d c! |
  b8 b b | b? b b | c4 r8 |
  %128 page 46 
  b? b b | c4 r8 |
  %130 Note: I have skipped two bars: "b? b b | c4 r8" 
  c' c c | bes!4 r8 |
  %132 page 47
  bes4 r8 | a8 c c | d bes a | a g r | c4 r8 | c4 r8 |
}
%1+2 originally, now unused
IIISharedK =  \relative c' {
  %144 page 49
  d8 d d | c c c | bes bes bes | a a a |
  %148 page 50
  a bes c | f a f |
}
%1+2
IIISharedL =  \relative c' {
  %151 page 50
  c8 c c | bes bes bes | a a a |
  %154 page 51
  bes c c | f4 r8 | f4 r8 | bes,8 c c | f4 r8 | f4 r8 | bes, c c 
}
%m+1+2
IIISharedM =  \relative c' {
  %161 page 51
  f16. f'32 c8 c |
  %162 page 52
  f16 a f8 f | a16. c32 a8 a | g c,16 d e f | g8 e16 f g a |
}
%m+1
IIISharedN =  \relative c''' {
  %166
   bes16[ c,]  a'[ c,]  g'[ c,] |
}
%m+1+2
IIISharedO =  \relative c''' {
  %167
  a8 f16 g a bes |
  \grace {a16[ bes]} c8 bes16 a g f | c'8 c, r |
  \times 2/3 {bes'16 a bes} d8 gis, | \grace gis? a4. |
}
%m+1 in manuscript, I assume m+1+2
IIISharedP =  \relative c''' {
  %172
  \times 2/3 {g16 fis g} bes8 e, |
  %173 page 53
  \grace e8 f4. | \times 2/3 {bes16 c d c bes a g f e} |
}
%m+1+2
IIISharedQ =  \relative c'' {
  %175
  f8 c16 a f' c | a'8 c,16 a f' c | \times 2/3 {d16 c bes} a8 g |
  a c16 a f' c | a'8 c,16 a f' c | \times 2/3 {d16 c bes} a8 g |
  %181 page 54
  f \times 2/3 {f'16 g a f g a} | <f c f,>8 <f c f,> <f c f,> |
  <f c f,>4 r8^\fermata \bar "|." |
}




