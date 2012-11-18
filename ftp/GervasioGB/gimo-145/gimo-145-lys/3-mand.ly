\version "2.16.0"

IIIMand =  \relative c''' {
  \clef "treble"
  \time 6/8
  \key g\major
  
  \repeat "volta" 2 {
  g4. d | b8 a g a b c | b c d c b a | g'4. d | b8 a g a b c |
  %6
  b c d c b a | g4 r8 b c d | d b g d' b g | a fis d a' fis d |
  %10 
  a' b c c b a | d b g d' b g | a fis d a' fis d | a' b c c b a |
  %14
  c a fis c' a fis | g4. d'8 d d | cis cis cis g' g g |

  %17
  fis fis fis a a a | g g g fis fis fis | e4. <<{g8\f g g} \\ {e e e}>> |
  %20
  <<{fis\p fis fis g\f g g} \\ {d d d e e e}>> |
  <<{fis\p fis fis g\f g g} \\ {d d d e e e}>> |
  <<{fis\p fis fis e\f e e} \\ {d d d cis cis cis}>> |
  %23
  <d fis,>4.\f <<{g,8 g g} \\ b,4.:8>> | <<{fis'8 fis fis g g g} \\ {a,4.:8 b:}>> |
  <<{fis'8 fis fis g g g} \\ {a,4.:8 b:}>> | <<{fis'8 fis fis e e e} \\ {a,4.:8 cis:}>> |
  %27
  d8 fis a d fis a | d,, fis a d fis a | d,,4. ~ d
  }

  \repeat "volta" 2 {
  %30
  d'4. a4. | fis8 e d e fis g | fis g a g fis e | d'4. a | fis8 e d e fis g |
  %35
  fis g a g fis e | d8. e16 d8 c b a | g''4. d | b8 a g a b c | b c d c b a |
  %40
  g'4. d | bes8 a g a b c | b! c d c b a | g4. g8 b d | d b g d' b f |
  %45
  \grace f?8 e4. a8 cis e | e cis a e' cis g | fis4. r8 r a | d, fis a c b a |
  %49
  b c d d d d | d, fis a c b a | b c d e fis g | b, c a g a fis |
  %53
  b c d e fis g | b, c a g a fis | g4. <<{b8 b b} \\ {g g g}>> |
  <<{a8 a a c c c} \\ {fis,4.:8 a:}>> |
  %57
  <<{b8 b b c c c} \\ {g4.:8 a:}>> | <<{b8 b b a a a} \\ {g4.:8 fis:}>> |
  <g b,>4. <<{b8 b b} \\ g4.:8>> | <<{a8 a a c c c} \\ {fis,4.:8 a:}>> |
  <<{b8 b b c c c} \\ {g4.:8 a:}>> | <<{b8 b b a a a} \\ {g4.:8 fis:}>> |
  %63
  g,8 b d g b d | g,, b d g b d | g,4. ~ g \bar "|."
  }
}
