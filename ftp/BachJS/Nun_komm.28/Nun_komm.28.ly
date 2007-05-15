\version "2.10.20"

\header {
  title = "28. Nun komm, der Heiden Heiland."
  subtitle = "371 Four-Part Chorales"
  mutopiacomposer = "BachJS"
  mutopiainstrument = "Voice (SATB)"
  composer = "arr. and harm. J.S. Bach (1685-1750)"
  source = "Kalmus K03047"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Ricky Marshall"
  maintainerEmail = "rickythesk8r@verizon.net"
  moreInfo = "Melody from Erfurt Enchiridia, 1524"
 footer = "Mutopia-2007/05/15-982"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

signature = {
  \key b \minor
}

global = {
  \signature
}

soprano = \context Voice = "one" \relative c'' { 
  \voiceOne 
  b4 b a d               |
  cis8 b cis4 b2\fermata |
  b8 cis d4 e d          |
  e fis d2\fermata       |
  d4 e fis8 e d4         |
  e8 d cis4 b2\fermata   |
  b4 b a d               |
  cis8 b cis4 b2\fermata |
}

alto = \context Voice = "two" \relative c' {
  \voiceTwo
  fis4 e fis fis8 g16 a       | 
  g8 fis e4 d2                |
  fis4. gis8 a4. b8           |
  cis4 d8 fis, g2             |
  a4 a a8 ais b4              |
  cis8 b ais4 fis2            |
  fis4 eis fis8[ gis ] a[ b ] |
  fis[ b ~ ] b ais fis2       |
}

tenor = \context Voice = "three" \relative c' {
  \voiceThree
  d4 cis8 b cis4 b     |
  b4. ais8 fis2        |
  d'8 cis b4 cis d     |
  g, a8 b16 c b2       | 
  a4 e' d8 cis b4      |
  g' cis,8 fis d2      |
  d4 cis8 b cis4 fis   |
  e8 d cis16 d e8 dis2 |
}

bass = \context Voice = "four" \relative c {
  \voiceFour 
  b'8 a g4 fis8 e d b              |
  e d e fis b,2                    |
  b4 b' a8 g fis4                  |
  e d g2\fermata                   |
  fis8 e d cis d4 g8 fis           |
  e4 fis b,2\fermata               |
  b'8 a gis4 fis8 e fis gis        |
  ais b fis4 b,2\fermata \bar "|." |
}


\score {
  { \new PianoStaff <<
    \context Staff = "treble" <<
      \clef "treble"
      \global <<
	\soprano
	\alto
      >>
    >>
    \context Staff = "bass" <<
      \clef "bass"
      \global
      \tenor
      \bass
    >>
  >>
  }
  \layout { } 
  \midi {
    \context {
      \Score
      tempoHalvesPerMinute = #(ly:make-moment 44 2)
    }
  }
}

