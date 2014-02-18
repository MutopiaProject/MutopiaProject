\version "2.16.0"
%\include "definitions.ily"

inlineScoreAbbreviationsExOne = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \stemDown
		    	    c1:8 \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 "to be played thus"} b1 b1 b2 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    c8[ c c c] c[ c c c] \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAbbreviationsExTwo = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn \stemDown
		    	    
		    	    \override NoteHead #'rotation = #'(-50 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36 % #-1.24
		    	    c2:8 c2:16
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    
		    	    
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 " thus"} b4 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    c8[ c c c] c16[ c c c] c[ c c c] \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAbbreviationsExThree = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn \stemDown
		    	    
		    	    \repeat percent 2 {g8[ b d g]} 
	    	    
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b,2-\markup{\whiteout \pad-markup #0.4 " thus"} b4 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    g8[ b d g] g,8[ b d g] \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAbbreviationsExFour = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn \stemDown
		    	    
		    	    \repeat percent 4 {
		    	    	    \override TupletBracket #'stencil = #ly:slur::print
    				    \override TupletBracket #'control-points = #'( ( 0.3486 . 2.092) ( 1.6936 . 3.188) ( 2.9389 . 3.586) ( 4.4832 . 3.287) )
				    %\override TupletNumber #'extra-offset = #'(1.5 . -0.6 )
				    \override Voice.TupletNumber #'extra-offset = #'(-0.2 . 6.1 )
				    \times 2/3 {g8[ b d]} 
		    	    } 
	    	    
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(0 . 4.8)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 " thus"} b4 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \times 2/3 {g8[ b d]} \times 2/3 {g,[ b d]}
		    	    \revert TupletBracket #'stencil
		    	    \override TupletBracket #'bracket-visibility = ##f
		    	    \override TupletNumber #'transparent = ##t
		    	    \times 2/3 {g,[ b d]} \times 2/3 {g,[ b d]}  \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAbbreviationsExFive = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn \stemDown
		    	    
		    	    \repeat percent 2 {g16[ b d b]} 
	    	    
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 " thus"} b4 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    g16[ b d b] g[ b d b] \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAbbreviationsExSix = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn \stemDown
		    	    
		    	    \repeat percent 2 {
		    	    	    \override TupletBracket #'stencil = #ly:slur::print
    				    \override TupletBracket #'control-points = #'( ( 0.2717 . 0.543) ( 4.0756 . 5.071) ( 9.8721 . 4.256) ( 13.132 . 1.992) )
    				    \override Voice.TupletNumber #'extra-offset = #'(-0.4 . 7.3 )
				    \times 2/6 {g16[ b d g d b]} 
		    	    } 
	    	    
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(0 . 4.8)
		    	    \hideNotes b4-\markup{\whiteout \pad-markup #0.4 " thus"} b8 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \times 2/6 {g16[ b d g d b]} \times 2/6 {g[ b d g d b]} \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}

inlineScoreAbbreviationsExSeven = \markup { \general-align #Y #CENTER
 	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn
%		    	    \stemDown
		    	    \override NoteHead #'rotation = #'(-50 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36
		    	    \repeat tremolo 4 { c16 e}
		    	    \repeat tremolo 4 { c e}
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 " played thus"} b1 b2 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \repeat unfold 4 { c16[ e c e] } 
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAbbreviationsExEight = \markup { \general-align #Y #CENTER
 	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn
%		    	    \stemDown
		    	    \override NoteHead #'rotation = #'(-50 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36
		    	    \repeat tremolo 4 { e16 c}
		    	    \repeat tremolo 4 { e16 c}
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 " thus"} b1 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \repeat unfold 4 { e16[ c e c] }
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAbbreviationsExNine = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn \stemDown
		    	    c8[ e g e]
		    	    \hideNotes c8 \unHideNotes
		    	    \override NoteHead #'rotation = #'(-50 0 0)
		    	    \override NoteHead #'text = #( markup #:musicglyph "noteheads.s1" )
		    	    \override NoteHead #'X-offset =  #-1.36
		    	    <c e g>2:8_\markup{\italic segue} \bar"|"
		    	    \revert  NoteHead #'rotation
		    	    \revert  NoteHead #'text
		    	    \revert  NoteHead #'X-offset
		    	    <c f a>1:8 \bar"|"
		    	    
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 " thus"} b4 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    c8[ e g e] c8[ e g e] \bar "|"
		    	    c8[ f a f] c8[ f a f] \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}
inlineScoreAbbreviationsExTen = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{"Ex:  "}
		    	    \clef treble
		    	    \cadenzaOn
		    	    <c e c'>1:16 \bar"|"
		    	    
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(1 . 4.8)
		    	    \hideNotes b2-\markup{\whiteout \pad-markup #0.4 " thus"} b4 \unHideNotes
		    	    \sameSizeClef \forceClef
		    	    \repeat unfold 4 {<e c'>16[ c <e c'> c] } \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##t
	    }
	    }
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneAbbreviations = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph{"                " \inlineScoreAbbreviationsExOne}
    \paragraph{"                " \inlineScoreAbbreviationsExTwo}
    \paragraph{"                " \inlineScoreAbbreviationsExThree}
    \paragraph{"                " \inlineScoreAbbreviationsExFour}
    \paragraph{"                " \inlineScoreAbbreviationsExFive}
    \paragraph{"                " \inlineScoreAbbreviationsExSix}
    \paragraph{"                " \inlineScoreAbbreviationsExSeven}
    \paragraph{"                " \inlineScoreAbbreviationsExEight}
    \paragraph{" "}
    \paragraph{ "The " \caps italian " word, Segue; means, it continues, or follows:" }
    \paragraph{" "}
    \paragraph{"                " \inlineScoreAbbreviationsExNine}
    \paragraph{" "}
    \paragraph{ Tremando, or trembling:}
    \paragraph{" "}
    \paragraph{"                " \inlineScoreAbbreviationsExTen}
    \paragraph{" "}
    \paragraph{" "}
}
}
