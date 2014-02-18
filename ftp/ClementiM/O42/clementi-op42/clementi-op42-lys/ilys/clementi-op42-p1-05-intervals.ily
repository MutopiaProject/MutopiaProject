\version "2.16.0"

inlineScoreSemitones = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        }
        { \relative c{
        	\clef bass
        	\cadenzaOn
        	e4(_\markup{E} f)_\markup{F} \bar "|"
        	b(_\markup{B} c)_\markup{C} \bar "||"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t}
        } " "
}

inlineScoreDiatonicScale = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        }
        { \relative c{
        	\clef bass
        	\cadenzaOn
        	\stemDown
        	\override TextScript #'extra-offset = #'(2 . 4)
        	\stemDown
        	c4(_\markup{whole}_\markup{tone} 
        	d)(_\markup{whole}_\markup{tone}
        	\set doubleSlurs = ##t
        	e)(_\markup{\bold semi-}_\markup{tone}
        	\set doubleSlurs = ##f
        	f)(_\markup{whole}_\markup{tone}
        	g)(_\markup{whole}_\markup{tone}
        	a)(_\markup{whole}_\markup{tone}
        	\set doubleSlurs = ##t
        	b)(_\markup{\bold semi-}_\markup{tone}
        	\set doubleSlurs = ##f
        	c) \bar "||"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##f }
        } " "
}
inlineScoreIntervals = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        }
        { \relative c{
        	\clef bass
        	\cadenzaOn
        	\stemDown
        	\override TextScript #'extra-offset = #'(2 . 4)
        	\stemDown
        	c4(_\markup{" 2" \super d} d) \bar "|"
        	c(_\markup{" 3" \super d} e)  \bar "|"
        	c(_\markup{" 4" \super th} f) \bar "|"
        	c(_\markup{" 5" \super th} g') \bar "|"
        	c,(_\markup{" 6" \super th} a') \bar "|"
        	c,(_\markup{" 7" \super th} b') \bar "|"
        	c,(_\markup{" 8" \super th} c') \bar "||"
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##f }
        } " "
}
inlineScoreHarmonyExample = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c'{
        	\clef treble
        	\cadenzaOn
        	<c e>4 s8
        	<c e g>4 s8
        	<d f g b>4 s8
        	<c e g c>4 s8
        	\bar "||"
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

partOneIntervals = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph {""}
    \paragraph {An \caps interval \normal-text is the distance, or difference between two sounds in point
    	    of \caps gavity \normal-text or \caps acuteness.}
    	    \paragraph{
    	    	The least of our \caps intervals \normal-text is called a semitone, or half-tone: it is the
    	    	\caps interval, \normal-text in the  \caps natural \normal-text scale, between E and F; and between B and C.
    	    }
    	    \paragraph{Ex: \inlineScoreSemitones}
    	    \paragraph{
    	    	    The \caps regular \normal-text progression of the  \caps other notes in the \caps natural, which is
    	    	    also called \caps diatonic scale, is by an \caps interval of two semitones or a whole note.
    	    }
    	    \paragraph{""}
    	    \paragraph{
    	    	Example of the \caps Natural or \caps Diatonic scale.
    	    }
    	    \inlineScoreDiatonicScale
    	    \paragraph{
    	    	The \caps interval between C and D, between D and E, or between any two
    	    	\caps contiguous notes, in the scale, is call a \caps second: the
    	    	\caps interval between C and E, or between D and F, etc: is called a 
    	    	\caps third; and so on.
    	    }
    	    \paragraph {""}
    	    \paragraph {Example of \larger \caps Intervals} 
    	    \paragraph {""}
    	    \inlineScoreIntervals
    	    \paragraph {The \caps interval of an 8 \super th is commonly called an \caps octave.}
    	    \paragraph {""}
    	    \paragraph {N.B. The nature, and name of the \caps intervals remain the same, whether the single
    	    notes be played \caps successively, or whether two, or more, be struck \caps together: the 
    	    former is properly called \caps Melody; and the latter, \caps Harmony.}
    	    \paragraph{ Example of the latter.- \inlineScoreHarmonyExample}
    	    \paragraph{" "}
    	    \paragraph{
    	    	    The notes thus taken \caps together are also called \caps chords;
    	    	    the succession of which, played from certain figures set over a bass, according to a 
    	    	    system of rules, is denominated \caps Thorough-Bass.
    	    }
    	    \paragraph{" "}
    	    \paragraph{" "}
}
}
