\version "2.16.0"
#(set-global-staff-size 20)
\header {
  title             = "Fuga"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Moderato"
  tagline           = "Typeset using Lilypond 1.4.10"
  mutopiatitle      = "Fuga"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/05"

  tagline = "\\parbox{\paper-width}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/05-153"
  }

Global =  {\key g\major \time 4/4}


MDI =  \relative c'' {
  g4. b8 a d, d' c |
  b g g'2 fis4 |
  g8 d e b cis a d fis, |
  g b a g fis a d4 ~ |
  
  d4 c!2 b4 |
  a2 g4 g' ~ |
  g f2 e4 |
  <<{d2 c4.} \\ {a4 b e,4.}>> e'8 |
  
  d8 g, g' f e d c4 ~
  c b a d ~
  d c b4. e8
  cis a d2 cis4
  
  d a8 b c! e d c
  b d g fis e d c b
  a4 d2 c4 ~
  c b a2
  
  g4 g'8 fis e d c b
  a fis' g b, <<{a4. g8} \\ {d2} \\ \\ {g4 fis}>>
  <<{g1\fermata} \\ {<d b>}>>
  \bar "|." 
  }

MSI =  \relative c {
  g4-. g'2 fis4
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
    \tempo 4 = 88
    }


\layout {}
}
