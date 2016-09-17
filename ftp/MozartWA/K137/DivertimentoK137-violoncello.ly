\version "2.18.2"
#(ly:set-option 'relative-includes #t)
\include "defs.ily"
\include "music.ily"

\layout {
  \context {
    \Score
    \override BarNumber.self-alignment-X = #CENTER
  }
}
\book {
  \header {
    instrument = "Cello"
  }
  \score { % First Movement
    \header {
      title = ##f
      subtitle = ##f
      composer = ##f
      instrument = ##f
    }
    \new Staff = "cello" \with {
      midiInstrument = #"cello"
    }
    \new Voice {
      \compressFullBarRests
      \keepWithTag #'partOnly
      \celloFirstMov
    }
    \layout {}
    \midi {}
  }
  \score { % Second Movement
    \header {
      title = ##f
      subtitle = ##f
      composer = ##f
      opus = ##f
      instrument = ##f
    }
    \new Staff = "cello" \with {
      midiInstrument = #"cello"
    }
    \new Voice {
      \compressFullBarRests
      \keepWithTag #'partOnly
      \celloSecondMov
   }
    \layout {}
    \midi {}
  }
%{
\pageBreak
  \markup { \column {
    \vspace #20
    \line { \italic "This page intentionally left quiet." }
   }
 }
  % \pageBreak
  % %}
  \score { % Third Movement
    \header {
      title = ##f
      subtitle = ##f
      composer = ##f
      opus = ##f
      instrument = ##f
    }
    \new Staff = "cello" \with {
      midiInstrument = #"cello"
    }
    \new Voice {
      \compressFullBarRests
      \keepWithTag #'partOnly
      \celloThirdMov
    }
    \layout {}
    \midi {}
  }
  \paper {

    page-breaking =  #ly:page-turn-breaking
    % first-page-number = #2
    print-all-headers = ##t
    ragged-last-bottom = ##f


%   #(set-paper-size "letter")
    top-margin = 0.35\in
    left-margin = 0.4\in
    right-margin = 0.4\in
    bottom-margin = 0.5\in

    %  Uncomment this block and comment above
    % margin settings to output a standard 9.5x12.5in part
    % (fitting easily on a 9x12 or 10x13 page size as well)
    %{
    #(set-paper-size "Standard Part")
    top-margin = 0.5\in
    left-margin = 0.5\in
    right-margin = 0.5\in
    bottom-margin = 0.75\in
    %}
  }
}

