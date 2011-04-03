% Bourreé in E minor
\version "2.12.3"

\header {
  title = "Bourrée in E Minor"
  composer = "J. S. Bach"
  mutopiacomposer = "BachJS"
  opus = "BWV996"
  date = "1700s"
  style = "Baroque"
  instrument = "Lute or Lute-Harpischord (Lautenwerk)"
  copyright = "Public Domain"
  source = "Band I: J.S. Bach: Compositionen für die Laute, Denkmäler alter Lautenkunst Wolfenbüttel: Julius Zwißlers Verlag, 1921. Plate Band I. (among other sources)"
  maintainer = "Rudy Matela"
  % with contributions and corrections from:
  %   Thomas Scharkowski
  %   Paul Umfahrer-Vass
  maintainerEmail = "rudy [dot] matela [at] gmail [dot] com"
  maintainerWeb = "http://matela.com.br/"
  moreInfo = "Other Public Domain Sheet Music: http://imslp.org/wiki/Lute_Pieces,_BWV_995-1000_(Bach,_Johann_Sebastian)"

 footer = "Mutopia-2011/04/01-1743"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}


% Up-Transposed
ut = {
  \change Staff = "down" \stemUp
}

% Up-Normal
un = {
  \change Staff = "up" \stemNeutral
}

% Down with Up-Transposed
dt = {
  \stemDown
}

% Down with Up-Neutral
dn = {
  \stemNeutral
}

% Each variable consists of 3 bars
% Each line consists of a bar

\parallelMusic #'(trebleA bassA) {
  e'8 fis |
  g8 fis |
  g4   fis8 e dis4   e8 fis |
  e4 a b a |
  b,4  cis8 dis e4   d8 c |
  g4 fis e fis |
  b4 \ut   a8 g fis4   g8 a |
  g4 \dt a b a |
  b8 a g fis e4  \un e'8 fis |
  g4 b  e,8 fis g fis |
  g4   fis8 e dis4   e8 fis |
  \dn e4 a b a |
  b,4   cis8 dis e4   d8 c |
  g4 fis e fis |
  b4  \ut a8 g fis4.   g8 |
  g4  \dt c d d, |
}

% These could be put inside the above parallel music, but it would fail the
% barcheck. The same happens with part "B"
trebleAend = { <b, d g>2. \un }
bassAend = { g2. \dn }


\parallelMusic #'(trebleB bassB) {
  \ut b'8 g |
  \dt g4 |

  d'4   a8 c b4   \un g'8 d |
  fis4 d g b \dn |

  % 10th
  e4   b8 d c4  \ut b8 a |
  c4 gis a \dt d |

  gis4   a8 b c4   b8 a |
  e4 a, e' e, |

  a2.   d8 a |
  a8 b a g  fis4  d |

  b4 \un   g'8 d e4   b8 d |
  g4 b c \dn gis |

  c4   a'8 e fis4   cis8 e |
  a4 cis d ais |

  %15th bar
  d4   cis8 b ais4. \prall   b8 |
  b4 e fis fis, |

  b2.    b'8 fis |
  b8 ais b cis   dis4 b |
  
  gis4   fis8 e a4   e8 g |
  e4 d cis a |

  fis4    e8 d g4   d8 f |
  d4 c b g |

  e4    a8 e fis4  cis8 e |
  c4 b a fis |

  %20th bar
  dis4 b2      e8 b |
  b4.  c8 b a gis4 |

  c4   \stemUp d8 \ut a b4   c8 g |
  \dt a8 e' fis4   g,8 dis' e4 |

  a4   b8 fis g4  fis8 e |
  fis,8 cis' dis4   e, a |

  dis4   e8 fis g4   fis8 e |
  b4  a4  b2 |

}
trebleBend = { e2.  }
bassBend = { e,2.  }

treble = { 
  \repeat volta 2 { \trebleA \trebleAend }
  \repeat volta 2 { \trebleB \trebleBend }
}
bass = {
  \repeat volta 2 { \bassA \bassAend }
  \repeat volta 2 { \bassB \bassBend }
}

commands = {
  \key e \minor
  \time 2/2
  \partial 4
  \tempo 4=132
  % Do not output tempo marking on pdf
  \set Score.tempoHideNote = ##t
}


\score {
  \new PianoStaff <<
    \new Staff = "up" {
      \clef treble \commands 
      \new Voice \relative c { \partial 4 \treble %{\bar "|."%} }
    }
    \new Staff = "down" {
      \clef bass \commands
      \new Voice \relative c { \partial 4 \bass }
    }
  >>
  \layout{ }
  \midi{ }
}

