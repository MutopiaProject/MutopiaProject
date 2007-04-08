\version "1.6.0"

IMandII = \notes \relative c'' {
  \clef "treble"
  \key g \major
  \time 4/4
  \property Voice.tupletSpannerDuration = #(make-moment 1 4)

  % end beams on quarters by default
  \property  Score.autoBeamSettings \override
    #'(end * * * *) = #(make-moment 1 4)

  \repeat "volta" 2 {
  <b8 d, g,> <b d, g,> \times 4/6 {r16 [g a b c b]}
    <a8 fis d> <a fis d> \times 4/6 {r16 [fis g a b a]} |
  <g8 g,> <g g,> \times 4/6 {r16 [b a b b, d]} [<a'8 e c>
    \times 2/3 {a16 b c]} \times 4/6 {[b a g c, b a]} |
  %3
  g8 g r16 <a' d,> <b d,> <c d,> <d8 d, g,> <d8 d, g,>
    \times 4/6 {r16 [b c d e d]} |
  <c8 d,> <c d,> \times 4/6 {r16 [a b c d c]} <b8 d, g,> <b d, g,>
    \times 4/6 {r16 [g' fis g g, b]} |
  %5
  [<a8 e c> \times 2/3 {c16 d e]} \times 4/6 {[d c b a g fis]} g8 g,
    \times 4/6 {[g16 g g g g g] |
  [<c' e, g,> <e, g,> <e g,> <e g,> <e g,> <e g,>]
    [<b' d, g,> <d, g,> <d g,> <d g,> <d g,> <d g,>] [a' g fis c' b a]}
    [g32 a g a b16 b] |
  %7
  [c32 d e d e d c b] [a b c b c b a g] g8 fis \times 4/6 {[fis16 e d fis e d] |
  [a a' a, a g' a,] [a a' a a a a]}
  % Note: the following 4/6 section was written as
  % times 6/6 {cis,4 d | <b' g> <e, cis> <a fis> <d, b> | e}
  % i.e. as quarters with 6s above, everything without stems.
  % The last figure must, in its context, be [e g g g g g]
    \times 4/6 {cis,16 a' a a a a d, a' a a a a |
  %9
  g b b b b b cis, e e e e e fis a a a a a b, d d d d d |
  e g g g g g} \times 4/6 {[a,16 cis' d e d cis] [<fis, a,> d' e fis e d] [cis, e' fis g fis e]} |
  %11
  [d8 d,] [fis d] [g \times 2/3 {g'16 e g]} \times 4/6 {[fis d fis e cis e]} |
  [d8 d, fis d] g \times 2/3 {[g'16 e g]} \times 4/6 {[fis d fis e cis e]} |
  %13
  [d8 \times 2/3 {a16 a a]} \times 4/6 {[<a-. fis> <a-. fis> <a-. fis>
    <a-. fis> <a-. fis> <a-. fis>]} <a4 fis> r^\fermata |
  }

  %14
  \repeat "volta" 2 {
  <fis'8 a, d,> <fis a, d,> \times 4/6 {r16 [d e fis g fis]} <e8 cis> <e cis>
    \times 4/6 {r16 [cis d e fis e]}
  <d8 fis, a,> <d fis, a,> \times 4/6 {[<a16 fis> <a fis> <a fis> <a fis>
    <a fis> <a fis>]} <b8 g g,> \times 2/3 {[g16 a b]}
    \times 4/6 {[a g fis e fis g]} |
  %16
  [fis8 d] [<b' gis> <b gis>] [a a,] [<a' fis> <a fis>] |
  g g, [b'16 b a g] g8 fis d'16 f e d |
  %18 page 3
  d8 cis c16 e d c c8 b g'16 d c b |
  <{[b8 a] [d16 c b a]} \\ {d,4 d}> <b8 d, g,> <b d, g,>
    \times 4/6 {r16 [g a b c b]} |
  %20
  <a8 fis> <a fis> \times 4/6 {r16 [fis g a b a]} <g8 g,> <g g,>
    \times 4/6 {r16 [b a b b, d]} |
  [<a'8 e c> \times 2/3 {a16 b c]} \times 4/6 {[b a g c, b a]} b8 g r4 |
  %22
  <d''8 d, g,> <d8 d, g,> \times 4/6 {r16 [bes c d es d]} <c8 d,> <c d,>
    \times 4/6 {r16 [a bes! c d c]} |
  <b8 d,> <b d,> \times 4/6 {r16 [g' fis g g, bes]} [<a8 es c>
    \times 2/3 {c16 d es]} \times 4/6 {[d-. c-. bes!-. a-. g-. fis-.]} |
  %24
  g8 g, <g' b,> <g b,> <e c> <e c> <g b,> <g b,> |
  <e c> <e c> [a'32 g fis! g g fis eis fis] [fis d cis d eis d cis d]
    [a' g fis! g g fis eis! fis] |
  %26
  [fis d cis d e d cis d] fis,8 d d d <a' fis> <a fis> |
  <g4 g,> r8 d16 fis e g fis a g b a c |
  %28
  [b8 \times 2/3 {e16 d c]} \times 4/6 {[b fis-. g-. a-. b-. a-.]} <g8 g,>
    \times 2/3 {[e'16 d c]} \times 4/6 {[b fis g a b a]} |
  [<g8 g,> \times 2/3 {<g16 g,> b g]} \times 4/6 {[<g g,> b g
    <g g,> b g]} [<g8 g,> \times 2/3 {c16 b a]}
    \times 4/6 {[g a b a g fis]} |
  %30
  g8 d16 g e g fis a g b a c b d c e |
  [d8 \times 2/3 {g16 fis e]} \times 4/6 {[<d d,> <a d,> <b d,> <c d,>
    <d d,> <c d,>]} <b8 d, g,> \times 2/3 {[g'16 fis e]} \times 4/6 {[<d d,> <a d,> <b d,> <c d,> <d d,> <c d,>]} |
  %32
  [<b8 d, g,> \times 2/3 {b16 d b]} \times 4/6 {[b16 d b b16 d b]}
    [<b8 d, g,> \times 2/3 {e16 d c]} \times 4/6 {[b c d c b a]} |
  <g8 g,> b, c a  [b \times 2/3 {e'16 d c]} \times 4/6 {[b a g fis g a]} | 
  %34
  g8 b, c a [b \times 2/3 {e'16 d c]} \times 4/6 {[b a g fis g a]} |
  g8 b, c a [b \times 2/3 {e'16 d c]} \times 4/6 {[b a g c, b a]} |
  %36
  [g8 \times 2/3 {<d'16 b> <d b> <d b>]} \times 4/6 {[<d b> <d b> <d b>
    <d b> <d b> <d b>]} <g'4 b, d, g,> s4 \bar "|."
  }
}
