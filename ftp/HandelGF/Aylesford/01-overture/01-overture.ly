\version "2.16.1"

\header {
  title             = "Ouvertüre"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Maestoso"
  mutopiatitle      = "Ouvertüre"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"
  
 footer = "Mutopia-2013/02/21-149"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
  }

Global =  {\key g\minor \time 4/4}


MDI =  \relative c''' {
  g4. bes8 bes4 a8 g |
  g4 d d4. c8 |
  bes4. a8 a4. g8 |
  g4. a8 bes8. c16 d8 es |
  f4. g8 fis4 g |
  a4 d, bes'4. a8 |
  g4. f!8 e f d e |
  cis4 a f'4. f8 |
  f4. e8 e4. d8 |
  d1\fermata |
  \bar "||"

  \time 6/8
  \tempo "ALLEGRO"

  \oneVoice d8-. d-. d c16 bes a bes c d |
  bes a g a bes c d c d es f d |
  g f g bes a g fis8-. a,-. d-. |
  bes4 r8 es16 f es d c bes |

  a8 f'-. f es16 d c d es f |
  d c bes c d es f4 r8 |
  es4 r8 d4 r8 |
  g16 f es f g a f es d es f g |

  es d c d es f d c bes c d es |
  es d c8.\prall bes16 bes4 r8 |
  r8 f'-. f es16 d c d es f |
  g8-. g-. g f16 e d e f g |

  a4 a8 d,-. g4 ~ |
  g16 a f e f g e8-. a-. a-. |
  a2.\trill ~ |
  a ~ |

  a16 g f e f d bes' a g f e g
  a g f e d f g f e d cis e
  f e f g a bes g f e8.\prall d16
  d8-. d-. d c16 bes a bes c d

  bes a g a bes c a8-. d-. d
  es16 d c d es f d c bes c d es
  c bes a bes c d bes a bes c d bes
  es f es d c bes a g a bes c a

  d c d e f g e d e fis g a
  fis8-. d-. a'-. bes4.
  r8 r a fis-. d-. g
  es-. c-. f! d-. bes-. es-.

  c16 bes a bes c d bes a bes c d es
  c bes a8.\prall g16 <bes, d g>4.\fermata
  \bar "|."
  }

MDII =  \relative c'' {
  <bes d>4. <bes f'>8 <bes f'>4 <d f>
  <bes es> <d, g> <d a'>4. <d fis>8
  <d g>4. <es g>8 <d g>4 <c fis>
  <bes d>4. s8 s2
  c'4. g8 d'2
  d2. c4
  d c bes g
  a2 a
  bes a4 g
  <fis a>1
  }

MSI =  \relative c' {
  <bes d>4. <bes d>8 <bes d>4 f'
  g bes, a4. a8
  bes4. c8 d4 d,
  g2. bes4
  c4. d8 c4 bes
  a d bes c
  bes c d2
  e d
  d cis
  d1

  \oneVoice R2.
  \clef violin r8 g g f-. f-. f
  es-. es-. es d16 c d e fis d
  g a g f! es! d c8 d-. es-.

  f4. g8-. a-. f-.
  bes,-. bes-. bes' a16 g f g a bes
  g f es f g a f es d es f g
  es8 c-. es-. \clef bass d-. bes-. g

  c-. a-. f bes-. g-. d
  es-. f-. f,-. bes-. \clef violin bes''-. bes
  a16 g f g a bes c8-. c,-. c'
  bes16 a g a bes c d8-. d,-. d'

  c16 bes a bes c d bes a g a bes c
  a8-. d-. d,-. <a' cis>4 r8
  r a-. a f16 e d e f g
  a g a b cis a d cis d d, f g

  a8 d-. d, g-. c-. c,
  f-. \clef bass a,-. bes-. e,-. g-. a-.
  d, e f g a-. a,-.
  d4 r8 d,4 r8

  d'4 r8 d-. bes'-. g
  c-. f-. f, bes-. d-. g
  a,-. c-. fis g,-. g'16 f es d
  c bes c d es c f8-. f16 es d c

  bes8 a-. g-. c-. bes-. a-.
  d16 c d e fis d g a g f es d
  c d c bes a g d' c bes a bes g
  c bes a g a f bes a g a bes g

  a8-. fis-. d g-. a-. bes-.
  c-. d-. d,-. g,4.\fermata
  }

MSII =  \relative c' {
  g4. d8 d4 d'
  es g, fis4. d8
  g4. c,8 d4 d,
  g2. g'4
  a4. bes8 a4 g
  fis2 g4 a
  bes a g bes
  a g f d
  g2 a
  <d,\fermata a'>1
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
      \Global \clef bass
      \new Voice=One {\voiceOne\MSI}
      \new Voice=Two {\voiceTwo\MSII}
    >>
  >>
}

  \midi {
    \tempo 4 = 104
    }


\layout {}
}
