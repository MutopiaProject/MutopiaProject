\version "2.16.1"
#(set-global-staff-size 20)
\header {
  title             = "Impertinence"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Vivace"
  mutopiatitle      = "Impertinence"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-154"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
  }

Global =  {\key g\minor \time 4/4 \partial 4}


MDI =  \relative c' {
  \repeat volta 2 {
  d4-.
  
  g bes a g8 fis
  g2 d
  a'8 bes c4-. bes-. a-.
  bes2 g
  
  bes8 c d4-. c-. bes-.
  <a c>2 f4-. d'-.
  <<{
    \override TupletBracket #'stencil = ##f
    es2 \times 2/3 { c8[ d c} d16 c bes c] |
    d2.
  } \\ {
    g,2 g |
    fis2.
  }>>
  }
  
  \repeat volta 2 {
  d'4-. |
  
  d8 es f!4-. es-. d-.
  es2 c
  c8 d es4-. d-. c-.
  d2 bes
  
  bes8 c d4-. c-. bes-.
  a8 bes c4-. bes-. a-.
  bes-. a8 bes g4-. g'-.
  <a, d fis>2 <g d'>
  
  g'4 a bes8 a g fis
  g2 d
  es8 d c bes \times 4/6 { a16[ bes a bes a bes]}  a8[ r16 g]
  g2.\fermata
  }
  
  }
MDII =  \relative c'' {
  s4
  
  s1
  s
  s
  s
  
  s
  s
  
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

MSI =  \relative c {
  r4
  
  \stemNeutral
  r2 r4 d4-.
  g a bes a8 g 
  fis2 d
  g4-. g,8 a bes4-. c-.
  
  d-. bes-. a-. g-.
  f-. f'-. es-. d-.
  c2 <es g>
  <d a'>2.
  
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
  c-. a-. <d fis>-. d,-.
  g2._\fermata
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
