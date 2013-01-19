\version "2.16.0"
#(set-global-staff-size 20)
\header {
  title             = "Air"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegretto"
  tagline           = "Typeset using Lilypond 1.4.10"
  mutopiatitle      = "Air"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/11"

  tagline = "\\parbox{\paper-width}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/11-162"
  }

Global =  {\key bes\major \time 3/8}


MDI =  \relative c''' {
  \repeat volta 2 {
  bes8-. a16 g f es
  d4 es8
  f-. es16 d c bes
  a4 bes8

  c16 bes c d es c
  d4 d8
  g-. d16 e f d
  e4 g8

  c-. g16 a bes g
  a8 c,-. f-.
  <d g>16 a' <g, e'\prall>8. f'16
  <a, f'>4.
  }

  \repeat volta 2 {
  f'8-. e16 d c bes
  a4 bes8
  c16 bes c d es! c
  d4.

  bes'8-. a16 g fis e
  d8 g-. <fis, c'>
  <<{bes16 a a8. g16} \\ {g8 fis8. g16}>>
  g4.

  g'16 f es d c bes
  a4 c8
  f d16 es f d
  g4 a8

  bes16 a g f es d
  g f es d c bes
  <g c>8 <c, a'\prall>8. bes'16
  }

  \alternative {
  {<d, bes'>4.}
  {<d bes'\fermata>4.}
  }
  \bar "|."
  }

MSI =  \relative c {
  bes4.
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

  <bes,\fermata bes'>4.

  }

\score { {
  \new PianoStaff <<
    \set PianoStaff.midiInstrument = "harpsichord"
    \new Staff = "up" <<
      \Global \clef treble \MDI
    >>
    \new Staff = "down" <<
      \Global \clef bass \MSI
    >>
  >>
}

  \midi {
    \tempo 4 = 108
    }


\layout {}
}

%{
Revision-history:
2002/jan/11 :  moved volta-brackets up so they don't collide with the fermata.
%}
