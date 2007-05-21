\version "2.10.0"
\header {
  title = "Rondo Alla Turca"
  subtitle = "Turkish March"
  composer = "W. A. Mozart"
  piece = "Allegretto"
  mutopiatitle = "Rondo Alla Turca"
  mutopiacomposer = "MozartWA"
  mutopiainstrument = "Piano"
  style = "Classical"
  copyright = "Public Domain"
  source = "IMSLP"

  maintainer = "Rune Zedeler and Chris Sawer"
  maintainerEmail = "chris@mutopiaproject.org"

 footer = "Mutopia-2007/05/21-108"
 tagline = \markup { \override #'(box-padding . 1.0) \override #'(baseline-skip . 2.7) \box \center-align { \small \line { Sheet music from \with-url #"http://www.MutopiaProject.org" \line { \teeny www. \hspace #-1.0 MutopiaProject \hspace #-1.0 \teeny .org \hspace #0.5 } • \hspace #0.5 \italic Free to download, with the \italic freedom to distribute, modify and perform. } \line { \small \line { Typeset using \with-url #"http://www.LilyPond.org" \line { \teeny www. \hspace #-1.0 LilyPond \hspace #-1.0 \teeny .org } by \maintainer \hspace #-1.0 . \hspace #0.5 Reference: \footer } } \line { \teeny \line { This sheet music has been placed in the public domain by the typesetter, for details see: \hspace #-0.5 \with-url #"http://creativecommons.org/licenses/publicdomain" http://creativecommons.org/licenses/publicdomain } } } }
}

\include "RondoAllaTurcaNotes.ly"

\score {
  \new PianoStaff
  <<
    \new Staff {
      \time 2/4
      \right
    }
    \new Staff {
      \left
    }
  >>
  \layout {}
  \midi {}
}

%{
\score { \notes
  \context GrandStaff <
    \property GrandStaff.connectArpeggios = ##t
    \context Staff = up {
      \right
    }
    \context Staff = down {
      \property Staff.VoltaBracket = \turnOff
      \left
    }
  >
  \paper {
    \translator {
      \GraceContext
      Slur \override #'direction = #-1
    }
    \translator {
      \ScoreContext
      SpacingSpanner \override #'shortest-duration-space = #1.8
      GraceAlignment \override #'horizontal-space = #-0.4
      PaperColumn \override #'before-grace-spacing-factor = #1.0
      
    }
    interscoreline = 6.0 \pt

  }
}

volta = "unfold"
\include "RondoAllaTurcaNotes.ly"
\score { \notes
  {
    \context Staff < \right \left >
  }
  \midi {
    \tempo 4=120
  }
}
%}
