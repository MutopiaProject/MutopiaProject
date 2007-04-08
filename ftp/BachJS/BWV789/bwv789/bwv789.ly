\include "paper20.ly"

\header {
  title = "Sinfonia 3" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 789"
  mutopiatitle = "Sinfonia 3"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 789"
  mutopiainstrument = "Piano, Harpsichord"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  lastupdated = "30/December/2001"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2001/12/30-143"
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



melone = \notes \relative c'' {
  % bars 1-5
  \u \tu \rupsix r8 \rdft fis16 g a8 c, b e16 fis g8 b, |
  a d16 e fis8 a, g16 fis' e d cis b' a g |
  fis e d e fis e fis gis a4 e ~ |
  e d ~ d cis ~ |
  cis16 e d cis b8 gis' a2 ~ | 

  % bars 6-9
  a16 cis, d e fis g fis e dis b cis! dis e fis e d  |
  cis a b cis d e d cis b4 e ~  | 
  [e8 a,] [d8. e16] cis b a b cis b cis dis |
  [e8 b] [e8. fis16] d! cis b cis d cis d e | 

  % bars 10-13
  fis e d e fis8 a,! \d gis cis16 d e8 g, \u |
  fis b16 cis d8 fis, e16 d' cis b \d ais g' fis e | 
  d cis b cis d b cis d \u eis, gis a b cis4 ~ |
  cis16 fis, gis a b4 ~ b16 eis, fis gis a4 ~ | 

  % bars 14-17
  a16 a gis fis eis4 fis8 fis'16 g! a8 c, |
  b4 fis' ~ fis16 g fis e dis c' b a | 
  g a g fis e fis g e cis!8 e16 fis g8 b, |
  a2(  )a16 g fis g a g a b | 

  % bars 18-21
  c b c d e d c b a g a b c b c d |
  b a g a b c d8 ~ d4 c ~ | 
  c b ~ [b8 g'] [a, fis']  |
  g16 d e fis g b a g fis e d e fis g fis e  | 

  % bars 22-25
  dis b cis! dis e fis e d cis a b cis d e d cis |
  b a g fis e8 cis' d fis16 g a8 c, | 
  b e16 fis g8 b, a d16 e fis8 a,  |
  g16 fis' e d cis4 d2-\fermata \bar "|." | 
}

meltwo = \notes \relative c'' {
  % bars 1-5
  \d \td \Rdwnfour R1 \Rdft |
  \Rdwnsix R1 \Rdft |
  \rdwnfour r2 \rdft \rdwntwo r8 \rdft cis16 d e8 g,! |
  fis b16 cis d8 fis, e a16 b cis8 e,  |
  d16 cis' b a gis fis' e d cis b a b cis a b cis |

  % bars 6-9
  d4 a ~ a g ~ |
  g fis ~fis16 a g fis e d' cis b |
  a g fis g a gis a b e,2 ~ |
  e8 g16 a b a b cis fis,4 b, ~ |

  % bars 10-13
  b16 ais b cis d e d \sd \u \tu cis b gis ais b cis d cis b |
  ais fis gis ais b4 ~ b16 b cis d e8 ais, |
  b a! gis fis gis4 ~ gis16 \su \d \td gis'! fis e! |
  dis4 ~ dis16 fis e d cis4 ~ cis16 e d! cis |

  % bars 14-17
  b4 ~ b16 d cis b a8 \rdwntwo r \rdft \rdwnfour r4 \rdft |
  \ruptwo r8 \rdft fis'16 g a8 c, b2 ~ |
  b8 e16 fis g8 b, a4 e' ~ |
  e16 fis e d cis b' a g fis4 r |

  % bars 18-21
  r8 a16 b c!8 e, fis16 g8. ~ g8 fis |
  g4 \ruptwo r16 \rdft c b a gis e fis! gis a b a g  |
  fis d e fis g a g fis e8 \rdwnsix r \rdft r4 |
  \rdwnfour r2 \rdft \rdwntwo r8 \rdft fis16 g a8 c, |

  % bars 22-25
  b e16 fis g8 b, a d16 e fis8 a, |
  g16 fis' e d cis b' a g fis8 a ~ a4 ~ |
  a g ~ g fis ~ |
  fis16 a g fis e b' a g fis2 |
}

melthree = \notes \relative c' {
  % bars 1-5
  \d \td d4 r8 fis, g4  r8 e |
  fis4 r8 d [b' g] [a a,] |
  d d' cis b a16 gis a b cis d cis b |
  ais fis gis ais b cis b a gis e fis gis a b a g |
  [fis8 d] \u [e e,] a16 b cis d \d e fis g! e |

  % bars 6-9
  fis e fis g a8 c, b e16 fis g8 b, |
  \u a d16 e fis8 a, g16 fis' e d \d cis b' a g   |
  fis e d e fis e fis gis [a8 e] [a8. b16] |
  g!16 fis e fis g fis g a b8 a g4 |

  % bars 10-13
  fis2 ~ fis4 e ~ |
  e \rdwntwo r16 \rdft d e fis g4 fis |
  b,2 ~ b4 a ~ |
  \u a \d ~ a16 a' gis fis eis cis dis eis fis8 b,16 cis |

  % bars 14-17
  \u [d8 b] [cis cis,] fis4 r8 \d fis'16 g |
  a g a b c fis, g a dis,8 fis16 g a8 dis, |
  e4 r8 e16 fis g fis g a b e, fis g |
  cis,8 e16 fis g8 cis, \u d a16 b c8 e, \d |
 
  % bars 18-21
  d1 |
  g8 b'16 c d8 f, e a16 b c8 e, |
  d g16 a b8 d, c16 b' a g fis e' d c! |
  b a g a b a b cis! d4 a ~ \tu |

  % bars 22-25
  a g ~ g fis ~  |
  fis16 e fis g a g fis e d cis d e fis g fis e |
  \u dis b cis! dis \d e fis e d \u cis a b cis \d d e d cis |
  [b8 g'] [a a,] \u d,2-\fermata 
}


\score {
\context PianoStaff
\notes
<
  \property Score.TimeSignature \override #'style = #'C
  \context Staff = "up"   <
    \property Staff.NoteCollision \override #'merge-differently-dotted = ##t
    \time 4/4 \key d \major \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>

  \context Staff = "down" <
    \time 4/4 \key d \major \clef F \melthree>
>
\midi {\tempo 4=70}
\paper {}
}

