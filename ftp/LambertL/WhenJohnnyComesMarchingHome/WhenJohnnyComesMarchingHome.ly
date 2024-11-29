\version "2.24.4"
\header {
    title = "When Johnny Comes Marching Home"
    mutopiacomposer = "LambertL"
    composer = "Words and Music by LOUIS LAMBERT."
    instrument = "Piano"
    source = "Boston: Henry Tolman & Co., 1863"
    style = "March"
    license = "Creative Commons Attribution-ShareAlike 4.0"
    copyright = \license
    maintainer = "Adam Faiz"
    maintainerEmail = "<adam.faiz (at) disroot.org>"
    moreInfo = "This song is also known as \"The Ants Go Marching\"."
}

\layout {
  \context {
    \Voice
    \remove "Note_heads_engraver"
    \consists "Completion_heads_engraver"
    \remove "Rest_engraver"
    \consists "Completion_rest_engraver"
  }
}

% This music sheet is based on the edition included in
% "The Good Old Songs We Used to Sing, '61 to '65" by Osborn H. Oldroyd.
% The book is in the public domain and can be found on Project Gutenberg:
% https://www.gutenberg.org/ebooks/21566

% A PDF of the reference music sheet can be found here:
% https://www.gutenberg.org/files/21566/21566-h/images/johnny.pdf

Solo = \markup {\italic "Solo."}
Chorus = \markup {\italic "Chorus."}

trackA = << \relative c' {
  \time 6/8
  \tempo 4 = 144
  \key bes \major
  % \autoBeamOff
  % \set doubleSlurs = ##t
  \partial 8 d8^"With spirit." |
  g4_\fp a8 bes4 c8 |
  d bes g d' bes g | f4_\fp g8 a4 bes8 |
  \partial 8*13/2 (c f) d8. c8 a f |
  \partial 4*3 g4_\ff a8 bes4 c8 |

  \partial 2 r2 |
  \partial 2 r2 |
  \partial 16*9 r4 r16 r4 \section
  \partial 8 g8^\Solo |
  d g g g4 a8 |
  bes4 a8 bes4 g8^\Chorus |

  f4. ~ f4 d8 |
  f4. ~ f4 g8^\Solo |
  d g g g4 a8 |
  bes4 a8 bes4 c8^\Chorus |
  d4. ~ d4 bes8 |

  % Page 2
  d4. ~ d4 (bes16^\Solo c) |
  d4 d8 (d8 c) bes8 |
  c4 c8 c4 a8 |
  bes4 bes8 (bes a) g8 |

  a4 a8 a \bar ".|:"
  bes^\markup {\italic "Chorus. Repeat ad lib."} c |
  d4. c |
  bes a |
  d,8 g g g4 fis8 |
  \partial 8*5 g4. ~ g4 |

  \partial 8 r8 |
  \partial 2 r2 |
  \partial 2 r |
  \partial 2 r |
  \partial 2 r |
  \partial 2 r |
  \partial 2 r |

  % Page 3
  \partial 2 r2 |
  \partial 8*5 r4 r8 r4 \section
  \partial 8 d8^\Solo |
  d4 g8 g4 a8 |
  bes4 a8 bes4 g8^\Chorus |
  f4. ~ f4 d8 |

  f4. ~ f4 g8^\Solo |
  d g g4 a8 |
  bes4 a8 bes4 c8^\Chorus |
  d4. ~ d4 bes8 |
  d4. ~ d4 (bes16^\Solo c) |

  d4 d8 (d8 c) bes8 |
  c4 c8 c4 a8 |
  bes4 bes8 (bes a) g |
  a4 a8 a \bar ".|:"
  bes^\Chorus c

  % Page 4
  d4. c |
  bes a |
  d,8 g8 g g4 fis8 |
  g4. ~ g4 \bar ":|."
  \partial 8 r8 |
  \partial 2 r2 |
  \partial 2 r |

  \partial 2 r |
  \partial 2 r |
  \partial 2 r |
  \partial 2 r |
  \partial 2 r |
  \partial 8*3 r4 r8 r4
}
>>

trackB = << \relative c' {
  \key bes \major
  s4*15 s8 |
  d'8 bes g a bes c |
  d ees d c bes a |
  (g4 g'8) g,4 |
  r8 |
  \repeat unfold 4 {<bes, d g>4 <bes d g>8}

  <bes d f>4._\ff ~ <bes d f>4 d8 |
  <a c f>4. ~ <a c f>4 r8 |
  <bes d g>4_\p \repeat unfold 3 {<bes d g>8 <bes d g>4} c'8_\ff |
  <f, bes d>4. ~ <f bes d>4 bes8 |

  % Page 2
  <fis a d>4. ~ <fis a d>4 r8 |
  <f bes d>4_\p <f bes d>8 <f bes d>4 r8 |
  <f a c>4 <f a c>8 <f a c>4 r8 |
  <d g bes>4 <d g bes>8 <d g bes>4 r8 |

  <d fis a>4 <d f a>8 <d f a> r8 r8 |
  <f bes d>4._\f <f a c> |
  <d g bes> <d fis a> |
  <bes d g>4 <bes d g>8 <bes d g>4 <a c d fis>8 |
  <bes d g>4. ~ <bes d g>4

  d8 |
  g4_\fp a8 bes4 c8 |
  d8 bes g d' bes g |
  f4_\fp g8 a4 bes8 |
  (c f) d8. c8 a f |
  g4_\ff a8 bes4 c8 |
  d8 bes g a bes c |

  % Page 3
  d8 ees d c bes a |
  \partial 8*5 (g4 g'8) g4 |
  \section r8 \repeat unfold 4 {<bes,, d g>4 <bes d g>8} |
  <bes d f>4._\ff ~ <bes d f>4 d8 |

  <a c f>4. ~ <a c f>4 r8 |
  <bes d g>4_\p \repeat unfold 3 {<bes d g>8 <bes d g>4} c'8 |
  <f, bes d>4.^_\ff ~ <f bes d>4 bes8 |
  <fis a d>4. ~ <fis a d>4 r8 |

  <f bes d>4_\p <f bes d>8 <f bes d>4 r8 |
  <f a c>4 <f a c>8 <f a c>4 r8 |
  <d g bes>4 <d g bes>8 <d g bes>4 r8 |
  <d fis a>4 <d fis a>8 <d fis a> |
  r8 r8

  % Page 4
  <f bes d>4._\f <f a c> |
  <d g bes> <d fis a> |
  <bes d g>4 <bes d g>8 <bes d g>4 <a c d fis>8 |
  <bes d g>4. ~ <bes d g>4 |
  d8 |
  g4_\fp a8 bes4 c8 |
  d c bes d bes g

  f4_\fp g8 a4 bes8 |
  (c f) d8. c8 a f |
  g4_\f a8 bes4 c8 |
  d bes g a bes c |
  d ees d c bes a |
  (g4 g'8) g,4 \fine
}
>>

trackC = << \relative c {
  \clef bass
  \key bes \major
  r8 |
  <g d' g>4 <g' bes d>8 <g bes d>4 <g bes d>8 |
  <g bes d>4. <g bes d> |
  <f, c' f>4 <f' a c>8 <f a c>4 <f a c>8 |
  <f a c>4. <f a c> |
  <g, d' g>4 <g' bes d>8 <g bes d>4 <g bes d>8

  <g bes d>4.-> <f a c>-> |
  <bes, d f bes>-> <d fis a c>-> |
  <g bes d>4 <g bes d>8 <g, d' g>4 |
  r8 |
  \repeat unfold 4 {<g g'>4 <g g'>8} |

  <bes f'>4. ~ <bes f'>4 d8 |
  <f, f'>4. ~ <f f'>4 r8 |
  <g g'>4 \repeat unfold 3 {<g g'>8 <g g'>4} <c c'>8 (<bes d f bes>4. <bes d f bes>4) <bes bes'>8 |

  % Page 2
  (<d d'>4. <d d'>4) r8 |
  <bes bes'>4 <bes bes'>8 <bes bes'>4 r8 |
  <f' c'> <f c'>8 <f c'>4 r8 |
  <g, g'>4 <g g'>8 <g g'>4 r8 |

  d4 d8 d8 |
  r8 r8 |
  <bes' bes'>4. <c c'> |
  d4. d |
  <g, g'>4 <g g'>8 <g g'>4 d'8 |
  <g, g'>4. ~ <g g'>4 |

  r8 |
  \repeat unfold 2 {<g d' g>4 <g' bes d>8 <g bes d>4 <g bes d>8 <g bes d>4. <g bes d>} |
  <g, d' g>4 <g' bes d>8 <g bes d>4 <g bes d>8 |
  <g bes d>4.-> <g bes d>-> |

  % Page 3
  <bes, d f bes>4.-> <d fis a c>-> |
  <g bes d>4 <g bes d>8 <g, d' g>4 |
  r8 |
  \repeat unfold 4 {<g g'>4 <g g'>8} |
  <bes f'>4. ~ <bes f'>4 d8 |

  <f, f'>4. ~ <f f'>4 r8 |
  <g g'> \repeat unfold 3 {<g g'>8 <g g'>4} <c c'>8 |
  <bes d f bes>4. ~ <bes d f bes>4 <bes bes'>8 |
  <d d'>4. ~ <d d'>4 r8 |

  <bes bes'>4 <bes bes'>8 <bes bes'>4 r8 |
  <f' c'>4 <f c'>8 <f c'>4 r8 |
  <g, g'>4 <g g'>8 <g g'>4 r8 |
  d'4 d8 d |
  r8 r8 |

  % Page 4
  <bes bes'>4. <c c'> |
  d d |
  <g, g'>4 <g g'>8 <g g'>4 d'8 |
  <g, g'>4. ~ <g g'>4 |
  r8 |
  <g d' g>4 <g' bes d>8 <g bes d>4 <g bes d>8 |
  <g bes d>4. <g bes d> |

  <f, c' f>4 <f' a c>8 <f a c>4 <f a c>8 |
  <f a c>4. <f a c>4. |
  <g, d' g>4 <g' bes d>8 <g bes d>4 <g bes d>8 |
  <g bes d>4.-> <f a c>-> |
  <bes, d f bes>-> <d fis a c>-> |
  <g bes d>4 <g bes d>8 <g, d' g>4
}
>>

\score {
  <<
    \context Staff=trackA \trackA
    \context Staff=trackB \trackB
    \context Staff=trackC \trackC
  >>
  \layout {}
  \midi {}
}