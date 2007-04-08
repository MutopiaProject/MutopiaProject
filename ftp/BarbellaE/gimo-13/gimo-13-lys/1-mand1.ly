\version "1.6.0"

IMandI = \notes \relative c'' {
  \clef "treble"
  \key g \major
  \time 4/4
  \property Voice.tupletSpannerDuration = #(make-moment 1 4)

  \repeat "volta" 2 {
  <d8 d, g,> <d8 d, g,> \times 4/6 {r16 [b c d e d]} <c8 d,> <c d,>
    \times 4/6 {r16 [a b c d c]} |
  <b8 d, g,> <b d, g,> \times 4/6 {r16 [g' fis g g, b]} [<a8 e c>
    \times 2/3 {c16 d e]} \times 4/6 {[d c b a g fis]} |
  g8 g, r16 fis' g a <b8 d, g,> <b d, g,> \times 4/6 {r16 [g a b c b]} |
  %4
  <a8 fis d> <a fis d> \times 4/6 {r16 [fis g a b a]} <g8 g,> <g g,>
    \times 4/6 {r16 [b a b b, d]} |
  [<a'8 e c> \times 2/3 {a16 b c]} \times 4/6 {[b a g c, b a]} g8 g r
    \times 2/3 {[g''16 d b]} |
  <e8 c g> \times 2/3 {[g16 e c]} <d8 d, g,> \times 2/3 {[g16 d b]}
    <\times 4/6 {[c b a e' d c]} \\ d,4> [b32 c b c d16 dis] |
  %7
  [e32 fis g fis g fis e d!] [c d e d e d c b] <{[b8 a]} \\ d,4> r8 d |
  [<cis8 e,> \times 2/3 {e16 d cis]} [<d8 fis,> \times 2/3 {fis16 e d]}
    [<e8 a,> \times 2/3 {g16 fis e]} [<fis8 a, d,> \times 2/3 {a16 g fis]} |
  %9
  \times 4/6 {[b16 a g fis e dis]} [e8 \times 2/3 {g16 fis e]}
    \times 4/6 {[a g fis e dis cis]} [dis8 \times 2/3 {fis16 e dis]} |
  \times 4/6 {[g fis e d cis b] [a e' fis g fis e] [d fis g a g fis]
    [e g a b a g]} |
  %11
  [fis8 \times 2/3 {a16 fis d]} [d,8 \times 2/3 {c'16 b c]} <b8 d, g,>
    \times 2/3 {[b'16 g e]} \times 4/6 {[a fis d g e cis]} |
  <d8 g, d> \times 2/3 {[a'16 fis d]} [d,8 \times 2/3 {c'16 b c]} <b8 d, g,>
    \times 2/3 {[b'16 g e]} \times 4/6 {[a fis d g e cis]} |
  %13
  [<d8 d,> \times 2/3 {<d16 d,> <d d,> <d d,>]} \times 4/6 {
    [<d d,> <d d,> <d d,> <d d,> <d d,> <d d,>]} <d4 d,> r^\fermata |
  }

  %14
  \repeat "volta" 2 {
  <a'8 a, d,> <a a, d,> \times 4/6 {r16 [fis g a b a]} <g8 a,> <g a,>
    \times 4/6 {r16 [e fis g a g]} |
  <fis8 a, d,> <fis a, d,> \times 4/6 {r16 [d c d a cis]} [<b8 d, g,>
    \times 2/3 {e16 fis g]} \times 4/6 {[fis e d cis! d e]} |
  %16
  d8 d, d'16 f e d d8 cis c16 e d c |
  c8 b g'16 d c b [b8 a] [<b gis> <b gis>] |
  %18 page 3
  [a a,] [<a' fis> <a fis>] [g g,] b'16 b a g |
  <{[g8 fis]} \\ d4> r8 d <d' d, g,> <d d, g,> \times 4/6 {r16 [b c d e d]} |
  %20
  <c8 d,> <c d,> \times 4/6 {r16 [a b c d c]} <b8 d, g,> <b d, g,>
    \times 4/6 {r16 [fis' e fis g, b]} |
  [a8 \times 2/3 {c16 d e]} \times 4/6 {[d c b a g fis]} g8 g, d''16 c bes a |
  %22
  <bes8 d, g,> <bes d, g,> \times 4/6 {r16 [g a bes! c bes]} <a8 fis>
    <a fis> \times 4/6 {r16 [fis g a bes! a]} |
  <g8 g,> <g g,> \times 4/6 {r16 [b-. a-. b-. d,-. g-.]} [g8 \times 2/3 {
    a16-. bes-. c-.]} \times 4/6 {[bes! a g c, bes! a]} |
  %24
  g8 r [g''32 f e f f e dis e] [e c b c dis c b c] [g' f! e f f e dis! e] |
  [e c b c d c b c] r8 a,8 d fis cis a |
  %26
  d fis [d32 c'! b c d c b c] [d, b' a b c b a b] [d, c' b c d c b c] |
  [<b8 d,> d,16 g] [e g fis a] [g b a c] [b d c e] |
%}  %28
  [d8 \times 2/3 {g16 fis e]} \times 4/6 {[d a b c d c]} [<b8 d, g,>
    \times 2/3 {g'16 fis e]} \times 4/6 {[<d d,> <a d,> <b d,> <c d,> <d d,> <c d,>]} |
  [<b8 d,> \times 2/3 {<b16 d, g,> d b]} \times 4/6 {[<b16 d, g,> d b
    <b16 d, g,> d b]} [<b8 d, g,> \times 2/3 {e16 d c]} \times 4/6 {[b c d c b a]} |
  %30
  g4 r8 d16 fis e g fis a g b a c |
  [b8 \times 2/3 {e16-. d-. c-.]} \times 4/6 {[b-. fis-. g-. a-. b-. a-.]} <g8 g,>
    \times 2/3 {[e'16 d c]} \times 4/6 {[b-. fis-. g-. a-. b-. a-.]} |
  %32
  [<g8 g,> \times 2/3 {<g16 g,> b g]} \times 4/6 {[<g g,> b <g g,> g b g]}
    [<g8 g,> \times 2/3 {c16-. b-. a-.]} \times 4/6 {[g a b a g fis]} |
  [g8 d'16 <e d,>] \times 4/6 {[e,16 fis g fis g a]} [g8 \times 2/3 {g'16-. fis-. e-.]}
    \times 4/6 {[d c b a g fis]} |
  [g8 d'16. d,32] \times 4/6 {[e16 fis g fis g a]} [g8 \times 2/3 {g'16-. fis-. e-.]}
    \times 4/6 {[d c b a g fis]} |
  %35 page 4
  [g8 d'16. d,32] \times 4/6 {[e16 fis g fis g a]} [g8 \times 2/3 {g'16 fis e]}
    \times 4/6 {[d c b a g fis]} |
  [g8 \times 2/3 {<g16 g,> <g g,> <g g,>]} \times 4/6 {[<g-. g,> <g-. g,>
    <g-. g,> <g-. g,> <g-. g,> <g-. g,>]} <g'4 b, g g,> r^\fermata \bar "|."
  }
}

