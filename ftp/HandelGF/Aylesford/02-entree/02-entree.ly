\version "2.16.1"
#(set-global-staff-size 16)
\header {
  title             = "Entrée"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Vivace"
  mutopiatitle      = "Entrée"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-150"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
  }
  
Global =  {\key g\minor \time 4/4 \partial 8}


MD =  \relative c'' {
  \repeat volta 2 {
  d8
  
  bes g d' <bes g'> <a fis'> e' d16 g fis g |
  es! d c bes <<{a d c d} \\ {fis,4}>> bes8-. g-. <<{d'-. d-.} \\ {bes-. a-.}>> |
  <<{d c16 bes f'8-. f-. f es16 d} \\ {g,4 d'8-. c-. bes4}>> bes'8. a16 |
  g16 a g f es d c bes a f g a bes c d es |
  
  f8 <bes, g'> <bes d> <a c>16 bes bes8. c16
  <<{
    d8 es |
    c-. d bes8. a16 a4  d8[-. e16 f!] |
    e8[-. fis16 g]  fis8[-. g-.] <fis a>4.
  } \\ {
    d8-. bes |
    c a g4 fis g |
    g8[ d' c bes] d4.
  }>>
  }
  
  \repeat volta 2 {
  a'8 |
  fis e16 d g8 g es d16 c f8 f |
  d16 es d c bes c bes a g4 es'16 f es d |
  c d c bes a bes a g f bes a bes g c bes c |
  a d c d bes es d es c f es f d f, g a |
  
  bes a bes c <<{d8 c16 bes} \\ {g8 a16 bes}>> bes4 r8 <bes d>8-. |
  <a c>4 r8 <c f>-. <c es>4 r8 <c es>-. |
  <bes d>4 r8 g' fis d a'8. a16 |
  bes8-. es, d g es c f!8. es16 |
  
  d8 <bes g'> e <c a'> fis d bes'8. a16 |
  <<{g fis g a} \\ {c,8[ es]}>> <d g bes> <fis a>16 g g4 ~ g16 f es d |
  es d c bes c bes a g fis8 g-. <<{a-. bes-.} \\ {d,-. d-.}>> |
  <<{g16[ fis g a]  bes8[ a16 g]} \\ {c,8 es <d g> fis}>> <bes, d g>4.
  }
  }

MS =  \relative c' {
  r8
  
  g-. a-. bes-. c-. d-. c-. bes-. g-.
  c-. a-. d-. d,-. g4 g8-. a-.
  bes4 bes8-. c-. d4. d8-. 
  es8. d16 c8-. es,-. f4. es8
  
  d-. es-. f-. f,-. bes16 f' g a bes8 g
  a fis g c, d-. c-. bes-. g-.
   c[-. bes-. a-. g-.] d'4.
  
  r8
  
  r d'8 bes g c c a g16 f
  bes8. a16 g8. f16 es f es d c4
  a'8. g16 f8. es16 d4 es
  f g a bes8. a16
  
  g8 d es-. f-. bes-. d16 c bes c d es
  f8-. a,16 g f g a bes c d es d c d es f
  g8 bes,16 a g a bes c \clef violin d c d e fis e fis d
  g8-. \clef bass g,16 a bes a bes g c8-. c16 bes a g a f
  
  bes8 g c a d fis, g d'-.
  es-. c d d,-. g-. g16 a bes8 g-.
  c,-. d-. es-. c-. d4 fis8-. g-.
   es[-. c-. d-. d,-.] g4.
  }

\score { {
  \new PianoStaff <<
    \set PianoStaff.midiInstrument = "harpsichord"
    \new Staff = "up" <<
      \Global \clef treble \MD
    >>
    \new Staff = "down" <<
      \clef bass \MS
    >>
  >>
}

  \midi {
    \tempo 4 = 92
    }


\layout {}
}
