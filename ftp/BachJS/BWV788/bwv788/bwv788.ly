\include "paper20.ly"

\header {
  title = "Sinfonia 2" 
  composer = "Johann Sebastian Bach"
  opus = "BWV 788"
  mutopiatitle = "Sinfonia 2"
  mutopiacomposer = "J. S. Bach (1685-1750)"
  mutopiaopus = "BWV 788"
  mutopiainstrument = "Piano, Harpsichord"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Olivier Vermersch"
  lastupdated = "01/February/2002"
  
  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/02/01-140"
}

\version "1.4.9"


%
% a few macros for fine tuning
%

% force direction of stems
u = \notes {\stemUp \tieUp}
d = \notes {\stemDown \tieDown}
b = \notes {\stemBoth \tieBoth}


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


% horizontal shifting to avoid note collision
hshift  = \property Voice.NoteColumn \override #'force-hshift = #1
hhshift = \property Voice.NoteColumn \override #'force-hshift = #2
dftshift = \property Voice.NoteColumn \revert #'force-hshift


melone = \notes \relative c'' {
  c8 g ees' ees c g' g4. g,4. |
  c8 d ees f g aes b, aes' g f ees d |
  ees4. c4. ~ c8 b c d ees f | \break

  ees f ees d ees c g'2. ~ |
  g4 g8 c,4 ees8 f,4 \rupfour r8 \rdft r4. |
  \rupfour r8 r8 \rdft f' bes,4 d8 ees,4 \ruptwo r8 \rdft r4. | \break

  ees'2.-\prallprall ~ ees2. ~ |
  ees4 f8 d4. ~ d8 g16 f ees d c d c bes a g |
  fis8 a'16 g fis e d ees d c bes a bes2. | \break

  a4. fis'4. g4. r4.  |
  r2. g,8 d bes' bes g d' |
  d4. \hshift d,4. \dftshift g8 a! bes c d ees | \break

  fis, ees' d c bes a bes4 r8 r4. |
  r16 g a bes c d ees f ees d c bes a4 r8 \rdwntwo r4. \rdft |
  r16 f g a bes c d ees d c bes a!? g4 r8 r \ruptwo r \rdft \hshift g \dftshift | \break

  f4 r8 r \ruptwo r \rdft \hshift g \dftshift ees4 r8 r \rdwntwo r \rdft \hshift f \dftshift |
  d4 d'8 bes4. ~ bes4 ees8 c4. ~ |
  c4. bes ~ bes8 a! g fis4. | \break

  g8 d bes' bes g des' des2. ~ |
  des8 bes e e c g' aes2. ~ | \break

  aes4. ~ aes16 bes aes g f ees d ees d c bes c d ees f g aes bes |
  c bes aes g f ees f g aes c bes aes g2. ~ | \break

  g4 g8 g ees c' f,2. ~ |
  f4 f8 f d b' ees,2. ~ | \break

  ees8 aes16 g f ees d ees d c b a b4. c |
  f2. ~ f4 ees8 ~ ees d f | \break

  b,4. c d4 c8 ~ c4 b8 |
  c4 g'8 c,4 ees8 aes,4 \ruptwo r8 \rdft r4. |
  \rupfour r8 r \rdft f' bes,4 d8 g,16 bes c d ees f g aes g f ees d | \break

  c2.-\prallprall ~ c ~ |
  c4. b8 c d g,2. ~  |
  g16 b c d ees f g8 c, b c2. \bar "|."
}

meltwo = \notes \relative c' {
  \skip 2 \rdwnfour r1 \rdft
  \skip 2 \rdwnsix  r1 \rdft
  c8 g ees' ees c g' g4. g,4.

  c8 d ees f g aes b, aes' g f ees d
  ees4 \rdwnsix r8 \rdft r4. r16 c d ees f g aes bes aes g f ees
  d4 \rdwnfour r8 \rdft r4. r16 bes c d ees f g aes g f ees d

  c4 \rdwnsix r8 r8 r8 \rdft c' bes4. ~ bes4 c8
  aes4. ~ aes4 bes8 g4 \rdwnfour r8 \rdft r4.
  r2. r4. g4.

  fis8 e d c' bes a! bes c bes a bes g
  d' c bes a g fis g4 r8 d4 \rdwntwo r8 \rdft
  a'4 \rdwnfour r8 fis4 r8 \rdft g4 r8 r4.

  r2. g8 d bes' bes g d' 
  ees,4 \rdwntwo r8 r4. \rdft f8 c a'! a f c' 
  d,4 r8 \rdwntwo r4. \rdft ees8 bes g' g ees bes'

  d, bes f' f d bes' c, d ees f g a 
  bes,4 \rdwntwo r8 \rdft r \rdwnsix r \rdft g' ees4. ~ ees4 a8
  fis d'16 c bes a g a g f ees! d ees4. ~ \hhshift ees8 \dftshift a, c

  bes4 r8 r4. r8 \rdwnfour r \rdft bes' g4 bes8
  e,4 \rdwntwo r8 \rdft r4. r16 f' ees des c bes aes bes aes g f ees

  d!8 bes f' f d aes' aes2. ~
  aes8 f d' d bes d ees2. ~

  ees8 c4 ~ c ees8 d2. ~
  d8 b4 ~ b4 d8 c2. ~

  c4 \rdwntwo r8 \rdft r4. r8 g16 f ees d c d c bes! aes! g 
  aes4 aes'8 ~ aes f b ~ b g c aes!4. ~

  \hhshift aes8 \dftshift g f ees d c f4 ees8 d4.
  ees4 \rdwnsix r8 \rdft r4. r16 c d ees f g aes bes aes g f ees
  d8 \sd f, \su d' d bes f' ees bes g' g ees bes'

  aes4. \rdwntwo r8 r \rdft aes g4. ~ g4 aes8
  f2. ~ \hhshift f16 \dftshift g,16 a b c d ees d c d ees f
  g4 \rdwntwo r8 \rdft \rdwnfour r \rdft ees d e2. 
}

melthree = \notes \relative c {
  c4. c'4. b8 a g f' ees d
  ees4 c8 aes!4 f8 g4 a8 b4 g8
  c4 r8 r4. r2.

  \skip 2 r1 |
  c8 g ees' ees c g' aes,4. r4.
  bes8 f d' d bes f' g,4. r4.

  aes8 ees c' c aes ees' g, ees bes' bes g ees'
  f, g aes bes c d ees,4. ees'4.
  d4. fis,4. g8 d bes' bes g d'

  d4. d,4. g8 a bes c d ees!
  fis, ees' d c bes a bes4. g4. ~
  g8 fis g a bes c bes c bes a bes g

  d' c bes a g fis g4 d'8 g,4 bes8 
  c,4 r8 r4. r8 r c' f,4 a8 
  bes,4 r8 r4. bes2.-\prallprall ~ 

  bes2. ~ bes4. a ~
  a8 d16 c bes a g a g f ees d c8 ees'16 d c bes a bes a g fis e
  d4. r8 r16 g a bes c bes c d ees c d ees d c bes a 

  g4 r8 r4. r8 bes'16 aes! g f! \u e f e d! c bes \b
  aes f' e d c bes aes bes aes g f e f4 r8 r4.

  r2. r8 r g'' f4 ees8 
  d4 aes'8 g4 f8 ees16 g, aes bes c d ees f ees d c bes

  aes2. ~ aes16 f g a b c d ees d c b a
  g2. ~ g16 ees f g a b c d c bes aes g

  f2. ~ f4. ees4. ~ 
  ees16 g f ees d c b c b a g f ees4. f

  g a b8 g c aes f g 
  c g ees' ees c g' f c aes' aes f c'
  \d bes4 r8 r4. r2.

  f8 c aes' aes f c' ees, c g' g ees c'
  d, ees f g a b ees,2. ~
  ees16 g f ees d c g'4 \u g,8 c,2. 
}


\score {
\context PianoStaff
\notes
<
  \context Staff = "up"   <
    \time 12/8 \key c \minor \clef G 
    %\autochange Staff
    \context Voice = VA { \voiceOne \melone }
    \context Voice = VB { \voiceTwo \meltwo }>

  \context Staff = "down" <
    \time 12/8 \key c \minor \clef F \melthree>
>
\midi {\tempo 4=120}
\paper {}
}


