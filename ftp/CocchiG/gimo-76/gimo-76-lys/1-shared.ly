\version "2.16.0"

% Note: This file contains notes shared between mandolin 1 & 2. All are marked with a // in each bar

ISharedA =  \relative c'' {
  %2 page 2
  <fis a, d,>4 a8 fis g e b' g | <fis a, d,>4 a8 fis <fis a, d,>4 a8 fis |
  <fis a, d,>4 a8 fis g e a a, | d4 fis8 a a4 fis8 a | a4 fis8 d e4 cis8 a' |
  a4 e8 a a4 e8 cis | d4 b8 a'
}

ISharedB =  \relative c'' {
  %9 page 2
  d4 b8 a' a4 d,8 a' | a4 d,8 a cis4 a8 e' | 
  \grace fis8 e4 a8 e \grace fis e4 a8 e | 
  %12 page 3
  \grace fis8 e4 fis8 a, <<e'4 b \\ gis>> b'8 d |
  cis e, b' d cis e, b' d | cis b16 a b8 gis? a4 b,8 d |
  cis e, b' d cis e, b' d | cis b16 a e'8 e, a a'16 b a8 a |
  %17
   a[ a a a] <<{s  cis[ cis cis] |  cis[ cis cis cis]  cis[ a]} \\
    { a[ a, a a] |  a[ a a a] a4}>> fis8 a |
   e'[ a d, a'] cis a fis a | e a d, a' cis,4 e,8 e | e cis a' a a e cis' cis |
  %22 page 4
  cis a e' e e cis a' a | a16 cis, a' cis, a' cis, a' cis,
    a' cis, a' cis, a' cis, a' cis, |
  <<{a'4 gis <a cis,>} \\ {b,4 b e,}>>
}

ISharedC =  \relative c''' {
  %26 page 4
  a8. g32 a b8 a g16 b8. cis,!16 e8. | c8 b4 a8 g b e,4 |
  g'8. fis32(  g) a16 g8. fis16 a8. cis,16 d8. | b8 a4 g8 fis a d,4 |
  \grace g'8 fis8. e32 fis g8 fis e8. d32 e fis8 e |
  %31 page 5
  d8. cis32 d e8 d cis4 r |
  fis8. e32 fis g8 fis \grace fis8 e8. d32 e fis8 e |
  \grace e8 d8. cis32 d e8 d cis4 r |

  <fis a, d,>4 a8 fis <fis a, d,>4 a8 fis | <fis a, d,>4 a8 fis g e b' g |
  <fis a, d,>4 a8 fis <fis a, d,>4 a8 fis |
  <fis a, d,>4 a8 fis g e a a, |
  %38 page 6
  d4 a'8 d d4 a8 d |  d[ gis, gis a] a4 e8 c' | c?4 a8 c  c[ fis, fis g] |
  g4 d8 bes' bes4 g8 bes |  bes?[ g e d]
}

ISharedD =  \relative c''' {
  %43
  <<{ a8[ a a a]  a[ a a a] | a a a b16 cis  d8[ d d d] |  d[ d d d]  d[ d d d] |
    cis4} \\ {r8  a,[ a a]  a[ a a a] | a a a4  fis'8[ fis fis fis] |
     fis[ fis fis fis] fis fis fis4 | e4}>> a,8 a a32 b cis8. cis8 cis |
  %47 page 7
  cis32 d e8. e8 e e32 fis g8. g8 g | 
  <fis a, d,>4 a,8 a' g32(  a) b8. e,32(  fis) g8. |
  fis32(  g) a8. a,8 a' g32 a b8. e,32 fis g8. |
  fis32(  g) a8. d,32(  e) fis8. e32(  fis) g8. cis,32(  d) e8. |
  d4 a8 a' g32 a bes8. e,32 f g8. | 
  f32 g a8. a,8 a' g32 a bes8. e,32 f g8. |
  f32(  g) a8. d,32(  e) f8. e32(  f) g8. cis,32(  d) e8. |
  d4 a8 a a fis d' d |
  %55 page 8
  d a fis' fis fis  d a' a | a fis d' d d16 fis, d' fis, d' fis, d' fis, |
  d' fis, d' fis, d' fis, d' fis, <<{d'4 cis | <d fis,>} \\ {e, e | d,}>>
    gis'8 b a a, <<g'4 \\ a,>> |
  %59
  <fis' a, d,>4 gis8 b a a, <<g'4 \\ a,>> |
  <fis' a, d,>8[ a <fis a, d,> a] <g b, d,>4 <<e \\ cis>> |
  <fis a, d,>8[ a <fis a, d,> a] <g b, d,>4 <<e \\ cis>> |
  <fis a, d,> a8 d <a a, d,> <a a, d,> <a a, d,> <a a, d,> |
  %65
  <a a, d,>2 r \bar "|."
}

