\version "2.16.0"

IIIMand =  \relative c''' {
  \clef "treble"
  \key g\major

  <g b, d, g,>8 <g b, d, g,> <g b, d, g,> |
  <g b, d,> g,16 a b c | <<{s8 e fis} \\ {d c d}>> | <g b, d,> g,16 a b c |
  %5
  <<{s8 e fis} \\ {d c d}>> | g g, r | b'16 a g fis e d |
  %8
  <<{s8 s c} \\ {c a' a,}>> | a'16 g fis e d c | b8 d g |
  %11
  <<{fis s c | b s s | fis' s c | b s fis'} \\ {d a a | g d' g | d a a | g d' d}>> |
  <g b, d,>  fis16[ e d c] |
  %16
  \times 2/3 { b16[ a g]} <<{ b8[ a]} \\ { g[ fis]}>> | <g b,>4 r8 |
  %18
  <g' b, d,>8 <g b, d,> <g b, d,> |
  %19
  <g b, d,> g,16 a b c | <<{s8 e fis} \\ {d c d}>> | <g b, d,> g,16 a b c |
  %22
  <<{s8 e fis} \\ {d c d}>> | g fis16 e d c | g'8 fis16 e d c |
  %25
  <<{ b[ c]  b8[ a]} \\ { g16[ a]  g8[ fis]}>> | <g b,>4 r8 | g' a b | a16 g fis e d8 | g a b |
  %30
  a16 g fis e d8 | <<{e fis g} \\ {cis, d e}>> | fis16 e d cis d8 |
  %33
  <<{e fis g} \\ {cis, d e}>> | fis16 e d cis d8 | b'16 a g fis e d |
  %36
  cis8 a16 b cis d | <<{e8 fis g} \\ {cis, d e}>> | fis16 e d cis d8 |
  %39
  <<{b' a g} \\ {g fis e}>> | fis e16 fis d8 | g16 e fis d e cis |
  %42
  g'16 e fis d e cis | d8 cis16 b a g | fis8 g a |
  %45
  d, <a' fis d>16 <a fis d> <a fis d> <a fis d> | <a fis d>4. |

  %47
  <d fis, d>8 <d fis, d>16 <d fis, d> <d fis, d> <d fis, d> |
  %48
  d8 d16 e fis g | a8 b cis | d d, r | <d fis, d> <d fis, d> <d fis, d> |
  %52
  <d fis, d> d,16 e fis g | <<{a8 b cis} \\ {fis, g a}>> |
  %54
  <d fis, d> d,16 e fis g | <<{a8 b cis} \\ {fis, g a}>> | d cis16 b a g |
  %57
  fis8 e16 fis d8 | <g' b,> <g b,> <g b,> | g g,16 a b c |
  %60
  <<{d8 e fis} \\ {b, c d}>> | g g,16 a b c | <<{d8 e fis} \\ {b, c d}>> |
  %63
  g f e | f e d | e16 d c b c8 | a a16 b cis d | e8 fis g | g fis e |
  %69
  fis16 e d cis d8 | c16 e g e c e | b d g d b d | fis, a c a fis a |
  %73
  <g' b, d,>8 <g b, d,> <g b, d,> | g fis16 e d c | <<{b c b8 a} \\ {g16 a g8 fis}>> |
  %76
  b,16 b' a g fis g | c, b' a g fis g | d b' a g fis g |
  %79
  e b' a g fis g | b, b' a g fis g | c, b' a g fis g | d b' a g fis g |
  %83
  g'8 fis16 e d c | <<{b c b8 a} \\ {g16 a g8 fis}>> | <g b,> g' b |
  %86
  <<{a a, c | b g' b | a a, c | b:16} \\ {s8 s a | g s s | s s a | g16 g' fis e d c}>> | b8 c d |
  %91
  <g b, d, g,>4 r8^\fermata |
}
