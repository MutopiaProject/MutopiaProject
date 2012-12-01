\version "2.16.0"

\header {
  title = \markup{\halign #-2 {2.} {\small\raise #1.5 ème} Gymnopédie}
  dedication = "à CONRAD SATIE"
  composer = "Erik Satie"

  mutopiatitle = "Gymnopédie No. 2"
  mutopiacomposer = "SatieE"
  mutopiainstrument = "Piano"
  date = "1888"
  source = "Dover Edition"
  % The Dover edition contains photocopies of the original work with
  % translations from the French typed on them.  The translations are
  % all that is new (copyrighted), and are not included in this file.

  style = "Classical"
  copyright = "Public Domain"

  filename = "gymnopedie_2.ly"
  maintainer = "Evin Robertson"
  maintainerEmail = "nitfol@my-deja.com"
  lastupdated = "2000/Nov/1"

  tagline = "\\\\This music is part of the Mutopia project, http://www.mutopiaproject.org/\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged --- copy this music and share it!"
  footer = "Mutopia-2000/11/01-38"
}

global =  {
  \key a \minor
  \time 3/4
}

top = \relative c''' {
  \stemUp
  \slurUp
  R2.^\markup{\hspace #10 "Lent et triste"} |
  R2. |
  R2. |
  R2. |
  g2.( \p \< |
  a4\! g f |
  e \> f  g\! |
  d2.) |
  \barNumberCheck #9
  g2.( \< |
  a4\! g \> f |
  e f  g\! |
  d  c2) |
  R2. |
  R2. |
  c'2.( \f \< |
  f,4  g\! a |
  \barNumberCheck #17
  g2. |
  c,2. |
  f2. ~ |
  f4 ees d |
  f2. ~ |
  f4 g bes |
  a \> g  f\! |
  g2. |
  \barNumberCheck #25
  f2.) |
  R2. |
  R2. |
  c'2.( \f \< |
  aes4 g  f\! |
  g2. |
  f2. ~ |
  f4 ees \> d |
  \barNumberCheck #33
  f2. |
  d2. ~ |
  d4 ees  aes\! |
  bes2. |
  f2.) |
  R2. |
  R2. |
  g2.( \p \< |
  \barNumberCheck #41
  f4\! g a |
  e \> f g |
  d2.\!) |
  g2.( \< |
  f4  g\! a |
  e \> f  g\! |
  f  c2) |
  R2. |
  \barNumberCheck #49
  R2. |
  c'2.( \f |
  f,4 \< g a |
  g2.\! |
  c,2. |
  f2. |
  g2. \> |
  d2. ~ |
  d2.\! ~ |
  \barNumberCheck #58
  d2. \> ~ |
  d2  f4\! |
  bes2. |
  a4  f2) |
  R2. |
  R2. |
  R2. |
  R2. \bar "|."
}

middle = \context Voice = "accomp" \relative c'' {
  \override NoteColumn   #'horizontal-shift = #1
  r4 <g  e b>2\pp |
  r4 <a f c a>2 |
  r4 <g e b>2 |
  r4 <a f c a>2 |
  r4 <g e b>2 |
  r4 <a f c a>2 |
  r4 <g e b>2 |
  r4 <a f c a>2 |

  r4 <g e b>2 |
  r4 <a f c a>2 |
  r4 <g e b>2 |
  r4 <a f c a>2 |
  r4 <g e b>2 |
  r4 <a f c a>2 |

  r4 <c a e c>2 |
  r4 <a f c a>2 |
  r4 <g ees bes>2 |
  r4 <g ees bes g>2 |
  r4 <f d a>2 |
  r4 <f ees bes g>2 |
  r4 <f d a>2 |
  r4 <g f d bes>2 |
  r4 <a ees c>2 |
  r4 <g d bes>2 |
  r4 <a f c a>2 |
  r4 <g  d bes>2\p |
  r4 <a f c a>2 |

  r4 <c g ees>2 |
  r4 <c aes f c>2 |
  r4 <bes g d bes>2 |
  r4 <f d a!>2 |
  r4 <f ees bes g>2 |
  r4 <f d a>2 |
  r4 <g f d bes>2 |
  r4 <aes ees c>2 |
  r4 <g d bes>2 |
  r4 <a! f c a!>2 |

  r4 <g e! b!>2 |
  r4 <a f c a>2 |
  r4 <g e b>2 |
  r4 <a f c a>2 |
  r4 <g e b>2 |
  r4 <a f c a>2 |

  r4 <g e b>2 |
  r4 <a f c a>2 |
  r4 <g e b>2 |
  r4 <a f c a>2 |
  r4 <g  e b>2\pp |
  r4 <a f c a>2 |

  r4 <c a e c>2 |
  r4 <a f c a>2 |
  r4 <g ees bes>2 |
  r4 <g ees bes g>2 |
  r4 <f d a>2 |
  r4 <g ees bes g>2 |
  r4 <f d a>2 |
  r4 <f d bes g>2 |
  r4 <f ees bes g>2 |
  r4 <f d a>2 |
  r4 <g d bes>2 |
  r4 <a f c a>2 |

  r4 <g  d bes>2\pp |
  r4 <a f c a>2 |
  r4 <g d bes>2 |
  r4 <g e c>2 |
}

bottom = \context Staff \relative c {
  \stemDown
  g2. |
  d2. |
  g2. |
  d2. |
  g2. |
  d2. |
  g2. |
  d2. |

  g2. |
  d2. |
  g2. |
  d2. |
  g2. |
  d2. |

  c2. |
  c2. |
  c2. |
  f2. |
  f2. |
  f2. |
  f2. |
  f2. |
  f2. |
  bes,2. |
  d2. |
  g2. |
  d2. |


  c2. |
  c2. |
  c2. |
  f2. |
  f2. |
  f2. |
  f2. |
  f2. |
  bes,2. |
  d2. |

  g2. |
  d2. |
  g2. |
  d2. |
  g2. |
  d2. |

  g2. |
  d2. |
  g2. |
  d2. |
  g2. |
  d2. |

  c2. |
  c2. |
  c2. |
  f2. |
  f2. |
  f2. |
  f2. |
  f2. |
  f2. |
  f2. |
  bes,2. |
  d2. |

  g2. |
  d2. |
  g2. |
  c,2. |
}

\score {
  \context PianoStaff <<
    \context Staff = "treble" <<
      \global
      \clef treble
      \top
      \middle
    >>
    \context Staff = "bass" <<
      \global
      \clef bass
      \bottom
    >>
  >>
  \midi { }
  \layout {
    ragged-right = ##f
    \context {
      \Score
      \override SpacingSpanner #'shortest-duration-space = #3.0
      \override SpacingSpanner #'spacing-increment = #1.2
    }
  }
}
