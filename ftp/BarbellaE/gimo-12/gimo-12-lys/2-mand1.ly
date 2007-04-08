\version "1.6.0"

IIMandI = \notes \relative c''' {
  \clef "treble"
  \time 3/4
  \key c\major

  \repeat "volta" 2 {
  <{g4 f e | d2 e4 | f2 e4 | e4 d2 | g4 f e | d2 e4} \\
    {g,2. | g | g | g | g | g}> |

  %7
  g16 f e d d2 |
  c2. |
  }

  \repeat "volta" 2 {
  <{d4 d d | g8 f e d e4 | d d d | g8 f e d e4} \\
    {<g,2. g,> | g | <g g,> | g}> |
  %13
  <{a4 [a8. a16 a8. a16] | g4 f e} \\ {f4 [f8. f16 f8. f16] | d4 d c}>
  b'16 a g f e4 d | c2. | 
  %17
  <{a'4 [a8. a16 a8. a16] | c,4 b c} \\
    {f4 [f8. f16 f8. f16] | e,4 d e}>

  g'16( f e )d c4 b | c2. |
  %21
  <{g'4 f e | d2 e4 | f2 e4 | d2. | g4 f e | \grace e8 d2 e4} \\
    {g,2. | g | g | g | g | g}>
  %27
  g16( f e )d d2 | c2. \bar "|."
  }
}
