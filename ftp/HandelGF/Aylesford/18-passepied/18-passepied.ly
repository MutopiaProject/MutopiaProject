\version "2.16.0"
#(set-global-staff-size 20)
\header {
  title             = "Passepied (et Menuet)"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Andantino"
  tagline           = "Typeset using Lilypond 1.4.10"
  mutopiatitle      = "Passepied (et Menuet)"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/08"

  tagline = "\\parbox{\paper-width}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/08-167"
  }

Global =  {\key a\major \time 3/8 \partial 8}


MDI =  \relative c'' {
  \repeat volta 2 {
  \oneVoice e8-.
  \voiceOne d16 cis b a fis'8-.
  e4 d8
  cis b16 a b8-.
  e,4 a8-.
  gis16 a b gis a8-.
  b16 cis d b cis8-.
  fis8 e \times 4/5 { dis32[ e dis cis dis]}
  e4 
  }
  
  \repeat volta 2 {
  \oneVoice b8-.
  a16 gis fis e e'8-.
  \voiceOne d4 e8-.
  cis b16 a cis8-.
  b4 cis8
  d16 e fis d e8-.
  fis16 gis a fis gis8-.
  a-. cis, b
  a4\fermata
  }
  }
MDII =  \relative c'' {
  s8
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

MSI =  \relative c' {
  <<{
    e8-. |
    e4
  } \\ {
    gis,8 |
    a4
  }>> d8-. |
  cis8 b16 a b8-.
  a4 d,8
  <<gis4. \\ {e8 d cis-.}>>
  b4 cis8
  gis4 a8
  fis4 b8
  e4
  
  <<{
    b'8-. |
    b4 cis8-. |
  } \\ {
    dis,8 |
    e4 a8 |
  }>>
  fis e16 d! gis8-.
  a4 a,8-.
  e' d cis-.
  b4 cis8
  d4 b8
  cis-. d-. e-.
  a,4\fermata
  }

\score { {
  \new PianoStaff <<
    \set PianoStaff.midiInstrument = "harpsichord"
    \new Staff = "up" <<
      \Global \clef treble
      \new Voice=One {\voiceOne\MDI}
      \new Voice=Two {\voiceTwo\MDII}
    >>
    \new Staff = "down" <<
      \Global \clef bass \MSI
    >>
  >>
}

  \midi {
    \tempo 4 = 80
    }


\layout {}
}
