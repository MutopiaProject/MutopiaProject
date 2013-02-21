\version "2.16.1"
#(set-global-staff-size 16)
\header {
  title             = "Toccata"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegretto"
  mutopiatitle      = "Toccata"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-152"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
  }
  
Global =  {\key g\minor \time 4/4}


MDI =  \relative c''' {
  g4 g,2 r16 bes' a g
  fis4 r8 d-. bes16 d c d a d c d
   bes16.[ a32 g8] r es'-.  c16.[ bes32 a8] r f'-.
  
   d16.[ c32 bes8] r g'-. es16 g f g d g f g
  es8 g, fis d' g, es'16 d c bes a g
  fis4 r8 a-. bes16 c d bes c d es c
  
  d es f d es f g es f8-. g16 f es d c bes
  a4 r8 f'16 a,  bes8[ es16. d32]  c8[ f16. es32]
  d4 r8 bes'16 d, d c a' c, c bes g' bes,
  
  bes a f'! a, a g es' g, f c' d bes a8.\prall bes16
  bes4 r8 f'-. d16 f es f c f es f
   d16.[ c32 bes8] r d-. bes'16 a g f g f e d
  
  cis4 r8 a'-. f16 a g a e a g a
  f a g a e a g a f8-. <g, bes e>16 d' <e, a cis>8. d'16
  <f, a d>4 r8 d'-. g16 f g as g f es! d
  
  es8-. c-. r c-. f16 es f g f es d c
  d8-. bes-. r bes'-. c,16 bes' a g a c, bes a
  bes8-. d-. g16 f es d es d c bes a8. g16
  
  g4 r8 d'-. bes16 d c d a d c d
  bes8-. d,-. g16 f es d es d c bes a8. g16
  g1\fermata
  \bar "|."
  }

MSI =  \relative c' {
  g8 bes a c bes d c es
  d a d, fis g4 fis
  g8 bes es g, a c f a,
  
  bes d g b,-. c4 b
  c8 c, d4 es8 g a c,
  d e fis d g bes a c
  
  bes d c c, d bes' g es
  f g a f g4-. a
  bes8-. bes16 c d8 d, e fis g bes
  
  c d bes c a bes-. f-. f,-.
  bes-. bes'-. a-. f-. bes4 a
  bes8-. bes16 c d8 bes g a bes g
  
  a b cis a d4 cis
  d cis d8-. g, a a,
  d e f d b4 r8 g'-.
  
  c-. c16 d es8-. c-. a4 r8 f-.
  bes,-. bes'16 a bes8-. g-. <e c'>4 <fis d'>
  <g d'> <bes, g'> <c g'> <d fis>
  
  g,8 g'-. fis-. d-. g4 fis
  g bes, c d8 d,
  g1\fermata
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
    \tempo 4 = 92
    }


\layout {}
}
