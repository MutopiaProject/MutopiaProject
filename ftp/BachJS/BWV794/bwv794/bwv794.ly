\include "paper20.ly"

\header {
  title = "Sinfonia 8" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 794"
  mutopiatitle = "Sinfonia 8"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 794"
  mutopiainstrument = "Piano, Harpsichord"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  lastupdated = "07/february/2002"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/02/07-176"
}

\version "1.4.9"

%\include "property.ly"

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
  \Rupsix R1 \Rdft |
  r8 f16 e a8 g f-\prall e16 d g a f g |
  e f d e f2 e4 |
  f8 c16 a d4 r8 d16 b! e4 |

  % bars 5-8
  r8 e16 c f4 ~ f16 e f g \llshift e8. \dftshift e16 |
  a f g a d,4 ~ d8 c16 b! c4 ~ |
  c b c8 g'16 e a8 g |
  f e16 d g a f g e d e c f8 e |
  
  % bars 9-12
  d cis16 b e f d e cis8 a'16 f bes!8 a |
  g f16 e a bes g a fis8-\prall d g4 ~ |
  g fis g2 ~ |
  g8 g f!4 ~ f8 ees d4 ~ |
 
  % bars 13-16
  d8 d cis e a,16 g a f bes8 a |
  g f16 e a bes g a f2 ~ |
  f16 f e g cis,8. d16 d4 r8 f16 d |
  g4. g16 e a8 c16 a f'4 ~ |

  % bars 17-20
  f8 d16 bes ees4 ~ ees8 d16 bes ees8 d |
  c8 bes16 a d ees c d bes8 f'16 d g8 f |
  ees d16 c f g ees f d4 r8 d16 bes |
  e!4 r8 e16 c f4 r8 f16 d |

  % bars 21-23
  g4 ~ g16 e f8 ~ f4 ~ f16 d e g |
  c, bes c a d8 c bes a16 g c d bes c |
  \llshift a8. \dftshift bes16 \llshift g8. \dftshift f16 f2-\fermata \bar "|."
}

meltwo = \notes \relative c'' {
  % bars 1-4
  r8 c16 a d8 c bes_\prall a16 g c d bes c |
  a bes c8 ~ c2 b4 |
  c8 bes! a16 bes c d g,2 |
  f4 r8 a16 f b4 \rdwntwo r8 \rdft b16 g |

  % bars 5-8
  c4 r8 c16 a d4 ~ d16 b c8 ~ |
  c4 ~ c16 a b d g, f g e a8 g |
  f e16 d g a f g e8 \rdwnfour r r4 \rdft |
  \Rdwnfour R1 \Rdft |

  % bars 9-12
  \Rdwnfour R1 \Rdft |
  \rdwnfour r2 \rdft r8 d'16 bes ees8 d |
  c bes16 a d ees c d bes a bes g c d bes c |
  a4. a8 g4. f8 |

  % bars 13-16
  e!2 ~ e8 d16 cis d4 ~ |
  d cis r16 d \sd \u \tu c! a bes! cis d a |
  g2 ~ g8 f16 d bes'4 ~ |
  bes8 bes16 g c!4 ~ c \su \d \td r8 a'16 f |

  % bars 17-20
  bes4 r8 c16 a f ees f d g8 f |
  ees d16 c f g ees f d2 ~ |
  d4 c bes8 f'16 d g4 ~ |
  g8 g16 e a4 r8 a16 f bes4 ~ |

  % bars 21-23
  bes16 a bes c a8. a16 d bes c d g,4 ~ |
  g8 f16 e f4 ~ f e8 g ~ |
  [g f] ~ [f e] f2
}

melthree = \notes \relative c, {
  % bars 1-4
  f4 f'2 e4 |
  f8 a16 g f8 e d g16 f \u g8 g, \b |
  c c'16 a d8 c bes-\prall a16 g c d bes c |
  a8 g f16 e f d \u g8 g, \b g'16 f g e |

  % bars 5-8
  a8 a, a'16 g a f b8 g16 e a8 g |
  f e16 d g a f g e8 a16 g f8 e |
  d g16 f \u g8 g, \b c c, r c''16 a |
  [d8 c] [b a16 g] c d bes c a g a f |

  % bars 9-12
  [bes8 a] [g f16 e] a bes g a d,8 d'16 b |
  [e8 d] [cis b16 a] d c bes a g a bes g |
  a8 d16 c d8 d, g d16 bes ees8 d |
  c8 bes16 a d ees c d bes8 g'16 f bes8 a |

  % bars 13-16
  g f16 e a bes g a f e f d g8 f |
  \d e8 a16 g a8 a, bes a16 f g8 f16 d |
  bes' a bes g a8 a d,4 \rdwntwo r8 \rdft d' \b |
  e16 d e f e d e c f8 f, r f'16 d |

  % bars 17-20
  g f g a g bes a c bes2 ~ |
  bes ~ bes16 c bes a g a bes g |
  [c8 bes] [a g16 f] bes c a c bes a bes g |
  c8 c, c'16 bes c a d8 d, d'16 c d bes |

  % bars 21-23
  e8 c16 a d8 c bes a16 g c d bes c |
  a8 d16 c bes c a bes g8 a16 bes c8 e, |
  f d16 bes c8 c, f2-\fermata \bar "|."
}


\score {
\context PianoStaff
\notes
<
  \property Score.TimeSignature \override #'style = #'C
  \context Staff = "up"   <
    \time 4/4 \key f \major \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>

  \context Staff = "down" <
    \time 4/4 \key f \major \clef F \melthree>
>
\midi {\tempo 4=80}
\paper {}
}
