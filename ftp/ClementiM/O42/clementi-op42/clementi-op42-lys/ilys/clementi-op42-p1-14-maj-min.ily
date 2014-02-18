\version "2.16.0"

inlineScoreAscDescCmajScale = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
        \set PianoStaff.instrumentName = \markup{\column{{"Ascending and"} \line{"descending scale"} \line{"in the key of"} \line{\larger "C, " \larger \caps "Major."}}}
        \new Staff{
		\relative c'{
			\clef treble
			\cadenzaOn
		    	\override TextScript #'extra-offset = #'(0.0 . -2.0 )
		    	\stemUp
		    	c4^\markup{\column{{"Key-"} \line{"note"}}} d e( f) g a b( c) c( b) a g f( e) d c^\markup{\column{{"Key-"} \line{"note"}}}
		    	\bar "||"

			}
        	}
	\new Staff{
		\relative c'{
			\clef bass
			c4^\markup{\larger 1}
			c^\markup{\larger 2}
			c^\markup{\larger 3}
			c^\markup{\larger 4}
			c^\markup{\larger 5}
			c^\markup{\larger 6}
			c^\markup{\larger 7}
			c^\markup{\larger 8}
			c^\markup{\larger 8}
			c^\markup{\larger 7}
			c^\markup{\larger 6}
			c^\markup{\larger 5}
			c^\markup{\larger 4}
			c^\markup{\larger 3}
			c^\markup{\larger 2}
			c^\markup{\larger 1}
		}
	}
        >>
	  \layout {
	      indent = 0.8\in
	      ragged-right = ##f
	      \context {
	      	      \Staff
	      	      \remove "Time_signature_engraver"
	      }
	    }
    }
}
inlineScoreAscDescAminScale = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
        \set PianoStaff.instrumentName = \markup{\column{{"Ascending and"} \line{"descending scale"} \line{"in the key of"} \line{\larger "A, " \larger \caps "minor."}}}
        \new Staff{
		\relative c''{
			\clef treble
			\cadenzaOn
		    	\override TextScript #'extra-offset = #'(0.0 . -2.0 )
		    	\stemDown
		    	a4^\markup{\column{{"Key-"} \line{"note"}}} b( c) d e fis gis( a) a g f( e) d c( b) a^\markup{\column{{"Key-"} \line{"note"}}}
		    	\bar "||"

			}
        	}
	\new Staff{
		\relative c'{
			\clef bass
			a4^\markup{\larger 1}
			a^\markup{\larger 2}
			a^\markup{\larger 3}
			a^\markup{\larger 4}
			a^\markup{\larger 5}
			a^\markup{\larger 6}
			a^\markup{\larger 7}
			a^\markup{\larger 8}
			a^\markup{\larger 8}
			a^\markup{\larger 7}
			a^\markup{\larger 6}
			a^\markup{\larger 5}
			a^\markup{\larger 4}
			a^\markup{\larger 3}
			a^\markup{\larger 2}
			a^\markup{\larger 1}
		}
	}
        >>
	  \layout {
	      indent = 0.8\in
	      ragged-right = ##f
	      \context {
	      	      \Staff
	      	      \remove "Time_signature_engraver"
	      }
	    }
    }
}

inlineScoreMajScaleInterval = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c'{
	    	     	    \set Staff.instrumentName = \markup { "Ex: " }
		    	    \clef treble
		    	    \cadenzaOn
		    	    \override TextScript #'baseline-skip = #2
		    	    \override TextScript #'extra-offset = #'(2.5 . 4.9 )
		    	    \override Slur #'control-points = #'( ( 2.3246 . 2.324) ( 6.531 . 3.542) ( 15.94 . 3.652) ( 20.257 . 2.324) )
		    	    c4^(-\markup{\whiteout \pad-markup #0.2 \column{\line{whole}\line{tone} }}
		    	    \override TextScript #'extra-offset = #'(2.5 . 4.4 )
		    	    d-\markup{\whiteout \pad-markup #0.2 \column{\line{whole}\line{tone} }}
		    	    \override TextScript #'extra-offset = #'(0.6 . -1.4 )
		    	    e^)^\markup{\concat{3 \super d}}
		    	    \bar "|"
		    	    \once \override TextScript #'extra-offset = #'(0.0 . 3.4 )
		    	    \hideNotes d64-\markup{\whiteout \pad-markup #0.2 "or"}
		    	    \unHideNotes
		    	    \override TextScript #'extra-offset = #'(2.2 . 4.8 )
		    	    c4^(-\markup{\whiteout \pad-markup #0.2 \column{\line{semi-}\line{tone} }}
		    	    \override TextScript #'extra-offset = #'(2.2 . 5.7 )
		    	    cis-\markup{\whiteout \pad-markup #0.2 \column{\line{semi-}\line{tone} }}
		    	    \override TextScript #'extra-offset = #'(2.2 . 4.3 )
		    	    d^)^(-\markup{\whiteout \pad-markup #0.2 \column{\line{semi-}\line{tone} }}
		    	    \override TextScript #'extra-offset = #'(2.2 . 5.2 )
		    	    dis-\markup{\whiteout \pad-markup #0.2 \column{\line{semi-}\line{tone} }}
		    	    \override TextScript #'extra-offset = #'(0.6 . -1.4 )
		    	    e^)^\markup{\concat{3 \super d}}
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreMinScaleInterval = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
	    	     	    \set Staff.instrumentName = \markup { "  Example " }
		    	    \clef treble
		    	    \cadenzaOn
		    	    \stemDown
		    	    \override TextScript #'baseline-skip = #2
		    	    \override TextScript #'extra-offset = #'(3.5 . 4.9 )
		    	    \once \override Slur #'control-points = #'( ( 1.7711 . 1.771) ( 7.4166 . 3.985) ( 15.608 . 4.095) ( 22.139 . 2.324) )
		    	    a4^(-\markup{\whiteout \pad-markup #0.2 \column{\line{whole}\line{tone} }}
		    	    \override TextScript #'extra-offset = #'(3.5 . 4.6 )
		    	    b-\markup{\whiteout \pad-markup #0.2 \column{\line{semi}\line{tone} }}
		    	    \override TextScript #'extra-offset = #'(0.1 . -0.2 )
		    	    c^)^\markup{\concat{3 \super d}}
		    	    \bar "|"
		    	    \once \override TextScript #'extra-offset = #'(0.0 . 4.3 )
		    	    \hideNotes d64-\markup{\whiteout \pad-markup #0.2 "or"}
		    	    \unHideNotes
		    	    \override TextScript #'extra-offset = #'(3.1 . 5.0 )
		    	    \once \override Slur #'control-points = #'( ( 1.7711 . 1.549) ( 8.0808 . 3.763) ( 25.238 . 4.206) ( 33.541 . 2.324) )
		    	    a4^(-\markup{\whiteout \pad-markup #0.2 \column{\line{semi-}\line{tone} }}
		    	    \override TextScript #'extra-offset = #'(3.1 . 5.0 )
		    	    ais-\markup{\whiteout \pad-markup #0.2 \column{\line{semi-}\line{tone} }}
		    	    \override TextScript #'extra-offset = #'(3.1 . 4.6 )
		    	    b-\markup{\whiteout \pad-markup #0.2 \column{\line{semi-}\line{tone} }}
		    	    \override TextScript #'extra-offset = #'(0.1 . -0.3 )
		    	    c^)^\markup{\concat{3 \super d}}
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreExampleConclusionFMaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
        \set PianoStaff.instrumentName = \markup{"Example of a conclusion:"}
        \new Staff{
		\relative c''{
			\clef treble
			\time 3/4
			\key f \major
		    	c8. d16 f,4 e
		    	f2.
		    	\bar "||"
		    	\stopStaff
		    	\hideNotes
		    	f-\markup{\column{\line{the \caps last and \caps lowest }\line{ note of the bass is \larger F.} }}
			}
        	}
	\new Staff{
		\relative c'{
			\clef bass
			\key f \major
			<<{
				a2 bes4
				a2.
			}\\{
				c,2 c4
				f2.
			}>>
		}
	}
        >>
	  \layout {
	      indent = 1.2\in
	      ragged-right = ##t
	      \context {
	      	      \Staff
	      	      \remove "Time_signature_engraver"
	      }
	    }
    }
}
inlineScoreExampleBeginningFMaj = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\column{\line{Example of the beginning}\line{ of the same piece: }}}
        \new Staff{
		\relative c''{
			\clef treble
			\time 3/4
			\key f \major
		    	\partial 4
		    	c4
		    	f8. c16 a4 bes
		    	\stopStaff \hideNotes
		    	\override TextScript #'extra-offset = #'(2.5 . 4.5 )
		    	f-\markup{\column{
					\line{ the \concat{3 \super d} of \larger F, which is \larger A in the}
					\line{ first \caps full bar, is \caps major:}
					\line{ therefore the piece is in \larger F}
					\line{ \caps major}
		    		   }
		    		}
			}
        	}
	\new Staff{
		\relative c{
			\clef bass
			\key f \major
			\partial 4
			r4
			f2 g4
		}
	}
        >>
	  \layout {
	      indent = 1.2\in
	      ragged-right = ##t
	      }
	    }
 }
 
inlineScoreExampleConclusionAmin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
     \set PianoStaff.instrumentName = \markup{\column{
     	     \line{Example of}
     	     \line{\larger A \caps minor}
     	     \line{ending.}
     }}
        \new Staff{
		\relative c''{
			\clef treble
			\time 2/4
			\key a \minor
			\stemDown
		    	c8. d16 c16 b a gis
		    	\stemNeutral
			a2_\markup{\larger A}
		    	\bar "||"
			}
        	}
	\new Staff{
		\relative c'{
			\clef bass
			\time 2/4
			\key a \minor
			a8 d, e e,
			a2
		}
	}
        >>
	  \layout {
	      indent = 0.4\in
	      ragged-right = ##t
	      \context {
	      	      \Staff
	      	      \remove "Time_signature_engraver"
	      }
	    }
    }
}
inlineScoreExampleBeginningAmin = \markup { \general-align #Y #CENTER 
    \score {	    	    
	    \new PianoStaff 
    <<
    	    \set PianoStaff.instrumentName = \markup{\column{\line{" Example"}\line{" of the be-"}\line{" ginning"}}}
        \new Staff{
		\relative c''{
			\clef treble
			\time 2/4
			\key a \minor
		    	a16 c e a
		    	e f d e
		    	\stopStaff \hideNotes
		    	\override TextScript #'extra-offset = #'(0.3 . 3.6 )
		    	f-\markup{\column{
					\line{ here the \concat{3 \super d} of \larger A}
					\line{ is \caps minor, the}
					\line{ piece is there-}
					\line{ fore in \larger A \caps minor}
		    		   }
		    		}
			}
        	}
	\new Staff{
		\relative c'{
			\clef bass
			\key a \minor
			r8
			a[ gis e]
		}
	}
        >>
	  \layout {
	      indent = 0.5\in
	      ragged-right = ##t
	      }
	    }
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneMajorMinorKeys = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph{
    	The \caps fundamental note, called the \caps tonic or \caps "key-note," of a composition 
    	is either in the \caps major, or \caps minor mode.  An exposition of the scale in each \caps mode, 
    	will best explain their essential difference.
    }
    \paragraph{" "}
    \paragraph{ \inlineScoreAscDescCmajScale }
    \paragraph{" "}
    \paragraph{ 
    	N.B. The intervals in \caps this scale are in their \caps simple state; but in the following,
    	they are an octave higher, and are called \caps compound intervals; still retaining their 
    	names of \concat{"2" \super "d"}, \concat{3 \super d}, \concat{4 \super "th"}, etc: as in their \caps simple state. 
    	The figure 1, stands for a note of the same pitch, called \caps unison: this last remark is confined to 
    	the foregoing example.
    }
    \paragraph{ \inlineScoreAscDescAminScale }
    \paragraph{" "}
    \paragraph{
    	    The first \caps difference, which strikes the eye, is, that in the \caps "major-key", the 
    	    semitone lies between the \concat{3 \super d} and \concat{4 \super th}, and between the 
    	    \concat {7 \super "th"} and \concat {8 \super "th"} both ascending, and descending: whereas 
    	    in the \caps "minor-key", it lies between the \concat{2 \super d} and \concat{3 \super d}, and
    	    between the \concat {7 \super "th"} and \concat {8 \super "th"} ascending; but in descending, 
    	    between the \concat{2 \super d} and \concat{3 \super d} and between the 
    	    \concat{5 \super "th"} and \concat{6 \super "th"}.  Authors vary, however, in regard to the 
    	    \concat{6 \super "th"} and  \concat{7 \super "th"} of the \caps minor mode.
    }
    \paragraph{" "}
    \paragraph{
    	    The \caps essential and \caps immutable difference, therefore, between the \caps major 
    	    and \caps minor key, is the interval of the \concat{3 \super d}, which differs by a \caps semitone;
    	    for if we analyse the \concat{3 \super d} in the \caps major-scale, it will be found to 
    	    contain two whole tones; or four semitones:
    }
    \paragraph{ \inlineScoreMajScaleInterval }
    \paragraph{" "}
    \paragraph{
    	    Whereas the \concat{3 \super d} in the \caps minor -scale, will be found to contain one whole tone with
    	    a semitone; or three semitones.
    }
    \paragraph{ \inlineScoreMinScaleInterval }
    \paragraph{" "}
    \paragraph{
    	    Now, the \caps last, and if a chord, the \caps lowest note of the bass, in every \caps regular 
    	    composition, is the \caps "key-note"; let the contents then of the first \caps full bar be
    	    examined, (treble and bass); where, if the \concat{3 \super d} be major, the piece is said to be in 
    	    \caps such a key major.
    }
    \paragraph{ \inlineScoreExampleConclusionFMaj }
    \paragraph{ \inlineScoreExampleBeginningFMaj }
    \paragraph{ \inlineScoreExampleConclusionAmin \inlineScoreExampleBeginningAmin }
    \paragraph{" "}
    \paragraph{
    	    N.B. Sometimes a composition in the \caps minor mode may have a \caps major ending;
    	    for which reason, it is safer to examine the beginning, in order to determine the
    	    \caps mode.
    }
    \paragraph{" "}
    \paragraph{
    	    Let the Pupil remember, that the \caps natural major-key is \larger C; and the 
    	    \caps natural minor-key is \larger A; which latter is called the \caps "relative minor" to the 
    	    former; and that every \caps "major-key" has its \caps "relative minor" in the same proportion, 
    	    namely one tone and semitone \caps under; as will be shown in the collection of scales.
    }
    \paragraph{" "}
}
}
