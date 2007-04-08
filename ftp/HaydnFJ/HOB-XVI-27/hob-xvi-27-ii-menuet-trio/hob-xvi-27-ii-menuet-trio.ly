%\version "1.4.9.uu1"
\include "nederlands.ly"
\include "paper16.ly"
\header {
  title             = "Sonata I"
  subtitle          = "6 Sonate 1776"
  composer          = "Franz Joseph Haydn (1732-1809)"
  opus              = "Hob. XVI:27"
  meter             = "II - Menuetto"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  copyright         = "Public Domain"
  mutopiatitle      = "Sonate I"
  mutopiacomposer   = "F.J. Haydn (1732-1809)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "C.F. Peters, 1880s"
  style             = "Classical"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@zonnet.com"
  lastupdated       = "2002/Feb/22"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/02/22-186"
}

Global = \notes {\key g\major \time 3/4}
beamingOff = \property Voice.noAutoBeaming = ##t
beamingOn = \property Voice.noAutoBeaming = ##f
Treble = \clef treble
Bass = \clef bass
tieUp = \property Voice.Tie \override #'direction = #1
tieBoth = \property Voice.Tie \override #'direction = #0
tieDown = \property Voice.Tie \override #'direction = #-1
staffUp = \translator Staff = "up"
staffDown = \translator Staff = "down"
slurUp = \property Voice.Slur \override #'direction = #1
slurBoth = \property Voice.Slur \override #'direction = #0
slurDown = \property Voice.Slur \override #'direction = #-1
flat = #'(music "accidentals--1")
sharp = #'(music "accidentals-1")
sturn = #'(music "scripts-turn")

MD = \notes \relative c'' {
  \repeat volta 2 {
  \stemBoth
  d4^\sharp^\sturn \times 2/3 {[g8 d b]} \times 2/3 {[d8 b g]}
  \times 2/3 {[g8 fis d]} <a'4 ( c>  < ) g b>
  \times 2/3 {[e8 gis a]} \times 2/3 {[b c d]} \times 2/3 {[e c a]}
  g!2 () fis4

  d'4^\sharp^\sturn \times 2/3 {[g8 d b]} \times 2/3 {[d b g]}
  \times 2/3 {[g fis d]} <a'4 ( c>  < ) g b>
  \times 2/3 {[c8 b a]} <cis4 g' ( > < d ) fis>
  \times 2/3 {[b8 e dis]} \times 2/3 {[fis e g]} \times 2/3 {[b g e]}

  \times 2/3 {[d! cis e]} \tieUp a4 ~ \times 2/3 {[a8 fis d]}
  \times 2/3 {[cis a e']} a4 ~ \times 2/3 {[a8 fis d]}
  \times 2/3 {[d cis e]} a4 ~ \times 2/3 {[a8 fis d]}
  \times 2/3 {[cis a e']} a4 ~ \times 2/3 {[a8 fis d]}

  \times 2/3 {[cis b ais']} \times 2/3 {[b g e]} \times 2/3 {[g e cis]}
  cis2 () d4
  }

  \repeat volta 2 {
  d4^\sharp^\sturn \times 2/3 {[d'8 b g]} \times 2/3 {[a fis d]}
  d2 () cis4\turn
  r \times 2/3 {[d8 fis a]} \times 2/3 {[c! a fis]}
  c4 () b\turn g'

  dis8 () e e4 g
  cis,8 () d! d4 \times 2/3 {[d'8 b g]}
  fis4 () e\turn \times 2/3 {[g8 fis e]}
  e4 () d \times 2/3 {[fis8 g b]}

  \times 2/3 {[dis, e g]} \times 2/3 {[b, c e]} \times 2/3 {[gis, a c]}
  g!2 () fis4
  d'4^\sharp^\sturn \times 2/3 {[g8 d b]} \times 2/3 {[d b g]}
  \times 2/3 {[g fis d]} <a'4 ( c> < ) g b>

  \times 2/3 {[e8 gis a]} \times 2/3 {[b c d]} \times 2/3 {[e c a]}
  g!2 () fis4
  \staffDown \stemUp \times 2/3 {[g,8 fis d]} \slurUp <fis4 c' ( > <g ) b>
  \staffUp \stemBoth \times 2/3 {[g'8 fis d]} <fis4 c' ( > <g ) b>

  \stemUp \times 2/3 {[g'8 fis d]} <fis4 c' ( > <g ) b>
  \stemBoth \times 2/3 {[g,8 fis d]} <c'4 e\fermata ( > <b ) d\fermata>
  \times 2/3 {[gis8 a c]} \times 2/3 {[e c a]} \times 2/3 {[c a fis]}
  \slurBoth <c2 ( fis> < ) b4 g'>

  \times 2/3 {[g''8 fis a]} d4 ~ \times 2/3 {[d8 b g]}
  \times 2/3 {[fis8 d a']} d4 ~ \times 2/3 {[d8 b g]}
  \times 2/3 {[g8 fis a]} d4 ~ \times 2/3 {[d8 b g]}
  \times 2/3 {[fis8 d a']} d4 ~ \times 2/3 {[d8 b g]}

  \times 2/3 {[e8 fis g]} \times 2/3 {[d fis g]} \times 2/3 {[c, gis' a]}
  \times 2/3 {[b, b' a]} \times 2/3 {[g! fis e]} \times 2/3 {[d c b]}
  \times 2/3 {[a c e]} g,4 fis\trill
  <c2 ( fis> < ) b4 g'>
  }

  \repeat volta 2 {
  \key g\minor \stemUp d'2^#'(Large "Trio") \grace f8 es4
  d8 bes' ( a g fis ) g
  d2 \grace f8 es4
  d8 ( c' a fis d ) c

  \stemBoth \tieDown bes4\trill ~ bes8. ( a32 bes ) a8 r
  c4\trill ~ \property Voice.Slur \override #'y-free = #2 \property Voice.Slur \override #'beautiful = #5.0 c8. ( bes32 a ) bes8 r
  \property Voice.Slur \revert #'y-free g ( g' f es d cis
  ) cis2 () d4
  }

  \repeat volta 2 {
  <d,2 f> \grace a'8 <es4 g>
  <d f> r \grace f'8 <a,4 es>
  <bes d> r \grace a'8 <es4 g>
  <d f> r bes'8 () a

  a () g g () f f () es
  es2\turn \grace f8 es8 () d
  \grace es8 d8 () c \grace d8 c8 () bes \grace c8 bes8 () a
  a4 () bes r
  
  \stemUp d2 \grace f8 es4
  d8 bes' ( a g fis ) g
  d2 \grace f8 es4
  d8 ( c' a fis d ) c

  \stemBoth \tieDown bes4\trill ~ bes8. ( a32 bes ) a8 r
  c4\trill ~ \property Voice.Slur \override #'y-free = #2 c8. ( bes32 a ) bes8 r
  \property Voice.Slur \revert #'y-free \property Voice.Script \override #'extra-offset = #'(0 . 1) bes8\prall () a a\prall () g g\prall () fis
  fis4 () g r
  }
  
  }

MSI = \notes \relative c' {
  \stemBoth <g4 b> r <b d>
  <a c> fis () g
  c,2.
  d4 \times 2/3 {[d'8 e d]} \times 2/3 {[c b a]}

  <g4 b> r <b d>
  <a c> fis () g
  r e' () d
  g2 r4

  r <cis, g' ( > < d ) fis>
  r <cis g' ( > < d ) fis>
  r <g, cis ( > < fis ) d'>
  r <g cis ( > < fis ) d'>

  g r <a g'>
  \stemUp \slurUp g'2 () fis4 \slurBoth

  \stemBoth \Treble \times 2/3 {[d8 fis a]} \times 2/3 {[d,8 fis a]} \times 2/3 {[d,8 fis a]}
  \times 2/3 {[e g a]} \times 2/3 {[e g a]} \times 2/3 {[e g a]}
  \times 2/3 {[fis a c]} r4 r
  \times 2/3 {[g,8 d' g]} \times 2/3 {[g, d' g]} \times 2/3 {[g, d' g]}

  \times 2/3 {[c, e g]} \times 2/3 {[c, e g]} \times 2/3 {[c, e g]}
  \times 2/3 {[b, d g]} \times 2/3 {[b, d g]} \times 2/3 {[b, d g]}
  \times 2/3 {[c, e g]} \times 2/3 {[c, e g]} \times 2/3 {[c, e g]}
  \times 2/3 {[b, d g]} \times 2/3 {[b, d g]} \times 2/3 {[b, d g]}

  c,4 r r
  \Bass d, \times 2/3 {[d'8 e d]} \times 2/3 {[c b a]}
  <g4 b> r <b d>
  <a c> fis () g

  c,2.
  d4 a d,
  \stemDown r \slurDown a' () g
  \stemBoth r \slurBoth a' () g

  \staffUp \stemDown \slurDown r4 a' () g
  \staffDown \stemBoth \slurBoth r4 fis,\fermata () g\fermata
  c,4 r d
  e2.

  r4 \Treble <fis'4 ( c'> < ) g b>
  r <fis ( c'> < ) g b>
  r <c, ( fis> < ) b g'>
  r <c ( fis> < ) b g'>

  \stemUp g'2 fis4
  \stemBoth <g, g'> r r
  \Bass <c, c'> <d b'> <d a' c>
  g d g,

  \key g\minor <g'4 bes> \staffUp \stemDown \slurDown <g' ( bes> < ) fis a>
  <g bes> \property Voice.Rest \override #'staff-position = #-3 r \property Voice.Rest \set #'staff-position = #-1 r
  \staffDown \stemBoth <fis, a> \stemDown \staffUp <fis' ( a> < ) g bes>
  <fis a> \property Voice.Rest \set #'staff-position = #-7 r \property Voice.Rest \set #'staff-position = #-3 r

  \staffDown \stemBoth \property Voice.Rest \revert #'staff-position r4 <g, d'> <fis d'>
  r <fis d'> <g d'>
  es r \Treble <es' g>
  \stemUp \slurUp g2 () fis4
  
  \Bass bes,,8 bes' bes, bes' bes, bes'
  bes, bes' bes, bes' bes, bes'
  bes, bes' bes, bes' bes, bes'
  bes, bes' bes, bes' <d,4 bes'>
  
  \stemUp bes'2.
  r4 f'2
  \stemBoth <es,4 es'> <f d'> <f c'>
  bes4 d8 c bes a
  
  <g4 bes> \staffUp \stemDown \slurDown <g' ( bes> < ) fis a>
  <g bes> \property Voice.Rest \override #'staff-position = #-3 r \property Voice.Rest \set #'staff-position = #-1 r
  \staffDown \stemBoth <fis, a> \stemDown \staffUp <fis' ( a> < ) g bes>
  <fis a> \property Voice.Rest \set #'staff-position = #-7 r \property Voice.Rest \set #'staff-position = #-3 r

  \staffDown \stemBoth \property Voice.Rest \revert #'staff-position r4 <g, d'> <fis d'>
  r <fis d'> <g d'>
  <c, c'> <d bes'> <d a'>
  g_#'(lines " " "Men. d. C.") d g,
  }

MSII = \notes \relative c' {
  s2.
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  \stemDown d

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  s
  s
  s
  s

  c4 b a
  s2.
  s
  s

  s
  s
  s
  s

  s
  s
  s
  d2.
  
  s
  s
  s
  s
  
  es,4 f g
  a2 bes4
  s2.
  s
  
  s
  s
  s
  s
  
  s
  s
  s
  s
  }

\score {\notes {
\context PianoStaff <
  \property PianoStaff.midiInstrument = "harpsichord"
  \context Staff = "up" <
    \Global \Treble
    \context Voice=One \MD>
  \context Staff = "down" <
    \Global \Bass
    \context Voice=Two \MSI
    \context Voice=Three \MSII>
>
}
\paper {}
\midi {\tempo 4=92}
}

