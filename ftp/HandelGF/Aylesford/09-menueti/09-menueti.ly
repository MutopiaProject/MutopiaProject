\version "1.4.9.uu1"
\include "paper20.ly"
\header {
  title             = "Menuet I"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Andantino"
  tagline           = "Typeset using Lilypoond 1.4.9.uu1"
  mutopiatitle      = "Menuet I"
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
  footer = "Mutopia-2002/01/11-157"
}

Global = \notes {\key d\minor \time 3/8}


MDI = \notes \relative c' {
  \repeat volta 2 {
  \stemBoth
  <f8 d'> a <a f'-.>
  <a e'> a <a g'-.>
  <a f'-.> <bes16 g'> f' <g, e'> d'
  <a cis> d e8 a,-.

  a16 bes <f8-. c'!> <e-. bes'>
  <f a> <g c-.> <a f'>
  \stemUp a-. bes16 a g a
  \stemBoth f4.
  }

  \repeat volta 2 {
  <a8 f'> c <c a'-.>
  <c g'> c <c bes'-.>
  <c a'-.> bes'16 a g f
  e f g8-. <g, c-.>

  <a16 d> e' <d8 f-.> <c e-.>
  <f, d'> <d' g> <a d f-.>
  <g bes e-.> <f a d-.> <e a cis-.>
  }
  \alternative {
  {<f4. a d>}
  {<f4. a d\fermata>}
  }
  \bar "|."
  }
MDII = \notes \relative c' {
  s4.
  s
  s
  s

  s
  s
  f8 d e
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
  \stemBoth d8-. f-. d-.
  cis-. cis'-. a-.
  d-. g,-. bes-.
  a-. a,-. g'-.

  f-. a-. g-.
  f-. e-. d-.
  c-. bes-. c-.
  f,-. f'-. e-.

  f-. a-. f-.
  e-. e'-. c-.
  f-. e-. d-.
  c-. c,-. e-.

  f-. d-. a'-.
  bes-. bes,-. f'-.
  g-. a-. a,-.

  d-. a'-. g-.
  d4.\fermata
  }

\score {\notes {
  \context PianoStaff <
    \property PianoStaff.midiInstrument = "harpsichord"
    \context Staff = "up" <
      \property Staff.TimeSignature \override #'style = #'C
      \property Staff.VoltaBracket \set #'extra-offset = #'(0 . 1.5)
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
\midi {}
\paper {}
}

%{
Revision history:
2002/jan/11 :  moved volta-brackets up so they don't collide with the fermata.
%}
