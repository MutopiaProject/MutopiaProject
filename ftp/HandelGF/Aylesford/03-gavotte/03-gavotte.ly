\version "1.4.9.uu1"
\include "paper20.ly"
\header {
  title             = "Gavotte"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegretto"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Gavotte"
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
  footer = "Mutopia-2002/01/05-151"
  }
  
Global = \notes {\key g\major \time 4/4 \partial 4}


MDI = \notes \relative c'' {
  \repeat volta 2 {
  \stemBoth g8 a
  
  b4-. a8 g \stemUp d'4 e8 fis
  g2. g8 fis
  [fis e] [e d] [d c] [c b]
  a2. g8 a
  
  b4-. a8 g d'4-.e8 fis
  g2. a8 g
  fis4-. e8 d fis4-. e8 d
  \partial 4*3 d2.
  }
  
  \repeat volta 2 {
  \partial 4 fis8 g
  
  a4 [g8 fis] [g fis] [g a]
  b2. b8 dis,
  [e dis] [e fis] g4 [fis8 e]
  e2. g8 fis
  
  [fis e] [e d] [d c] [c b]
  c2. e8 d
  [d c] [c b] [b a] [a g]
  fis2. [g8 d]
  
  e4-. a8 e fis4-. b8 fis
  g4-. c8 g a4 d8 a
  b4 a8 g b4 a8 g
  \partial 4*3 g2.
  }
  }
MDII = \notes \relative c'' {
  s4
  
  s2 b4 a
  b2. d4
  s4 g, fis g
  fis2. s4
  
  s2 b4 a
  b2. e4
  <a, d> b <a d> <a cis>
  <fis2. a>
  
  d'4 ~
  
  d1
  d2. b4 ~
  b c b <a dis>
  <g2. b> d'!4
  
  g, g fis g
  e2. b'4
  fis g d cis
  d2. fis,8 d'
  
  c!4 a8 e' d4 b8 fis'
  b,4 c8 g' d4 d8 a'
  g fis e4 <d g> <c fis>
  <b2. d>
  }

MSI = \notes \relative c' {
  s4
  
  s1
  s
  s
  s
  
  s
  s
  s
  s2.
  
  \stemUp d4 ~
  
  d1
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
  s2.
  }

MSII = \notes \relative c' {
  \stemBoth r4
  
  g4-. g,-. g'-. fis-.
  e-. e,-. e'-. b-.
  c-. b-. a-. g-.
  d'-. a-. d,-. r
  
  g'-. g,-. g'-. fis-.
  e-. e,-. e'-. cis-.
  d-. g-. a-. a,-.
  d-. a-. d,-.
  
  \stemDown d'4
  
  fis d-. e-. fis-.
  \stemBoth g-. g,-. g'-. b-.
  c-. a-. b-. b,-.
  e-. e,-. e'-. b-. 
  
  c-. b-. a-. g-.
  a-. e'-. a-. g-.
  a-. g-. fis-. e-.
  d-. d,-. d'-. b-. 
  
  c-. c,-. d'-. d,-.
  e'-. e,-. fis'-. fis,-.
  g'-. c,-. d-. d,-.
  g'-. d-. g,-.
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
      \context Voice=Two {\voiceTwo\MSII}
    >
  >
}
\midi {\tempo 4=92}
\paper {}
}
