\version "2.16.1"
#(set-global-staff-size 20)
\header {
  title             = "Air"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegretto"
  mutopiatitle      = "Air"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-162"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
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
