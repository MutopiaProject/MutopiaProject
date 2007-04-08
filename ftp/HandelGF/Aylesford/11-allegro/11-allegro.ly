\version "1.4.9.uu1"
\include "paper16.ly"
\header {
  title             = "Allegro"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegro"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Allegro"
  mutopiacomposer   = "G. F. Handel (1685-1759)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/07"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/07-160"
  }

Global = \notes {\key d\minor \time 4/4}


MDI = \notes \relative c'' {
  \stemBoth d16 a d e d e f d e a, e' f e f g e
  f8 a,-. d4 ~ d8 cis16 d cis d e cis
  d a d e f g a f bes d, bes' d, bes' d, bes' d,
  e g, a bes c d e c a' c, a' c, a' c, a' c,
  
  d f, g a bes c d f g a bes g e f g e
  cis e g bes a d, g cis, f cis d g, f d' e, cis'
  <f,4 a d> r8 <d a'> \stemUp <g4 a> r8 <cis, e>
  \stemBoth a'16 d, a' b a b c a b e, b' c b c d b
  
  \stemUp c8-. a-. r a'-. a gis r gis-.
  \stemBoth a16 e c e a, a' e g <a,4 d f> r8 f'-.
  g16 d b d g, g' d f <g,4 c e> r16 e'16 a, e'
  f a, f' a, f' a, f' a, b d, e f g a b g
  
  e' g, e' g, e' g, e' g, a c, d e f g a f
  d' e f d b c d b gis b d f e a, d gis,
  c gis a d, c a' b, gis' a c, d e r16 e a c
  fis, a c es d g, c fis, bes d, e fis g a bes g
  
  e g bes d c f, bes e, \stemUp r8 c' f4 ~
  f8-. f-. e4 \stemBoth f16 c a c f, a g f
  c'-. g c d c d e c d a d e d e f d
  e g, a b c d e c a' c, a' c, a' c, a' c,
  
  bes a' g a bes a g f g bes, g' bes, g' bes, g' bes,
  a g' f g a g f e f a, f' a, f' a, f' a,
  g f' e f g f e d e f g e c d e c
  a bes c a f g a f d d' c d bes c d bes
  
  g e' d e c d e c a f' e f d e f d
  bes g' f g e f g e c a' g a bes, bes' a g
  c, a' g a bes, bes' a g a e f a, g f' e bes
  f' c a c f, a g f <e4 g> r
  
  g'16 d bes d g, bes a g <f4 a> r
  a'16 e cis e a, g' f e f8 a,-. \stemUp r8 a'-.
  g4 r8 e8 \stemBoth a16 a, b cis d e f d
  bes' d, bes' d, bes' d, bes' d, e g, a bes c d e c
  
  a' c, a' c, a' c, a' c, d f, g a bes c d f
  g a bes g e f g e cis e g bes a d, g cis,
  f a, bes g' e g, a f' d c! bes a g f e d
  cis e g bes a d, g cis, f cis d g,  \clef bass f d' e, cis'
  
  \stemUp d4 ~ d16 f! e d \clef violin <e4 g cis^#'(large "Adagio")> <d8. f a d> e16
  <d4 f> <cis e> <f,2 a d\fermata>
  \bar "|."
  }
MDII = \notes \relative c' {
  s1
  s
  s
  s
  
  s
  s
  s2 \stemDown d8 cis s4
  s1
  
  e4 c' d s8 b?
  s1
  s
  s
  
  s
  s
  s
  s
  
  s2 a4 r8 c-.
  bes4 r8 g-. s2
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
  s2. d'4 ~
  d cis s2
  s1
  
  s
  s
  s
  s
  
  r16 a, bes fis g4 s2
  a4. g8 s2 
  }

MSI = \notes \relative c' {
  \stemBoth r1
  d16 a d e d e f d e a, e' f e f g e
  f8-. d-. r d g,-. a-. bes-. g-.
  c-. c,-. r c' f,-. g-. a-. f-.
  
  bes-. bes,-. r bes' e,-. f-. g-. e-.
  a-. g' f e d g, a a,-.
  d16 a d e d e f d e a, e' f e f g e
  \stemUp a4 c b e
  
  \stemBoth a,16 e a b a b c a b e, b' c b c d b
  c4 r8 c-. d16 a f a d, d' a c
  b4 r8 b-. c16 g e g c,8-. c'
  d,-. e-. f-. d-. g-. g,-. r g'
  
  c,-. d-. e-. c-. f-. f,-. r f'
  b,-. c-. d-. b-. e-. d' c b
  a d, e e, a4 a'
  d,8-. c' bes a g-. g,-. r g'
  
  c, bes' a g f16 c f g f g a f
  g c, g' a g a bes g a8-. f-. a-. bes-.
  \stemUp e4 c2 b4
  \stemBoth c8 g e c f-. g-. a-. f-.
  
  d-. bes'-. r d, e-. f-. g-. e-.
  c-. a'-. r c, d-. e-. f-. d-.
  bes-. g'-. r bes, c-. d-. e-. c-.
  f-. f,-. a-. f-. bes16-. bes' a bes g a bes g
  
  e c' bes c a bes c a f d' c d bes c d bes
  g e' d e c d e c a f' e f g, g' f e
  a, f' e f g, g' f e f8 d bes c-.
  f,4 r c'16 g e g c, e d c
  
  g4 r d''16 a f a d, f e d
  a4 r d'16 a d e d e f d
  e a, e' f e f g e f8-. d-. r8 d
  g,-. a-. bes-. g-. c-. c,-. r c'
  
  f,-. g-. a-. f-. bes-. bes,-. r bes'
  e,-. f-. g-. e-. a-. g f e
  d d' c! c, \stemUp r8 d-. e4
  r8 e f e-. d-. g,-. a-. a,-.
  
  <d4 d'> s \stemUp <e' g> <d8. f> s16
  a2 d
  }
MSII = \notes \relative c {
  s1
  s
  s
  s
  
  s
  s
  s
  \stemDown f8 d a'4 ~ a gis
  
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
  c8 g a e f d g4
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
  s2 bes,4 r8 g
  a4 s2.
  
  s4 r8 bes a4 a8. g16
  r4 a,4 d2\fermata
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
\midi {\tempo 4=112}
\paper {}
}
