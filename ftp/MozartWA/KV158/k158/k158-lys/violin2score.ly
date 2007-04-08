\version "2.10.20"

\include "tools.ly"

\include "header.ly"
\include "violin2.ly"

%#(set-default-paper-size "a4")

\header { instrument = "Violin II." }

\book {

  % First Movement, Allegro

  \score {
    \new Staff{
      \set Score.skipBars = ##t
      \once \override TextScript #'padding = #2
      s1*0^\markup{ \huge{ "Allegro." } }
      \violinTwoAllegro
    }
    \layout { }
  }
  
  % Second Movement, Andante un poco Allegretto

  \score {
    \new Staff{
      \set Score.skipBars = ##t
      \once \override TextScript #'padding = #2
      s1*0^\markup{ \huge{ "Andante un poco Allegretto." } }
      \violinTwoAndante
    }
    \layout { }
  }

  % Third Movement, Tempo di Minuetto

  \score {
    \new Staff{
      \set Score.skipBars = ##t
      \once \override TextScript #'padding = #1
      s1*0^\markup{ \huge{ "Tempo di Minuetto." } }
      \violinTwoMinuetto
    }
  }
}
