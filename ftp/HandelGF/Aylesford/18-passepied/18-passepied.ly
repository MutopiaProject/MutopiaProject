\version "1.4.9.uu1"
\include "paper20.ly"
\header {
  title             = "Passepied (et Menuet)"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Andantino"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Passepied (et Menuet)"
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
  footer = "Mutopia-2002/01/08-167"
  }

Global = \notes {\key a\major \time 3/8 \partial 8}


MDI = \notes \relative c'' {
  \repeat volta 2 {
  \stemBoth e8-.
  \stemUp d16 cis b a fis'8-.
  e4 d8
  cis b16 a b8-.
  e,4 a8-.
  gis16 a b gis a8-.
  b16 cis d b cis8-.
  fis8 e \times 4/5 {[dis32 e dis cis dis]}
  \partial 4 e4 
  }
  
  \repeat volta 2 {
  \partial 8 \stemBoth b8-.
  a16 gis fis e e'8-.
  \stemUp d4 e8-.
  cis b16 a cis8-.
  b4 cis8
  d16 e fis d e8-.
  fis16 gis a fis gis8-.
  a-. cis, b
  \partial 4 a4\fermata
  }
  }
MDII = \notes \relative c'' {
  \stemDown s8
  s4 a8
  a4 gis8
  a4 fis8
  s4 e8
  d4 e8
  e4 e8
  a4 fis8
  gis4
  
  s8
  s4.
  a4 b8
  e,4 e8
  gis4 ais8
  b4 a!8
  a4 d8
  e a, gis
  cis,4
  }

MSI = \notes \relative c' {
  \stemUp e8-.
  e4 \stemBoth d8-.
  cis8 b16 a b8-.
  a4 d,8
  \stemUp gis4.
  b,4 cis8
  gis4 a8
  fis4 b8
  e4
  
  b'8-.
  b4 cis8-.
  \stemBoth fis, e16 d! gis8-.
  a4 a,8-.
  e' d cis-.
  b4 cis8
  d4 b8
  cis-. d-. e-.
  a,4\fermata
  }
MSII = \notes \relative c' {
  \stemDown gis8
  a4 s8
  s4.
  s
  e8 d cis-.
  s4.
  s
  s
  s4
  
  dis8
  e4 a8
  s4.
  s
  s
  s
  s
  s
  s4
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
