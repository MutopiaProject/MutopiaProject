\include "paper20.ly"

\header {
  title = "Sinfonia 1" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 787"
  mutopiatitle = "Sinfonia 1"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 787"
  mutopiainstrument = "Piano, Harpsichord"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  lastupdated = "30/December/2001"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2001/12/30-142"
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

%
% Warning: if you change papersize you may tune the last tie on bar 17.
% This is not very good but I didn't find a better way to handle properly 
% the collision.
%
% One may print the whole score on one page by removing the \break and 
% using paper16 (and good eyes :-) )
% 

melone = \notes \relative c'' {
  % bars 1-4
  r16 g a b c d e f g f g a f a g f |
  e2 ~ e4 fis | \break
  g8 f! e4 d8 e16 f d4 ~ |
  d8 g16 f e4 ~ e8 e d4 ~ | \break

  % bars 5-9
  d4. c8 ~ c b16-\prall a b c d b |
  g4 ~ g16 c d e a, b a b b8.-\prall a32 b | \break
  c8 g c4 ~ c8 b16-\prall a d4 ~ |
  d16 b c d e4 ~ [e8 a] ~ [a g] ~ | \break

  % bars 10-13
  g  fis16 e fis g a fis d4 ~ d16 g a b |
  \d e, fis e fis fis8. e32 fis g16 a g fis e d c b \b | \break
  a b a g a fis g a \u b4 \b ~ b16 g a bes |
  a e f g a b! cis d e d e f \d e bes' a g \b | \break

  % bars 14-17
  \u f g f e d cis d e f4 fis |
  g f! ~ f8 e16 d e4 ~ | \break
  [e8 d] ~ [d c] ~ c b16-\prall a b8 d |
  g4 ~ g16 a f g a4 b | \break

  % bars 17-21
  c bes a \rdwntwo r16 \rdft e d c |
  b d e f g2 ~ g16 c, f e | \break 
  f4 e d2 ~ |
  d16 f e d c2 b!4 |
  c1-\fermata \bar "|."
}

meltwo = \notes \relative c' {
  % bars 1-4
  \Rdwnsix R1 \Rdft |
  \rdwntwo r16 \rdft c d e f g a b c b c d c e d c |
  b8 d8 ~ d c ~ c4 b ~ |
  b r16 d c b a4. a8 |

  % bars 5-8
  g f e4 d2 ~ |
  d16 f e d c \sd \u b a g f g f e f d e f |
  e4 \su \d r8 e' fis4 \b r16 c' b a |
  \d g4 ~ g16 g c b c4 b4 \b |

  % bars 9-12
  \d a2 ~ a16 c b a g fis e \sd \u \tu d |
  c d c b c a b c b4 ~ b16 b a g  |
  fis8 r r4 \ruptwo r16 \rdft d' e f! e4 ~ |
  e16 \rupsix r \rdft r8 r4 \rupfour r8 \rdft a,8 b cis |

  % bars 13-16
  d16 d \su \d \td e f g a b! cis! d cis d e c ees d c |
  bes a bes c a c bes a g4. g8 |
  f4 e8 \rdwntwo r r2 |
  r16 \rdft f g a b c d e f e f g f a g f |

  % bars 17-18
  [e8 a] ~ [a g] ~ g16 c, d e
  \property Voice.Tie \override #'control-points = #'((1 . 1) (3 . -1) (13 . -1) (14 . 1)) 
  f4 ~ | \lshift f \dftshift
  \property Voice.Tie \revert #'control-points
  r16 f e d c d c bes a4 ~ |

  % bars 19-21
  [a8 d] ~ [d c] ~ c b16 a b c d b |
  g4 r16 bes a g f g f e f d e f |
  e1 |
}

melthree = \notes \relative c {
  % bars 1-4
  c4 r8 c' b g a b |
  c4 r8 b a g a d, |
  g,16 g' a b c d e f g f g a f a g f |
  e f e d c b a g f g f e f d e f |

  % bars 5-8
  e g, a b c d e f g f g a f a g f |
  e2 ~ \td e4 d |
  \d c16 d c b \b a g fis e d e' d c b a g fis |
  \u e f'! e d \b c b a g fis d e fis g a b c |

  % bars 9-12
  \u d c d e \b c e d c b4 b' ~ \td |
  b a e8 d \d c4 \b |
  \d d16 g fis! e d c b a g a g f! g e f g |
  cis,8 d' cis b a g' f e \b |

  % bars 13-16
  d r r4 r16 g' f e d c bes a |
  g c, d e! f g a bes c bes c d bes d c bes |
  a g a b! c d e f g f g a f a g f |
  e4 r \clef G r16 c' b a g f e d \clef F |

  % bars 17-21
  c d c bes c a bes c f, g f e d c b! a |
  g a' g f e d c bes a bes' a g f e d c |
  b! g a b c d e f g f g a f a g f |
  e8 f16 g a8 c, d e16 f \u g8 g, |
  c1-\fermata
}


\score {
\context PianoStaff
\notes
<
  \property Score.TimeSignature \override #'style = #'C
  \context Staff = "up"   <
    \time 4/4 \key c \major \clef G 
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>

  \context Staff = "down" <
    \time 4/4 \key c \major \clef F \melthree>
>
\midi {\tempo 4=70}
\paper {}
}

