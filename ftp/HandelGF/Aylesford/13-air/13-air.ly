\version "1.4.9.uu1"
\include "paper20.ly"
\header {
  title             = "Air"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegretto"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Air"
  mutopiacomposer   = "G. F. Handel (1685-1759)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/11"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/11-162"
  }

Global = \notes {\key bes\major \time 3/8}


MDI = \notes \relative c''' {
  \repeat volta 2 {
  \stemBoth bes8-. a16 g f es
  d4 es8
  f-. es16 d c bes
  a4 bes8

  c16 bes c d es c
  d4 d8
  g-. d16 e f d
  e4 g8

  c-. g16 a bes g
  a8 c,-. f-.
  <d16 g> a' <g,8. e'\prall> f'16
  <a,4. f'>
  }

  \repeat volta 2 {
  f'8-. e16 d c bes
  a4 bes8
  c16 bes c d es! c
  d4.

  bes'8-. a16 g fis e
  d8 g-. <fis, c'>
  \stemUp bes16 a a8. g16
  \stemBoth g4.

  g'16 f es d c bes
  a4 c8
  f d16 es f d
  g4 a8

  bes16 a g f es d
  g f es d c bes
  <g8 c> <c,8. a'\prall> bes'16
  }

  \alternative {
  {<d,4. bes'>}
  {<d,4. bes'\fermata>}
  }
  \bar "|."
  }
MDII = \notes \relative c'' {
  s4.
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
  \stemDown g8 fis8. g16
  s4.

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

MSI = \notes \relative c {
  \stemBoth bes4.
  bes'8-. a16 g f es
  d4 es8
  f8-. es16 d c bes

  a4 f'8
  bes d16 c bes a
  g4 g8
  c-. g16 a bes g

  a8-. bes c
  f e-. d-.
  bes c-. c,-.
  f-. a-. f-.

  f,4.
  f'8-. e16 d c bes
  a4 f'8
  bes-. d16 c bes a

  g4 c8-.
  bes4 a8-.
  g-. d'-. d,-.
  g-. bes16 a g f

  es8-. c-. es-.
  f-. a16 g f es
  d8 bes-. d-.
  es-. es'16 d c8-.

  d-. bes-. d,
  es f-. g-.
  es-. f-. f,-.

  bes,-. d-. f-.

  <bes,4.\fermata bes'>

  }

\score {\notes {
  \context PianoStaff <
    \property PianoStaff.midiInstrument = "harpsichord"
    \context Staff = "up" <
      \property Staff.TimeSignature \override #'style = #'C
      \property Staff.VoltaBracket \set #'extra-offset = #'(0 . 1)
      \Global \clef treble
      \context Voice=One {\voiceOne\MDI}
      \context Voice=Two {\voiceTwo\MDII}
    >
    \context Staff = "down" <
      \property Staff.TimeSignature \override #'style = #'C
      \property Staff.VoltaBracket = \turnOff
      \Global \clef bass
      \context Voice=One {\voiceOne\MSI}
    >
  >
}
\midi {\tempo 4=108}
\paper {}
}

%{
Revision-history:
2002/jan/11 :  moved volta-brackets up so they don't collide with the fermata.
%}
