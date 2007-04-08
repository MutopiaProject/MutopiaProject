\version "1.4.9.uu1"
\include "paper16.ly"
\header {
  title             = "Entrée"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Vivace"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Entree"
  mutopiacomposer   = "G. F. Handel (1685-1759)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/05"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/05-150"
  }
  
Global = \notes {\key g\minor \time 4/4 \partial 8}


MDI = \notes \relative c'' {
  \repeat volta 2 {
  \stemBoth d8
  
  bes g d' <bes g'> <a fis'> e' d16 g fis g
  es! d c bes \stemUp a d c d bes8-. g-. d'-. d-.
  d c16 bes f'8-. f-. f es16 d \stemBoth bes'8. a16
  g16 a g f es d c bes a f g a bes c d es
  
  f8 <bes, g'> <bes d> <a16 c> bes bes8. c16 \stemUp d8 es
  c-. d bes8. a16 a4 [d8-. e16 f!]
  \partial 8*7 [e8-. fis16 g] [fis8-. g-.] <fis4. a>
  }
  
  \repeat volta 2 {
  \partial 8 \stemBoth a8
  fis e16 d g8 g es d16 c f8 f
  d16 es d c bes c bes a g4 es'16 f es d
  c d c bes a bes a g f bes a bes g c bes c
  a d c d bes es d es c f es f d f, g a
  
  bes a bes c \stemUp d8 c16 bes \stemBoth bes4 r8 <bes8 d-.>
  <a4 c> r8 <c f-.> <c4 es> r8 <c es-.>
  <bes4 d> r8 g' fis d a'8. a16
  bes8-. es, d g es c f!8. es16
  
  d8 <bes g'> e <c a'> fis d bes'8. a16
  \stemUp g fis g a \stemBoth <d,8 g bes> <fis16 a> g g4 ~ g16 f es d
  es d c bes c bes a g \stemUp fis8 g-. a-. bes-.
  \partial 8*7 [g16 fis g a] [bes8 a16 g] <bes,4. d g>
  }
  }
MDII = \notes \relative c' {
  s8
  
  s1
  s4 fis s bes8-. a-.
  g4 d'8-. c-. bes4 s
  s1
  
  s2. d8-. bes
  c a g4 fis g
  [g8 d' c bes] d4.
  
  s8
  
  s1
  s
  s
  s
  
  s4 g,8 a16 bes s2
  s1
  s1
  s1
  
  s1
  c8 es s4 s2
  s2 s4 [d,8-. d-.]
  [c es] [<d g> fis] s4.
  }

MSI = \notes \relative c' {
  \stemBoth r8
  
  g-. a-. bes-. c-. d-. c-. bes-. g-.
  c-. a-. d-. d,-. g4 g8-. a-.
  bes4 bes8-. c-. d4. d8-. 
  es8. d16 c8-. es,-. f4. es8
  
  d-. es-. f-. f,-. bes16 f' g a bes8 g
  a fis g c, d-. c-. bes-. g-.
  [c-. bes-. a-. g-.] d'4.
  
  r8
  
  r d'8 bes g c c a g16 f
  bes8. a16 g8. f16 es f es d c4
  a'8. g16 f8. es16 d4 es
  f g a bes8. a16
  
  g8 d es-. f-. bes-. d16 c bes c d es
  f8-. a,16 g f g a bes c d es d c d es f
  g8 bes,16 a g a bes c \clef violin d c d e fis e fis d
  g8-. \clef bass g,16 a bes a bes g c8-. c16 bes a g a f
  
  bes8 g c a d fis, g d'-.
  es-. c d d,-. g-. g16 a bes8 g-.
  c,-. d-. es-. c-. d4 fis8-. g-.
  [es-. c-. d-. d,-.] g4.
  }

\score {\notes {
  \context PianoStaff <
    \property PianoStaff.midiInstrument = "harpsichord"
    \context Staff = "up" <
      \property Staff.TimeSignature \override #'style = #'C
      \Global \clef treble
      \context Voice=One {\voiceOne\MDI}
      \context Voice=Two {\voiceTwo\MDII}
    >
    \context Staff = "down" <
      \property Staff.TimeSignature \override #'style = #'C
      \Global \clef bass
      \context Voice=One {\voiceOne\MSI}
    >
  >
}
\midi {\tempo 4=92}
\paper {}
}
