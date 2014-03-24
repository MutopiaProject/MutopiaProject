\version "2.18.0"

IIIBasso =  \relative c' {
  \clef "bass"
  \key es\major
  \time 3/4

  \repeat "volta" 2 {
  %1 page 7
  g4 es d | es g bes | c bes as | as g es | d2. |
  %6
  es4 es g | d d d | es es es | es as, a | bes d f | a,2. |
  %12
  bes | a | bes4 d a | bes2 d4 | es es f | bes,2 d4 |
  %18
  es2 a,4 | bes4 bes' bes, | es es es | d a a | bes f' f, | 
  %23
  bes d a | d2. | a4 a a | bes es f | g g, r | es' d c | bes f g |
  %30
  es' f f, | bes bes r
  }
  \repeat "volta" 2 {
  %32
\octaveCheck bes,
  bes d a | bes d f | g f es | es d bes | a2. | bes4 bes r | c a f |
  %39
  bes2 bes'4 | d, d, r | f' r8 f[ f, f'] | g2 g,4 | g2 b4 |
  %44
\octaveCheck b,
  c4 c c | c c c | g'2 g,4 | as2 b4 | c c c | c c c | f2 d4 |
  %51
  es a, f | bes bes bes | bes bes bes | f'2 d4 | es as, f |
  %56
  bes bes'8 as g f | es4 es,8 c'' bes as | g4 bes es, | as8. bes32 as g4 f |
  %60
  d4 es es, | f' d es | bes' bes, r | f' d es | bes bes'8 as g f |
  %65
\octaveCheck es
  es4 es r | as as, r | g' g r | as as, r | f' f, r | bes' bes, r |
  %71
  f' f, r | bes' bes, g' | as as as | es8 d d4 d | bes8 es bes4 bes |
  %76
  r8 es g4 d | es es, r | g' es g | f es d | es es, r | g' es g | f bes bes, |
  %83
\octaveCheck es
  es2._\fermata
  }
}
