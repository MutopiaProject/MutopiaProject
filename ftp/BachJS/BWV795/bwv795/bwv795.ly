\include "paper20.ly"

\header {
  title = "Sinfonia 9"
  composer = "Johann Sebastian Bach"
  opus = "BWV 795"
  mutopiatitle = "Sinfonia 9"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 795"
  mutopiainstrument = "Piano, Harpsichord"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  lastupdated = "28/February/2002"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/02/28-199"
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
  \Rupfour R1 \Rdft |
  \property Voice.MultiMeasureRest \override #'staff-position = #8 R1 \Rdft |
  \ruptwo r8 \rdft c ees d r d f e |

  % bars 4-6
  \ruptwo r8 \rdft f b c ~ c bes16 aes g8 f |
  ees g aes g f4 ~ f16 ges e f |
  e4 r16 c' f, ees des4 ~ des16 g! c, bes |

  % bars 7-9
  aes4 f' e ees |
  d des c8 f4 e8 |
  f ees!4 des16 c des4 d |

  % bars 10-12
  ees8 ees ces' bes r bes, fes' ees ~ |
  ees16 bes c aes f8 d'16 ees32 f f16 d ees8 \rupfour r \rdft ees16 c |
  a g aes8 r bes16 c32 des! c8. bes16 g4-\prall |

  % bars 13-15
  aes8 ees g f r f aes! g |
  r aes d  ees ~ ees d16 c bes8 aes |
  g bes des! c r c ees d |

  % bars 16-18
  r d f e ~ e c f4 |
  e g f aes! |
  g c, b bes |

  % bars 19-21
  a \property Voice.NoteColumn \override #'force-hshift = #1.5 aes \dftshift [\property Voice.NoteColumn \override #'force-hshift = #0.5  g8 \dftshift ces] ~ [ces b!] |
  c bes!4 aes16 g aes4 a |
  bes8 bes ges' f r \property Voice.NoteColumn \override #'force-hshift = #0.5 f, \dftshift ces' bes ~ |

  % bars 22-24
  bes aes4 ges16 f ges4 g |
  aes8 aes fes' ees r ees, beses' aes ~ |
  aes aes des4 c ces |

  % bars 25-27
  bes beses aes8 des4 c8 |
  des aes c bes r bes des! c |
  r des g aes ~ aes g16 f ees8 des |

  % bars 28-31
  c4 ees d f |
  ees ges f8 bes, des c |
  r c ees d \rdwntwo r \rdft d f e ~ |
  e f, aes g r g bes a |

  % bars 32-35
  r bes e f ~ f ees16 des c8 bes |
  aes4 r8 \d bes16 c32 des des16 b c8 r c'16 a |
  ges e f8 \b r g,!16 aes32 bes aes8. g16 e8. f16 |
  f1-\fermata \bar"|."
}

meltwo = \notes \relative c' {
  % bars 1-3
  \rdwntwo r8 f( aes )g r g( bes )a |
  r8 \rdft bes e f ~ f ees16 des c8 bes |
  aes4 c b bes |

  % bars 4-6
  a aes g8 c4 b8 |
  c4 r8 c des c bes4 ~ |
  bes16 c a bes a4 bes16 ges e f e4 |

  % bars 7-9
  f4 r8 bes16 c32 des des16 b c8 r c16 a |
  ges e f8 r g!16 aes32 bes aes8. bes16 aes8 g |
  f c ges' f r f ces' bes ~ |

  % bars 10-12
  bes aes4 ges16 f ges4 g |
  aes8 aes, c bes \rdwnfour r \rdft bes des! c |
  r des g aes ~ aes g16 f ees8 des |

  % bars 13-15
  c4 ees d des |
  c ces [bes8 ees] ~ [ees d] |
  ees4 bes' a c |

  % bars 16-18
  bes des c8 f, aes g |
  r g bes a r a c b |
  \rdwnfour r \rdft c, ees d \ruptwo r \rdft d f e |

  % bars 19-21
  r f b c ~ c b16 aes g8 f |
  ees4 e f8 ees4 d16 c |
  d8 g a4 bes8 aes4 g!16 f |

  % bars 22-24
  g8 f16 ees d4 ees8 des4 c!16 bes |
  c8 f g4 aes8 \property Voice.NoteColumn \override #'force-hshift = #-0.5 ges4 \dftshift f!16 ees |
  f4 r8 g!16 aes32 bes bes16 g aes8 r aes16 f |

  % bars 25-27
  d16 c des8 r ees16 f32 ges f8. ges16 f8 ees |
  des4 aes' g! ges |
  f fes [ees8 aes] ~ [aes g] |

  % bars 28-31
  aes ees ges f r f aes g |
  r g bes a ~ a f bes4 |
  a c bes des |
  c f, e ees |

  % bars 32-35
  d des c8 f4 e8 |
  f \sd \u f, aes g r g bes a |
  r bes \su \d e f ~ f ees16 des c8 bes |
  a1 \bar "|."
}

melthree = \notes \relative c, {
  % bars 1-3
  f4 f' e ees |
  d des c8 bes c c, |
  f4 r8 f'16 (g32) aes aes16 fis g8 r g'16 e |

  % bars 4-6
  des! b c8 r d16 ees32 f ees8 f g g, |
  c4 r r2 |
  R1 |

  % bars 7-9
  r8 f, aes g r g bes a |
  r bes e f ~ f ees16 des c8 bes |
  aes4 a bes8 aes4 g!16 f |

  % bars 10-12
  g8 c d4 ees8 des4 c!16 bes |
  c4 aes g ges |
  f fes ees8 des ees ees, |

  % bars 13-15
  aes4 r8 a'16 bes32 c c16 a bes8 r bes16 g |
  e16 d ees8 r f16 g32 aes [g8 aes] [bes bes,] |
  ees4 r8 ees ges f r f |

  % bars 16-18
  aes g! r g bes aes r bes |
  des, c r c' ees,! d r d' |
  f, ees r f,16 g32 aes aes16 fis g8 r g'16 e |

  % bars 19-21
  des! b c8 r d16 ees32 f ees8 f g g, |
  c c, des'! c r c ges' f ~ |
  f ees4 des!16 c des4 d |

  % bars 22-24
  ees8 bes ces' bes r bes, fes' ees ~ |
  ees des4 ces16 bes ces4 c |
  des8 des f ees r ees ges f |

  % bars 25-27
  r ges c des~ des c16 bes aes8 ges |
  f4 r8 d16 ees32 f f16 d ees8 r ees16 c |
  a g aes8 r bes'16 c32 des c8 des ees ees, |

  % bars 28-31
  aes4 r8 aes ces bes r bes |
  des c! r c ees des r ees |
  ges, f r f' aes,! g r g' |
  bes, aes r bes16 c32 des des16 b c8 r c16 a |
 
  % bars 32- 35
  ges e f8 r g!16 aes32 bes aes8 bes c c, |
  \d f,4 \b f' e ees |
  d des c8 bes c c, |
  f1-\fermata \bar "|."
}


\score {
\context PianoStaff
\notes
<
  \property Score.TimeSignature \override #'style = #'C
  \context Staff = "up"   <
    \time 4/4 \key f \minor \clef G
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>

  \context Staff = "down" <
    \time 4/4 \key f \minor \clef F \melthree>
>
\midi {\tempo 4=70}
\paper {}
}
