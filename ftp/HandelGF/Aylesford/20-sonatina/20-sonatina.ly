\version "1.4.9.uu1"
\include "paper16.ly"
\header {
  title             = "Sonatina"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegretto"
  tagline           = "Typeset using Lilypond 1.4.9.uu1"
  mutopiatitle      = "Sonatina"
  mutopiacomposer   = "G. F. Handel (1685-1759)"
  mutopiainstrument = "Harpsichord"
  date              = "18th century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  lastupdated       = "2002/Jan/10"

  tagline = "\\parbox{\hsize}{\\thefooter\\quad\\small \\\\This music is part of the Mutopia project, \\texttt{http://www.mutopiaproject.org/}\\\\It has been typeset and placed in the public domain by " + \maintainer + ".\\\\Unrestricted modification and redistribution is permitted and encouraged---copy this music and share it!}"
  footer = "Mutopia-2002/01/10-169"
  }

Global = \notes {\key a\minor \time 3/4}


MDI = \notes \relative c''' {
  %\property Score.skipTypesetting = ##t
  \repeat volta 2 {
  \stemBoth a8-. e-. c-. a-. e'-. e,-.
  a4 r r
  a'8-. e-. c-. a-. e'-. e,-.
  a4 r r
  
  r16 e fis gis a b c d e8-. b-.
  <a2 c> <gis4 b>
  r16 e fis gis a b c d e8-. b-.
  <a2 c> r4
  
  r16 e' d e \stemUp b e a, e' gis, e' fis, e'
  \stemBoth r16 e d e \stemUp b e a, e' gis, e' fis, e'
  \stemBoth e,4. [c'8 b-. a-.]
  \stemUp e'2.
  
  \stemBoth gis,16-. e' d e b e a, e' gis, e' d e
  \stemUp c4. [f8 e-. d-.]
  c4. [f8 e-. d-.]
  s4. \property Voice.Beam \set #'height = #0 \property Voice.Beam \set #'staff-position = #9 [d8 c b]
  
  a8 s4 [d8 c b]
  a8 s \property Voice.Beam \set #'staff-position = #11 [a'8 g f e]
  f8 s s2
  s4 \property Voice.Beam \set #'staff-position = #10 [g8 f e d]
  
  s2.
  s4 \property Voice.Beam \set #'staff-position = #9 [f8 e d c]
  s4 [f8 e d c]
  s4 \property Voice.Beam \set #'staff-position = #8 [e8 d c b]
  
  s2.
  s4 \property Voice.Beam \set #'staff-position = #7 [d8 c b a]
  \stemBoth \property Voice.Beam \revert #'height \property Voice.Beam \revert #'staff-position b4 ~ b16 g a b c d e f
  g4 ~ g16 c, d e f g a b
  
  c b a g f e d c b a g f
  e8 r <c'4 a'> <d g>
  g16 f e d c b a g f e d c
  b8 c16 d g,8 c d-. b-.
  
  \stemUp r4. [a'8 g f]
  e4. [a8 g f]
  e2.
  }
  %\property Score.skipTypesetting = ##f
  
  \stemBoth r16 c'' b c g c f, c' e, c' d, c'
  c, c' b c g c f, c' e, c' d, c'
  c,4. [a'8 g f-.]
  \stemUp e4. [a8 g f-.]
  
  \stemBoth e16-. c' b c g c f, c' e, c' d, c'
  c, g' f g e g d g c, g' bes, g'
  a,4. [d8 c bes-.]
  a4. [d8 c bes-.]
  
  \stemBoth a16-. f' e f c f bes, f' a, f' g, f'
  <f,2 a> <e4 g>
  <g2 bes> <fis4 a>
  <a2 c> <gis4 b>
  
  <c2 e> <b4 d>
  <d2 f> <cis4 e>
  <e2 g> <dis4 fis>
  r16 b' a b g b fis b e, b' d,! b'
  
  \stemUp s4 \property Voice.Beam \set #'height = #0 \property Voice.Beam \set #'staff-position = #11 [a8 g f e]
  f8 s s2
  s4 \property Voice.Beam \set #'staff-position = #10 [g8 f e d]
  e8 s s2
  
  s4 \property Voice.Beam \set #'staff-position = #9 [f8 e d c]
  d8 s s2
  \stemBoth \property Voice.Beam \revert #'staff-position \property Voice.Beam \revert #'height d16 gis fis gis e gis d gis c, gis' b, gis'
  c,4. [f8 e d]
  
  c4. [f8 e d]
  c8-. c'16 b a g f e d c b a
  gis4. [c8 b a-.]
  gis4. [c8 b a-.]
  
  \stemUp e'8-. b-. gis-. e-. a-. a,-.
  <gis4 e'> r r
  s2.
  s4 \property Voice.Beam \set #'height = #0 \property Voice.Beam \set #'staff-position = #7 [c'8 b a g] 
  
  f8 s \property Voice.Beam \set #'staff-position = #6 [b8 a g f] 
  \property Voice.Beam \revert #'staff-position \property Voice.Beam \revert #'height e16 c' b c a c g c f, c' e, c'
  d,16 b' a b gis b fis b e, b' d, b'
  c, a' gis a e a gis a c, a' gis a
  
  b, a' gis a e a gis a b, a' gis a
  a4 r r
  r16 a gis a e a d, a' c, a' b, a'
  a, a' gis a e a d, a' c, a' b, a'
  
  a,8 r r [f' e d-.]
  c4. [f8 e d-.]
  c4 r <b e gis>
  <c2. e a\fermata>
  \bar "|."
  }
MDII = \notes \relative c'' {
  s2.
  s
  s
  s
  
  s
  s
  s
  s
  
  s4. \stemDown [a8 gis fis]
  s4. [a8 gis fis]
  s2.
  gis4. [c8 b-. a-.]
  
  s2.
  a
  a
  c16-. a' gis a e a d, a' c, a' b, a'
  
  a, a' gis a e a d, a' c, a' b, a'
  a, c' b c a c g c f, c' e, c'
  f, c' b c f, c' b c f, c' b c
  f, b a b g b f b e, b' d, b'
  
  e, b' a b e, b' a b e, b' a b
  e, a g a f a e a d, a' c, a'
  d, a' g a f a e a d, a' c, a'
  d, g f g e g d g c, g' b, g'
  
  c, g' f g c, g' f g c, g' f g
  c, f e f d f c f b, f' a, f'
  s2.
  s
  
  s
  s
  s
  s
  
  c,2. ~
  c
  c
  
  %---
  
  s2.
  s
  s
  c'4. s4.
   
  s2.
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
  
  c16 c' b c a c g c f, c' e, c'
  f, c' b c f, c' b c f, c' b c
  f, b a b g b f b e, b' d, b'
  e, b' a b e, b' a b e, b' a b
  
  e, a g a f a e a d, a' c, a'
  d, a' gis a d, a' gis a d, a' gis a
  s2.
  s
  
  s
  s
  s
  s
  
  gis,4 r a,
  s2.
  r16 b''16 a b gis b fis b e, b' d, b'
  c, e d e c e b e a, e' g, e'
  
  f,16 d' c d b d a d g, d' f, d'
  e,8 r [a g f e]
  d r [gis fis e d]
  c r e r c r
  
  b r e r b r
  s2.
  s
  s
  
  s
  s
  s
  s
  }

MSI = \notes \relative c' {
  \stemBoth R2.
  a8-. e-. c-. a-. e'-. e,-.
  a4 r r
  a'8-. e-. c-. a-. e'-. e,-.
  
  a4 r r
  r16 e' fis gis a b c d e8-. b-.
  <a2 c> <gis4 b>
  r16 a, b c d e fis gis a8-. a,-.
  
  \stemUp gis'4. [c8 b-. a-.]
  gis4. [c8 b-. a-.]
  gis8 s4 \property Voice.Beam \set #'height = #0 \property Voice.Beam \set #'staff-position = #11 [a8 gis fis]
  e s4 [a8 gis fis]
  
  s2 b4
  s4. \property Voice.Beam \set #'staff-position = #7 [d,8 c b]
  s4. [d8 c b]
  \stemBoth a2.
  
  \stemUp c'4. \property Voice.Beam \revert #'height \property Voice.Beam \revert #'staff-postion [f8 e-. d-.]
  c4. [f8 e-. d-.]
  \stemBoth d4 d, d'
  \stemUp r e8 d c-. b-.
  
  \stemBoth c4 c, c'
  \stemUp r d8 c b-. a-.
  \stemBoth b4 b, b'
  \stemUp r c8 b a-. g-.
  
  \stemBoth a4 a, a'
  \stemUp r b8 a g-. f-.
  \stemBoth <g,8 g'-.> d' g4 f
  e8 f \clef treble <e'4 g> <d f>
  
  <c e> \clef bass <f, a> g
  c16 b a g f e d c b a g f
  e2 \stemUp d'4
  d4. e8 f4
  
  r16 \property Voice.Beam \set #'height = #0 \property Voice.Beam \set #'staff-position =#5 c b c g c f, c' e, c' d, c'
  c, c' b c g c f, c' e, c' d, c'
  c,2.
  
  %---
  
  R2.
  R
  s4. \property Voice.Beam \set #'staff-position = #9 [f'8 e d]
  c8 s4 [f8 e d]
  
  \stemBoth c4 r r
  R2.
  r16 f e f \stemUp c f bes, f' a, f' g, f'
  f, f' e f c f bes, f' a, f' g, f'
  
  \stemBoth f,4 r r
  f'8-. c-. a-. f-. c'-. c,-.
  g''-. d-. bes-. g-. d'-. d,-.
  a''-. e-. c-. a-. e'-. e,-.
  
  c''-. g!-. e-. c-. g'-. g,-.
  d''-. a-. f-. d-. a'-. a,-.
  e''-. bes-. g-. e-. bes'-. bes,-.
  e4 e, r
  
  \stemUp r4 [f''8 e d-. c-.]
  \stemBoth d,4 d' d,
  \stemUp r4 [e'8 d c-. b-.]
  \stemBoth c4 c, c'
  
  \stemUp r4 [d8 c b-. a-.]
  \stemBoth b4 b, b'
  e,2 r4
  \stemUp s4. [d8 c b] 
  
  a8 s4 [d8 c b]
  a2 r4
  \stemUp e16 e' d e b e a, e' gis, e' fis, e'
  e, e' d e b e a, e' gis, e' fis, e' 
  
  \stemBoth e,4 r <a e'>
  e16 e' d e b e a, e' gis,e' fis, e'
  e,2 r4
  a4 [a'8 g! f-. e-.]
  
  d4 [g8 f e-. d-.]
  c4 [f8 e d-. c-.]
  b4 [e8 d c-. b-.]
  a2 r4
  
  <e2 e'> <e4 e'>
  a16 a' gis a e a d, a' c, a' b, a'
  a,4 r r
  a r r
  
  s4. \stemUp \property Voice.Beam \set #'staff-position = #7 \property Voice.Beam \set #'height = #0 [d8 c b]
  a s4 [d8 c b]
  \property Voice.Beam \revert #'height \property Voice.Beam \revert #'staff-position a8 <e-. e'> <c-. c'> <a-. a'> e'-. <e,-. e'>
  <a2.\fermata a'> 
  }
MSII = \notes \relative c {
  s2.
  s
  s
  s
  
  s
  s
  s
  s
  
  e2.
  e
  e16 e' d e b e a, e' gis, e' fis, e'
  e, e' d e b e a, e' gis, e' fis, e'
  
  e,2 e4
  r16 a gis a e a d, a' c, a' b, a'
  a, a' gis a e a d, a' c, a' b, a'
  s2.
  
  a
  a
  s
  g
  
  s
  f
  s
  e
  
  s
  d
  s
  s
  
  s
  s
  s2 f,4
  g2 g4
  
  s4. [f8 e d]
  c s4 [f8 e d]
  s2.
  
  s2.
  s
  r16 c'' b c g c f, c' e, c' d, c'
  c, c' b c g c f, c' e, c' d, c' 
  
  s2.
  s
  s4. [bes,8 a g]
  f s4 [bes8 a g]
  
  s2.
  s
  s
  s
  
  s
  s
  s
  s
  
  a2.
  s
  g'
  s
  
  f
  s
  s
  r16 a gis a e a d, a' c, a' b, a'
  
  a, a' gis a e a d, a' c, a' b, a'
  s2.
  s4. [a,8 gis fis]
  e8 s4 [a8 gis fis]
  
  s2.
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
  
  a16 a' gis a e a d, a' c, a' b, a'
  a, a' gis a e a d, a' c, a' b, a'
  s2.
  s
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
\midi {\tempo 4=92}
\paper {}
}
