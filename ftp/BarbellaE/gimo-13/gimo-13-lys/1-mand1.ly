\version "2.16.0"

IMandI =  \relative c'' {
  \clef "treble"
  \key g \major
  \time 4/4
  \set tupletSpannerDuration = #(ly:make-moment 1 4)

  \repeat "volta" 2 {
  <d d, g,>8 <d d, g,>8 \times 4/6 {r16  b[ c d e d]} <c d,>8 <c d,>
    \times 4/6 {r16  a[ b c d c]} |
  <b d, g,>8 <b d, g,> \times 4/6 {r16  g'[ fis g g, b]} <a e c>8[
    \times 2/3 {c16 d e]} \times 4/6 { d[ c b a g fis]} |
  g8 g, r16 fis' g a <b d, g,>8 <b d, g,> \times 4/6 {r16  g[ a b c b]} |
  %4
  <a fis d>8 <a fis d> \times 4/6 {r16  fis[ g a b a]} <g g,>8 <g g,>
    \times 4/6 {r16  b[ a b b, d]} |
  <a' e c>8[ \times 2/3 {a16 b c]} \times 4/6 { b[ a g c, b a]} g8 g r
    \times 2/3 { g''16[ d b]} |
  <e c g>8 \times 2/3 { g16[ e c]} <d d, g,>8 \times 2/3 { g16[ d b]}
    <<\times 4/6 { c[ b a e' d c]} \\ d,4>>  b'32[ c b c d16 dis] |
  %7
   e32[ fis g fis g fis e d!]  c[ d e d e d c b] <<{ b8[ a]} \\ d,4>> r8 d' |
  <cis e,>8[ \times 2/3 {e16 d cis]} <d fis,>8[ \times 2/3 {fis16 e d]}
    <e a,>8[ \times 2/3 {g16 fis e]} <fis a, d,>8[ \times 2/3 {a16 g fis]} |
  %9
  \times 4/6 { b16[ a g fis e dis]}  e8[ \times 2/3 {g16 fis e]}
    \times 4/6 { a[ g fis e dis cis]}  dis8[ \times 2/3 {fis16 e dis]} |
  \times 4/6 { g[ fis e d cis b]  a[ e' fis g fis e]  d[ fis g a g fis]
     e[ g a b a g]} |
  %11
   fis8[ \times 2/3 {a16 fis d]}  d,8[ \times 2/3 {c'16 b c]} <b d, g,>8
    \times 2/3 { b'16[ g e]} \times 4/6 { a[ fis d g e cis]} |
  <d g, d>8 \times 2/3 { a'16[ fis d]}  d,8[ \times 2/3 {c'16 b c]} <b d, g,>8
    \times 2/3 { b'16[ g e]} \times 4/6 { a[ fis d g e cis]} |
  %13
  <d d,>8[ \times 2/3 {<d d,>16 <d d,> <d d,>]} \times 4/6 {
    <d d,>[ <d d,> <d d,> <d d,> <d d,> <d d,>]} <d d,>4 r^\fermata |
  }

  %14
  \repeat "volta" 2 {
  <a' a, d,>8 <a a, d,> \times 4/6 {r16  fis[ g a b a]} <g a,>8 <g a,>
    \times 4/6 {r16  e[ fis g a g]} |
  <fis a, d,>8 <fis a, d,> \times 4/6 {r16  d[ c d a cis]} <b d, g,>8[
    \times 2/3 {e16 fis g]} \times 4/6 { fis[ e d cis! d e]} |
  %16
  d8 d, d'16 f e d d8 cis c16 e d c |
  c8 b g'16 d c b  b8[ a] <b gis>[ <b gis>] |
  %18 page 3
   a[ a,] <a' fis>[ <a fis>]  g[ g,] b'16 b a g |
  <<{ g8[ fis]} \\ d4>> r8 d <d' d, g,> <d d, g,> \times 4/6 {r16  b[ c d e d]} |
  %20
  <c d,>8 <c d,> \times 4/6 {r16  a[ b c d c]} <b d, g,>8 <b d, g,>
    \times 4/6 {r16  fis'[ e fis g, b]} |
   a8[ \times 2/3 {c16 d e]} \times 4/6 { d[ c b a g fis]} g8 g, d''16 c bes a |
  %22
  <bes d, g,>8 <bes d, g,> \times 4/6 {r16  g[ a bes! c bes]} <a fis>8
    <a fis> \times 4/6 {r16  fis[ g a bes! a]} |
  <g g,>8 <g g,> \times 4/6 {r16  b[-. a-. b-. d,-. g-.]}  g8[ \times 2/3 {
    a16-. bes-. c-.]} \times 4/6 { bes![ a g c, bes! a]} |
  %24
  g8 r  g''32[ f e f f e dis e]  e[ c b c dis c b c]  g'[ f! e f f e dis! e] |
   e[ c b c d c b c] r8 a,8 d fis cis a |
  %26
  d fis  d32[ c'! b c d c b c]  d,[ b' a b c b a b]  d,[ c' b c d c b c] |
  <b d,>8[ d,16 g]  e[ g fis a]  g[ b a c]  b[ d c e] |
%}  %28
   d8[ \times 2/3 {g16 fis e]} \times 4/6 { d[ a b c d c]} <b d, g,>8[
    \times 2/3 {g'16 fis e]} \times 4/6 {<d d,>[ <a d,> <b d,> <c d,> <d d,> <c d,>]} |
  <b d,>8[ \times 2/3 {<b d, g,>16 d b]} \times 4/6 {<b d, g,>16[ d b
    <b d, g,>16 d b]} <b d, g,>8[ \times 2/3 {e16 d c]} \times 4/6 { b[ c d c b a]} |
  %30
  g4 r8 d16 fis e g fis a g b a c |
   b8[ \times 2/3 {e16-. d-. c-.]} \times 4/6 { b[-. fis-. g-. a-. b-. a-.]} <g g,>8
    \times 2/3 { e'16[ d c]} \times 4/6 { b[-. fis-. g-. a-. b-. a-.]} |
  %32
  <g g,>8[ \times 2/3 {<g g,>16 b g]} \times 4/6 {<g g,>[ b <g g,> g b g]}
    <g g,>8[ \times 2/3 {c16-. b-. a-.]} \times 4/6 { g[ a b a g fis]} |
   g8[ d'16 <e d,>] \times 4/6 { e,16[ fis g fis g a]}  g8[ \times 2/3 {g'16-. fis-. e-.]}
    \times 4/6 { d[ c b a g fis]} |
   g8[ d'16. d,32] \times 4/6 { e16[ fis g fis g a]}  g8[ \times 2/3 {g'16-. fis-. e-.]}
    \times 4/6 { d[ c b a g fis]} |
  %35 page 4
   g8[ d'16. d,32] \times 4/6 { e16[ fis g fis g a]}  g8[ \times 2/3 {g'16 fis e]}
    \times 4/6 { d[ c b a g fis]} |
   g8[ \times 2/3 {<g g,>16 <g g,> <g g,>]} \times 4/6 {<g g,>[-. <g g,>-.
    <g g,>-. <g g,>-. <g g,>-. <g g,>-.]} <g' b, g g,>4 r^\fermata \bar "|."
  }
}

