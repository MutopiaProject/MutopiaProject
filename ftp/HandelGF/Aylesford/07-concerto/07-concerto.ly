\version "2.16.1"
#(set-global-staff-size 16)
\header {
  title             = "Concerto"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegro moderato"
  mutopiatitle      = "Concerto"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-155"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}


Global =  {\key g\major \time 4/4}


MDI =  \relative c'' {
  g8 b d <b g'> <a fis'> d <g, g'> b
  c e,-. fis-. d'-. b-. g-. r b'
  a-. fis-. d-. fis-. g-. e,-. r g'
  fis-. d-. b-. d e-. c,-. r e'
  
  d b-. g-. b' c16 a g a b g fis g
  a fis e fis g e d e fis e d8 r a'-.
  b16 a g fis e d cis b cis8-. a-. cis-. e-.
  a16 g fis e d cis b a b d cis d a d cis d
  
  g, g' fis g e g d g cis,8 <cis b'>-. <d a'>-. <e g>-.
  <d fis>8. e16 <cis e\prall>8. d16 <fis, a d>4 r
  d'8 fis a <fis d'> <e cis'> a <d, d'> fis
  g b,-. cis-. a'-. fis-. d-. r a'
  
  fis d-. d16 e d8-. g-. d-. \times 4/6 { e16[ d e d cis d]}
  a'8-. d,-. \times 4/6 { e16[ d e d cis d]} b'8-. <b, d>-. <b d>16 <c e> <d fis>8-.
  <b d>16 <c e> <d fis>8-. <b d>16 <c e> <d fis>8-. <b d>16 <c e> <d fis>8-. <b d>16 <c e> <d fis>8-.
  <b d>16 <c e> <d fis>8-. <a c>8-. <g b>-. a-. a' fis d
  
  b' g-. c4 r8 fis,-. b4
  r16 e,16 fis g a g fis e dis b' a b fis b a b
  g b dis, b' e, b' fis b g b d, b' e, b' fis b
  g b dis, b' e, b' fis b g b a b e, a g a
  
  fis a cis, a' d, a' e a fis a cis, a' d, a' e a
  fis a cis, a' d, a' e a fis a g a d, d' c! d
  b d, fis d g d a' d, b' d, fis d g d a' d,
  b' d, fis d g d a' c, b d e fis g8 d
  
  e16 c b a a' e d c d b a g g' d c b
  c b c a b a b g <fis a>8-. d-. r4
  g8 b d <b g'> <a fis'> d <g, g'> b
  c e,-. fis-. d'-. b-. g-. r d'
  
  e8 c32 d e16-. \times 4/6 { fis[ e fis e d e]} fis8-. d32 e fis16 \times 4/6 { g[ fis g fis e fis]}
  g8-. e32 fis g16-. \times 4/6 { a16[ g a g fis g]} a8-. d,-. r a'-.
  b8\prall a16 b c8 b16 a b8\prall a16 b c8 b16 a
  b8\prall a16 b c8 b16 a b8 d, g b,
  
  e8-. g,-.
  <<{
    c4 ~ c8 d-. b-. a-. |
    g8. a16 a8.\prall g16
  } \\ {
    r8 e8-. d-. fis-. g4 |
    g4 fis
  }>>
  <b, d g>4 r8 a'-. |
  b8\prall a16 b c8 b16 a b8\prall a16 b c8 b16 a |
  b8\prall a16 b c8 b16 a b8 d <b g'> b |
  
  <g e'>-. g-.
  <<{
    c4 ~ c8 d-. b-. a-. |
    a4.( g8) g2\fermata |
  } \\ {
    r8 e d fis <d g> e |
    <d g>4 <c fis> <b d>2 |
  }>>
  \bar "|."
  }

MSI =  \relative c' {
  g4 b8 g d' c b g
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
  
  <c! d>4 r <b d> r
  <fis d'> r <g d'> r8 d'-.
  g-. d-. b-. d-. g-. d-. b-. d-.
  g-. b,-. c-. g-. <d' fis>4 r8 fis,
  
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
  b a-. b-. g-. <d' fis>4 \clef violin r8 fis'
  g8 fis16 g a8 g16 fis g8 fis16 g a8 g16 fis
  g8 fis16 g a8 g16 fis g8 r r \clef bass g,,
  
  c b-. a-. g-. fis-. d-. e-. c-.
  d4-. d, g r8 \clef violin fis''
  g8 fis16 g a8 g16 fis g8 fis16 g a8 g16 fis
  g8 fis16 g a8 g16 fis g8 r r \clef bass <g,, g'>
  
  <c c'>-. <b b'>-. <a a'>-. <g g'> <fis fis'>-. <d d'>-. <g g'>-. <c, c'>-.
  <d d'>4 <d, d'> <g\fermata g'>2
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
    \tempo 4 = 104
    }


\layout {}
}
