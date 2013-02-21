\version "2.16.0"
\header {
  title             = "Gavotte"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegretto"
  tagline           = "Typeset using Lilypond 1.4.10"
  mutopiatitle      = "Gavotte"
  mutopiacomposer   = "HandelG"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/05"

  tagline = "\\parbox{\paper-width}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/05-151"
  }
  
Global =  {\key g\major \time 4/4 \partial 4}


MDI =  \relative c'' {
  \repeat volta 2 {
  \oneVoice g8 a
  
  b4-. a8 g \voiceOne d'4 e8 fis
  g2. g8 fis
   fis[ e]  e[ d]  d[ c]  c[ b]
  a2. \oneVoice g8 a
  
  b4-. a8 g \voiceOne d'4-.e8 fis
  g2. a8 g
  fis4-. e8 d fis4-. e8 d
  d2.
  }
  
  \repeat volta 2 {
  fis8 g
  
  a4  g8[ fis]  g[ fis]  g[ a]
  b2. b8 dis,
   e[ dis]  e[ fis] g4  fis8[ e]
  e2. g8 fis
  
   fis[ e]  e[ d]  d[ c]  c[ b]
  c2. e8 d
   d[ c]  c[ b]  b[ a]  a[ g]
  fis2.  g8[ d]
  
  e4-. a8 e fis4-. b8 fis
  g4-. c8 g a4 d8 a
  b4 a8 g b4 a8 g
  g2.
  }
  }
MDII =  \relative c'' {
  s4
  
  s2 b4 a
  b2. d4
  s4 g, fis g
  fis2. s4
  
  s2 b4 a
  b2. e4
  <a, d> b <a d> <a cis>
  <fis a>2.
  
  d'4 ~
  
  d1
  d2. b4 ~
  b c b <a dis>
  <g b>2. d'!4
  
  g, g fis g
  e2. b'4
  fis g d cis
  d2. fis,8 d'
  
  c!4 a8 e' d4 b8 fis'
  b,4 c8 g' d4 d8 a'
  g fis e4 <d g> <c fis>
  <b d>2.
  }

MS =  \relative c' {
  r4
  
  g4-. g,-. g'-. fis-.
  e-. e,-. e'-. b-.
  c-. b-. a-. g-.
  d'-. a-. d,-. r
  
  g'-. g,-. g'-. fis-.
  e-. e,-. e'-. cis-.
  d-. g-. a-. a,-.
  d-. a-. d,-.
  
  <<{
    d''4 ~
    d1
  } \\ {
    d,4
    \override Script #'direction = #UP
    fis d-. e-. fis-.
  }>>
  g-. g,-. g'-. b-.
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
  

\score { {
  \new PianoStaff <<
    \set PianoStaff.midiInstrument = "harpsichord"
    \new Staff = "up" <<
      \Global \clef treble
      \new Voice=One {\voiceOne\MDI}
      \new Voice=Two {\voiceTwo\MDII}
    >>
    \new Staff = "down" <<
      \Global \clef bass \MS
    >>
  >>
}

  \midi {
    \tempo 4 = 92
    }


\layout {}
}
