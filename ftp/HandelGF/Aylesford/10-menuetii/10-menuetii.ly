\version "2.16.1"
#(set-global-staff-size 20)
\header {
  title             = "Menuet II (Trio)"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Ruhig (pomposo)"
  mutopiatitle      = "Menuet II (Trio)"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-158"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
  }

Global =  {\key d\major \time 3/4}


MDI =  \relative c'' {
  \repeat volta 2 {
  fis4 g fis
  fis8 e fis cis d cis
  d e fis4 e
  fis e8 fis d e
  
  fis4 g fis
  e fis8 cis d4
  e fis e
  d2.
  }

  \repeat volta 2 {
  fis8 g a4 a-.
  a-. b8 a g fis
  e fis g4 g-.
  g-. a8 g fis e
  
  fis4-. g8 fis e d
  e4-. fis8 e d cis
  b4 a' gis
  a gis8 fis e d
  
  cis4 cis8 d e4
  a,2.
  a4 g' fis
  e fis8 cis d cis
  
  d e fis4-. e
  fis e8 fis d e
  fis4 g fis
  e fis8 cis d4
  
  e fis e8 d
  d2.\fermata
  }
  
  }
MDII =  \relative c'' {
  <a d>4 <g cis> <a d>
  b fis fis
  b <a d> <a cis>
  <a d> <a cis> fis
  
  <a d> <g cis> <a d>
  b fis fis
  b <a d> <a cis>
  <fis a>2. 
  
  a4 d <d fis>
  <d fis> r r
  r b <b e>
  <a e'>2.
  
  a
  a
  b4 <d fis> <b e>
  <cis e> r r
  
  a a cis
  d, d8 e cis4
  fis <g cis> <a d>
  b4 fis fis
  
  b <a d> <a cis>
  <a d> <a cis> fis
  <a d> <g cis> <a d>
  b fis fis
  
  b <a d> <a cis>
  <fis a>2.
  }

MSI =  \relative c {
  d4-. e-. fis-.
  g-. a-. b-.
  g-. a-. a,-.
  d-. a-. d,-.
  
  <d d'>-. <e e'>-. <fis fis'>-.
  <g g'>-. <a a'>-. <b b'>-.
  <g g'>-. <a a'>-. a-.
  <d, d'>-. a'-. d,-.
  
  d'4-. fis-. a-.
  d2.-.
  e,4-. e'-. d-.
  cis-. b-. a-.
  
  d-. d,-. d'-.
  cis-. b-. a-.
  d-. b-. e-.
  a,2.
  
  a,4-. a'-. g!-.
  fis-. fis8 g a4
  d,-. e-. fis-.
  g-. a-. b-.
  
  g-. a-. a,-.
  d-. a'-. b-.
  <d,, d'>-. <e e'>-. <fis fis'>-.
  <g g'>-. <a a'>-. <b b'>-.
  
  <g g'>-. <a a'>-. <a, a'>-.
  <d d'>2.\fermata
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
    \tempo 4 = 72
    }


\layout {}
}
