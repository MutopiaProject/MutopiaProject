\version "2.16.1"

inlineScoreBarExample = \markup { " " \general-align #Y #CENTER 
	    \score {
	    	    \new Staff 
	    	    	\with {
	    	    		\remove Time_signature_engraver
	    	    		\remove Clef_engraver
	    	    	        }
		    {  
		    	    \cadenzaOn
		    	    \hideNotes c''4 \bar "|" c
			}
	  \layout {
	      indent = 0\in
	      ragged-right = ##t
	    }
	    } "  "	   
}
inlineScoreSimpleCommon = \markup { " " \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
		    {  
		    	    \time 4/4
		    	    \clef treble
		    	    \cadenzaOn
		    	    \hideNotes 
		    	    \override TextScript #'extra-offset = #'(1 . 6.5)
		    	    c''64-\markup{\whiteout \pad-markup #0.5 "or"}
		    	    c''64
		    	    \time 2/2
		    	     c''64
			}
	  \layout {
	      indent = 0\in
	      ragged-right = ##t
	    }
	    } "  "	   
}
inlineScoreSimpleCommonExample = \markup { " " \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
		    {  
		    	    \set Staff.instrumentName = #'"Example"
		    	    \time 4/4
		    	    \clef treble
		    	    \hideNotes 
		    	    \override TextScript #'extra-offset = #'(1 . 5.6)
		    	    c''64-\markup{\whiteout \pad-markup #0.5 "or"}
		    	    c''64
		    	    \time 2/2
		    	    c''64
		    	     \unHideNotes
		    	     \set Timing.measureLength = #(ly:make-moment 4 4)
		    	     c''1 \noBreak
		    	     c''2 c''2 \noBreak
		    	     c''2. c''4 \noBreak
		    	     c''8[ c''8 c''8 c''8] c''4 c''4 \noBreak
		    	     \cadenzaOn
		    	     c''1   \bar "||"
			}
	  \layout {
	      indent = 0.5\in
	      ragged-right = ##t
	    }
	    }	   
}
inlineScoreSimpleTwoFourths = \markup { " " \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
		    {  
		    	    \time 2/4
		    	    \clef treble 
		    	    \hideNotes c''4
			}
	  \layout {
	      indent = 0\in
	      ragged-right = ##t
	    }
	    } "  "	   
}
inlineScoreSimpleTwoFourthsExample = \markup { " " \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
		    {  
		    	    \set Staff.instrumentName = #'"Example"
		    	    \time 2/4
		    	    \clef treble
		    	     c''2 \noBreak
		    	     c''4 c''4 \noBreak
		    	     c''4. c''8 \noBreak
		    	     c''16[ c''16 c''16 c''16] c''8[ c''8] \noBreak
		    	     c''2   \bar "||"
			}
	  \layout {
	      indent = 0.5\in
	      ragged-right = ##t
	    }
	    }	   
}

inlineScoreTwelveEigthsCompound = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
	    	    	    \setProportionalScore
		    	    \set Staff.instrumentName = \markup{ \concat { "1" \super "st" " sort"} }
		    	    \relative c''{
		    	    	    \time 12/8
		    	    	    \clef treble
		    	    	    c1. \noBreak
		    	    	    c2. c4. c \noBreak
		    	    	    c4. c4 \autoBeamOff c8 c[ c c] c4. 
		    	    	    \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
	
	\column { \left-align \smaller {
		\concat { \hspace #2 "containing 12 quavers in a" } 
		\general-align #Y #-1 \concat { \hspace #2 "bar, or their equivalent" }
		}
	}	   
}
inlineScoreSixEigthsCompound = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
		    	    \set Staff.instrumentName = \markup{ \concat { "2" \super "d" " sort"} }
		    	    \relative c''{
		    	    	    \time 6/8
		    	    	    \clef treble
		    	    	    c2. \noBreak
		    	    	    c4. c4 c8 \noBreak
		    	    	    \autoBeamOff c8[ c c] c4. 
		    	    	    \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
\column { \left-align \smaller {
		\concat { \hspace #2 "six quavers in a bar, or" } 
		\general-align #Y #-1 \concat { \hspace #2 "their equivalent" }
		}
	}   
}
inlineScoreTwelveFourthsCompound = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
		    	    \set Staff.instrumentName = \markup{ \concat {"3" \super "d" " sort"} }
		    	    \relative c''{
		    	    	    \time 12/4
		    	    	    \clef treble
		    	    	    c1. c1. \noBreak
		    	    	    c2 c4 c c c c2. c2. \noBreak 
		    	    	    \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
\column {\left-align \general-align #Y #0 \smaller \concat { \hspace #2 "12 crotchets in a bar, etc." } }	   
}
inlineScoreSixFourthsCompound = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
		    	    \set Staff.instrumentName = \markup{ \concat { "4" \super "th" " sort"} }
		    	    \relative c''{
		    	    	    \time 6/4
		    	    	    \clef treble
		    	    	    c2. c2 c4 \noBreak
		    	    	    \repeat unfold 6 {c4} \noBreak 
		    	    	    \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
	\column {\left-align \general-align #Y #0 \smaller\concat { \hspace #2 "6 crotchets in a bar, etc." } }	   
}
inlineScoreThreeSecondsSimple = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
		    	    \relative c''{
		    	    	    \time 3/2
		    	    	    \clef treble
		    	    	    c1. \noBreak
		    	    	    \repeat unfold 3 {c2} \noBreak 
		    	    	    \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
\column { \left-align \smaller {
		\concat { \hspace #10.5 "three minims in a bar," } 
		\general-align #Y #-1 \concat { \hspace #10.5 "or their equivalent" }
		}
	}
}
inlineScoreThreeFourthsSimple = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
		    	    \relative c''{
		    	    	    \time 3/4
		    	    	    \clef treble
		    	    	    \repeat unfold 3 {c4} \noBreak
		    	    	    c4. c8 c[ c] \noBreak
		    	    	    c2.
		    	    	    \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
\column { \left-align \smaller {
		\concat { \hspace #10.5 "three Crotchets in" } 
		\general-align #Y #-1 \concat { \hspace #10.5 "a bar, etc:" }
		}
	}	   
}
inlineScoreThreeEighthsSimple = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
		    	    \relative c''{
		    	    	    \time 3/8
		    	    	    \clef treble
		    	    	    c4 c8 \noBreak
		    	    	    c8 c16[ c c c] \noBreak
		    	    	    c4.
		    	    	    \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
\column { \left-align \smaller {
		\concat { \hspace #10.5 "three quavers in" } 
		\general-align #Y #-1 \concat { \hspace #10.5 "a bar, etc:" }
		}
	}

}
inlineScoreNineFourthsCompound = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
		    	    \relative c''{
		    	    	    \time 9/4
		    	    	    \clef treble
		    	    	    c2 \repeat unfold 7 {c4} \noBreak
		    	    	    \repeat unfold 3 {c2.} \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
\column { \left-align \smaller {
		\concat { \hspace #10.5 "nine crotchets in" } 
		\general-align #Y #-1 \concat { \hspace #10.5 "a bar, etc:" }
		}
	}
}
inlineScoreNineEigthsCompound = \markup { " " \general-align #Y #CENTER 
\column{
	    \score {
	    	    \new Staff{
		    	    \relative c''{
		    	    	    \time 9/8
		    	    	    \clef treble
		    	    	    c4. c4 c8 c[ c c] \noBreak
		    	    	    c4. c4 c8 c4. \bar "||"
		    	    }
		    	    }
	  \layout {
	      indent = 0.4\in
	      line-width = 3\in
	      ragged-right = ##f
	    }
	    }
	}
\column { \left-align \smaller {
		\concat { \hspace #10.5 "nine quavers in" } 
		\general-align #Y #-1 \concat { \hspace #10.5 "a bar, etc:" }
		}
	}
}
inlineScoreTwoFourthsSymbol = \markup {\general-align #Y #-0.4 
	    \score {
	    	    \new Staff
	    	    \with{
	    	    	\remove Bar_engraver
	    	    	\remove Clef_engraver
	    	    	\remove Staff_symbol_engraver
	    	    }
		    {  
		    	    \time 2/4
		    	    s32
			}
	  \layout {
	  	  #(layout-set-staff-size 15)
	  	  indent = 0\in
	  	  ragged-right = ##t
	    }
	    } " "	   
}
inlineScoreTwoEigthsSymbol = \markup {\general-align #Y #-0.4 
	    \score {
	    	    \new Staff
	    	    \with{
	    	    	\remove Bar_engraver
	    	    	\remove Clef_engraver
	    	    	\remove Staff_symbol_engraver
	    	    }
		    {  
		    	    \time 3/8
		    	    s32
			}
	  \layout {
	  	  #(layout-set-staff-size 15)
	  	  indent = 0\in
	  	  ragged-right = ##t
	    }
	    } " "	   
}
inlineScoreTripletsExample = \markup { " " \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    \with{
	    	    	\remove Time_signature_engraver
	    	    	\remove Clef_engraver
	    	    }
		    	    \relative c''{
				    \cadenzaOn
				    \stemDown
				    \tupletUp
				    \set Staff.instrumentName = #'"thus"
				    \override TextScript #'extra-offset = #'(1 . 4.7)
				    \override TupletBracket #'control-points = #'( ( 1.8264 . 3.736) ( 4.4001 . 4.732) ( 6.4757 . 3.902) ( 7.555 . 2.158) )
				    \override TupletNumber #'extra-offset = #'(1.6 . -0.9 )
				    
				    \override TupletBracket #'stencil = #ly:slur::print
				    \hideNotes c16 \unHideNotes  \times 2/3 {c4 e g,} 
				    \times 2/3 {b d g,} \bar "|" \noBreak
				    \override TupletBracket #'control-points = #'( ( 1.5774 . 3.819) ( 3.3208 . 4.483) ( 5.3134 . 4.068) ( 6.0606 . 2.822) )
				    \override TupletNumber #'extra-offset = #'(1.5 . -1 )
				    \hideNotes b4-\markup{\whiteout \pad-markup #0.4 "or"} \unHideNotes
				    \times 2/3 {c8[ e g,]} \times  2/3 {b[ d g,]} \bar "|"  \noBreak
				    \override TupletNumber #'extra-offset = #'(1.1 . -1.1 )
				    \override TupletBracket #'control-points = #'( ( 1.2453 . 3.819) ( 2.4076 . 4.483) ( 3.819 . 4.317) ( 4.4832 . 3.486) )
				    \hideNotes b4-\markup{\whiteout \pad-markup #0.4 "or"} \unHideNotes
				    \times 2/3 {c16[ e g,]} \times  2/3 {b[ d g,]} \bar "|"
		    	    }
	  \layout {
	      indent = 0.1\in
	      line-width = 2.5\in
	      ragged-right = ##t
	    }
	    } "  "	   
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneTimeAndItsDivisionsOne = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph {
    	The \caps bar, made thus \inlineScoreBarExample divides a musical composition into \caps equal
    	portions of time.
    }
    \paragraph {
    	\caps Time is divided into two sorts; \caps common and \caps triple; and of which is either
    	\caps simple or \caps compound: and the character or sign, which denotes it, is placed at
    	the beginning of every composition, after the clef. 
    }
    \paragraph{
    	\caps Simple common time, when marked thus \inlineScoreSimpleCommon denotes, that each bar 
    	contains one semibreve, or its equivalent.
    }
    \paragraph{\inlineScoreSimpleCommonExample}
    \paragraph{
    	When marked thus \inlineScoreSimpleTwoFourths the bar contains one minim, or its equivalent.	    
    }
    \paragraph{\inlineScoreSimpleTwoFourthsExample}
    \paragraph{" "}
    \paragraph{
    	Four sorts of \caps compound common time explained:	    
    }
    \paragraph{\inlineScoreTwelveEigthsCompound}
    \paragraph{\inlineScoreSixEigthsCompound}
    \paragraph{\inlineScoreTwelveFourthsCompound}
    \paragraph{\inlineScoreSixFourthsCompound}
    \paragraph{" "}
    \paragraph{The two last sorts are very seldom used in modern music.}
    \paragraph{" "}
    \paragraph{"                             " \caps Simple triple time explained.}
    \paragraph{\inlineScoreThreeSecondsSimple}
    \paragraph{\inlineScoreThreeFourthsSimple}
    \paragraph{\inlineScoreThreeEighthsSimple}
    \paragraph{" "}
  }
}
partOneTimeAndItsDivisionsTwo = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{"                             " \caps Compound triple time explained.}
    \paragraph{\inlineScoreNineFourthsCompound}
    \paragraph{\inlineScoreNineEigthsCompound}
    \paragraph{" "}
    \paragraph{"  " \caps Compound triple time is seldom used in modern music.}
    \paragraph{
    	    N.B. The contents of every bar, in common time; whether \caps simple, or \caps compound,
    	    may be divided, (by beating or counting) into four, or into two equal parts: and in
    	    triple time; whether simple, or \caps compound, into three equal parts.
    }
    \paragraph{
    	The figures, which mark the time, have a reference to the \caps semibreve; the \caps lower 
    	number, showing into how many parts the \caps semibreve is divided; and the \caps upper 
    	number, how many of such parts are taken to fill up a bar.  For example \inlineScoreTwoFourthsSymbol 
    	denotes, that the \caps semibreve is divided into four parts, namely, four crotchets; and that two 
    	of them are taken for each bar: likewise \inlineScoreTwoEigthsSymbol indicates, that the 
    	\caps semibreve is divided into eight parts, namely, eight quavers; and that three of them are 
    	adopted to compleat a bar.
    }
    \paragraph{" "}
    \paragraph{The figure of 3 placed over three crotchets, quavers or semiquavers}
    \paragraph{
    	    \inlineScoreTripletsExample (which are called triplets) denotes, that the three crotchets must
    	    be performed within the time of two common crotchets, or of one minim; the three quavers within 
    	    the time of two common quavers, or of one crotchet; and the three semiquavers within the time of two 
    	    common semiquavers, or of one quaver.
    }
    \paragraph{
    	    N.B. The easiest way is to consider them all as three to one, and to beat or count 
    	    the time accordingly; that is, to beat the first of every 3.  (N.B. \caps Scarlatti, and 
    	    others have written three demisemiquavers to a quaver; and three semiquavers to a crotchet in 
    	    some of their pieces.)  The figure of 6 over quavers or semiquavers, means that they are to be 
    	    performed within the time of four of the same kind; which is a similar case to the preceding one. 
    	    The figures 5, 7, 9, 10 etc. follow the same rule.
    }
    \paragraph{" "}
    \paragraph{" "}
}
}
