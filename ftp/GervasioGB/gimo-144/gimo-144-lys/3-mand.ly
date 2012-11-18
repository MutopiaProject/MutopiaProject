\version "2.16.0"

IIIMand =  \relative c''' {
  \clef "treble"
  \time 6/8
  \key d\major

  %1 page 9
  \repeat "volta" 2 {
  a8 fis d g e cis | a' fis d r d c | b b' a g fis e |
  a fis d r d c | b b' a g fis e | d a fis d4 r8 |
  %7
  fis' d e fis e d | e cis d e d cis | d b cis d cis b |
  cis a' gis a gis fis | e fis e fis e d | cis a' gis a gis fis |
  %13
  e fis e fis e d | cis d e fis gis a | gis fis e d cis b |
  cis d e fis gis a | gis fis e d cis b | a4. a,4 r8 |
  %19
  e'' a, a fis' a, a | e' a, a fis' a, a | e' a, a gis' a, a |
  a' a, a fis' a, a | e' a, a gis' a, a | a' gis fis e fis e |
  %25
  fis e d cis d cis | a' gis fis e fis e |
  fis e d cis d cis | fis e d cis d b |
  %29 page 10
  a b gis a e cis | a4. r4 r8
  }

  \repeat "volta" 2 {
  %31
  e'' cis a d b gis | e' cis a r a g! | fis fis' e d cis b | e cis a r a g |
  fis fis' e d cis b | a e cis a4 r8 | a' b cis cis d e | e fis g g fis e |
  %39
  fis d cis d cis d | fis d cis d cis d | a b cis cis d e | e fis g g fis e |
  fis d a d,4 r8 | b' cis dis dis e fis | fis gis a a gis fis |
  %46
  gis e dis e dis e | gis e dis e dis e | b cis dis dis e fis |
  fis gis a a gis fis | e b g e4 r8 | e fis gis gis a b |
  %52
  b cis d d cis b | cis4. <<{fis8 e fis | e fis e <gis b,> fis <gis b,> |
    <a cis,>4. fis8 e fis} \\ {d8 cis d | cis d cis s4. | s d8 cis d}>> |
  %56 page 11
  <<{e8 fis e <gis b,> fis <gis b,>} \\ {cis,8 d cis}>> | a'4. r4 b,8 |
  a b g fis g e | a' fis d g e cis | a' fis d r d c | b b' a g fis e |
  %62
  a fis d r d c | b b' a g fis e | d a fis d4. | d'8 e f g a bes |
  c, d e f g a | bes, cis d e! fis gis | a e cis a4 r8 |
  %69
  d8 e f g a bes | c, d e f g a | bes, c d e f gis | a e cis a4 r8 |
  g' e fis g fis e | fis d e fis e d | e cis d e d cis | d a fis d4 r8 | 
  %77
  g e fis g fis e | fis d e fis e d | e cis d e d cis | d fis a d fis a |
  d,, fis a d fis a | d,, g b d g b | d,, g b d g b | d,, fis a d fis a |
  %85
  d,, fis a d fis a |b, g' fis e d cis | d, a'' g fis d cis |
  b g' fis e d cis | d a fis d4. \bar "|."
  }
}
