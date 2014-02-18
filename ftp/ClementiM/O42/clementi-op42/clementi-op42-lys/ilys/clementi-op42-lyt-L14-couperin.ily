\version "2.16.1"
\include "clementi-op42-mus-L14-couperin.ily"

% LESSON XIV.  Le Révelmatin by Couperin.

\score{ % LESSON XIV: Reveill PRINT
	\new PianoStaff <<
	    \new Staff = "upper" \LessonXIVUpper
	    \new Staff = "lower" \LessonXIVLower
    	>>
    	\layout { }
}

\markup{
	\column{
		\hspace #1.0
		\line \left-align \italic {"The graces of the first and second bar to be played like this:"}
		}
}
\markup{   % SAMPLE ORNAMENTS FOR LESSON XIV
	\score {
	  \new PianoStaff {
	    \relative c' <<
	      \new Staff {
		% hides staff and notes so that only the grid lines are visible
		%\hideNotes
		%\override Staff.BarLine #'transparent = ##t
		%\override Staff.StaffSymbol #'line-count = #0
		\override Staff.TimeSignature #'transparent = ##t
		\override Staff.Clef #'transparent = ##t
		\set fontSize = #-3  % make note heads smaller
		\time 12/8
			f8 f[ a b] c32-4( b-3 c16-4 d c) c8 g a \bar "|"
			b32-3[ a-2 b16-3 c8-4 b-3] b-4[( a32-3 b-4 a16-3 g8-2]) a-3[ b a]
			a16-4[ g-3 a-4 g-3 f-2] \bar "|" \stopStaff
	      }
	    >>
	  }
	  \layout { }
	}
}
