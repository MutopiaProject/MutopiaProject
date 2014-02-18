\version "2.16.0"

inlineScoreBlankStaff = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Bar_engraver
        firstClef = ##f
        }
        { s1*2 }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
        } " "
}
inlineScoreLedgerLines = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Bar_engraver
        
        firstClef = ##f
        }
        	{
        		\override NoteHead #'transparent = ##t
        		\override Stem #'transparent = ##t
        		\override Flag #'transparent = ##t
        		a''4 c''' c' a
        	}
        \layout { 
        	indent = 0\in
        	ragged-right = ##t 
        	}
        } " "
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOnePreliminaries = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph {""}
    \paragraph {
    	    All musical sounds are expressed by certain characters, called notes, which are named
    	    from the first seven letters of the alphabet: A, B, C, D, E, F, G.
    }
    \paragraph {""}
    \paragraph {
    	    The Stave \inlineScoreBlankStaff contains five lines, and four spaces: the lowest 
    	    line is called the first.
    }
    \paragraph {""}
    \paragraph{
    	    The notes are placed on the lines, or spaces above, or under the stave and the
    	    additional, called \caps Ledger \normal-text lines \inlineScoreLedgerLines are for the higher and lower
    	    notes.
    }
    \paragraph {""}
  }
}
