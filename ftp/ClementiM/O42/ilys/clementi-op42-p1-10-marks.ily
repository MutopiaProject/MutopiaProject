\version "2.16.0"

inlineScorePauseOneExample =\markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	s4 g''_\fermata
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        }
        } " "
}

inlineScorePauseTwoExample =\markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	s4 c''^\fermata
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        }
        } " "
}

inlineScoreCrotchetRestFermata = \markup { " " \general-align #Y #CENTER 
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
        	r4^\markup{" "}^\fermata
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        }
        }
}

inlineScoreDoubleBarExample =\markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	s8 \bar "||" s2
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        }
        } " "
}
inlineScoreVoltaBarExample =\markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	s4 \bar ":|:" s2
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        }
        } " "
}
inlineScoreVoltaBarEndExample =\markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	s4 \bar ":|" s2
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        }
        } " "
}
inlineScoreVoltaBarStartExample =\markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Clef_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\cadenzaOn
        	s4 \bar "|:" s2
        	}
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

partOneOtherMarks = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph {
    	    The pause \inlineScorePauseOneExample or \inlineScorePauseTwoExample renders the \caps note longer \caps "at pleasure"; and in
    	    certain cases, the composer expects some \caps embellishments from the performer; but the pause on a rest \inlineScoreCrotchetRestFermata 
    	    only lengthens, \caps "at pleasure," the \caps silence.
    }
    \paragraph{" "}
    \paragraph {
    	The \caps sign or \caps repeat "  " \general-align #Y #-0.4 { \musicglyph #"scripts.segno"} " " is a reference 
    	to a passage, or strain, to which the performer is to return: the Italian words, \caps "al segno" or \caps "dal segno",
    	denote such a return.
    }
    \paragraph{" "}
    \paragraph{
    	The double bar \inlineScoreDoubleBarExample marks the end of a strain; or the conclusion of a piece.
    }
    \paragraph{" "}
    \paragraph{
    	The \caps dotted bars \inlineScoreVoltaBarExample denote the repeat of the foregoing, and following strain.
    }
    \paragraph{" "}
    \paragraph{
     \bold "N.B." The second part of a piece, if \caps "very long," is seldom repeated; notwithstanding the \caps dots.	    
    }
    \paragraph{" "}
    \paragraph{
    	When the bars are marked thus \inlineScoreVoltaBarEndExample " or " \inlineScoreVoltaBarStartExample " " then the strain, only 
    	on the side of the \caps dots is to be repeated.
    }
    \paragraph{" "}
    \paragraph{" "}
}
}
