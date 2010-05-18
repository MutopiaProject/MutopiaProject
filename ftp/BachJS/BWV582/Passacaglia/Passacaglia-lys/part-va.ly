\version "2.12.2"

\include "english.ly"
\include "functions.ly"

\header {
 \include "headers.ly"
 instrument = "Viola"
}

%% This is to set the overall staff and
%% music glyphs size (bigger than default!).
#(set-global-staff-size 20)

\paper{
  % The following tries to make good page turns:
  % #(define page-breaking ly:page-turn-breaking)
  between-system-padding = 2\mm
  between-title-space = 1\mm
  ragged-bottom = ##t
  ragged-last-bottom = ##t
}

\score {
  \new Staff <<
    \new Voice {
      \include "rehearsalLetterMarks.ly"
    }
    \new Voice {
    \include "pageBreaksViola.ly"
    }
    \new Voice {
    \include "viola.ly"
    }
  >>
  
  \layout { }
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 72 4)
    }
  }
}