\include "paper20.ly"

\header {
  title = "Sinfonia 10"
  composer = "Johann Sebastian Bach"
  opus = "BWV 796"
  mutopiatitle = "Sinfonia 10"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 796"
  mutopiainstrument = "Piano, Harpsichord"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  lastupdated = "07/March/2002"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/03/07-205"
}

\version "1.4.9"

%
% a few macros for fine tuning
%

% force direction of stems
u = \stemUp
d = \stemDown
b = \stemBoth


% force direction of tie
tu = \tieUp
td = \tieDown
tb = \tieBoth


% explicit staff change 
su = \notes{ \translator Staff = up}
sd = \notes{ \translator Staff = down}


% vertical shifting of rests
rupone   = \property Voice.Rest \override #'staff-position = #1
ruptwo   = \property Voice.Rest \override #'staff-position = #2
rupthree = \property Voice.Rest \override #'staff-position = #3
rupfour  = \property Voice.Rest \override #'staff-position = #4
rupfive  = \property Voice.Rest \override #'staff-position = #5
rupsix   = \property Voice.Rest \override #'staff-position = #6

rdwnone   = \property Voice.Rest \override #'staff-position = #-1
rdwntwo   = \property Voice.Rest \override #'staff-position = #-2
rdwnthree = \property Voice.Rest \override #'staff-position = #-3
rdwnfour  = \property Voice.Rest \override #'staff-position = #-4
rdwnfive  = \property Voice.Rest \override #'staff-position = #-5
rdwnsix   = \property Voice.Rest \override #'staff-position = #-6

rdft = \property Voice.Rest \revert #'staff-position


% same for multimeasure rests
Rupone   = \property Voice.MultiMeasureRest \override #'staff-position = #1
Ruptwo   = \property Voice.MultiMeasureRest \override #'staff-position = #2
Rupthree = \property Voice.MultiMeasureRest \override #'staff-position = #3
Rupfour  = \property Voice.MultiMeasureRest \override #'staff-position = #4
Rupfive  = \property Voice.MultiMeasureRest \override #'staff-position = #5
Rupsix   = \property Voice.MultiMeasureRest \override #'staff-position = #6

Rdwnone   = \property Voice.MultiMeasureRest \override #'staff-position = #-1
Rdwntwo   = \property Voice.MultiMeasureRest \override #'staff-position = #-2
Rdwnthree = \property Voice.MultiMeasureRest \override #'staff-position = #-3
Rdwnfour  = \property Voice.MultiMeasureRest \override #'staff-position = #-4
Rdwnfive  = \property Voice.MultiMeasureRest \override #'staff-position = #-5
Rdwnsix   = \property Voice.MultiMeasureRest \override #'staff-position = #-6

Rdft = \property Voice.MultiMeasureRest \revert #'staff-position


% horizontal shifting to avoid note collision
rshift    = \property Voice.NoteColumn \override #'force-hshift = #1
rrshift   = \property Voice.NoteColumn \override #'force-hshift = #2
rrrshift  = \property Voice.NoteColumn \override #'force-hshift = #3
rrrrshift = \property Voice.NoteColumn \override #'force-hshift = #4

lshift    = \property Voice.NoteColumn \override #'force-hshift = #-1
llshift   = \property Voice.NoteColumn \override #'force-hshift = #-2
lllshift  = \property Voice.NoteColumn \override #'force-hshift = #-3
llllshift = \property Voice.NoteColumn \override #'force-hshift = #-4

dftshift = \property Voice.NoteColumn \revert #'force-hshift


% force number of beams on left and right of the note
lbeamoff = \property Voice.stemLeftBeamCount = # 0
lbeamone = \property Voice.stemLeftBeamCount = # 1
lbeamtwo = \property Voice.stemLeftBeamCount = # 2
lbeamthree = \property Voice.stemLeftBeamCount = # 3
lbeamfour = \property Voice.stemLeftBeamCount = # 4
lbeamfive = \property Voice.stemLeftBeamCount = # 5

rbeamoff = \property Voice.stemRightBeamCount = # 0
rbeamone = \property Voice.stemRightBeamCount = # 1
rbeamtwo = \property Voice.stemRightBeamCount = # 2
rbeamthree = \property Voice.stemRightBeamCount = # 3
rbeamfour = \property Voice.stemRightBeamCount = # 4
rbeamfive = \property Voice.stemRightBeamCount = # 5



melone = \notes \relative c'' {
  % bars 1-3
  r8 g8. \lbeamone \rbeamtwo fis16 \lbeamtwo g a b c d b |
  %%% r8 g8. \property Voice.stemLeftBeamCount = # 1 \property Voice.stemRightBeamCount = #2 fis16 \property Voice.stemLeftBeamCount = #2 g a b c d b |
  e d c b a g fis e d c' b a |
  b4 ~ b16 a b cis d4 ~ |

  % bars 4-6
  d2 cis4 |
  d ~ d16 cis d e fis g a fis |
  b a g fis e d c b a g'fis e |

  % bars 7-9
  d4 ~ d16 d e fis g4 ~ |
  g8 e c a fis'4 ~ |
  fis8 d b g e'4 ~ |

  % bars 10-12
  e8 c a fis dis'4 |
  e \ruptwo r \rdft e ~ |
  e d!8 c d4 ~ |

  % bars 13-15
  d16 d c b a gis a b c d e c |
  f e d c b a gis fis! e d' c b |
  a gis a b c d e fis g! a b g |

  % bars 16-18
  c b a g fis e dis cis \d b a' g fis |
  b a g fis e d! cis b a g' fis e |
  a g fis e d cis b a g fis' e d |

  % bars 19-21
  g fis e d \u cis b ais gis fis e' d cis |
  \d fis e d cis \u b2 ~ |
  b2 ais4 |

  % bars 22-24
  b ~ b8 e d c |
  b f' e d c b |
  c4 ~ c8 d c b |

  % bars 25-27
  a e' d c b a |
  b4 \ruptwo r \rdft g' ~ |
  g ~ g16 b a g fis4 |

  % bars 28-30
  f ~ f16 a g f e4 ~ |
  e ~ e16 g fis e d4 ~ |
  d ~ d16 f e d c4 ~ |

  % bars 31-33
  c16 c b a g fis g a b c d b |
  e d c b a g fis e d c' b a |
  b2. \bar "|."
}

meltwo = \notes \relative c' {
  % bars 1-3
  \Rdwnsix R2. |
  R2. \Rdft |
  r8 d8. \lbeamone \rbeamtwo cis16 \lbeamtwo d e fis g a fis |

  % bars 4-6
  b a g fis e d cis b a g' fis e |
  fis  a, b cis d e fis g a b c a |
  d8 b g e \property Voice.NoteColumn \override #'force-hshift = #-0.5 c'4 \dftshift ~ |

  % bars 7-9
  c16 c b a b4 ~ b16 a b g |
  c2 () c16 e d c |
  b2 () b16 d c b |

  % bars 10-12
  a2 () a16 c! b a |
  g a g fis e dis e fis g a b g |
  c b a g fis e d c b a' gis fis |

  % bars 13-15
  e2. |
  d |
  [c8 b] [a c] [b e] ~ |

  % bars 16-18
  e c \sd \u \tu a fis dis'4 ~ |
  dis8 b g e cis'4 ~ |
  cis8 a fis d b'4 ~ |

  % bars 19-21
  b8 g e cis ais'4 |
  b ~ b16 ais b \su \d \td cis d e fis d |
  g fis e d cis \sd \u b ais gis fis \su \d e' d cis |

  % bars 22-24
  d fis gis ais b8 c! b a |
  gis2. |
  r16 e fis! gis a8 b a g |

  % bars 25-27
  fis2. |
  r16 d e fis g fis g a b c d b |
  e d c b a g fis e d c' b a |

  % bars 28-30
  d c b a g f e d c b' a g |
  c b a g fis e d c b a' g fis |
  b a g fis e d c b a g' fis! e |

  % bars 31-33
  d4 r g ~ |
  g2 \property Voice.NoteColumn \override #'force-hshift = #-0.5 fis4 \dftshift |
  g2. \bar "|."
}

melthree = \notes \relative c {
  % bars 1-3
  g4 b g |
  c d d, |
  g g' fis |

  % bars 4-6
  g a a, |
  d r r |
  R2. |

  % bars 7-9
  r8 g8. \lbeamone \rbeamtwo fis16 \lbeamtwo g a b c d b |
  e d c b a g fis e d c' b a |
  d c b a g fis e d c b' a g |

  % bars 10-12
  c b a g fis e dis cis b a' g fis |
  e8. dis16 e fis g a b8 e, |
  a fis b4. a8 |

  % bars 13-15
  gis a16 b [c8 b] [a c] ~ |
  c b16 a gis8 b gis e |
  [fis gis] [a dis,] [e g] |

  % bars 16-18
  \td \slurDown a2 () a16 c! b a |
  g2 () g16 b a g |
  fis2 () fis16 a g fis |

  % bars 19-21
  e2 () e16 \slurBoth g! fis e |
  d4 g fis |
  e fis \d fis, \b |

  % bars 22-24
  b ~ b16 a! b c! d e f c |
  \u d e d c b a gis fis! e d' c b \b |
  a4 ~ a16 g! a b c d e b |

  % bars 25-27
  c d c b a g fis e d c' b a |
  [g8 b] [d fis] [g b] |
  \tu c a d4 ~ d16 e d c |

  % bars 28-30
  b8 g c4 ~ c16 d c b |
  a8 fis! b4 ~ b16 c b a |
  g8 e a4 ~ a16 b a g |

  % bars 31-33
  fis e d c b a g fis g a b g |
  c a b c [d8 c] [d d,] |
  g2. \bar "|."
}


\score {
\context PianoStaff
\notes
<
  \context Staff = "up"   <
    \time 3/4 \key g \major \clef G
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>

  \context Staff = "down" <
    \time 3/4 \key g \major \clef F \melthree>
>
\midi {\tempo 4=70}
\paper {}
}
