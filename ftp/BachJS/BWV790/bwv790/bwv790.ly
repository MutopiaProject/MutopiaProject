\include "paper20.ly"

\header {
  title = "Sinfonia 4" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 790"
  mutopiatitle = "Sinfonia 4"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 790"
  mutopiainstrument = "Piano, Harpsichord"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  lastupdated = "01/February/2002"
  
  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/02/01-172"
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
  \u \tu \rupfour r16 \rdft d cis d a8 f' ~ f16 e d e a,8 g' ~ |
  g16 f e d a'4 ~ a16 gis fis gis gis8. a16 | %\break
  a4 ~ a16 d, cis d g4 ~ g16 cis,! b! cis |
  \llshift f4. \dftshift a8 g4 ~ g16 f e f | %\break

  % bars 5-8
  d4 \ruptwo r16 \rdft bes' a bes e,4 ~ e16 a g a |
  d,4 ~ d16 d e f g4 ~ g16 f e d | %\break
  c2 ~ c16 bes a bes g d' c d |
  g, bes a bes ~ bes c bes c a4 \rupfour r8 \rdft f' ~ | %\break

  % bars 9-12
  f16 e8. \rupsix r8 \rdft g8 ~ g16 f e f c8 a' ~ |
  a16 g f g c,8 bes' ~ bes16 a8. ~ a4 ~ | %\break
  a16 d, cis d g4 ~ g16 f e g f4 ~ |
  f16 e d e a,8 d ~ d16 c b c fis,8 b ~ | %\break

  % bars 13-16
  b16 a gis a ~ a gis fis gis r a gis a e8 c' ~ |
  c16 b a b e,8 d' ~ d16 c b c ees4 ~ | %\break
  ees16 d8. \rupfour r8 \rdft fis g2 ~ |
  g16 fis bes a fis4 g16 d c d g,8 f' ~ | %\break

  % bars 17-20
  f16 e! d e c8 bes' ~ bes16 a g bes a g f e |
  d4~ d16 f e d cis4 ~ cis16 a d c | %\break
  bes2 ~ bes16 a gis b a g f g |
  f4 ~ f16 a g a [bes!8 b] [c cis] | %\break

  % bars 21-23
  d2 ~ d4. d8 |
  [cis c] [b bes] a4 gis8 g |
  fis f e4 d2-\fermata \bar "|."
}

meltwo = \notes \relative c'' {
  % bars 1-2
  \d \td \Rdwnfour R1 \Rdft |
  \rdwnfour r16 \rdft a gis a e8 c' ~ c16 b a b e,8 d' ~ |

  % bars 3-4
  d16 c b c 
  \property Voice.Tie \override #'control-points = #'((0.5 . 1) (2 . -1.6) (7 . -1.6) (9 . 1))
  f!4 ~ f16 
  \property Voice.Tie \revert #'control-points
  \property Voice.Tie \override #'control-points = #'((0.5 . 0) (2 . -2.2) (10 . -2.2) (11.5 . 0))
  b, a b e4 ~ |
  e8 a, d16 e d c! b8. cis16 cis4_\prall |
  \property Voice.Tie \revert #'control-points

  % bars 5-8
  d16 d cis d g,4 ~ g16 c bes c f,4 ~ |
  f16 bes a c bes4 ~ bes16 c bes a bes a g f |
  e8 bes' ~ bes16 a g a f2 ~ |
  f4 e! r16 f e f c8 a' ~ |

  % bars 9-12
  a16 g f g c,8 bes' ~ bes16 a8. r8 f' ~ |
  f16 e8. r8 g ~ g16 f8. ~ f16 e d c |
  bes4 ~ bes16 a bes g cis!4 d16 bes a bes |
  [gis8 a] [fis f] e4 dis8 d |

  % bars 13-16
  cis c b4 a r |
  \rdwntwo r2 \rdft r16 e'16 dis e a,8 g' ~ |
  g16 fis e! fis d!8 c' ~ c16 bes a bes c d c d |
  ees4 ~ ees16 d ees c d  \ruptwo r \rdft r8 r4 |
 
  % bars 17-20
  \rdwnfour r2 r16 \rdft f, e f c8 a' ~ |
  a16 g f g bes,8 g' ~ g16 f e f a,8 f' ~ | 
  f16 e d f ees d cis d cis8 d e4 ~ |
  e8 a, d4 ~ d16 g f g e bes' a g |
 
  % bars 21-23
  a d, c'!8 ~ c16 bes a bes a g fis g d8 bes' ~ |
  bes16 a g a d,8 g ~ g16 f e! f b,8 e ~ |
  e16 d cis d ~ d cis b cis d2 |
}

melthree = \notes \relative c {
  % bars 1-4
  \d  \tu d8 e f d a' b cis a |
  d4 ~ d16 c! b a e'4 e, |
  \u a, r r2 |
  r16 d cis d a8 f' \d ~ f16 e d e a,8 g' ~ |

  % bars 5-8
  g16 f e d bes'!4 ~ bes16 e, d c a'4 ~ |
  a16 d, c d \u g,8 f' \d ~ f16 e d e c8 bes' ~ |
  bes16 a g a f8 ees' d c bes a |
  bes g c c, \u f, g a f \d |

  % bars 9-12
  c' d e c f g a f |
  c' d e c f16 c bes c f,8 f' ~ |
  f16 bes, a bes e,8 e' ~ e16 a, g a d,8 d' ~ |
  d c! ~ c16 b a b gis8 a ~ a16 gis fis gis |

  % bars 13-16
  [a8 dis,] \u [e e,] a b c a \d |
  e' fis gis e a4 ~ a16 g fis! g |
  \u [d8 c] [bes! a] g16 g' fis g \d d8 bes' ~ |
  bes16 a g a d,8 c' ~ c16 bes a bes c bes a g |

  % bars 17-20
  c8 d e c f,4 r8 f |
  bes a g bes a g f d |
  g f g e! a b cis a |
  d16 d, cis d \u a8 f' \d ~ f16 e d e a,8 g' ~ |

  % bars 21-23
  g16 fis e fis d8 c' bes a bes16 a g a |
  g fis e fis g f ees d \u \td cis8 d ~ d16 cis b cis |
  d8 gis, a4 d,2-\fermata
}


\score {
\context PianoStaff
\notes
<
  \property Score.TimeSignature \override #'style = #'C
  \context Staff = "up"   <
    \property Staff.NoteCollision \override #'merge-differently-dotted = ##t
    \time 4/4 \key d \minor \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>

  \context Staff = "down" <
    \time 4/4 \key d \minor \clef F \melthree>
>
\midi {\tempo 4=60}
\paper {}
}

