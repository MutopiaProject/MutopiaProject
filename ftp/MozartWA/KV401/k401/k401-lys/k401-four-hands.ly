\version "2.11.38"

\include "header.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Let's make the score a little smaller than the default
#(set-global-staff-size 18)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\include "k401-voices.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\score {
  <<
    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Primo    "
      
      \context Staff = "up" <<
	\context Voice = "marks" \markings
	\removeWithTag #'two-hands \context Voice = "one" \voiceI
      >>  
      \context Staff = "down" <<
	\removeWithTag #'two-hands \context Voice = "two" \voiceII
      >>  
    >>

    \new PianoStaff <<
      \set PianoStaff.instrumentName = "Secondo  "
      
      \context Staff = "up" <<
	\clef bass
	\removeWithTag #'two-hands \context Voice = "three" \voiceIII
      >>  
      \context Staff = "down" <<
	\clef bass
	\removeWithTag #'two-hands \context Voice = "four" \voiceIV
      >>  
    >>
  >>
  
  \midi {
    \context {
      \Score
      tempoWholesPerMinute = #(ly:make-moment 110 4)
    }
  }
}
