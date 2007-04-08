\version "1.4.9.uu1"
\include "paper20.ly"
\header {
  title             = "Air mit Variationen"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegretto"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Air"
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
  footer = "Mutopia-2002/01/08-165"
  }

Global = \notes {\key f\major \time 4/4 \partial 2}


MDI = \notes \relative c'' {
  \repeat volta 2 {
  \stemUp c4-. f-.
  
  e16 f e d c4 g'-. e
  a f bes a8 bes
  g4-. f-. e8. f16 \times 4/6 {[g16 f g f e f]}
  \partial 2 g2
  }
  
  \repeat volta 2 {
  \partial 2 \stemBoth c,4-. <g' c-.>
  
  \stemUp a f d-. g-.
  e16 f e d c4 f-. e8 d
  cis4 d8. e16 e,4-. \times 4/6 {[d'16 cis d cis b cis]}
  d2 d4-. g-.
  
  e16 f e d c4 g'-. a8. bes16
  a bes a bes g4 g16 a bes8 g8. bes16
  g4 f8. g16 g,4-. e'-.
  \partial 2 f2
  }
  
  \repeat volta 2 {
  \partial 2 \stemBoth c8^#'(large (lines "Var. I" " ")) a f f'
  
  e c f a, g g' \times 4/5 {[e16 f e d c]}
  a'8 f c a' bes f e a
  g d c f e bes a f'
  \partial 2 g8-. e-. f-. g-. 
  }
  
  \repeat volta 2 {
  \partial 2 c,8 e g c
  
  a f c f d bes g g'
  e c a e' f d bes' d,
  cis a d g, f d' e, cis'
  d d,-. f-. a-. d-. g f g
  
  e c f c g' c bes c
  a c, g' c, f bes e, a
  d, g c, f g, f' c e
  \partial 2 f8 f,-. a-. bes-.
  }
  
  \repeat volta 2 {
  \partial 2 \stemUp c4-.^#'(large (lines "Var. II" " ")) f-.
  e f g e 
  a f bes a-.
  g f e \times 4/6 {[g16 f g f e f]}
  \partial 2 g2
  }
  
  \repeat volta 2 {
  \partial 2 \stemUp c,4-. c'-.
  a16 bes a bes f4 d-. g-.
  e16 f e d c4 f-. e8 d
  cis4-. d-. e,-. cis'-.
  d2 d4-. g-.
  
  e16 f e d c4 g'-. c-.
  a16 bes a bes g4 bes a-.
  g-. f-. g,-. e'-.
  }
  \alternative {
  {\partial 2 \stemBoth <a,2 c f>}
  {\partial 2 \stemBoth <a,2 c f\fermata>}
  }
  \bar "|."
  }
MDII = \notes \relative c'' {
  \stemDown a4 a
  
  g a d c
  a d e c
  d c bes a
  <c2 e>
  
  s2
  
  c2 g4 bes
  g a f bes
  a a s e
  f2 g4 bes
  
  g a d c
  f c f f
  d c e, g
  a2
  
  s2
  
  s1
  s
  s
  s2
  
  s2
  
  s1
  s
  s
  s
  
  s
  s
  s
  s2
  
  a4 f
  c'2 d4 c ~
  c d2 c4
  d2 g,4 c
  <c2 e>
  
  g4 c
  c2 g4 d'
  g, a a bes
  e, a bes, <e a>
  <f2 a> g4 d'
  
  g,2 c4 g'
  c,2 f4 e
  d c d,-. <g c>
  
  s2
  s2
  }

MSI = \notes \relative c {
  \stemBoth f4-. f,-.
  
  c'-. a-. bes-. c-.
  f-. bes8 a g4 f-.
  bes-. a-. g-. f-.
  c'-. c,-.
  
  e-. c-.
  
  f-. a-. bes-. g-.
  c-. a-. d-. g,-.
  a-. f-. g-. a-.
  d,-. d'-. bes-. g-.
  
  c-. a-. bes-. e-.
  f-. e-. d-. c-.
  bes-. a8. bes16 c4-. c,-.
  f2
  
  f4 a
  
  c d bes c
  f, e' d c
  bes a g f
  c' e,
  
  c e
  f a bes b
  c cis d g,
  a bes a a,
  
  d d' bes g
  c a e c
  f e d c
  bes a bes c
  <f,2 f'>
  
  f'8 g a bes
  c bes a f bes g c c,
  f a bes a g e' f a,
  bes c d bes c g a f
  c' e,-. f-. g-.
   
  e8 d e c
  f g a f bes a bes g
  c c, f e d f g bes
  a g f d g e a g
  f e-. d-. c-. bes a bes g
  
  c d e f e d e c
  f f' e c d d, c' c,
  bes' bes, a' a, bes g c c,
  
  f-. a-. c-. f-.
  f2\fermata
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
      \property Staff.VoltaBracket = \turnOff
      \Global \clef bass
      \context Voice=One {\voiceOne\MSI}
    >
  >
}
\midi {\tempo 4=108}
\paper {}
}
