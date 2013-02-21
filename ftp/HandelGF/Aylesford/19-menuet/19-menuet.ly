\version "2.16.1"
#(set-global-staff-size 20)
\header {
  title             = "Menuet (Trio)"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Andantino"
  mutopiatitle      = "Menuet (Trio)"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-168"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
  }

Global =  {\key a\minor \time 3/4}


MDI =  \relative c'' {
  \repeat volta 2 {
  \oneVoice e4 a,-. gis-.
  a8 c \voiceOne b2
  c4 d8 c b a
  gis4 fis8 gis e4
  
  e' d8 c b a
  d4 c8 b a gis
  a b c4 b8 a
  a2.
  }
  
  \repeat volta 2 {
  g!4 c8 b c4
  g d'8 c d4
  g, f' e8 f
  d2.
  
  e8 f d e c d
  b c a b g4
  f8 e d4. c8
  c2.
  
  \oneVoice c'8 d e4-. gis,-.
  \voiceOne a8 c b2
  c4 d8 c b a
  gis4 fis8 gis e4
  
  e a8 gis a4
  d, a'8 gis a4
  c, d8 c b c
  a2.\fermata 
  }
  }
MDII =  \relative c' {
  s2.
  s4 e2
  e f4
  e2 gis,4
  
  c' a e
  gis e2
  c4 a' gis
  a2.
  
  c,4 d e
  d g b
  e, d' c
  b a g
  
  g2 e4 ~
  e c2
  a4 c b
  <e, g>2.
  
  s2.
  c'4 e2
  e f4
  e2 gis,4
  
  c a c
  b b d
  c a gis
  a2.
  }

MSI =  \relative c' {
  <<{
    c2 b4 |
    c
  } \\ {
    a2. |
    a4
  }>> gis-. e-. |
  a2 d,4-.
  e-. b-. e,-.
  
  a c-. e-.
  b d-. e-.
  f d-. e-.
  a-. e-. a,-.
  
  e'4-. d-. c-.
  b-. a-. g-.
  c-. b-. c-.
  g-. a-. b-.
  
  c-. b-. a-.
  g-. f-. e-.
  f-. g2
  c4-. g-. c,-.
  
  <<{e''4 c b} \\ a2.>>
  a4 gis-. e-.
  a2 d,4
  e-. b-. e,-.
  
  a-. c e
  b-. d e
  a d,-. e-.
  a,2.\fermata
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
    \tempo 4 = 80
    }


\layout {}
}
