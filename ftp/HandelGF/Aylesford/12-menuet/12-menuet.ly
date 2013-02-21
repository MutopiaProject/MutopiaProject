\version "2.16.1"
#(set-global-staff-size 20)
\header {
  title             = "Menuet"
  subtitle          = "from the Aylesford Pieces"
  composer          = "Georg Friedrich Händel (1685-1759)"
  meter             = "Andantino"
  mutopiatitle      = "Menuet"
  mutopiacomposer   = "HandelGF"
  mutopiainstrument = "Harpsichord, Piano"
  date              = "18th Century"
  source            = "Edition Schott 1930"
  style             = "Baroque"
  copyright         = "Public Domain"
  maintainer        = "Bas Wassink"
  maintainerEmail   = "basvanlola@hotmail.com"

 footer = "Mutopia-2013/02/21-161"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
  }

Global =  {\key d\major \time 3/4 \partial 4}


MDI =  \relative c'' {
  \repeat volta 2 {
  a4-.
  
  d e-. fis8 g
  e4-. d-. a'-.
  e fis-. g-.
  fis-. e8 fis d e
  
  cis d e16 d e d e d cis d
  e4 a,8 b cis-. a-.
  d4 e-. fis-.
  e-. d-. a'-.
  
  e-. fis-. g-.
  fis-. e8 fis d4-.
  g fis16 g fis g \times 2/3 { fis8[ g fis]}
  e2
  }
  
  e4-.
  
  e cis a-.
  a'2 fis4-.
  fis e8 d cis b
  g'2 g4-.
  
  g fis-. e-.
  a-. g8 fis e d
  e4 a,-. cis-.
  d2 e4-.
  
  e a,-. e'-.
  fis2 fis4-.
  fis e-. d-.
  g2 g4-.
  
  g fis-. e-.
  fis-. g8 fis e d
  e4-. cis16 d cis d  cis8[-. r16 d]
  d2\fermata
  \bar "|."
  }
MDII =  \relative c' {
  fis4
  
  fis a d
  cis b <a d>
  <b d>2 <a cis>4
  <a d> cis fis,
  
  g a2
  <a cis>4 s2
  a2.
  a4 fis <a d>
  
  b2 <a cis>4
  <a d> <a cis> <fis b>
  b8 cis d2
  <a cis>2
  
  <e cis'>4
  
  <e cis'> a a
  <a d>2 d4
  d fis,2
  <b e>2 <b e>4
  
  <a cis>2 <a cis>4
  <a d> cis fis,
  b fis <e a>
  <fis a>2 cis'4
  
  cis a cis
  <a d>2 d4
  d cis b
  b2 b4
  
  cis2 a4
  <a d> <a d> <fis b>
  <g b> <e a>2
  <fis a>
  }

MSI =  \relative c {
  d4-.
  
  d' cis-. d-.
  a-. b-. fis-.
  g e-. a-.
  d-. a-. b-.
  
  e,-. fis-. d-.
  a'2 g4
  fis e-. d-.
  cis'-. d-. fis,-.
  
  g fis-. e-.
  d-. a'-. b-.
  e,-. fis-. d-.
  a2
  
  a4-.
  
  a2 g'4
  fis e-. d-.
  b'2 a4
  g fis-. e-.
  
  a2 g4
  fis-. a-. b-.
  g a-. a,
  d-. fis-. a-.
  
  a2 a,4-.
  d fis-. d-.
  b' cis-. d-.
  e, fis-. g-.
  
  a2 cis4-.
  d-. <fis,, fis'>-. <b b'>-.
  <g g'>-. <a a'>-. <a, a'>
  <d d'>2\fermata
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
    \tempo 4 = 84
    }


\layout {}
}
