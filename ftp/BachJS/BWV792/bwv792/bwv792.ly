\include "paper20.ly"

\header {
  title = "Sinfonia 6" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 792"
  mutopiatitle = "Sinfonia 6"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 792"
  mutopiainstrument = "Piano, Harpsichord"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  lastupdated = "01/February/2002"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/02/01-173"
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
  % bars 1-4
  \Rupsix R4. R4. R4. \Rdft |
  b8 cis dis e fis gis fis gis e |
  dis4. cis2.  |
  b a4. ~ | 

  % bars 5-8
  a gis2.  |
  cis dis4. |
  e2. dis4. ~ dis cis2. | 

  % bars 9-12
  bis4. cis2. ~  |
  cis8 dis e fis gis a gis a fis |
  e gis dis e gis bis, cis e4 ~ |
  e4. r e! ~ | 

  % bars 13-16
  e dis2. ~ |
  dis4. cis b ~ |
  b ais cis ~ |
  cis2. r4. | 

  % bars 17-20
  b'8 ais gis fis e dis e cis dis  |
  b4.-\prall r r |
  \Rupfour R4. R4. R4. \Rdft |
  fis8 gis a b cis d cis d b | 
  
  % bars 21-24
  a b cis d e fis e fis d |
  cis dis! e fis gis a gis a fis |
  e2. ~ e4. ~  |
  e8 e dis cis b a b a cis | 

  % bars 25-28
  dis4. ~ dis8 e fis gis fis a |
  \llshift b,2. \dftshift ~ b4. |
  a2. gis4. ~ |
  gis fis2. \td ~ | 

  % bars 29-32
  fis4. e dis ~  |
  dis2. ~ dis4. ~ |
  dis8 cis dis e fis gis fis gis e |
  \tu a2. ~ a4. ~ | 

  % bars 33-37
  a8 fis gis a b cis b cis a |
  dis4.-\fermata r r |
  \d e8 dis cis \u b a gis a gis b |
  \d cis4. r r |
  b'8 a gis fis e dis e dis fis ~ | 

  % bars 38-41
  fis16 e dis cis gis'8 ~ gis16 fis e dis a'8 ~ a16 gis fis e b'8 ~ |
  \u b b, cis dis e fis e fis dis |
  e4. r fis,4 a8 |
  gis2.-\fermata \bar "|."
}

meltwo = \notes \relative c' {
  % bars 1-4
  e8 fis gis a b cis b cis a |
  gis2. ais4. |
  b2. a!4. ~ |
  a gis2. |

  % bars 5-8
  fis e4. ~ |
  e8 fis gis a b cis b cis a |
  gis4. fis2. |
  e dis4. ~ |

  % bars 9-12
  dis8 e fis gis a b a b gis |
  fis4. bis,2. |
  cis4. r r8 \rdwntwo r8 \rdft gis'8  |
  ais cis gis ais cis eis, fis ais4 ~ |

  % bars 13-16
  ais4. b fis |
  e2. dis4. |
  e2. ~ e4. ~ |
  e8 fis gis ais b cis b cis ais |

  % bars 17-20
  b2. ais4.  |
  b4. r r |
  b,8 cis dis e fis gis fis gis e |
  dis4. eis2. |

  % bars 21-24
  fis gis4. |
  a r r |
  cis8 b a gis fis e fis e gis  |
  a2. ~ a4. ~ |

  % bars 25-28
  a2. ~ a4. ~ |
  a8 gis fis e d cis d b cis |
  cis dis! e dis e cis b cis dis |
  cis dis \sd \u \tu b a b cis b cis a |

  % bars 29-32
  gis2. fis4. ~ |
  fis8 dis e fis gis a gis a fis |
  e4. cis'2. ~ |
  cis8 a b cis \su \d \td dis e dis e cis  |

  % bars 33-37
  b4. fis'2. ~  |
  fis4. r r |
  \sd \u e,8 fis gis a b cis b cis a |
  g4. r \rdwnone r \rdft |
  r8 fis gis! a b cis b cis a |

  % bars 38-41
  gis4. a b  |
  cis8 \su \d dis e fis gis a gis a fis |
  gis4. r cis,8 dis4 |
  e2. |
}

melthree = \notes \relative c' {
  % bars 1-4
  \d e2. dis4. |
  e cis fis |
  b,8 cis dis e fis gis fis gis e |
  dis e fis e fis dis cis dis e |

  % bars 5-8
  dis e cis b cis dis cis dis b |
  a4. fis b |
  e,8 fis gis a b cis b cis a |
  gis a b a b gis fis gis a |

  % bars 9-12
  gis4. e fis |
  dis2. gis4. |
  \u cis,4. \d r e |
  fis r r8 r cis' |

  % bars 13-16
  dis fis cis dis fis ais, b dis fis, |
  gis b fis gis b dis, e gis b,  |
  \u cis e b cis e gis, ais cis e,  |
  fis4. \d e' r |

  % bars 17-20
  dis e fis  |
  \u b,8 cis dis \d e fis gis fis gis e  |
  dis e fis gis fis e a4. ~ |
  a gis cis |

  % bars 21-24
  fis, b2. |
  a8 gis fis e dis cis \u bis cis dis |
  cis4. \d r r |
  fis r r |

  % bars 25-28
  b8 a gis fis e dis e dis fis |
  gis2. ~ gis4. ~ |
  gis fis2. |
  e dis4. |

  % bars 29-32
  e8 dis cis b a gis a gis b |
  bis,4. \rdwnfour r r |
  cis r r |
  fis r r \rdft |

  % bars 33-37
  \u dis \d r r |
  \u a'-\fermata \d r r  |
  gis \rdwnfour r r \rdft |
  ais8 cis dis e fis g! fis g e  |
  dis4. \rdwntwo r r \rdft |

  % bars 38-42
  e fis gis |
  a r r |
  r8 b fis gis dis e \u ais, b b,  |
  e2.-\fermata |
}


\score {
\context PianoStaff
\notes
<
  \context Staff = "up"   <
    \time 9/8 \key e \major \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>

  \context Staff = "down" <
    \time 9/8 \key e \major \clef F \melthree>
>
\midi {\tempo 4=130}
\paper {}
}

