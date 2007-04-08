\include "paper20.ly"

\header {
  title = "Sinfonia 14"
  composer = "Johann Sebastian Bach"
  opus = "BWV 800"
  mutopiatitle = "Sinfonia 14"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 800"
  mutopiainstrument = "Piano, Harpsichord"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  lastupdated = "20/March/2002"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/03/20-213"
}

\version "1.4.12"

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
  \Rupfour R1 \Rdft |
  \rupfour r8 \rdft f ~ f16 ees d c bes8 d a16 bes c8 |
  f,16 f' d bes ees!8 g ~ g16 ees c \slurDown a( )c8 f |
  d4 e f8 bes,4 a8 ~ |

  % bars 5-8
  [a g] ~ [g f] ~ [f ees] ~ [ees d] ~ |
  d16 g ees c a'!8 c ~ c16 f, bes d c8 ees ~ |
  ees8 d4 c8 d \rupsix r \rdft \rupsix r4 \rdft |
  \rupsix r8 \rdft g ~ g16 g f ees d8 f b,16 c d8 |

  % bars 9-12
  g, b c2 b4 |
  c1 ~  |
  c4. f8 ~ f16 e d e e8. f16 |
  f8 a ~ a16 a g f e8 g cis,16 d e8 |

  % bars 13-16
  a,8. b16 c! b c d b a b cis d4 ~ |
  d cis d8 f ~ f16 ees! d c! |
  b8 d g,16 a b8 ees,4 ees' ~  |
  ees8 d16 c bes8 a d8. ees16 d c bes aes |

  % bars 17-18
  \lshift g8. \dftshift aes16 bes8 f g g' ~ g16 f ees d |
  c g f'8 bes,16 c d8 g,8 ees' ~ ees 16d c bes |

  % bars 19-21
  a8 d g,16 a bes8 ees, c' ~ c16 bes a g |
  f4 r \rupsix r8 \rdft f'8 ~ f16 ees d c |
  bes8 d a16 bes c8 ~ c16 f, bes d c8 ees ~ |

  % bars 22-24
  ees16 a, bes d f4 ~ f16 bes, c ees g4 |
  bes16 a! g f [bes a32 g f ees d c] bes4 ~ bes16 bes8 a16 |
  bes1-\fermata \bar "|."
}

meltwo = \notes \relative c'' {
  % bars 1-4
  bes4 ~ bes16 bes a g f8 g d16 ees f8 |
  bes,16 f bes d c8 ees ~ ees d16 e e8._\prall d32 e |
  f4 [g8 bes] [ees, g] [a c] ~ |
  c16 f, bes d g,8 bes a d,16 ees! f g ees f |

  % bars 5-8
  d f bes, c d ees c d bes d \sd \u g, a bes c aes bes |
  g4 f8 r \su \d \rdwnsix r2 \rdft |
  bes'4 ~ bes16 bes a g fis8 g d16 ees f8 |
  b,4 c4 ~ c8 aes' d,16 ees f8 |

  % bars 9-12
  b, d g16 bes! aes g f8 aes d,16 ees f8 ~ |
  f16 f e d e8 bes' ~ bes16 a g f g a bes g |
  e g e c f8 a g2 |
  a4 bes ~ bes16 a g f e8 g  |

  % bars 13-16
  cis,16 d e8 a, a' ~ a g ~ g16 f! g a |
  bes!16 g a bes e, bes' a g f4 \rdwntwo r \rdft  |
  \rdwnsix r2 \rdft r8 c'8 ~ c16 bes! a g |
  f8 a d,16 ees f8 bes, f' ~ f4 ~  |

  % bars 17-18
  \rshift f16 \dftshift d ees4 d8 ees \rdwnfour r \rdft c'8. bes16 |
  a! g f8 g bes ees,16 f g8 c, f ~  |

  % bars 19-21
  f16 ees d \sd \u \tu c bes8 d a16 bes c8 f,4 ~ |
  f8 \su \d \td bes' ~ bes16 bes a g f8 a d,16 ees f8 |
  bes,16 a bes d c8 ees ~ ees d r16 bes'16 a g  |

  % bars 22-24
  f4 r16 d'16 bes aes g4 \rdwntwo r16 \rdft ees'c bes |
  f'4 \rdwntwo r \rdft r32 [a, g f g16 ees] d8 c  |
  d1 \bar "|."
}

melthree = \notes \relative c' {
  % bars 1-4
  \d bes8 d c bes a g f ees |
  d4 f g c |
  d ~ d16 d bes g c8 ees ~ ees16 c a f |
  bes4 ~ bes16 bes a g f8 g d16 ees f8 |

  % bars 5-8
  bes, ees bes16 c d8 g, c g16 a! bes8 |
  ees, ees' \td ~ ees16 \tu c' a f d8 g ees16 c f a |
  bes, bes' g d ees4-\trill d16 c' bes a g bes aes g |
  f aes g f ees8 c f16 ees f g aes g f ees |

  % bars 9-12
  f aes g f ees d c bes aes! c f aes g8 g, |
  c c' ~ c16 bes a! g f8 a e16 f g8 |
  \u a,4 ~ \d a16 a' f d \u bes d bes g c8 c, |
  f16 g' f e \d d8 e16 f g2 ~ |

  % bars 13-16
  g16 bes a g fis d e fis g fis g a bes!8 a |
  g16 e f g a8 a, d16 a' f d d'8 f ~ |
  f16 ees d c b8 g c16 g ees c bes'! d c bes |
  a g f ees f8. g16 aes bes aes g f ees d c |

  % bars 17-18
  \u bes8 c g16 aes bes8 ees,4 r8 \d ees''8 ~ |
  ees d ~ d16 d c bes c d c bes a bes a g |

  % bars 19-21
  f8 bes, ees16 d c bes c bes a g a g f ees |
  d ees' d c bes g' f ees d ees' d c bes8. a16 |
  g8 f ~ f16 ees d c \u bes8 d a16 bes c8 |

  % bars 22-24
  [d, d'] [bes d] [ees, ees'] \d [c ees] ~ |
  [ees ees'] [d bes] [g ees] \u [f f,] |
  bes1-\fermata \bar "|."
}


\score {
\context PianoStaff
\notes
<
  \property Score.TimeSignature \override #'style = #'C
  \context Staff = "up"   <
    \time 4/4 \key bes \major \clef G
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>

  \context Staff = "down" <
    \time 4/4 \key bes \major \clef F \melthree>
>
\midi {\tempo 4=80}
\paper {}
}
