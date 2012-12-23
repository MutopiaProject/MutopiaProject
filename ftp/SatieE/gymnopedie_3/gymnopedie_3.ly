\version "2.16.0"

\header {
  title = \markup{\halign #-2 {3.} {\small\raise #1.5 me} Gymnopédie}
  dedication = "à CHARLES LEVADÉ"
  composer = "Erik Satie"

  mutopiatitle = "Gymnopédie No. 3"
  mutopiacomposer = "SatieE"
  mutopiainstrument = "Piano"
  date = "1888"
  source = "Dover Edition"
  % The Dover edition contains photocopies of the original work
  % with translations from the French typed on them.  The translations
  % are all that is new (copyrighted), and are not included in this
  % file.
  
  style = "Classical"
  copyright = "Public Domain"

  filename = "gymnopedie_3.ly"
  maintainer = "Evin Robertson"
  maintainerEmail = "nitfol@my-deja.com"
  lastupdated = "2000/Oct/25"

 footer = "Mutopia-2012/12/23-39"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

global =  {
  \key a \minor
  \time 3/4
}

top = \relative c''' {
  \dynamicUp
  \stemUp
  \slurUp
  R2.^\markup{\hspace #10 "Lent et grave"} |
  R2. |
  R2. |
  R2. |
  a2.( \p \< |
  g4 f e |
  d\! e \> f |
  e d  c\! |
  e2.) |
  g2( \<  g4\! |
  <<\context Voice = "othervoice" {\stemDown r4 <a, f>2 | s2.}
    { d2. \> ~ |  d2.\! } >> |
  <<  d2.) \context Voice = "othervoice" {\stemDown r4 <a f>2}>> |

  r4 c( f \< |
  g2 a4 |
  d,\! e f |
  b, \> a g |
  a2. |
  d,2.\! ~ |
  d2.) |
  e'2.( |
  f4 \< g  f\! |
  e \> d e ~ |
  e2. ~ |
  e4 d c |
  b c  b\! |
  a2.) |

  R2. |
  R2. |
  R2. |
  a'2.( |
  g4 f \< e |
  d e f |
  e  d\! c |
  e2. |
  g2 g4 |
  c, \> b a |
  b2 c4 |
  d2.\! |
  e2.) |

  R2. |
  R2. |
  g2( \< a4 |
  d, e f |
  b, a  g\! |
  a2. \> |
  d,2. ~ |
  d2.\!) |
  e'2.( |
  f4 \< g f |
  e d  e\! ~ |
  e2. ~ |
  e4 \> d c |
  b c b |
  a2.\!) |

  R2. |
  R2. |
  R2. |
  <c a e c>2. ~ |
  <c a e c>2. |
}

middle = \context Voice = "accomp" \relative c'' {
  \override NoteColumn   #'horizontal-shift = #1
  \stemDown
  r4 <a  e c>2\p |
 r4 <g e b>2 |
  r4 <a e c>2 |
 r4 <g e b>2 |
  r4 <a e c>2 |
 r4 <a e c>2 |
  r4 <g d bes>2 |
 r4 <f d a>2 |
  \change Staff=bass
  \stemUp
  r4 <e c a>2 |
 r4 <e b g>2 |
  r4 <b g d>2 |
 r4 <f' c a>2 |
  r4 <b, g d>2 |

  r4 <f' c a>2 |
 r4 <g e b>2 |
  r4 <f c a>2 |
 r4 <e c a>2 |
  r4 <f c a>2 |
 r4 <f c a>2 |
  r4 <g e b>2 |

  \change Staff=treble
  \stemDown
  r4 <a  e c>2\pp |
  r4 <g e b>2 |
 r4 <a e c>2 |
  r4 <g e b>2 |
 r4 <a e c>2 |
  r4 <g e b>2 |
 r4 <f c a>2 |

  r4 <g  e b>2\pp |
 r4 <a e c>2 |
  r4 <g e b>2 |
 r4 <a  e c>2\p |
  r4 <a e c>2 |
 r4 <g d bes>2 |
  \change Staff=bass
  \stemUp
  r4 <f d a>2 |
  r4 <e c a>2 |
  r4 <e b g>2 |
  r4 <f c a>2 |
  r4 <e b g>2 |
  r4 <f c a>2 |
  \change Staff=treble
  \stemDown
  r4 <a e c>2 |

  \change Staff=bass
  \stemUp
  r4 <e c a>2 |
  r4 <f c a>2 |
  r4 <g e b>2 |
  r4 <f c a>2 |
  r4 <e c a>2 |
  r4 <f c a>2 |
  r4 <f c a>2 |
  r4 <g e b>2 |
  \change Staff=treble
  \stemDown
  r4 <a  e c>2\pp |
  r4 <g e b>2 |
  r4 <a e c>2 |
  r4 <g e b>2 |
  r4 <a e c>2 |
  r4 <g e b>2 |
  r4 <f c a>2 |

  r4 <g  e b>2\pp |
  r4 <a e c>2 |
  r4 <g e b>2 |
  s2. |
}

bottom = \context Staff \relative c {
  \stemDown
  a2. |
  d,2. |
  a'2. |
  d,2. |
  a'2. |
  c2. |
  g2. |
  d2. |
  a'2. |
  e2. |
  g2. |
  d2. |
  g2. |

  d2. |
  g,2. |
  g2. |
  g2. |
  d'2. |
  g,2. |
  g2. |
  c2. |
  e2. |
  c2. |
  e2. |
  c2. |
  e2. |
  a2. |

  d,2. |
  a'2. |
  d,2. |
  a'2. |
  c2. |
  g2. |
  d2. |
  a'2. |
  e2. |
  e2. |
  e2. |
  d2. |
  d2. |

  d2. |
  d2. |
  g,2. |
  g2. |
  g2. |
  d'2. |
  g,2. |
  g2. |
  c2. |
  e2. |
  c2. |
  e2. |
  c2. |
  e2. |
  a2. |

  d,2. |
  a'2. |
  d,2. |
  <a' e a,>2. ~ |
  <a e a,>2. |
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
      \override SpacingSpanner #'spacing-increment = #1.3
    }
  }
}
