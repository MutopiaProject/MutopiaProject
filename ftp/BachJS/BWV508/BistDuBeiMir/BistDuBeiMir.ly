\version "2.10.25"

\header {
  title = "Aria"
  subtitle = "Bist du bei mir"
  composer = "J. S. Bach"
  opus = "Anna Magdalena Nb 2, BWV 508"

  % Mutopia
  mutopiatitle = "Aria Bist Du Bei Mir"
  mutopiacomposer = "BachJS"
  mutopiaopus = "BWV 508"
  % Don't really know the instrument, but I play it on the trumpet....
  mutopiainstrument = "Trumpet"
  date = "1722 (?)"
  source = "Transcribed"
  style = "Baroque"
  copyright = "Public Domain"
  maintainer = "Shamim Mohamed"
  maintainerEmail = "shamim-mu@languid.org"

 footer = "Mutopia-2007/07/08-257"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\score {
   \context Staff = staffA {
    \time 3/4
    \clef treble
    \key c \major
    \set Score.markFormatter = #format-mark-numbers
    \override TextScript #'staff-padding = #2
    \override DynamicLineSpanner #'staff-padding = #2.5

    \relative c'' {
      % 1'
      g4--^\markup { \italic "espressivo e legato" } \mf \< c4.( d8) \! |
      b2 \> r4 \! |
      c4( \< f,4) f4-- \! |
      f2( \> e4) \! | 

      \mark \default r8 g8-\p b8[ \( ( g8) ] fis8[( g8)\) ] |
      d8[-( g8)-- ] b8[ \( ( g8) ] fis8[( g8)\) ] |
      c,4-- a'4.( b16 c16) |
      b8.(\f a16) g8.( a16) d,8.( fis16) g2 \> r4\! | \bar "||"

      \mark \default c4 e8[( c8) \< ] bes8[( a8\!) ] |
      a2. \< |
      f'4-- \! d4.( c8) |
      b4\trill \( ( b8) a16 \> b16 c4\!\) |

      \mark \default r8 c8-\mf e8[\(( c8)] b8[( c8)\)] |
      g8[-- c8-] e8[( \< c8) ] b8[( c8\!)] |
      f,4-- d'4.( e16 f16) |
      e8.[( d16)] c8.[( d16)] g,8.[( b16)] |
      c2 r4 | \bar "||"

      \mark \default e4 c4.( b8) |
      a2 r4 |
      d4 g,4.( a8) |
      fis4( e8 fis8 d4) |

      \mark \default r8 a'8\p c8[( a8] gis8[ a8)] |
      e8[ a8-] c8[( \< a8] gis8[ a8\!)] |
      d,8( \> cis8 d4\!) b'8.( \< c!32 d32\!) |
      c8.[( b16)] a8.[( b16)] e,8.[( gis16)] |
      a2. \> |

      \mark \default d,4\!-- c'4.( \< d8\!) |
      b2 \> r4\! |
      c4( \< f,4) f4\!-- |
      f2 \> e4\! |

      \mark \default r8 g8-\p b8[ \(( g8)] fis8[( g8)\)] |
      %\break %7
      d8[-( \< g8)-] b8[\(( g8\!)] fis8[( g8)\)] |
      c,8( b8 c4) a'8.( b32 c32) |
      b8.[( a16)] g8.[( a16)] d,8.[( fis16)] |
      g2 r4 |

      \mark \default c4-\f e8[( c8)] bes8[( a8)] |
      a2. \< |
      f'4-\f \! d4.( c8) |
      b4\trill \( ( b8) a16 \> b16 c4\!\) |
      r8 c8-\mf e8[( c8)] b8[( c8)] |

      g8[-- \< c8] e8[( c8)] b8[( c8\!)] |
      f,4-- d'4.( \< e16 f16\!) |
      e8.[(\f d16])_\markup{ \italic "rit. al fine" } c8.[( d16)] g,8.[( b16)] | 
      c2.^\fermata \bar "|."
    }
  }
  \header { piece = "Moderato" }
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 108 4)
      }
    }


  \layout {}
}

