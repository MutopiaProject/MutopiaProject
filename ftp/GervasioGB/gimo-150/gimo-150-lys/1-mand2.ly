\version "2.16.0"

% Allegro e Custoso assai

IMandII =  \relative c' {
  \clef "treble"
  \set tupletSpannerDuration = #(ly:make-moment 1 4)
  \key d\major
  \time 4/4
%page 16
  \partial 8 fis8 |
   fis8[ \times 2/3 {g16 a b]}  a8[ g]  fis[ \times 2/3 {d'16 e fis]}  e8[ d] |
  \times 4/6 { cis16[ d e g fis e]}  d8[ cis] d4 r8 fis,8 |
   fis8[ \times 2/3 {g16 a b]}  a8[ g]  fis[ \times 2/3 {d'16 e fis]}  e8[ d] |
  %4
  \times 4/6 { cis16[ d e g fis e]}  d8[ cis] d a16 fis d8 fis |
  g16 b b d d b b d \times 4/6 { g16[ fis e d cis b]}  g'8[ g,] |
  fis16 a a d d a a d \times 4/6 { fis16[ e d d e fis]}  fis8[ fis,] |
  e16 g g cis cis e e cis \times 4/6 { cis16[ b a cis d e]  cis[ b a e' d cis]} |
  %8
  d8 d, r4 \times 4/6 {r16  cis'16[ d e d cis]  a[ e' fis g fis e]} |
  fis16 b b a a g g e fis d d cis cis b b cis |
  cis8 a  a,[ \times 2/3 {e''16 d cis]} \times 4/6 { d[ a' g fis g a]  fis[ a g fis g a]} |
   cis,8[ \times 2/3 {fis16 e d]} \times 4/6 { cis[ b a gis a b]}
     a8[ \times 2/3 {fis'16 e d]} \times 4/6 { cis[ b a gis! a b]} |
  %12
  a16 e' e d d b b cis e cis e cis d b d b |
  \times 4/6 { a[ b cis d cis b]}  a8[ gis] a8. e'32 cis a16 e a cis |
%page 17
  e16 cis e cis a e a cis a8 cis16 cis cis8 cis |
  cis4 r4 r4 r8 cis8 |
  %16
   cis8[ \times 2/3 {fis16 e d]} cis16 fis e d
     cis8[ \times 2/3 {d16 cis b]} a16 d cis b |
   a8[ \times 2/3 {b16 a gis]} a16 gis a b
    \times 4/6 { a16[ b cis d cis b]}  a8[ gis] |
  a4 r8 e'8 \times 4/6 { fis16[ dis dis dis b b]  b[ fis fis fis' fis fis] |
   e[ fis g fis fis fis]  e[ fis g fis fis fis]  g[ fis e c b a]}  g8[ fis] |
  %20
  e'8 g,16 g g8 e' \times 4/6 { e16[ cis cis cis a a]  a[ e e e' e e]} |
  \times 4/6 { d[ e fis e e e]  d[ e fis e e e]  d[ a fis d' e fis]  fis[ e d fis e d]} |
  d8 cis r8 a8  fis[ \times 2/3 {g16 a b]}  a8[ g] |
   fis[ \times 2/3 {d'16 e fis]}  e8[ d] \times 4/6 { cis16[ d e g fis e]}  d8[ cis] |
  %24
   d8[ \times 2/3 {a16 a a]} \times 4/6 { g[ a b a a a]  g[ a b b b b]  a[ b cis b b b] |
   a[ b cis e e e]  d[ e fis e e e]} d16 c c b b cis cis d |
  d c c b b cis cis d \times 4/6 { d[ e fis g fis e]}  d8[ cis] |
  d8 a16 fis d' a d fis a, d a fis d' a d fis |
  fis,8 d'16 d d8 d d2
  \bar "|."
}
