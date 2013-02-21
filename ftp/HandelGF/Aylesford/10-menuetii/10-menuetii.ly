\version "2.16.0"
#(set-global-staff-size 20)
\header {
  title             = "Menuet II (Trio)"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Ruhig (pomposo)"
  tagline           = "Typeset using Lilypond 1.4.10"
  mutopiatitle      = "Menuet II (Trio)"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/06"

  tagline = "\\parbox{\paper-width}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/06-158"
  }

Global =  {\key d\major \time 3/4}


MDI =  \relative c'' {
  \repeat volta 2 {
  fis4 g fis
  fis8 e fis cis d cis
  d e fis4 e
  fis e8 fis d e
  
  fis4 g fis
  e fis8 cis d4
  e fis e
  d2.
  }

  \repeat volta 2 {
  fis8 g a4 a-.
  a-. b8 a g fis
  e fis g4 g-.
  g-. a8 g fis e
  
  fis4-. g8 fis e d
  e4-. fis8 e d cis
  b4 a' gis
  a gis8 fis e d
  
  cis4 cis8 d e4
  a,2.
  a4 g' fis
  e fis8 cis d cis
  
  d e fis4-. e
  fis e8 fis d e
  fis4 g fis
  e fis8 cis d4
  
  e fis e8 d
  d2.\fermata
  }
  
  }
MDII =  \relative c'' {
  <a d>4 <g cis> <a d>
  b fis fis
  b <a d> <a cis>
  <a d> <a cis> fis
  
  <a d> <g cis> <a d>
  b fis fis
  b <a d> <a cis>
  <fis a>2. 
  
  a4 d <d fis>
  <d fis> r r
  r b <b e>
  <a e'>2.
  
  a
  a
  b4 <d fis> <b e>
  <cis e> r r
  
  a a cis
  d, d8 e cis4
  fis <g cis> <a d>
  b4 fis fis
  
  b <a d> <a cis>
  <a d> <a cis> fis
  <a d> <g cis> <a d>
  b fis fis
  
  b <a d> <a cis>
  <fis a>2.
  }

MSI =  \relative c {
  d4-. e-. fis-.
  g-. a-. b-.
  g-. a-. a,-.
  d-. a-. d,-.
  
  <d d'>-. <e e'>-. <fis fis'>-.
  <g g'>-. <a a'>-. <b b'>-.
  <g g'>-. <a a'>-. a-.
  <d, d'>-. a'-. d,-.
  
  d'4-. fis-. a-.
  d2.-.
  e,4-. e'-. d-.
  cis-. b-. a-.
  
  d-. d,-. d'-.
  cis-. b-. a-.
  d-. b-. e-.
  a,2.
  
  a,4-. a'-. g!-.
  fis-. fis8 g a4
  d,-. e-. fis-.
  g-. a-. b-.
  
  g-. a-. a,-.
  d-. a'-. b-.
  <d,, d'>-. <e e'>-. <fis fis'>-.
  <g g'>-. <a a'>-. <b b'>-.
  
  <g g'>-. <a a'>-. <a, a'>-.
  <d d'>2.\fermata
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
    \tempo 4 = 72
    }


\layout {}
}
