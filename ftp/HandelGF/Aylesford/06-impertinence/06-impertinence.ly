\version "1.4.9.uu1"
\include "paper20.ly"
\header {
  title             = "Impertinence"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Vivace"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Impertinence"
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
  footer = "Mutopia-2002/01/05-154"
  }

Global = \notes {\key g\minor \time 4/4 \partial 4}


MDI = \notes \relative c' {
  \repeat volta 2 {
  \stemBoth d4-.
  
  g bes a g8 fis
  g2 d
  a'8 bes c4-. bes-. a-.
  bes2 g
  
  bes8 c d4-. c-. bes-.
  <a2 c> f4-. d'-.
  \stemUp es2 \times 2/3 {[c8 d c} d16 c bes c]
  \partial 4*3 d2.
  }
  
  \repeat volta 2 {
  \partial 4 \stemBoth d4-.
  
  d8 es f!4-. es-. d-.
  es2 c
  c8 d es4-. d-. c-.
  d2 bes
  
  bes8 c d4-. c-. bes-.
  a8 bes c4-. bes-. a-.
  bes-. a8 bes g4-. g'-.
  <a,2 d fis> <g d'>
  
  g'4 a bes8 a g fis
  g2 d
  es8 d c bes \times 4/6 {[a16 bes a bes a bes]} [a8 r16 g]
  \partial 4*3 g2.\fermata
  }
  
  }
MDII = \notes \relative c'' {
  s4
  
  s1
  s
  s
  s
  
  s
  s
  \stemDown g2 g
  fis2.
  
  s4
  
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
  s2.
  }

MSI = \notes \relative c {
  r4
  
  \stemBoth
  r2 r4 d4-.
  g a bes a8 g 
  fis2 d
  g4-. g,8 a bes4-. c-.
  
  d-. bes-. a-. g-.
  f-. f'-. es-. d-.
  c2 <es g>
  <d2. a'>
  
  r4
  
  r2 r4 bes'-.
  c d es-. c-.
  a2 f
  bes4 c d-. bes-.
  
  g2 es'
  fis, d'
  g, es
  d4-. c8 d bes4-. g-.
  
  es'-. c-. d-. d'-.
  es-. d8 c bes4-. g-.
  c-. a-. <d fis-.> d,-.
  g2.\fermata
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
