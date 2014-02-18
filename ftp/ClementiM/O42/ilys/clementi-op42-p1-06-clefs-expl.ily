\version "2.16.0"

inlineScoreTenorClefExp = \markup { " " \general-align #Y #CENTER 
	    \score {
	  \new GrandStaff
	  <<
	    \new Staff 
	    \with {
		\remove Time_signature_engraver}
	    { \new Voice = "upper"
			\set Staff.instrumentName = \markup {
				  \column \center-align { "The notes"
					    \line { "written thus:" } } }
		     \relative c {
		  \clef "neomensural-c4"
		  \cadenzaOn
		  c2^\markup{\bold Tenor} d4 e f g a b c d e f g e f d b g a b c1 \bar "||"
		} 
	    }
	    \new Lyrics \lyricsto "upper"
		    \lyricmode { c d e f g a b c d e f g e f d b g a b c }
	    \new Staff 
		\with {
		\remove Time_signature_engraver}
	    {
		    \set Staff.instrumentName = \markup {
				  \column \center-align { "are played as if"
					    \line { "written thus:" } } }
			    \relative c {
				  \clef bass
				 \stemDown
				  c2^\markup{\bold Bass} d4 e f g a b c d e f g e f d b g a b c1
			}
	    }
	  >>
	  \layout {
	    \context {
	      \GrandStaff
	      \accepts "Lyrics"
	    }
	      indent = 0.7\in
	      ragged-right = ##f 
	  }
	} " "
}
inlineScoreCounterTenorClefExp = \markup { " " \general-align #Y #CENTER 
	    \score {
	  \new GrandStaff
	  <<
	    \new Staff 
	    \with {
		\remove Time_signature_engraver}
	    { \new Voice = "upper"
			\set Staff.instrumentName = \markup {"when written thus:" } 
		     \relative c {
		  \clef "neomensural-c3"
		  \cadenzaOn
		  c4^\markup{\bold Counter-tenor} d e f g a b c d e f g e c f d b d b g c1 \bar "||"
		} 
	    }
	    \new Lyrics \lyricsto "upper"
		    \lyricmode {c d e f g a b c d e f g e c f d b d b g c }
	    \new Staff 
		\with {
		\remove Time_signature_engraver}
	    {
		    \set Staff.instrumentName = \markup {"are played thus:" }
			    \relative c {
				  \clef bass
				 \stemDown
				  c4^\markup{\bold Bass} d e f g a b c d e f g e c f d b d b g c1
			}
	    }
	  >>
	  \layout {
	    \context {
	      \GrandStaff
	      \accepts "Lyrics"
	    }
	      indent = 0.7\in
	      ragged-right = ##f 
	  }
	} " "
}
inlineScoreSopranoClefExp = \markup { " " \general-align #Y #CENTER 
	    \score {
	  \new GrandStaff
	  <<
	    \new Staff 
	    \with {
		\remove Time_signature_engraver}
	    { \new Voice = "upper"
			\set Staff.instrumentName = \markup {"when written thus:" } 
		     \relative c'{
		  \clef "neomensural-c1"
		  \cadenzaOn
		  c4^\markup{\bold Soprano} d e f g a b c d e f g a f d b g f d b c1 \bar "||"
		} 
	    }
	    \new Lyrics \lyricsto "upper"
		    \lyricmode {c d e f g a b c d e f g a f d b g f d b c }
	    \new Staff 
		\with {
		\remove Time_signature_engraver}
	    {
		    \set Staff.instrumentName = \markup {"are played thus:" }
			    \relative c'{
				  \clef treble
				  c4^\markup{\bold Treble} d e f g a b c d e f g a f d b g f d b c1
			}
	    }
	  >>
	  \layout {
	    \context {
	      \GrandStaff
	      \accepts "Lyrics"
	    }
	      indent = 0.7\in
	      ragged-right = ##f 
	  }
	} " "
}

inlineScoreFclef = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c{
        	\clef bass
        	\cadenzaOn
        	f4^\markup{\bold F} s
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreTenorClefSnip = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c'{
        	\clef "neomensural-c4"
        	\cadenzaOn
        	s4 c4_\markup{\bold C}^\markup{\bold \halign #-.2 Tenor:} s %\bar "|" s16
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreCounterTenorClefSnip = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c'{
        	\clef "neomensural-c3"
        	\cadenzaOn
        	s4 c4_\markup{\bold C}^\markup{\bold \halign #-.2 Counter-t:} s %\bar "|" s16
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreSopranoClefSnip = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c'{
        	\clef "neomensural-c1"
        	\cadenzaOn
        	s4 c4_\markup{\bold C}^\markup{\bold \halign #-.2 Soprano:} s %\bar "|" s16
        	}
        }
        \layout { 
        	indent = 0\in
        	ragged-right = ##t
        %	#(layout-set-staff-size 25)
        }
        } " "
}
inlineScoreTrebleClefSnip = \markup { " " \general-align #Y #CENTER 
    \score
    { \new Staff \with {
        \remove Time_signature_engraver
        \override StaffSymbol #'staff-space = #1.2
        }
        { \relative c''{
        	\clef treble
        	\cadenzaOn
        	s4 g4_\markup{\bold G}^\markup{\bold \halign #-.2 Treble:} s %\bar "|" s16
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

partOneClefsExplained = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph { \line {
    \inlineScoreTenorClefExp} }
    \paragraph { \line {
    	\inlineScoreCounterTenorClefExp} }
     \paragraph { \line {
        \inlineScoreSopranoClefExp} }
    	\paragraph{" "}
    	\paragraph{
		    By which it is evident, that the Tenor-notes must be played one fifth \caps higher than 
		    the Bass-notes: the Counter-tenor notes, one seventh \caps higher than the Bass-notes: 
		    and the Soprano-notes, one third \caps lower than the Treble-notes.
    	    }
    	    \paragraph{
    	    	    It is now proper to take notice, that the bass-clef is also called the F-Clef, as 
    	    	    it indicates by its position where the note F lies:  \inlineScoreFclef the tenor, counter-tenor, and
    	    	    soprano-clefs are called C-clefs, because they determine the place of C: \inlineScoreTenorClefSnip
    	    	    \inlineScoreCounterTenorClefSnip \inlineScoreSopranoClefSnip and the treble-clef is called the G-clef,
    	    	    being placed on the line where G is found \inlineScoreTrebleClefSnip 
    	    }
    	    \paragraph{" "}
}
}
