\version "2.16.0"

IIBasso =  \relative c {
  \clef "bass"
  \time 6/8
  \key c\major

  \repeat "volta" 2 {
  %1 page 6
  c4. e4 c8 | g'4. e | f g | c4 g8 e4 c8 | f4. g4. |
  %6
  c,4. c'8 g e | c4. c | b b | a d | g, g' | c, cis |
  %12
  d4. d8 fis a | d,4. gis | a fis | g cis, | d b |
  %17
  c c | b a | b b | c c | d d | g, es' | d bes | c c! | d d | g, cis |
  %27 page 7
  d4. b | c c | d d | g4 c8 b a gis | a4. fis | g c | d d, |
  %34
  g4 b8 a4 fis8 | g4. c, | d d | g,4 g'8 d4 b8 | g4. g | g g | g g | g2.
  }

  \repeat "volta" 2 {
  %42
  g4. b4 g8 | d'4. b | c d | b4 d8 b4 g8 | c4. d | g, g'8 d b | g4. g' |
  %49
  f f | e gis | a4 c,8 d4 e8 | a,4. a'8 e c | a4. a | c c | d fis |
  %56
  g,4 b8 c4 d8 | g, b d g,4. | g'4. gis |
  %59 page 8
  a4. c, | d d | e4 b8 c4 a8 | d4. e | fis gis | a a, | d d | b a | d e |
  %68
  a,8 e' d c b a | d4. c | b a | d e | a,8 a' g f e d | c4. e4 c8 |
  %74
  g'4. e | f g | c4 g8 e4 c8 | f4. g | c, c'8 g e | d4. e | f d8 c bes |
  %81
  c4. c | f f | f f | g e8 d c | d4. d | g, g8 b d | b4. b | c e | f g |
  %90
  c, a' | g e | f f | g g, | c f | g e | f f | g g, | c8 g' f e d c |
  %99
  d4. b | c f | g g, | c c | c c | c c |
  %105
  c2. \bar "|."
  }
}
