\include "paper20.ly"

\header {
  title = "Sinfonia 5" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 791"
  mutopiatitle = "Sinfonia 5"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 794"
  mutopiainstrument = "Piano, Harpsichord"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  lastupdated = "07/March/2002"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/03/07-204"
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
  % bars 1-4
  \ruptwo r4 r8 r16 \rdft bes ees8. f16 |
  d4 ~ d8. c16 des8. ees16  |
  c4 ~ c8. c16 f8. g16 |
  ees 4 ~ ees8. d16 ees8. f16 |

  % bars 5-9
  d4 ~ d8. d16 g8. g16 |
  c,4 ~ c8. c16 f8. f16  |
  bes,4 ees2 ~ |
  ees4 d2 |
  ees4 ~ ees8. \rdwntwo r16 \rdft \ruptwo r4 \rdft |

  % bars 10-13
  r \rupsix r8 r16 \rdft aes d,8. d16 |
  d4 ~ d8. ees16 f4 ~ |
  f8. ees16 ees4 d8.-\lineprall c16 |
  c4 \ruptwo r \rdft \rdwnone r \rdft |

  % bars 14-17
  r \ruptwo r8 \rdft \rupsix r16 \rdft c16 f8. g16 |
  d4 ~ d8. ees16 f8. g16 |
  ees8. d16 d4 () c8. bes16 |
  bes4 \ruptwo r8 \rdft \rupsix r16 \rdft bes'16 aes!8. bes16 |

  % bars 18-21
  g4 ~ g8. aes16 bes4 ~ |
  bes8. g16 e8. f16 g4 ~ |
  g8. f16 des8. c16 f8. g16 |
  e4 ~ e8. e16 aes8. aes16 |

  % bars 22-25
  aes4 () g8. f16 bes8. bes16 |
  bes4 () e,8. e16 f8. e16 |
  f8. g16 f4 () e8. f16 |
  f4 \ruptwo r \rdft \rdwntwo r \rdft |

  % bars 26-29
  \rdwntwo r \rdft \rupsix r8 r16 \rdft f bes8. aes16 |
  g4 ~ g8. aes16 des,4 ( |
  ) d8. c16 c4 () bes8. aes16 |
  aes4 ~ aes8. ees16 aes8. bes16 |

  % bars 30-33
  g4 ~ g8. f16 g8. aes16  |
  bes4 ~ bes8. f16 bes8. c16  |
  aes4 ~ aes8. g16 aes8. bes16 |
  g4 ~ g8. g16 c8. c16 |
  
  % bars 34-38 
  c4 bes2 ~ |
  bes4 aes2 ~ |
  aes4 ~ aes8. g16 c8. c16 |
  f,4 ~ f8. f16 bes8. c16 |
  g2.-\fermata \bar "|."
}

meltwo = \notes \relative c' {
  % bars 1-4
  \Rdwnfour R2. \Rdft |
  r4 r8 \rdwnfour r16 \rdft f16 bes8. c16 |
  aes4 ~ aes8. g16 aes8. bes16 |
  g4 ~ g8. g16 c8. d16 |
  
  % bars 5-9
  bes2. ~  |
  bes4 aes2 ~ |
  aes4 ~ aes8. g16 c8. c16 |
  f,4 ~ f8. f16 bes8. c16 |
  g4 ~ g8. g'16 c,8. c16 |

  % bars 10-13
  c2. ~ |
  c4 b8. c16 d4 ~ |
  d8. c16 c4 b  |
  c4 r8 \rdwntwo r16 \rdft g16 c8. d16 |

  % bars 14-17
  a4 ~ a8. bes16 c4 ~ |
  c bes8. c16 d8. ees16  |
  c8. bes16 bes4 a |
  bes4 r \rdwnfour r \rdft |

  % bars 18-21
  \rdwntwo r \rdft \rdwnfour r8 r16 \rdft ees des8. ees16 |
  c4 ~ c8. des16 bes8. c16 |
  aes4 ~ aes8. g16 aes8. bes16 |
  c4 ~ c8. c16 f8. ees16 |

  % bars 22-25
  des2. ~  |
  des4 c8. bes16 aes8. g16 |
  aes8. bes16 aes4 g8. aes16 |
  aes4 ~ aes8. c16 f8. ees16 |

  % bars 26-29
  des2. ~ |
  des4 ~ des8. c16 bes4 ~ |
  bes8. aes16 aes4 () g |
  aes r r |

  % bars 30-33
  r r8 \rdwnsix r16 \rdft bes,16 ees8. f16 |
  d4 ~ d8. c16 des8. ees16 |
  c4 ~ c8. c16 f8. g16 |
  ees4 ~ ees8. d16 ees8. f16 |

  % bars 34-38
  d4 ~ d8. d16 g8. g16 |
  c,4 ~ c8. c16 f8. f16 |
  bes,4 ees2 ~ |
  ees4 d2  |
  ees2. \bar "|."
}

melthree = \notes \relative c {
  % bars 1-4
  r16 ees g bes ees4 c |
  r16 bes, d f bes4 g |
  r16 aes, c ees aes4 f |
  r16 c ees g c4 a |
  
  % bars 5-9
  r16 bes, d f bes4 ees, |
  r16 aes, c ees aes4 d, |
  r16 g, bes d g4 aes |
  r16 bes, f' aes bes4 bes, |
  r16 ees, g bes ees4 c |

  % bars 10-13
  r16 aes c ees aes4 f |
  r16 f aes c f4 r16 b, a g |
  c g aes f g4 g, |
  r16 c, ees g c4 ees, |

  % bars 14-17
  r16 f a c f4 a, |
  r16 bes d f bes4 g |
  r16 g a bes f4 f, |
  r16 bes d f bes4 d, |

  % bars 18-21
  r16 ees g bes ees4 g, |
  r16 aes, c ees aes4 e |
  r16 f, aes c f4 des |
  r16 c e g c4 aes |

  % bars 22-25
  r16 bes, des f bes4 g |
  r16 c,, e g c4 des |
  r16 des c bes c4 c, |
  r16 f aes c f4 aes, |

  % bars 26-29
  r16 bes des f bes4 des, |
  r16 ees g bes ees4 r16 g, f ees |
  aes ees f des ees4 ees, |
  r16 aes c ees aes4 f |

  % bars 30-33
  r16 ees, g bes ees4 c |
  r16 bes d f bes4 g |
  r16 aes, c ees aes4 f |
  r16 c ees g c4 a |
  
  % bars 34-38
  r16 bes, d f bes4 ees, |
  r16 aes, c ees aes4 d, |
  r16 g, bes d g4 aes |
  r16 bes, f' aes bes4 bes, |
  ees,2.-\fermata \bar "|."
}


\score {
\context PianoStaff
\notes
<
  \context Staff = "up"   <
    \time 3/4 \key ees \major \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>

  \context Staff = "down" <
    \time 3/4 \key ees \major \clef F \melthree>
>
\midi {\tempo 4=55}
\paper {}
}
