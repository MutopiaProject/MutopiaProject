\version "2.16.1"
#(set-global-staff-size 16)
\header {
  title             = "Allegro"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegro"
  mutopiatitle      = "Allegro"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-160"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
  }

Global =  {\key d\minor \time 4/4}


MDI =  \relative c'' {
  d16 a d e d e f d e a, e' f e f g e
  f8 a,-. d4 ~ d8 cis16 d cis d e cis
  d a d e f g a f bes d, bes' d, bes' d, bes' d,
  e g, a bes c d e c a' c, a' c, a' c, a' c,
  
  d f, g a bes c d f g a bes g e f g e
  cis e g bes a d, g cis, f cis d g, f d' e, cis'
  <f, a d>4 r8 <d a'> <<{<g a>4 r8 <cis, e>} \\ {d8 cis s4}>>
  a'16 d, a' b a b c a b e, b' c b c d b
  
  <<{c8-. a-. r a'-. a gis r gis-.} \\ {e,4 c' d s8 b?}>>
  a'16 e c e a, a' e g <a, d f>4 r8 f'-.
  g16 d b d g, g' d f <g, c e>4 r16 e'16 a, e'
  f a, f' a, f' a, f' a, b d, e f g a b g
  
  e' g, e' g, e' g, e' g, a c, d e f g a f
  d' e f d b c d b gis b d f e a, d gis,
  c gis a d, c a' b, gis' a c, d e r16 e a c
  fis, a c es d g, c fis, bes d, e fis g a bes g |
  
  e g bes d c f, bes e,
  <<{
    r8 c' f4 ~ |
    f8-. f-. e4
  } \\ {
    a,4 r8 c-. |
    bes4 r8 g-.
  }>>
  f'16 c a c f, a g f |
  c'-. g c d c d e c d a d e d e f d |
  e g, a b c d e c a' c, a' c, a' c, a' c, |
  
  bes a' g a bes a g f g bes, g' bes, g' bes, g' bes,
  a g' f g a g f e f a, f' a, f' a, f' a,
  g f' e f g f e d e f g e c d e c
  a bes c a f g a f d d' c d bes c d bes
  
  g e' d e c d e c a f' e f d e f d
  bes g' f g e f g e c a' g a bes, bes' a g
  c, a' g a bes, bes' a g a e f a, g f' e bes
  f' c a c f, a g f <e g>4 r
  
  g'16 d bes d g, bes a g <f a>4 r |
  a'16 e cis e a, g' f e f8 a,-.
  <<{
    r8 a'-. |
    g4 r8 e8
  } \\ {
    d4 ~ |
    d cis
  }>>
  a'16 a, b cis d e f d |
  bes' d, bes' d, bes' d, bes' d, e g, a bes c d e c
  
  a' c, a' c, a' c, a' c, d f, g a bes c d f
  g a bes g e f g e cis e g bes a d, g cis,
  f a, bes g' e g, a f' d c! bes a g f e d
  cis e g bes a d, g cis, f cis d g,  \clef bass f d' e, cis' |
  
  <<{d4 ~ d16 f! e d} \\ {r16 a bes fis g4}>>
    \clef violin <e' g cis>4\tempo "Adagio" <d f a d>8. e16 |
  <<{<d f>4 <cis e>} \\ {a4. g8}>> <f a d>2\fermata
  \bar "|."
  }

MSI =  \relative c' {
  r1
  d16 a d e d e f d e a, e' f e f g e
  f8-. d-. r d g,-. a-. bes-. g-.
  c-. c,-. r c' f,-. g-. a-. f-.
  
  bes-. bes,-. r bes' e,-. f-. g-. e-.
  a-. g' f e d g, a a,-.
  d16 a d e d e f d e a, e' f e f g e
  <<{a4 c b e} \\ {f,8 d a'4 ~ a gis}>>
  
  a16 e a b a b c a b e, b' c b c d b
  c4 r8 c-. d16 a f a d, d' a c
  b4 r8 b-. c16 g e g c,8-. c'
  d,-. e-. f-. d-. g-. g,-. r g'
  
  c,-. d-. e-. c-. f-. f,-. r f'
  b,-. c-. d-. b-. e-. d' c b
  a d, e e, a4 a'
  d,8-. c' bes a g-. g,-. r g'
  
  c, bes' a g f16 c f g f g a f
  g c, g' a g a bes g a8-. f-. a-. bes-.
  <<{e4 c2 b4} \\ {c8 g a e f d g4}>>
  c8 g e c f-. g-. a-. f-.
  
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
  
  f,-. g-. a-. f-. bes-. bes,-. r bes' |
  e,-. f-. g-. e-. a-. g f e |
  d d' c! c, <<{r8 d-. e4} \\ {bes4 r8 g}>> |
  <<{r8 e'} \\ a,4>> f'8 e-. d-. g,-. a-. a,-. |
  
  <d d'>4 r8 bes'
  <<{
    <e g>4 <d f>8. s16 |
    a2 d |
  } \\ {
    a4 a8. g16
    r4 a,4 d2\fermata
  }>>
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
    \tempo 4 = 112
    }


\layout {}
}
