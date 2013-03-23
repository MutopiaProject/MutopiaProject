\version "2.16.0"

% Note: This file contains notes shared between parts. Almost all are marked with a // in each bar

% vln1+vln2
ISharedA =  \relative c''' {
  %2 page 2
  a32 gis16. b32 a16. gis32 fis16. e32 d16. \times 2/3 {cis16 d e} e8 r a |
  a32 gis16. b32 a16. gis32 fis16. e32 d16. \times 2/3 {cis16 b a} a8 r e' |
  fis16 d a fis d a' d fis
}
%1+2
ISharedB =  \relative c'' {
  %5 page 2
  d16 b gis b e, gis b d
}
%m+1+2
ISharedC =  \relative c'' {
  %6 page 3
  cis8 b16 a cis8 dis e16 gis gis b b d, cis b |
  cis e e a a cis, b a b d d gis gis d cis b |
  \times 4/6 {cis a a a a a e' cis cis cis cis cis
    d d, d d d d fis' dis dis dis dis dis |
  e b a gis a b} e,8 a' a16 gis gis fis fis e e dis |
  dis? e e8 ~ e \times 2/3 {d!16 cis b} \times 4/6 {cis b a fis' e d cis b a gis a b} |
  %11 page 4
  \times 4/6 {a e d cis d e} a,8 a'' a16 gis gis fis fis e e dis |
  dis? e e8 ~ e \times 2/3 {d!16 cis b} \times 4/6 {cis b a fis' e d cis b a gis a b} |
  \times 4/6 {a e d cis d e} a,8
}
%1+2
ISharedD =  \relative c' {
  %16 and 17, page 5
  a8 a16 b cis8 a
}
%m+1+2
ISharedE =  \relative c'' {
  e8 |
  %28 page 7
  e32(  dis16.) fis32(  e16.) dis32(  cis16.) b32(  a16.) \times 2/3 {gis16 a b} b8 r e |
  e32(  dis16.) fis32(  e16.) dis32(  cis16.) b32(  a16.) \times 2/3 {gis16 fis e} e8 r b' |
}
%m+1
ISharedF =  \relative c'' {
  %30 page 8
  \times 4/6 {cis16 e a a e cis cis e a a e cis} cis8 b e4 ~ |
  e8 dis16. e32 \times 4/6 {fis16 e dis cis b a}
    <<{<e' b>8 \times 2/3 { fis16[ gis a]}} \\ s \\ gis,4>>
    \times 4/6 {gis16 b gis e e e} |
  e8 \times 2/3 {fis16 gis a} \times 4/6 {gis b gis e e e} 
}
%1+2
ISharedG =  \relative c' {
  %43
  d16_\f fis a c b8 b,
}
%1+2
ISharedH =  \relative c' {
  %45 page 10
  e16_\f gis b gis e4
}
ISharedI =  \relative c' {
   a8[ a a a] | 
  %47 page 11
  a4
}
ISharedJ =  \relative c'' {
  a8 a b b, |
  %49
  e4
}
ISharedK =  \relative c''' {
  a8 |
  %53 page 12
  a32 gis16. b32 a16. gis32 fis16. e32 d16. \times 2/3 {cis16 d e} e8 r a |
  a32 gis16. b32 a16. gis32 fis16. e32 d16. \times 2/3 {cis16 b a} a8 r e' |
  %55 Note: "gis16 e e32^\trill dis e16" was written "gis16 e32 e^\trill dis16 e" in the manuscript.
  fis16 d d32^\trill cis d16 \times 4/6 {d, fis' gis a gis fis} gis16 e e32^\trill dis e16 \times 4/6 {e, gis' a b a gis} |
  a16 gis gis fis fis e e dis dis e e8 ~ e \times 2/3 {d16 cis b} |
  %57 page 13
  \times 4/6 {cis b a fis' e d cis b a gis a b} a'8 dis,4 dis8 |
  \times 2/3 {e16 b gis} e8 r a' a16 gis gis fis fis e e dis |
  dis16 e e8 ~ e \times 2/3 {d16 cis b} \times 4/6 {cis b a fis' e d cis b a gis a b} |
  \times 4/6 {a e d cis d e a e d cis d e} <a e a,>4 r^\fermata \bar "|."
}
