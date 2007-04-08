\include "paper20.ly"

\header {
  title = "Sinfonia 13" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 799"
  mutopiatitle = "Sinfonia 13"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 799"
  mutopiainstrument = "Piano, Harpsichord"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  lastupdated = "07/March/2002"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/03/07-206"
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

% tuning the grace notes
grstem = \property Grace.Stem \override #'flag-style = #'()

% typeset on/off
typeskip = \property Score.skipTypesetting = ##t
typenoskip = \property Score.skipTypesetting = ##f


melone = \notes \relative c'' {
  % bars 1-6
  a4 b8 |
  c4 d8 |
  c8 b4-\prall |
  a16 b c d e fis |
  g fis g a b c |
  b a g fis e dis |

  % bars 7-12
  [e fis] [dis8. e16] |
  e4 g8 ~ |
  g16 bes a g f! e |
  f4. ~ |
  f16 f e d c b |
  c d c b a gis |

  % bars 13-18
  a4. ~ |
  a8. \lbeamone \rbeamtwo b16 \lbeamtwo c d |
  \d e f e d c b \u |
  c4. |
  b |
  a16 g a b c d |

  % bars 19-24
  e f g a b c |
  f, a g f e d |
  e8 c d |
  e4 f8 |
  e8 d4 |
  c16 g a b c d |

  % bars 25-30
  e4 f8 |
  g4 a8 |
  g8 f4 |
  e4. ~ |
  e8 d e |
  f4 g8 |

  % bars 31-36
  f8 e4 |
  d16 a b! cis d e |
  f4 g8 |
  a4 bes8 |
  a g4-\prall |
  f16 a32 g f16 a e a |

  % bars 37-41
  f4. ~ |
  f16 g32 f e16 g d g |
  e4. ~ |
  e16 d32 c b16 d a d |
  b \rbeamtwo b \lbeamtwo \rbeamone d g8 fis16 |

  % bars 42-47
  g16 \rbeamtwo d \lbeamtwo \rbeamone b g8 fis16 |
  g d e d e fis |
  g d' c b c d |
  b8 c d |
  g, a b |
  c4 b8 ~ |

  % bars 48-53
  b16 a8 a gis16 |
  \d a \rbeamtwo c \lbeamtwo \rbeamone e a8 gis16 |
  a \rbeamtwo e \lbeamtwo \rbeamone c a8 gis16 |
  a c e a gis b |
  e,8 a, b |
  \u c4 d8 |
  
  % bars 54-58
  e4 f8 |
  e8 d4 |
  c8 e4 ~ |
  e8 d4 ~ |
  d16 e32 d c16 e b e |

  % bars 59-64
  a, d32 c b16 d a d |
  gis,8 a b |
  c4 d8 |
  c8 b4 ~ |
  b8 a' gis |
  a4. \bar "|."
}

meltwo = \notes \relative c' {
  % bars 1-6
  \Rdwnfour R4. |
  R4. |
  R4. |
  R4. \Rdft |
  e4 fis8 |
  g4 a8 |

  % bars 7-12
  g fis4_\prall |
  e16 fis g a b cis |
  d4. ~ |
  d16 e d c b! a |
  gis4. |
  a16 f e d c b |
  
  % bars 13-18
  c b c d e f |
  e d c \sd \u b a gis |
  a b gis4-\prall |
  a8 \su \d e' a ~ |
  \rrshift a \dftshift d, g ~ |
  g f16 g a b |

  % bars 19-24
  c8 e,16 f g a |
  b8 a b |
  c e, f |
  g4 a8 |
  g8 f4 |
  e8 r \rdwntwo r \rdft |

  % bars 25-30 
  r c' d |
  e4 f8 |
  e8 d4 ~ |
  \rrshift d16 \dftshift d c bes a g |
  f8 a4 ~ |
  a8 a cis |

  % bars 31-36
  d4 cis8 |
  d8 \ruptwo r \rdft r |
  r d e |
  f4 g8 |
  f e4 ~ |
  e8 d cis |

  % bars 37-41
  d16 d32 c! b16 d a d |
  g,8 c b |
  c16 c32 b a16 c g c |
  fis,8 g fis |
  g4 \rdwntwo r8 \rdft |

  % bars 42-47
  \rdwnsix r \rdft g, a |
  b4 c8 |
  b a4 ~ |
  a16 g a g a b |
  c g' f e f g |
  e8 d4 |

  % bars 48-53
  c8 \sd \u b b |
  e, a b |
  c4 d8 |
  c b4 ~ |
  b16 e, fis gis a gis |
  a \rbeamtwo c \su \d \lbeamtwo \rbeamone e a8 gis16 |

  % bars 54-58
  a \rbeamtwo e \sd \u \lbeamtwo \rbeamone c a8 gis16 |
  a c \su \d e a gis a |
  a, c'32 b a16 c g! c |
  fis, b32 a gis16 b fis b |
  e,4. ~ |

  % bars 59-64 
  e8 d4 ~ |
  d16 e32 d c16 e b e |
  a,8 a' gis |
  a8 d,4 ~ |
  d16 e'32 d c16 e b e |
  cis4. \bar "|."
}

melthree = \notes \relative c {
  % bars 1-6
  a8 a' gis |
  a e f |
  \u d e e, \d |
  a a'16 b c a |
  e'8 e, dis' |
  e b c |

  % bars 7-12
  a b b, |
  e4 r8 |
  R4. |
  R4. |
  R4. |
  R4. |

  % bars 13-18
  \u a,4 b8 \d |
  c4 d8 |
  c8 b4 |
  a16 b c d e fis |
  g a b c d e |
  f4. |

  % bars 19-24
  e |
  d |
  c,16 \rbeamtwo e \lbeamtwo \rbeamone g c8 b16 |
  c \rbeamtwo g \lbeamtwo \rbeamone e c8 b16 |
  c e g c b c |
  c,8 c' b \clef G \u |

  % bars 25-30
  a16 a' g f e d |
  c \rbeamtwo e \lbeamtwo \rbeamone g c8 b16 |
  c c, c' b a b |
  c8 c, cis |
  d16 g f e d cis \clef F \d |
  d e d c! bes a |

  % bars 31-36
  g f g bes a g |
  f g f e d cis |
  d \rbeamtwo f \lbeamtwo \rbeamone a d8 cis16 |
  d \rbeamtwo a \lbeamtwo \rbeamone f d8 cis16 |
  d f a d cis d |
  d,8 f a |

  % bars 37-41
  d,16 f32 e d16 f c f |
  b,8 c g' |
  c16 e32 d c16 e b e |
  a,8 b d |
  \u g, g, a |

  % bars 42-47
  b4 c8 |
  b8 a4 |
  \d g8 g' fis |
  g4 f!8 |
  e4 d8 |
  c16 e fis e fis gis |

  % bars 48-53
  a e d c d e |
  c4 e8 |
  a g! f |
  e4 d8 |
  c4 b8 |
  a4 b8 |

  % bars 54-58
  c4 d8 |
  c8 b4 |
  \u a8 c a |
  d b a |
  gis a g |

  % bars 59-64
  fis f f' |
  \d e4. ~ |
  e16 e32 d c16 e b e |
  a, b'32 a gis16 b e, gis |
  c,8 d e |
  \u a,4. \bar "|."
}


\score {
\context PianoStaff
\notes
<
  \context Staff = "up"   <
    \time 3/8 \key a \minor \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>

  \context Staff = "down" <
    \time 3/8 \key a \minor \clef F \melthree>
>
\midi {\tempo 4=55}
\paper {}
}
