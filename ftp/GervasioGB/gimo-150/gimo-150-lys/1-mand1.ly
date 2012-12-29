\version "2.16.0"

% Allegro e Custoso assai
IMandI =  \relative c'' {
  \clef "treble"
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \key d\major
  \time 4/4
%page 9
  \partial 8 a8 |
   a8[ \times 2/3 {b16 cis d]}  cis8[ b]  a[ \times 2/3 {fis'16 g a]}  g8[ fis] |
  \times 4/6 { e16[ fis g b a g]}  fis8[ e] d a16 fis d8 a' |
   a8[ \times 2/3 {b16 cis d]}  cis8[ b]  a[ \times 2/3 {fis'16 g a]}  g8[ fis] |
  \times 4/6 { e16[ fis g b a g]}  fis8[ e] d4 r8 a8 |
  %5
  b16 d d g g d d g \times 4/6 { b[ a g fis e d]}  b'8[ b,] |
  a16 d d fis fis d d fis \times 4/6 { a[ g fis fis e d]}  a'8[ a,] |
  g16 cis cis e e g g e \times 4/6 { e16[ d cis e fis g]  e[ % d instead of e?
    d cis g' fis e]} |
  \times 2/3 { fis16[ e d} d,8] \times 4/6 {r16  fis'16[ g a g fis ]}  e8[ a,]
    \times 4/6 {r16  cis[ d e d cis]} |
  d16 g g fis fis b, b cis d b' b a a gis gis a |
  %10
  \times 4/6 { a16[ e d cis d e]  cis[ e d cis d e]}
     d8[ a]  d,[ \times 2/3 {d'16 e fis]} |
   e8[ \times 2/3 {a16 gis fis]} \times 4/6 { e[ d cis b cis d]}
     cis8[ \times 2/3 {a'16 gis fis]} \times 4/6 { e[ d cis b cis d]} |
  cis16 g'! g fis fis gis gis a a e a e fis d fis d |
  \times 4/6 { cis16[ d e fis e d]}  cis8[ b] a a'16 e cis a cis e |
%page 10
  a16 e a e cis a cis e cis8 e16 e e8 e |
  %15
  e4 r4 r4 r8 e8 |
   e8[ \times 2/3 {a16 gis fis]}  e8[ \times 2/3 {a16 gis fis]}
     e8[ \times 2/3 {fis16 e d]} cis16 fis e d |
   cis8[ \times 2/3 {d16 cis b]} a16 b cis d
    \times 4/6 { cis[ d e fis e d]}  cis8[ b] |
  a4 r8 a'8 \times 4/6 { a16[ fis fis fis dis dis]  dis[ b b a' a a]} |
  \times 4/6 { g[ fis e a a a]  g[ fis e a a a]  g[ fis e c b a]}  g8[ fis] |
  %20
  e8 b'16 b b8 g' \times 4/6 { g16[ e e e cis cis]  cis[ a a g' g g]} |
  \times 4/6 { fis[ e d g g g]  fis[ e d g g g]  fis[ e d fis g a]  a[ g fis a g fis]} |
  fis8 e r a,  a[ \times 2/3 {b16 cis d]}  cis8[ b] |
   a8[ \times 2/3 {fis'16 g a]}  g8[ fis8] \times 4/6 { e16[ fis g b a g]}  fis8[ e] |
   d[ \times 2/3 {c16 c c]} \times 4/6 { b[ a g c c c]  b[ a g d' d d]  cis[ b a d d d] |
  %25
   cis[ b a g' g g]  fis[ e d g g g]}  fis16[ a a g]  g[ e e fis] |
   fis16[ a a g]  g16[ e e fis] \times 4/6 { fis16[ g a b a g]}  fis8[ e] |
  d8 d16 a fis d fis a d a d a fis d fis a |
  d8 fis16 fis fis8 fis fis2
  \bar "|."
}
