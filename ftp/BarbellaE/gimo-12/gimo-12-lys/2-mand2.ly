\version "2.16.0"

IIMandII =  \relative c'' {
  \clef "treble"
  \time 3/4
  \key c\major

  \repeat "volta" 2 {
  e4 d c | <<{b2 c4 | b2 c4 | c4 b2} \\ {g4 f e | d2 e4 | d d2}>> |
  %5
  e'4 d c | <<{b2 c4} \\ {g4 f e}>> | e'16 d c b b2 | c,2. |
  }

  \repeat "volta" 2 {
  %9
  b'4 b b | e8( d c  b) c4 | b2 c4 | e8 d c b c4 |
  %13
  f,4  f8.[ g16 a8. b16] | <<{c4 b c} \\ {e,4 d e}>> | g'16 f e d c4 b |
  %16
  c2. | f,4  f8.[ g16 a8. b16] | <<{c4 b c} \\ {e,4 d e}>> | 
  %19
  g'16( f e  d) c4 b | c2. | e4 d c |
  %22
  <<{b2 c4 | b2 c4} \\ {g4 f e | d2 e4}>> | b'2. | e4 d c |
  %26
  <<{b2 c4} \\ {g4 f e}>> | e'16( d c  b) b2 | c,2. \bar "|."
  }
}
