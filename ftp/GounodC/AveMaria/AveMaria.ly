\version "2.16.1"

\header {
  title = "Ave Maria"
  subtitle = "Meditation on the First Prelude of J. S. Bach"
  composer = "Gounod"

 % Mutopia
 mutopiatitle = "Ave Maria: Meditation on the First Prelude of J. S. Bach"
 mutopiacomposer = "GounodC"
 % Probably composed for harpsichord/voice; I play it on trumpet
 mutopiainstrument = "Transcribed for Trumpet"
 date = "1853"
 source = "Transcribed"
 style = "Baroque"
 copyright = "Public Domain"
 maintainer = "Shamim Mohamed"
 maintainerEmail = "shamim-mu@languid.org"
 maintainerWeb = "http://www.drones.com"
 moreInfo = "Transcribed by the maintainer for the Trumpet, although it can probably be played on practically any instrument. Originally composed for harpsichord/voice."

 footer = "Mutopia-2013/01/06-256"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
}

\score {
   \context Staff = staffA {
    \time 4/4
    \clef treble
    \key f \major
    \relative c' {
      \set Score.skipBars = ##t R1*4 |
      
      a'1\pp bes2. r8 bes8 c2. g4 a2(  a8) r8 r4 d2( \<  d8\!) d,8 e8 f8 |

      g4.\pp a8 g4 r4 c2( \<  c8\!) c,8 d8 e8 |
      f4.\pp g8 f4 r4 f'2( \<  f8\!) f,8 g8 a8 b4. a8 g4 \>  d4\! |

      e2\p r4 g4 a2( \<  a8\!) a8 bes8 c8 | d4.. d,16 d4 r4 |
      g2( \<  g8\!) g8 a8 bes8 | c2\p c,4 r4 |

      f2(  f8) f8 \< g8 a8 bes2(  bes8) bes8 c8 d8 | e4.  d8\! c4 \>  g4\! |
      a2(\p  a8) r8 r4 c2 a4.. a16 |

      d2 d,4 r4 d'2 \< f,4.. d'16 | f2 aes,4 r8. f'16 | f2  g,4\! r4 | 
      g2(\pp  g8) g8 f8 e8 |

      c'4. a8 f4 r4 bes2( \<  bes8) bes8 a8 g8 | g'4. e8 c4 r4 | 
      d2(  d8)
      d8 e8 f8 |  a2\!(\ff  a8) f8 c8 a8 |

      g2(  g8) d'8 e8 d8 | c8 g'8 e8 c8 bes8 g8 e8 c8 f1 \>  f2\! r2
      c'1\p c2. r4 r1
      \bar "|."
    }
  }
  \header { piece = "Moderato" opus = "" }
  
  \midi {
    \tempo 4 = 100
    }


  \layout {}
}
