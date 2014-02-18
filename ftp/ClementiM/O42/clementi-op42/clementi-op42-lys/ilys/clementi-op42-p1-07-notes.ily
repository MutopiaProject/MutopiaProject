\version "2.16.0"

%\include "definitions.ily"

inlineScoreNotesRests = \markup { " " \general-align #Y #CENTER 
	    \score {
	  \new GrandStaff
	  <<
	    \new Staff 
	    \with {
		\remove Time_signature_engraver
	    	\remove Clef_engraver}
	    { \new Voice = "upper"
			\set Staff.instrumentName = "Notes"
		     \relative c''{
		  \cadenzaOn
		  s4 c1 \bar "|" c2 \bar "|" c4 \bar "|" c8 \bar "|" c16 \bar "|" c32 \bar "||"
		} 
	    }
	    \new Lyrics \lyricsto "upper"
		    \lyricmode { Semibreve, minim, crotchet, quaver, semiquaver, demi-semi-quaver }
	    \new Staff 
		\with {
		\remove Time_signature_engraver
		\remove Clef_engraver}
	    {
		    \set Staff.instrumentName = "Rests"
			    \relative c {
				 \stemDown
				  s4 r1 r2 r4 r8 r16 r32
			}
	    }
	  >>
	  \layout {
	    \context {
	      \GrandStaff
	      \accepts "Lyrics"
	    }
	      indent = 0.3\in
	      ragged-right = ##f 
	  }
	} " "
}
inlineScoreSemibreve = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    		\remove Clef_engraver
	    	    	        }
		    {  
		    	    \setProportionalScore
		    	    \set Staff.instrumentName = #"One Semibreve"
		    	    \cadenzaOn
		    	    \hideNotes \repeat unfold 2 {c''1} \unHideNotes  
		    	    c''1 \hideNotes \repeat unfold 1 {c''1}
		    	    \bar "|"
			}
	  \layout {
	      indent = 0.7\in
	      line-width = 3.5\in
	      ragged-right = ##t
	    }
	    } "  "
	}
	\column {\left-align \general-align #Y #-1 " Is equal in length" 
		 \line{  \general-align #Y #-2 "   of time to"} }	   
}
inlineScoreMinims = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    		\remove Clef_engraver
	    	    	        }
		    {  
		    	    \setProportionalScore
		    	    \set Staff.instrumentName = #"2 Minims"
		    	    \cadenzaOn
		    	    \hideNotes \repeat unfold 1 {c''1 c''8} \unHideNotes  
		    	     c''2 \hideNotes c''2. \unHideNotes c''2 
		    	    \hideNotes \repeat unfold 1 {c''2}
		    	    \bar "|"
			}
	  \layout {
	      indent = 0.7\in
	      line-width = 3.5\in
	      ragged-right = ##t
	    }
	    } "  "
	}
	\column {\left-align \general-align #Y #-0.5 " Which are equal to" }	   
}
inlineScoreCrotchets = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    		\remove Clef_engraver
	    	    	        }
		    {  
		    	    \setProportionalScore
		    	    \set Staff.instrumentName = #"4 Crotchets"
		    	    \cadenzaOn
		    	    \hideNotes \repeat unfold 1 {c''2 c''4} \unHideNotes  
		    	    \repeat unfold 4 {c''4 \hideNotes c''4. \unHideNotes} 
		    	     %\hideNotes c''1 \unHideNotes 
		    	     %c''2 
		    	    %\hideNotes \repeat unfold 1 {c2}
		    	    \bar "|"
			}
	  \layout {
	      indent = 0.7\in
	      line-width = 3.5\in
	      ragged-right = ##t
	    }
	    } "  "
	}
	\column {\left-align \general-align #Y #-0.5 " Which are equal to" }	   
}
inlineScoreQuavers = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    		\remove Clef_engraver
	    	    	        }
		    {  
		    	    \setProportionalScore
		    	    \set Staff.instrumentName = #"8 Quavers"
		    	    \cadenzaOn
		    	    \hideNotes \repeat unfold 1 {c''2 c''8} \unHideNotes 
		    	    \autoBeamOff 
		    	    c''8 c''8 c''8[ c''8] c''8[ c''8 c''8 c''8] { \hideNotes c''2 \unHideNotes} 
		    	    \bar "|"
			}
	  \layout {
	      indent = 0.7\in
	      line-width = 3.5\in
	      ragged-right = ##t
	    }
	    } "  "
	}
	\column {\left-align \general-align #Y #-0.5 " Which are equal to" }	   
}
inlineScoreSemiQuavers = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    		\remove Clef_engraver
	    	    	        }
		    {  
		    	    \setProportionalScore
		    	    \set Staff.instrumentName = #"16 semi-quavers"
		    	    \cadenzaOn
		    	    \hideNotes \repeat unfold 1 {c''2 } \unHideNotes 
		    	    \autoBeamOff 
		    	    c''16 c''16 c''16[ c''16] 
		    	    \repeat unfold 3 {c''16[ c''16 c''16 c''16]} { \hideNotes c''2 \unHideNotes} 
		    	    \bar "|"
			}
	  \layout {
	      indent = 0.7\in
	      line-width = 3.5\in
	      ragged-right = ##t
	    }
	    } "  "
	}
	\column {\left-align \general-align #Y #-0.5 " Which are equal to" }	   
}
inlineScoreDemiSemiQuavers = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    		\remove Clef_engraver
	    	    	        }
		    {  
		    	    \setProportionalScore
		    	    \set Staff.instrumentName = \markup{\column {"32 demisemi-" "   quavers"}}
		    	    \cadenzaOn
		    	    \hideNotes \repeat unfold 1 {c''4 } \unHideNotes 
		    	    \autoBeamOff 
		    	    c''32 c''32 c''32[ c''32] 
		    	    \repeat unfold 7 {c''32[ c''32 c''32 c''32]} { \hideNotes c''4 \unHideNotes} 
		    	    \bar "|"
			}
	  \layout {
	      indent = 0.7\in
	      line-width = 3.5\in
	     % ragged-right = ##t
	    }
	    } "  "
	}
	\column {
		\left-align
		\general-align #Y #-0.5
		\transparent 
		" Which are equal to" }	   
}

inlineScoreDottedMinim = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	\stemUp
        	c''2. 
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        	#(layout-set-staff-size 18)
        }
        } " "
}
inlineScoreDottedCrotchetRest = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \remove Staff_symbol_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	\stemUp
        	r4.
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        }
}
inlineScoreCrotchetQuaverRests = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \remove Staff_symbol_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	\stemUp
        	d''4\rest d8\rest
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreDoubleDottedCrotchet = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	c''4..
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreTie = \markup { \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \remove Staff_symbol_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c''{
        	\cadenzaOn
        	\hideNotes
        	a4^( f a^)
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreDottedMinimDown = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	\stemDown
        	c''2. 
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreTiedMinimCrotchet = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c''{
        	\cadenzaOn
        	\stemDown
        	c2~c4 
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreTiedCrotchets = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c''{
        	\cadenzaOn
        	\stemDown
        	c4~c~c \bar "||" 
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreDoubleDottedMinim = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	c''2..
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreTiedMinimCrotchetQuaver = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c''{
        	\cadenzaOn
        	\stemDown
        	c2~c4~c8 
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneValueOfNotes = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph { \line {
    \inlineScoreNotesRests} 
    }
    \paragraph{" "}
    \paragraph{" "}
    \paragraph {  \line {
    	\inlineScoreSemibreve} 
    }
    \paragraph {  \line {
    	\inlineScoreMinims} 
    }
    \paragraph {  \line {
    	\inlineScoreCrotchets} 
    }
    \paragraph {  \line {
    	\inlineScoreQuavers} 
    }
    \paragraph {  \line {
    	\inlineScoreSemiQuavers} 
    }
    \paragraph {  \line {
    	\inlineScoreDemiSemiQuavers}
    }
    \paragraph{" "}
    \paragraph{" "}
    \paragraph {
     	     A \caps dot after a note, or rest, makes the note or rest half as long again. Ex:
     	     \inlineScoreDottedMinim is equal to a minim and a crotchet; or to three crotchets,
     	     and so on: \inlineScoreDottedCrotchetRest is equal to \inlineScoreCrotchetQuaverRests
     	     and so on: by which it is evident, that the \caps dot to a minim is equal to a crotchet;
     	     and the \caps dot to a crotchet is equal to a quaver; etc: "   " When a second dot is added
     	     to the first, the second dot is considered as the half of the first; therefore a
     	     double-dotted Crotchet thus \inlineScoreDoubleDottedCrotchet is equal to a crotchet, quaver,
     	     and semiquaver; or to seven semiquavers.
     }
     \paragraph{" "}
     \paragraph{
     	    Let us farther illustrate this by the mark, called a \caps tie, made thus \inlineScoreTie 
     	    which, when placed between two notes of the \caps same pitch, binds the second to the first;
     	    so that only the first is struck, but the finger must be held down the full length of 
     	    both.  It is therefore indifferent whether we write thus \inlineScoreDottedMinimDown or 
     	    \inlineScoreTiedMinimCrotchet or \inlineScoreTiedCrotchets and \inlineScoreDoubleDottedMinim
     	    is the same in effect as \inlineScoreTiedMinimCrotchetQuaver
     }
     \paragraph{" "}
     \paragraph{" "}
}
}
