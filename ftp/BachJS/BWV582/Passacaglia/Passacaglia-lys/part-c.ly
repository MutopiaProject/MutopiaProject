\version "2.12.2"

\include "english.ly"
\include "functions.ly"


% This file writes the cover page that's on the front of each part:
% \include "cover_page.ly"

% \markup { \hspace #57 \raise #25 \center-align Cello }
% \pageBreak

\header {
  \include "headers.ly"
% breakbefore = ##t
instrument = "Cello"
}

%% This is to set the overall staff and
%% music glyphs size (bigger than default!).
#(set-global-staff-size 20)

\paper{
  % This was intended to make the page turns work out better:
  %  #(define page-breaking ly:page-turn-breaking)
  % ...but it squishes up the part too much.
  
  % These just tighten-up the spacing between systems and titles:
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
    \include "pageBreaksCello.ly"
    }
    \new Voice {
    \include "cello.ly"
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