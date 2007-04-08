\version "1.4.9.uu1"
\include "paper20.ly"
\header {
  title             = "Allemande"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Andante"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Allemande"
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
  footer = "Mutopia-2002/01/08-166"
  }

Global = \notes {\key a\minor \time 4/4 \partial 16}


MDI = \notes \relative c'' {
  \repeat volta 2 {\stemBoth a16
  <c,4 e a> ~ a'16 a b c b4 ~ b16 e d e
  r c d e f gis, a b gis4. e'16 d
  e a, g! a e g f e f4 ~ f16 a b c
  d g, f g d g e d e4 ~ e16 c' d e
  
  d g f g c, f b, e a, d c d b g a b
  a b c d b8.\prall c16 <e,4. g c> c'16 b
  a g fis e dis b cis dis e fis g fis \stemUp fis32 g fis g [fis16 r32 e]
  \partial 16*15 \stemBoth [e16 b] [g8. e'16 fis, dis'] <g,4 b e> r8 r16
  }
  
  \repeat volta 2 {
  \partial 16 b'16
  b gis [e8. d'16 c b] [c a] [e8. e'16 d cis]
  d e d e \times 4/6 {[f e f e d e]} [f d] [a8. a16 b cis]
  d e f e d c! b a b c b a g8.f16
  e g c e, d c' d, b' [c g] [e8. e16 fis g]
  
  [fis a] [d8. fis,16 gis a] gis4. e'16 d
  c d32 e a,16 c b e e, b' c d32 e a,16 c b e e, b'
  [c d32 e] [a,8. d16 a c] [b c32d] [g,8. c16 g bes]
  [a gis] [a8. c16 b a] gis e a e ' e, c' e,
  
  d' c b a gis e e' d c b a b32 c [gis!32 a gis a] [gis8 r32 a]
  \partial 16*15 [a16 e] [c8. a'16 b, gis'] [a e] c8 r r16
  }
  }
MDII = \notes \relative c' {
  \stemDown s16
  s1
  s
  s
  s
  
  s
  s
  s2. dis!4
  s2. s8.
  
  s16
  s1
  s
  s
  s
  
  s
  s
  s
  s
  
  s
  s2. s8.
  }
MSI = \notes \relative c' {
  \stemBoth r16
  
  a8-. e-. a,4 gis'8-. fis-. gis-. e-.
  a-. g!-. f!-. d-. e-. e, e' d
  cis e a a,-. d16 f a f d8 c
  b d g g,-. c16 e g e c4
  
  b8-. b'-. a-. g-. f-. fis-. g-. e-.
  f!-. d-. g-. g,-. c16 g' c b c b a g
  [a8 c b16 r16 a8] g a b b,-.
  [e,8. b'16 e8 b] [e e,-.] r8 r16
  
  s16
  e'8. fis16 gis8 e-. a8. e16 a,8-. g'
  f d-. cis-. a-. d8. a16 d,4
  d'8-. e-. f-. d-. g16 a g f e f e d
  c8 e16 f g8-. g,-. c8. g'16 c8-. c,-.
  
  d8. a'16 d8-. d, e16 b' e d e d c b
  a4 [gis8 e] [a a,] [gis'! e]
  a8. g!16 fis8 d g8. f16 e8 c
  f8. e16 d8 dis-. [e-. c-.] [gis-. a-.]
  
  [d!-. f-.] [e-. gis-.] [a-. d,-.] [e-. e,-.]
  [a8. e16 a8 e] [a8. e16] a,8 r16
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
\midi {\tempo 4=72}
\paper {}
}
