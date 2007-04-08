\version "1.4.9.uu1"
\include "paper20.ly"
\header {
  title             = "Menuet I"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegretto"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Menuet I"
  mutopiacomposer   = "G. F. Handel (1685-1759)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/07"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/07-163"
  }

Global = \notes {\key f\major \time 3/8 \partial 8}


MDI = \notes \relative c'' {
  \repeat volta 2 {
  \stemUp c8
  
  a16. bes32 c8 c-.
  a16. bes32 c8 c-.
  d f-. e-.
  f8 e16 d c8
  
  d-. c16 b a g
  g'8 f16 e d c
  c8 e16 d c d
  \partial 4 c4
  }
  
  \partial 8 c8
  
  f-. f16 e f d
  g8-. c, bes
  a8-. bes16 a g f
  c'8-. f16 e f8
  
  d-. c16 bes a g
  f e f8 bes-.
  a16 g g8. f16
  \partial 4 f4
  \bar "||"
  
  \partial 8 c'8
  
  f-. f16 e f d
  g8-. c, bes
  a8-. bes16 a g f
  c'8-. f16 e f8
  
  d-. c16 bes a g
  f e f8 bes-.
  a16 g g8. f16
  f4.\fermata
  \bar "|."
  }
MDII = \notes \relative c'' {
  \stemDown a8
  
  f a a-.
  f a a-.
  f bes-. g-.
  c a g
  
  a f4
  c'8 g e
  a g d
  e4
  
  e8
  
  f-. g-. a-.
  <g c> g4
  f8 c4
  e8-. d'-. c-.
  
  f,-. d-. e-.
  d-. bes-. c-.
  f8 f e
  \partial 4 a,4
  
  e'8-.
  
  f-. g-. a-.
  <g c> g4
  f8 c4
  e8-. d'-. c-.
  
  f,-. d-. e-.
  d-. bes-. c-.
  f8 f e
  a,4.
  
  }

MSI = \notes \relative c {
  \stemBoth f8
  
  f, f' f-.
  f, f' f-.
  bes g-. c-.
  a-. f-. e-.
  
  f-. d-. g-.
  e-. g-. a-.
  f-. g-. g,-.
  [c-. c'-.]
  
  bes8-.
  
  a-. g-. f-.
  e-. c16 d e c
  f8-. e-. d-.
  <c c'-.> <bes bes'-.> <a a'-.>
  
  \stemDown <bes bes'> bes-. c-.
  d-. d-. e-.
  \stemUp f-. c-. c,-.
  f4
  
  <bes8 bes'-.>
  
  <a-. a'> <g-. g'> <f-. f'>
  <e-. e'> c'16 d e c
  f8-. e-. d-.
  c-. <bes bes'-.> <a a'-.>
  
  <bes-. bes'> <bes,-. bes'> <c-. c'>
  <d-. d'> <d-. d'> <e-. e'>
  <f-. f'> <c-. c'> c-.
  <f,4.\fermata f'> 
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
\midi {\tempo 4=108}
\paper {}
}
