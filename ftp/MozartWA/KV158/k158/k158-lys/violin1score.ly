\version "2.10.0"

\include "tools.ly"
\include "header.ly"
\include "violin1.ly"

%#(set-default-paper-size "letter")

\header { instrument = "Violin I" }

\book {

  % First Movement, Allegro

  \score {
    \new Staff{
      \set Score.skipBars = ##t
      \once \override TextScript #'padding = #2
      s1*0^\markup{ \huge{ "Allegro." } }
      \violinOneAllegro
    }
  }

  % Second Movement, Andante un poco Allegretto

  \score {
    \new Staff{
      \set Score.skipBars = ##t
      \once \override TextScript #'padding = #2
      s1*0^\markup{ \huge{ "Andante un poco Allegretto." } }
      \violinOneAndante
      \pageBreak
    }
  }
  
  % Third Movement, Tempo di Minuetto

  \score {
    \new Staff{
      \set Score.skipBars = ##t
      \once \override TextScript #'padding = #1
      s1*0^\markup{ \huge{ "Tempo di Minuetto." } }
      \violinOneMinuetto
    }
  }
}
