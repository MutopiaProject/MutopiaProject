\version "2.10.33"

\header {
  title             = "Opus 50 No. 31"
  composer          = "Mauro Giuliani"
  meter             = "Allegretto"
  opus              = "Op. 50"
  piece             = "No. 31"
  mutopiacomposer   = "GiulianiM"
  mutopiainstrument = "Guitar"
  source            = "Statens musikbibliotek - The Music Library of Sweden"
  style             = "Classical"
  copyright         = "Creative Commons Attribution 3.0"
  maintainer        = "Stephen Rhen"
  maintainerEmail   = "srhen@verizon.net"
 footer = "Mutopia-2008/03/05-1359"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Copyright © 2008. \hspace #0.5 Reference: \footer } } \line { \teeny \line { Licensed under the Creative Commons Attribution 3.0 (Unported) License, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/by/3.0" http://creativecommons.org/licenses/by/3.0 } } } }
}

saprano = \relative a' {
  \stemUp
  \slurDown
  \partial 8*2 a8 b
  \acciaccatura { a16[ b] } c8. b16 a8 r a b
  \acciaccatura { a16[ b] } c8. b16 a8 r a b
  c8 g c d g, d'
  e8. f16 e8 e f e
%5
  e8 f16( e) d c b8 b b
  <gis b>4. r8 a b
  \acciaccatura { a16[ b] } c8. b16 a8 e a b
  \acciaccatura { a16[ b] } c8. b16 a8 r a b
  c8 b c d cis d
%10
  e8 c a f' d b
  r8 a c r gis b
  a4 a'8 gis e g
  fis8 d f e b d
  c8. b16 a8 b d f
%15
  r8 c a r b gis
  a8 e' a gis e g
  fis8 d f e b d
  \acciaccatura d8 c8. b16 a8 b d f
  e8 c a e' d b
%20
  a8 c e, a c, e
  a,4. a''
  a,,4. r
}

bass = \relative a {
  \partial 8*2 s4
  a4 r8 a4 r8 
  a4 r8 a4 r8
  e'4 c8 b4 g8
  <c g' c>4. <b gis' d'>
%5
  <a a' c>4. <d a'>8 <d a'> <dis a'>
  e8 gis, b e,4 r8
  a4 r8 a4 r8
  a4 r8 a4 r8
  <e' g>4 c8 <b g'>4 <g g'>8
%10
  c4. d
  e4. e,
  a4 r8 a4 r8
  a4 r8 gis4 r8
  a4 r8 d4 r8
%15
  e4 r8 e,4 r8
  a4 r8 c4 r8
  a4 r8 gis4 r8
  a4 r8 d4 r8
  e4. e,
%20
  a4. r
  a4. <c' e>
  a,4. r
}

\score {
  
  {
    \key a \minor
    \time 6/8
    << \saprano \\ \bass >>
  }
  \layout {
    \context {
      \Staff
      midiInstrument = "acoustic guitar (nylon)"
      \override NoteCollision #'merge-differently-headed = ##t
      \override NoteCollision #'merge-differently-dotted = ##t
    }
   
  }

  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 132 4)
    }
  }
}
