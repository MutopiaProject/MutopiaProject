\version "2.16.0"

\header {
  title = "Red Apple Rag"
  piece = "Traditional"
  mutopiatitle = "Red Apple Rag"
  mutopiacomposer = "Traditional"
  mutopiainstrument = "Violin, Guitar"
  source = "Transcribed by ear"
  style = "Folk"
  copyright = "Public Domain"
  maintainer = "Taj Morton"
  maintainerEmail = "taj@wildgardenseed.com"
  maintainerWeb = "http://www.wildgardenseed.com/"
  lastupdated = "2012/Nov/15"

 footer = "Mutopia-2012/12/23-529"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-column { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \concat { \teeny www. \normalsize MutopiaProject \teeny .org } \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \concat { \teeny www. \normalsize LilyPond \teeny .org }} by \concat { \maintainer . } \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details \concat { see: \hspace #0.3 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } } }
} 

melody = \relative c' {
  \key g \major
  \partial 8*2 b8\upbow( a8 )
  
  \repeat volta 2 {
    g8 a b c d fis g a |
    b8 d b a g e d b |
    c8\downbow( b) c\upbow( d) e g c d |
    e8 g e d c2 |
    d,8\upbow( e) fis g a cis d e |
    fis8 a fis e d fis e d |
    g\downbow( b) g\upbow( e) d b a fis |
    %g\downbow( fis) a-4\upbow( fis) g e d b
  }
  \alternative {
    { g8\downbow( fis) a-4\upbow( fis) g e d b | }
    { g'8\downbow( fis) a-4\upbow( fis) g a b c \bar "||" | }
  }
  \break

  % Part 2
  \repeat volta 2 {
    d8\downbow g4\upbow d8\downbow g2\upbow |
    b8\upbow( a) g b a g e d |
    c8 d c d e c e fis |
    g8 e fis g a g e c |
    d8\downbow( c) d\upbow( e) fis d fis g |
    a8 b a g fis d e fis |
    g8\downbow( b) g\upbow( e) d b a fis |
    % g\downbow( fis) a-4\upbow( fis) g2
  }
  \alternative {
    { g8\downbow( fis) a-4\upbow( fis) g a b c | }
    { g8\downbow( fis) a-4\upbow( fis) g2 \bar "|." | }
  }
}

harmonies = \chordmode {
   \partial 4 r4 |
   g4 g g g |
   g4 g g g |
   c4 c c c |
   c4 c c c |
   d4 d d d |
   d4 d d d |
   d4 d d d |
   g4 g g g |
   g4 g g g |

   % Part 2
   g4 g g g |
   g4 g g g |
   c4 c c c |
   c4 c c c |
   d4 d d d |
   d4 d d d |
   d4 d d d |
   g4 g g g |
   g4 g g g |
}

\score {
  <<
    \new ChordNames {
      \set chordChanges = ##t
      \harmonies
    }
    \new Staff = "one" {
      \melody
    }
  >>

  \layout{ }
}

\score {
  \new Staff \with { midiInstrument = #"violin" }
  \unfoldRepeats \melody
  \midi {
    \tempo 4 = 120
  }
}
