\include "paper20.ly"

\header {
  title = "Sinfonia 15" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 801"
  mutopiatitle = "Sinfonia 15"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 801"
  mutopiainstrument = "Piano, Harpsichord"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  lastupdated = "30/December/2001"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2001/12/30-145"
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
  % bars 1-3
  [b16 fis fis] [g fis fis] [b fis fis] |
  [cis' fis, fis] [g fis fis] [cis' fis, fis] |
  [d'32 b d fis b fis] [d fis d b d b] [fis b fis d fis d] |

  % bars 4-7
  b16 \ruptwo r r r \rdft [b' cis] [d cis b] |
  ais8. ~ [ais16 b cis] [b cis ais] |
  [b32 fis b d fis d] [b d b fis b fis] [d fis d b d b] |
  d'4. ~ d8. ~ |

  % bars 8-11
  [d16 b b] [cis b b] [e b b] 
  cis4. ~ cis8. ~ |
  [cis16 a a] [b a a] [d a a] |
  [b32 d b g b g] e8. [e'32 g e cis e cis] |

  % bars 12-14
  [a cis a fis a fis] d8. [d'32 fis d b d b] |
  [g b g e g e] [cis e cis a cis a] [a'16 fis g] |
  fis8. \ruptwo r r \rdft |

  % bars 15-18
  \Rupfour R8. R8. R8. \Rdft |
  \Rupfour R8. R8. R8. \Rdft | 
  [a16 e e] [fis e e] [a e e] |
  [b' e, e] [fis e e] [b' e, e] |

  % bars 19-22
  \d [cis'32 a cis e a fis] \u [dis fis dis b dis b] \b [fis b fis dis fis dis] | 
  e8. \ruptwo r \rdft g ~ \tu |
  [g16 e e] [fis e e] [a e e] |
  fis4. ~ fis8. ~ |

  % bars 23-26
  [fis16 d d] [e d d] [g d d] | 
  e4. ~ e8. ~ |
  [e16 cis cis] [\u d cis cis] [fis cis cis] |
  [d32 b d fis d fis] [b fis b d b d] g8. | 

  % bars 27-29
  [cis,,32 a cis e cis e] [a e a cis a cis] fis8. |
  [b,,32 g b d b d] [g d g b g b] e8. ~ |
  [e16 fis, fis] [g fis fis] [e' fis, fis] | 

  % bars 30-33
  d'4. ~ d8. ~ |
  [d16 b b] [c b b] [g' b, b] |
  ais8. fis'4.-\fermata ~
  [fis32 b, d fis b fis] [d fis d b d b] [fis b fis d fis d] | 

  % bars 34-38
  d'4. ~ d8. ~ |
  [d16 cis cis] [gis' cis, cis] [d cis cis] |
  [e cis cis] [ais' cis, d] [e d cis] |
  [fis g e] d8.( [)cis8-\trill b16] |
  b2.-\fermata \bar "|."
}

meltwo = \notes \relative c'' {
  % bars 1-3
  \Rdwnsix R8. R8. R8. \Rdft |
  \Rdwnsix R8. R8. R8. \Rdft |
  \Rdwnfour R8. R8. R8. \Rdft |

  % bars 4-7
  \Rdwnfour R8. R8. R8. \Rdft |
  \Rdwnfour R8. R8. R8. \Rdft |
  \Rdwnsix R8. R8. R8. \Rdft |
  [b16 fis fis] [g fis fis] [b fis fis] |

  % bars 8-11
  gis4. ~ \td gis8.   |
  [a16 e e] [fis e e] [a e e] |
  fis4. ~ fis8. |
  g16 r r \rupone r8. \rdft \rdwnsix r8. \rdft |

  % bars 12-14
  \Rdwnsix R8. R8. R8. \Rdft |
  \property Voice.MultiMeasureRest \override #'staff-position = #-10 R8. R8. R8. \Rdft
  [d16 a a] [b a a] [d a a] |

  % bars 15-18
  [e' a, a] [b a a] [e' a, a] |
  [fis'32 d fis a d b] [gis b gis e gis e] [b e b \sd \u \tu gis b gis] |
  e8. \ruptwo r16 \rdft  [a b] [cis b a] |
  gis8. ~ [gis16 a b] [a b gis] |

  % bars 19-22
  a8. ~ [a16 b \su \d \td c] [b c a] |
  [e' b b] [c b b] [e b b] |
  cis!4. ~ cis8. ~ |
  [cis16 a a] [b a a] [d a a] |

  % bars 23-26
  b4. ~ b8. ~  |
  [b16 \sd \u \tu gis gis] [a gis gis] [cis gis gis] |
  ais4. ~ ais8. |
  b16 \rupsix r r \rdft r8. \su \d \td r8. |

  % bars 27-29
  \Rdwnsix R8. R8. R8. \Rdft |
  \Rdwnsix R8. R8. R8. \Rdft |
  \Rdwnsix R8. R8. R8. \Rdft |

  % bars 30-33
  \d [fis'16 b, b] [d b b] [fis' b, b]  |
  g'4. ~ g8. |
  fis8. ais!4.  |
  \Rdwnfour R8. R8. R8. \Rdft |

  % bars 34-38
  b4. ~ b8. ~ |
  b4. ~ b8. |
  ais8. \rdwntwo r16 \rdft [ais b] [cis b ais] |
  b4. ais8. |
  \cadenzaOn b2. |
}

melthree = \notes \relative c {
  % bars 1-3
  b8. r16 [b' cis] [d cis b] |
  ais8. ~ [ais16 b cis] [b cis ais]  |
  b8. r r |

  % bars 4-7
  [b16 fis fis] [g fis fis] [b fis fis] |
  [cis' fis, fis] [g fis fis] [cis' fis, fis] |
  [d'32 b d fis b fis] [d fis d b d b] [fis b fis d fis d] |
  b8. r16 [b' cis] [d cis b]  |

  % bars 8-11
  e8. r16 [e, fis] [gis fis e] |
  a8. r16 [a, b] [cis b a] |
  d8. r16 [d, e] [fis e d] |
  g8. [g'32 b g e g e] [cis e cis a cis a] |

  % bars 12-14
  fis8. [fis'32 a fis d fis d] [b d b g b g] |
  e8. [e'32 g e cis e cis] [a cis a fis a fis] |
  d8. r16 [d e] [fis e d] |

  % bars 15-18
  cis8. r16 [a' b] [cis b a] |
  d8. ~ [d16 e fis] [e fis d] |
  \d cis8. \ruptwo r \rdft \rdwntwo r \rdft |
  e r r  |

  % bars 19-22
  a, fis'4. |
  g8. r16 [e fis] [g fis e] |
  a8. r16 \u [a, b] [cis b a] \d |
  d8. r16 [d e] [fis e d] |

  % bars 23-26
  g8. r16 [g fis] [e fis g] |
  cis,8. r16 [cis b] [ais b cis] |
  fis,8. r16 [fis' e] [d e fis] |
  b,8. [d32 b d fis d fis] [b g b e b e] |

  % bars 27-29
  a8. \u [cis,,32 a cis e cis e] \d [a fis a d a d] |
  [g b g d g d] [ b d b g b g] [e g e cis e cis] |
  \u ais8. ~ \td [ais16 b cis] [fis, b ais] |

  % bars 30-33
  b8. r b |
  \d e4. ~ \tu e8. ~ |
  e8. ~ e4.^\fermata |
  d8 r16 r8. r8. |

  % bars 34-38
  [b'32 g b d g d] [b d b g b g] [d g d b d b] |
  \u eis,8. r r |
  fis \d r16 [e' fis] [g fis e] |
  [d8 e16] [fis8 e16] \u [fis8 fis,16] |
  b2.-\fermata |
}


\score {
\context PianoStaff
\notes
<
  \context Staff = "up"   <
    \property Staff.NoteCollision \override #'merge-differently-dotted = ##t
    \time 9/16 \key b \minor \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>

  \context Staff = "down" <
    \time 9/16 \key b \minor \clef F \melthree>
>
\midi {\tempo 4=60}
\paper {}
}

