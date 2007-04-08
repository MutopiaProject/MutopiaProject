\version "2.10.20"

\include "header.ly"
\include "tools.ly"
\include "cello.ly"

\header{ instrument = "Violoncello." }

%#(set-default-paper-size "a4")

\book {

  % First Movement, Allegro

  \score {
    \new Staff{
      \set Score.skipBars = ##t
      \once \override TextScript #'padding = #2
      s1*0^\markup{ \huge{ "Allegro." } }
      \celloAllegro
    }
    \layout { }
  }
  
  % Second Movement, Andante un poco Allegretto

  \score {
    \new Staff{
      \set Score.skipBars = ##t
      \once \override TextScript #'padding = #3
      s1*0^\markup{ \huge{ "Andante un poco Allegretto." } }
      \celloAndante
    }
    \layout { 
%	\context { \Staff
%		\override VerticalAlignment #'between-system-space = #'1\cm
%	}
    }
  }

  % Third Movement, Minuetto

  \score {
    \new Staff{
      \set Score.skipBars = ##t
      \once \override TextScript #'padding = #3
      s1*0^\markup{ \huge{ "Tempo di Minuetto." } }
      \celloMinuetto
    }
    \layout { 
%	\context { \Staff
%		\override VerticalAlignment #'between-system-space = #'1\cm
%	}
    }
  }
  \paper {
  	between-system-space = 1.75\cm
  }
}
