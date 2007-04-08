\version "1.4.9.uu1"
\include "paper20.ly"
\header {
  title             = "Menuet (Trio)"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Andantino"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Menuet (Trio)"
  mutopiacomposer   = "G. F. Handel (1685-1759)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/08"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/08-168"
  }

Global = \notes {\key a\minor \time 3/4}


MDI = \notes \relative c'' {
  \repeat volta 2 {
  \stemBoth e4 a,-. gis-.
  a8 c \stemUp b2
  c4 d8 c b a
  gis4 fis8 gis e4
  
  e' d8 c b a
  d4 c8 b a gis
  a b c4 b8 a
  a2.
  }
  
  \repeat volta 2 {
  g!4 c8 b c4
  g d'8 c d4
  g, f' e8 f
  d2.
  
  e8 f d e c d
  b c a b g4
  f8 e d4. c8
  c2.
  
  \stemBoth c'8 d e4-. gis,-.
  \stemUp a8 c b2
  c4 d8 c b a
  gis4 fis8 gis e4
  
  e a8 gis a4
  d, a'8 gis a4
  c, d8 c b c
  a2.\fermata 
  }
  }
MDII = \notes \relative c' {
  \stemDown s2.
  s4 e2
  e f4
  e2 gis,4
  
  c' a e
  gis e2
  c4 a' gis
  a2.
  
  c,4 d e
  d g b
  e, d' c
  b a g
  
  g2 e4 ~
  e c2
  a4 c b
  <e,2. g>
  
  s2.
  c'4 e2
  e f4
  e2 gis,4
  
  c a c
  b b d
  c a gis
  a2.
  }

MSI = \notes \relative c' {
  \stemUp c2 b4
  c s2
  \stemBoth a2 d,4-.
  e-. b-. e,-.
  
  a c-. e-.
  b d-. e-.
  f d-. e-.
  a-. e-. a,-.
  
  \stemBoth e'4-. d-. c-.
  b-. a-. g-.
  c-. b-. c-.
  g-. a-. b-.
  
  c-. b-. a-.
  g-. f-. e-.
  f-. g2
  c4-. g-. c,-.
  
  \stemUp e''4 c b
  \stemBoth a gis-. e-.
  a2 d,4
  e-. b-. e,-.
  
  a-. c e
  b-. d e
  a d,-. e-.
  a,2.\fermata
  }
MSII = \notes \relative c' {
  \stemDown a2.
  a4 gis-. e-.
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
  s
  
  a2.
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
\midi {\tempo 4=80}
\paper {}
}
