\version "2.16.0"

inlineScoreBassClef = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Bar_engraver
        }
        { \clef bass s1 }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
        } " "
}
inlineScoreTenorClef = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Bar_engraver
        }
        { \clef "neomensural-c4" s1 }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
        } " "
}
inlineScoreCounterTenorClef = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Bar_engraver
        }
        { \clef "neomensural-c3" s1 }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
        } " "
}
inlineScoreSopranoClef = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Bar_engraver
        }
        { \clef "neomensural-c1" s1 }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
        } " "
}
inlineScoreTrebleClef = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \remove Bar_engraver
        }
        { \clef treble s1 }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t }
        } " "
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneClefs = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph {""}
    \paragraph {
    	    In order to determine the \caps Pitch \normal-text of musical notes, certain signs,
    	    called \caps Clefs \normal-text or \caps Cliffs \normal-text have been invented, which are
    	    set at the beginning of the staves.
    }
    \paragraph {""}
    \paragraph {
    	    There are five in general use.
    }
    \paragraph {""}
    \paragraph{
    	    The Bass clef, on the 4{\super th} \normal-text line \inlineScoreBassClef   
    	    The Tenor clef on the 4\super th \normal-text line \inlineScoreTenorClef
  }
  \paragraph{
  	The Counter-tenor clef on the 3\super d \normal-text line \inlineScoreCounterTenorClef
  	The Soprano clef on the 1\super st \normal-text line \inlineScoreSopranoClef
  }
  \paragraph{
  	  And the Treble clef on the 2\super nd \normal-text line \inlineScoreTrebleClef
  }
  \paragraph{" "}
  \paragraph{The Treble and Bass clefs are chiefly used for the Piano Forte.}
  \paragraph{" "}
  \paragraph{" "}
}
}
