\version "1.4.9.uu1"
\include "paper20.ly"
\header {
  title             = "Fuga"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Moderato"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Fuga"
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
  footer = "Mutopia-2002/01/05-153"
  }

Global = \notes {\key g\major \time 4/4}


MDI = \notes \relative c'' {
  \stemBoth g4. b8 a d, d' c
  b g g'2 fis4
  g8 d e b cis a d fis,
  g b a g fis a d4 ~
  
  d4 c!2 b4
  a2 g4 g' ~
  g f2 e4
  \stemUp d2 c4. \stemBoth e8
  
  d8 g, g' f e d c4 ~
  c b a d ~
  d c b4. e8
  cis a d2 cis4
  
  d a8 b c! e d c
  b d g fis e d c b
  a4 d2 c4 ~
  c b a2
  
  g4 g'8 fis e d c b
  a fis' g b, \stemUp a4. g8
  g1\fermata
  \bar "|." 
  }
MDII = \notes \relative c'' {
  s1
  s
  s
  s
  
  s
  s
  s
  \stemDown a4 b e,4. s8
  
  s1
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s2 d2
  <b1 d>
  }
MDIII = \notes \relative c'' {
  s1
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
  s2 \shiftOn \stemDown g4 fis
  s1
  }

MSI = \notes \relative c {
  \stemBoth g4-. g'2 fis4
  g4. b8 a d, d' c
  b4 g2 fis8 b
  e,4 cis' d4. d,8
  
  e d e fis g d g b,
  c a d c b g r e'
  a g a b c g a e
  f d g g, c4 c' ~
  
  c b c r8 e,
  fis d g2 fis8 b
  gis e a2 g4 ~
  g fis e8 fis16 g a8 g
  
  fis d fis g a4 fis
  g b c8 b a g
  fis e fis d e d e fis
  g d e b c a d c
  
  b a g4 c8 b a4
  d8 c b c d4 d,
  g1\fermata
  }

\score {\notes {
  \context PianoStaff <
    \property PianoStaff.midiInstrument = "harpsichord"
    \context Staff = "up" <
      \property Staff.TimeSignature \override #'style = #'C
      \Global \clef treble
      \context Voice=One {\voiceOne\MDI}
      \context Voice=Two {\voiceTwo\MDII}
      \context Voice=Three {\voiceThree\MDIII}
    >
    \context Staff = "down" <
      \property Staff.TimeSignature \override #'style = #'C
      \Global \clef bass
      \context Voice=One {\voiceOne\MSI}
    >
  >
}
\midi {\tempo 4=88}
\paper {}
}
