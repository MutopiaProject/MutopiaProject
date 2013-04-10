\version "2.16.0"

IMand =  \relative c'' {
  \clef "treble"
  \key g\major
  \set Score.skipBars = ##t

  <<{d4 d | d r8 b16 c |
  d8 d d g | e d r b16 c | d8 d d g |
  %6
  e d r d | e d c b | b a r4 |
  %9
  a'8 g16 fis g8 fis16 e | fis8 d} \\
  {b4 b | b s8 g16 a | b8 b b s | c b s g16 a | b8 b b s | c b s b |
  %7
  c b a g | g fis s s | fis' s e s | d s}>> <<{cis8 d} \\ s>> |
  %11
  <<{a' s g s | fis d} \\ {fis g16 fis e8 fis16 e | d8 s}>> <<{cis8 d} \\ s>> |
  <<{g4 g | g8} \\ {e4 e | e8}>>  fis16[ e]  d[ cis b a] |
  %15
  <<{g'4 g |  g8[ fis16 e]} \\ {e4 e | e8 s}>>  d16[ cis b a] |
  %17
  <<{a'8 g16 fis g8 fis16 e | fis4 e} \\ {fis8 s e s | d4 <cis a>}>> |
  <d fis, d>4 r |
  %20
  R2*9 |
  %29
  <<{d4 d | d r8 b16 c | d8 d d s | e d r b16 c | d8 d d s | e d r d |
  %35
   e[ d]  c[ b] |  b[ a] r4 | a'8 s g s | fis d} \\
  {b4 b | b s8 g16 a | b8 b b g' | c, b s g16 a | b8 b b g' | c, b s b |
  %35
  c b a g | g fis s s | fis' g16 fis e8 fis16 e | d8 s}>> cis d |
  %39
  <<{a'8 s g s | fis d} \\ {fis8 g16 fis e8 fis16 e | d8 s}>> cis d |  
  <<{g4 g |  g8[ fis16 e]} \\ {e4 e | e8}>> d16 cis b a |
  <<{g'4 g |  g8[ fis16 e]} \\ {e4 e | e8}>>  d16[ cis b a] |
  %45
  <<{a'8 s g s} \\ {fis g16 fis e8 fis16 e}>> | fis8 e16 d e8 d16 cis |
  <d fis, d>4 <d fis, d> |
  %48
  <d fis, d>8 cis16 b a g fis e | <a fis d>4 <a e cis> | <a fis d> r |
  %51
  d16 e fis g a fis e d | b8 b' a16 g fis e  | <<fis4 \\ d>> <<e \\ cis a>> |
  <d fis, d> r |

  %55
  <d fis, d>4 <d fis, d> | <d fis, d> r8 <<{fis16 g | a8 a a d | b a} \\
  {d,16 e | fis8 fis fis r | g fis}>> r d' | <<{a g fis e} \\ {fis e d cis}>> |
  %60
  fis16 e d cis d e fis g | a g a b a g a b |
  %62
  g fis g a g fis g a | fis e fis g fis e fis g | e d e fis e d e fis |
  %65 
  cis a cis e cis a cis e | cis a cis e cis a cis e |
  %67
  fis, d fis a fis d fis a | e g cis g e g cis g |
  %69
  <d' fis, d>8 cis16 b a g fis e | fis8 d r d'16 e | fis8 e16 d cis8 b |
  %72
  \grace b8 ais4 r8 fis |
  %73
  d'16 b d fis d b d fis | e b e g e b e g | fis e d cis d8 ais |
  %76
  \grace ais?8 b4 r4 |
  %77
  R2*9
  %86
  <<{d4 d | d r8 b16 c | d8 d d g | e d r b16 c | d8 d d g} \\
  {b,4 b | b s8 g16 a | b8 b b r | c b s g16 a | b8 b b r}>> |
  c b b a |
  %Page 7
  %92
   b16[ c] d8 d g |  c,[ b b a] | <g' b, d,> fis16 e d c b a | b8 g r d' |
  %96
  g,16 d' b d g d b d | g, d' b d g d b d |
   <<{\once \override Flag #'stroke-style = #"grace" b8} \\ {g16 e' c e}>> g16 e c e |
  %99
  g, e' c e g e c e | g, d' b d g d b d | g, d' b d g d b d |
  %102
  d, a' fis a c a fis a | d, a' fis a c a fis a | g g' fis g g, g' fis g |
  %105
  fis, g' fis g e, g' fis g | d, g' fis g c,, g'' fis g |
  %107
  b,, g'' fis g a,, g'' fis g | <g b,>4 <g b,> | g8 fis16 e d c b a |
  %110
  <b d,>8 a16 g <a fis>8 g16 fis |
  <g b,>4 r8 <<{a | b c4 a8 | b c4 a8 | b s} \\
  {fis8 | g a4 fis8 | g a4 fis8 | 
  % Note: Lilypond adds a tuplet bracket by default, which I don't want and hence must remove.
  \override TupletBracket   #'bracket-visibility = ##f  g[ \times 2/3 {c16 b a]}}>>
  %112
  g8 fis | g' fis16 e d c b a |
  %116
  g'8 fis16 e d c b a | <<b8 \\ {g a16 g}>> <a fis d>8 g16 fis |
  %118
  <g b,>4 d' | g16 b a g a8 c, | b16 b' a g a8 c, |  b8[ g b d] |
  %122
  g fis16 e d c b a | g'8 fis16 e d c b a | <<b4 \\ g>> <a fis d> |
  %125
  <g b,>8[ b c d] | <g b, d,>4 r
}
