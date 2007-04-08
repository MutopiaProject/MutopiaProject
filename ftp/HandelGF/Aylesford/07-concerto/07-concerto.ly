\version "1.4.9.uu1"
\include "paper16.ly"
\header {
  title             = "Concerto"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegro moderato"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Concerto"
  mutopiacomposer   = "G. F. Handel (1685-1759)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/06"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/06-155"
}


Global = \notes {\key g\major \time 4/4}


MDI = \notes \relative c'' {
  \stemBoth g8 b d <b g'> <a fis'> d <g, g'> b
  c e,-. fis-. d'-. b-. g-. r b'
  a-. fis-. d-. fis-. g-. e,-. r g'
  fis-. d-. b-. d e-. c,-. r e'
  
  d b-. g-. b' c16 a g a b g fis g
  a fis e fis g e d e fis e d8 r a'-.
  b16 a g fis e d cis b cis8-. a-. cis-. e-.
  a16 g fis e d cis b a b d cis d a d cis d
  
  g, g' fis g e g d g cis,8 <cis b'-.> <d a'-.> <e g-.>
  <d8. fis> e16 <cis8. e\prall> d16 <fis,4 a d> r
  d'8 fis a <fis d'> <e cis'> a <d, d'> fis
  g b,-. cis-. a'-. fis-. d-. r a'
  
  fis d-. d16 e d8-. g-. d-. \times 4/6 {[e16 d e d cis d]}
  a'8-. d,-. \times 4/6 {[e16 d e d cis d]} b'8-. <b, d-.> <b16 d> <c e> <d8 fis-.>
  <b16 d> <c e> <d8 fis-.> <b16 d> <c e> <d8 fis-.> <b16 d> <c e> <d8 fis-.> <b16 d> <c e> <d8 fis-.>
  <b16 d> <c e> <d8 fis-.> <a8-. c> <g-. b> a-. a' fis d
  
  b' g-. c4 r8 fis,-. b4
  r16 e,16 fis g a g fis e dis b' a b fis b a b
  g b dis, b' e, b' fis b g b d, b' e, b' fis b
  g b dis, b' e, b' fis b g b a b e, a g a
  
  fis a cis, a' d, a' e a fis a cis, a' d, a' e a
  fis a cis, a' d, a' e a fis a g a d, d' c! d
  b d, fis d g d a' d, b' d, fis d g d a' d,
  b' d, fis d g d a' c, b d e fis g8 d
  
  e16 c b a a' e d c d b a g g' d c b
  c b c a b a b g <fis8-. a> d-. r4
  g8 b d <b g'> <a fis'> d <g, g'> b
  c e,-. fis-. d'-. b-. g-. r d'
  
  e8 c32 d e16-. \times 4/6 {[fis e fis e d e]} fis8-. d32 e fis16 \times 4/6 {[g fis g fis e fis]}
  g8-. e32 fis g16-. \times 4/6 {[a16 g a g fis g]} a8-. d,-. r a'-.
  b8\prall a16 b c8 b16 a b8\prall a16 b c8 b16 a
  b8\prall a16 b c8 b16 a b8 d, g b,
  
  e8-. g,-. \stemUp c4 ~ c8 d-. b-. a-.
  g8. a16 a8.\prall g16 \stemBoth <b,4 d g> r8 a'-.
  b8\prall a16 b c8 b16 a b8\prall a16 b c8 b16 a
  b8\prall a16 b c8 b16 a b8 d <b g'> b
  
  <g e'-.> g-. \stemUp c4 ~ c8 d-. b-. a-.
  a4. ~ g8 g2\fermata
  \bar "|."
  }
MDII = \notes \relative c' {
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
  
  s4 \stemDown r8 e8-. d-. fis-. g4
  g4 fis s2
  s1
  s
  
  s4 r8 e d fis <d g> e
  <d4 g> <c fis> <b2 d>
  }

MSI = \notes \relative c' {
  \stemBoth g4 b8 g d' c b g
  a c,-. d-. fis-. g-. b-. d-. g-.
  fis4 r8 d, e g-. b-. e-.
  d4 r8 b, c e-. g-. c-.
  
  b4 r8 g a fis' g, e'
  fis, d' e, cis' d d,-. fis-. d-.
  g-. g,-. r g' a a,-. a'-. a-.
  fis-. d'-. r fis, g g, fis fis'
  
  e d cis b a g'-. fis-. g-.
  a-. g-. a-. a,-. d-. e16 fis g a b cis
  d8 d, fis d a' g fis d
  e g-. a-. a,-. d-. fis-. a-. d-.
  
  <c!4 d> r <b d> r
  <fis d'> r <g d'> r8 d'-.
  g-. d-. b-. d-. g-. d-. b-. d-.
  g-. b,-. c-. g-. <d'4 fis> r8 fis,
  
  g e a c, d4 r8 g-.
  c4 r8 a b4 r8 dis
  e b cis dis e b cis dis
  e b cis dis e-. e,-. r cis'!
  
  d a b cis d a b cis
  d a b cis d d,-. r fis'
  g d e fis g d e fis 
  g d e fis g g,-. r b
  
  c c,-. r a' b b,-. r g'
  a fis-. g-. g,-. d'16 g fis e d c b a
  b8 g b' g d' c b g
  a c,-. d-. fis-. g-. g,-. b-. g
  
  c8 a'-. r c, d d'-. r c
  b a-. b-. g-. <d'4 fis> \clef violin r8 fis'
  g8 fis16 g a8 g16 fis g8 fis16 g a8 g16 fis
  g8 fis16 g a8 g16 fis g8 r r \clef bass g,,
  
  c b-. a-. g-. fis-. d-. e-. c-.
  d4-. d, g r8 \clef violin fis''
  g8 fis16 g a8 g16 fis g8 fis16 g a8 g16 fis
  g8 fis16 g a8 g16 fis g8 r r \clef bass <g,, g'>
  
  <c c'-.> <b b'-.> <a a'-.> <g g'> <fis-. fis'> <d-. d'> <g-. g'> <c,-. c'>
  <d4 d'> <d, d'> <g2\fermata g'>
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
\midi {\tempo 4=104}
\paper {}
}
