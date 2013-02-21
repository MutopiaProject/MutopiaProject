\version "2.16.1"
#(set-global-staff-size 20)
\header {
  title             = "Air mit Variationen"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Allegretto"
  mutopiatitle      = "Air"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-165"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
  }

Global =  {\key f\major \time 4/4 \partial 2}


MDI =  \relative c'' {
  \repeat volta 2 {
  \voiceOne c4-. f-.
  
  e16 f e d c4 g'-. e
  a f bes a8 bes
  g4-. f-. e8. f16 \times 4/6 { g16[ f g f e f]}
  g2
  }
  
  \repeat volta 2 {
  \oneVoice c,4-. <g' c>-.
  
  \voiceOne a f d-. g-.
  e16 f e d c4 f-. e8 d
  cis4 d8. e16 e,4-. \times 4/6 { d'16[ cis d cis b cis]}
  d2 d4-. g-.
  
  e16 f e d c4 g'-. a8. bes16
  a bes a bes g4 g16 a bes8 g8. bes16
  g4 f8. g16 g,4-. e'-.
  f2
  }
  
  \repeat volta 2 {
  \mark "Var. I"
  \oneVoice c8 a f f'
  
  e c f a, g g' \times 4/5 { e16[ f e d c]}
  a'8 f c a' bes f e a
  g d c f e bes a f'
  g8-. e-. f-. g-. 
  }
  
  \repeat volta 2 {
  c,8 e g c
  
  a f c f d bes g g'
  e c a e' f d bes' d,
  cis a d g, f d' e, cis'
  d d,-. f-. a-. d-. g f g
  
  e c f c g' c bes c
  a c, g' c, f bes e, a
  d, g c, f g, f' c e
  f8 f,-. a-. bes-.
  }
  
  \repeat volta 2 {
  \mark "Var. II"
  \voiceOne c4-. f-.
  e f g e 
  a f bes a-.
  g f e \times 4/6 { g16[ f g f e f]}
  g2
  }
  
  \repeat volta 2 {
  c,4-. c'-.
  a16 bes a bes f4 d-. g-.
  e16 f e d c4 f-. e8 d
  cis4-. d-. e,-. cis'-.
  d2 d4-. g-.
  
  e16 f e d c4 g'-. c-.
  a16 bes a bes g4 bes a-.
  g-. f-. g,-. e'-.
  }
  \alternative {
  {\oneVoice <a, c f>2}
  {\oneVoice <a c f>2\fermata}
  }
  \bar "|."
  }
MDII =  \relative c'' {
  a4 a
  
  g a d c
  a d e c
  d c bes a
  <c e>2
  
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
  <c e>2
  
  g4 c
  c2 g4 d'
  g, a a bes
  e, a bes, <e a>
  <f a>2 g4 d'
  
  g,2 c4 g'
  c,2 f4 e
  d c d,-. <g c>
  
  s2
  s2
  }

MSI =  \relative c {
  f4-. f,-.
  
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
  <f, f'>2
  
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
  f2_\fermata
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
      \Global \clef bass \MSI
    >>
  >>
}

  \midi {
    \tempo 4 = 108
    }


\layout {}
}
