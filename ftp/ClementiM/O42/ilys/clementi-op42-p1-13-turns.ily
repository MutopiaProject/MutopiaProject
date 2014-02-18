\version "2.16.1"

%-----------Extra Definitions --------------------
moveTupletNumOne = \once \override Voice.TupletNumber #'extra-offset = #'( 0.7 . 6.9 )
moveTupletNumTwo = \once \override Voice.TupletNumber #'extra-offset = #'( 0.9 . 7.3 )
moveTupletNumThree  = \once \override Voice.TupletNumber #'extra-offset = #'( 0.7 . 6.6 )
moveTupletNumFour  = \once \override Voice.TupletNumber #'extra-offset = #'( -0.2 . -6.5 )
moveTupletNumFive = \once \override Voice.TupletNumber #'extra-offset = #'(0.0 . -0.2 )
moveTupletNumSix  = \once \override Voice.TupletNumber #'extra-offset = #'( 0.7 . 6.1 )
lessScriptPadding = \once \override Voice.Script #'padding = #0.1
revertTupNumOffset = \revert TupletNumber #'extra-offset
%-------------------------------------------------

inlineScoreTurnsOne = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = "The Turn"
		    	    \clef treble
		    	    \cadenzaOn
		    	    c\turn \bar "|"
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "played thus"} b2 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 0.5977 . 2.49) ( 2.8891 . 3.486) ( 5.9776 . 2.889) ( 6.9738 . 1.693) )
			    \moveTupletNumOne
		    	    \times 2/3 {d32[ c b} c8.]
		    	    \bar "||"
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 7.2)
		    	    \hideNotes
		    	    b32-\markup{\whiteout \pad-markup #0.3 \small "It is sometimes writ- "}_\markup{\whiteout \pad-markup #0.3 \small "_ten in small notes "}
		    	    b1 b2 \unHideNotes
		    	    \grace {d32[ c b]} c4
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsTwo = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \clef treble
		    	    \cadenzaOn
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(0.2 . -2.2 )
		    	    s8 d4^\markup \override #'(baseline-skip . 1) {
		    	    	    \halign #-.5 \teeny
		    	    	    \center-column {
		    	    	    	    \musicglyph #"scripts.turn"
		    	    	    	    \tiny \sharp
		    	    }}
		    	    \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b64-\markup{\whiteout \pad-markup #0.1 \small " thus "} b8
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 1.6604 . 2.905) ( 3.4869 . 3.819) ( 5.9776 . 3.071) ( 6.8078 . 1.66) )
			    \moveTupletNumTwo
		    	    \times 2/3 {e32[ d cis} d8.]
		    	    \bar "||" \noBreak
		    	    \hideNotes b64 
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    d8[ e\turn f] \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 3.5)
		    	    b64-\markup{\whiteout \pad-markup #0.1 \small " thus "} b8 
		    	    \unHideNotes
		    	    d,8[ f32 e d e f8] \bar "||" \noBreak
		    	    \hideNotes b64 
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    d,4^\markup \override #'(baseline-skip . 1) {
		    	    	    \halign #-.5 \teeny
		    	    	    \center-column {
		    	    	    	    \tiny \flat
		    	    	    	    \musicglyph #"scripts.turn"
		    	    	    	    \tiny \sharp
		    	    	    }
		    	    }
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 7.3)
		    	    b128-\markup{\whiteout \pad-markup #0.3 \small " thus "} b8
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 1.6604 . 2.905) ( 3.4869 . 3.819) ( 5.9776 . 3.071) ( 6.8078 . 1.66) )
			    \moveTupletNumTwo
		    	    \times 2/3 {ees32[ d cis!} d8.]
		    	    \bar "||"
		     }
	  \layout {
	  	  
	  	  \context {
			      \Score
			      \override SpacingSpanner
				#'base-shortest-duration = #(ly:make-moment 1 8)
			    }

	  	  
	      indent = 0.0\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsThree = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{\column{{\small "The plain"} \line{\small "note and turn"}}}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \revert TextScript #'extra-offset
		    	    \hideNotes c64 \unHideNotes
		    	    c4^\markup{\musicglyph #"scripts.tenuto" \tiny " " \musicglyph #"scripts.turn"}
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(-1.1 . 6.2)
		    	    \hideNotes b64-\markup{\whiteout \pad-markup #0.4 \small "or"} \unHideNotes
		    	    \grace c8 c4\turn
		    	    \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b4 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 0.7245 . 2.626) ( 2.1736 . 3.441) ( 4.0756 . 3.26) ( 4.8002 . 1.72) )
			    c16[
		    	    \times 2/3 { \moveTupletNumOne d32 c b } c8]
		    	    \bar "||"  \noBreak
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 7.2)
		    	    \hideNotes
		    	    b32-\markup{\whiteout \pad-markup #0.3 \small "The dotted "}_\markup{\whiteout \pad-markup #0.3 \small "note turned"}
		    	    b1 b2
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    \override TextScript #'extra-offset = #'(2.8 . 0.0 )
		    	    c4.^\markup{ \musicglyph #"scripts.turn"} d8 e4
		    	    \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b4 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 0.7245 . 2.626) ( 2.1736 . 3.441) ( 4.0756 . 3.26) ( 4.8002 . 1.72) )
			    c8.[
		    	    \times 2/3 { \moveTupletNumOne d32 c b] } c8[ d] e4
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.3\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsFour = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = "     Inverted turns     "
		    	    \clef treble
		    	    \cadenzaOn
		    	    \hideNotes b64 \unHideNotes
		    	    c4^\markup{ \tiny " " \rotate #90 \musicglyph #"scripts.turn"}
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(-1.4 . 6.3 )
		    	    \hideNotes b64-\markup{\whiteout \pad-markup #0.4 \small "or"} \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    c4^\markup{" " \musicglyph #"scripts.reverseturn"} \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 0.797 . 1.394) ( 1.9925 . 2.988) ( 3.985 . 3.188) ( 5.2802 . 2.59) )
		    	    \times 2/3 { \moveTupletNumThree b32[ c d } c8.]
		    	    \bar "||" \noBreak
		    	    \hideNotes b64 
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(0.4 . 0.0 )
		    	    \lessScriptPadding
		    	    g4^\markup{ \left-align \teeny \sharp }^\markup { \left-align \tiny \rotate #90 \musicglyph #"scripts.turn" }
		    	    \override TextScript #'extra-offset = #'(-2.0 . 6.3 )
		    	    \hideNotes b64-\markup{\whiteout \pad-markup #0.4 \small "or"} \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(-0.4 . 0.0 )
		    	    g4^\markup{ \teeny \sharp \rotate #90 \musicglyph #"scripts.turn" }
		    	    \bar "|" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points = #'( ( 1.2951 . -3.188) ( 3.188 . -3.5865) ( 4.4832 . -3.2876) ( 5.3798 . -2.391) )
		    	    \times 2/3 { \moveTupletNumFour fis32[ g a } g8.]
		    	    \bar "||"
		     }
	  \layout {
	      indent = 1.2\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsFive = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
	    	     	    \set Staff.instrumentName = \markup { "Ex: 1" \super "st"}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \hideNotes d32 \unHideNotes
		    	    d4\turn 
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 
		    	    \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points =  #'( ( 1.3283 . 3.542) ( 3.4315 . 4.095) ( 5.092 . 3.874) ( 6.4203 . 2.656) )
		    	    \times 2/3 { \moveTupletNumTwo e32[ d cis } d8.]
		    	    \bar "||"
		    	    \revert TextScript #'extra-offset
		    	    \hideNotes
		    	    b2 b2^\markup{"Ex: 2" \super "d"} b2
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    d4^\markup{\tiny " " \rotate #90 \musicglyph #"scripts.turn"}
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 6.2)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 
		    	    \unHideNotes
		    	    \override TupletBracket #'control-points =  #'( ( 0.7748 . 2.435) ( 1.7711 . 3.431) ( 4.0957 . 4.095) ( 5.5348 . 3.32) )
		    	    \times 2/3 { \moveTupletNumThree cis32[ d e } d8.]
		    	    \bar "||"

		    	    
		     }
	  \layout {
	      indent = 0.6\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsSix = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{\column{{\small "Ex: in dou-"} \line{\small "-ble notes"}}}
		    	    \clef treble
		    	    \cadenzaOn
		    	    <<{
		    	         \revert TextScript #'extra-offset
		    	         d4^\markup{\tiny \sharp}^\markup{ \small \musicglyph #"scripts.turn"}
				}\\{b4}>>
			    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(0.1 . -5.4 )
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} b2 
		    	    \unHideNotes
		    	    <<{
				    \override TupletBracket #'stencil = #ly:slur::print
				    \override TupletBracket #'control-points =  #'( ( 1.8818 . 6.309) ( 3.0995 . 6.863) ( 4.8706 . 6.863) ( 6.199 . 6.088) )
		    	        \times 2/3 { \moveTupletNumFive e32[ d cis } d8.]
		    	    }\\{  b4  }>>
		    	    \bar "||" \noBreak
		    	    \hideNotes
		    	    b64
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    <<{
		    	    	\revert TextScript #'extra-offset
		    	    	\override TextScript #'extra-offset = #'(0.5 . -2.9 )
				b4^\markup{\rotate #90 \musicglyph #"scripts.turn"}
				}\\{g4}>>
			    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(0.1 . -5.4 )
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} c8
		    	    \unHideNotes
		    	    <<{
		    	         \override TupletBracket #'control-points = #'( ( 1.8113 . 4.89) ( 2.717 . 5.705) ( 4.4379 . 5.977) ( 5.7059 . 5.253) )
		    	         \times 2/3 { \moveTupletNumFive a32[ b c} b8.]    
		    	    }\\{g4}>>
		    	    \bar "||" \noBreak
		    	     \hideNotes
		    	    b64
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    <<{
		    	    	\override TextScript #'extra-offset = #'(3.1 . -2.9 )
		    	    	b4.^\markup{\musicglyph #"scripts.turn"} c8 d4
		    	    }\\{
		    	    	    g,4. a8 b4
		    	    }>>
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(0.1 . -5.4 )
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "thus"} c8
		    	    \unHideNotes
		    	    <<{
		    	       \override TupletBracket #'control-points =  #'( ( 1.6302 . 5.615) ( 2.6265 . 6.068) ( 4.4379 . 5.887) ( 5.0719 . 4.981) )
		    	        b8.[ \times 2/3 { \moveTupletNumFive c32 b a] } b8[ c] d4
		    	    }\\{
		    	    g,4. a8 b4
		    	    }>>
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.3\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsSeven = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
	    	     	    \set Staff.instrumentName = \markup { "Shake."}
		    	    \clef treble
		    	    \cadenzaOn
		    	    d4^\markup{\concat{\rotate #40 \musicglyph #"scripts.rvarcomma" \rotate #40 \musicglyph #"scripts.rvarcomma"}}
		    	    \override TextScript #'extra-offset = #'(1 . 6.9)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "played"}_\markup{\whiteout \pad-markup #0.4 \small "thus  "}
		    	    b2 b2 \unHideNotes
		    	    e32[ d e d e d e d]
		    	    \hideNotes
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    b32-\markup{\whiteout \pad-markup #0.4 \small "or"}
		    	    b4 \unHideNotes
		    	    e32[ d e d e d8.]
		    	    \bar "||"
		    	    \override TextScript #'extra-offset = #'(1 . 6.9)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "Some Authors"}_\markup{\whiteout \pad-markup #0.4 \small "mark it thus"}
		    	    b2 b2 \unHideNotes
		    	    d4\prallprall
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.4\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsEight = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{\column{{"Short shake"} \line{"beginning by the"} \line{"note itself."}}}
		    	    \clef treble
		    	    \cadenzaOn
		    	    d8[^\markup{\concat{\rotate #40 \musicglyph #"scripts.rvarcomma" \rotate #40 \musicglyph #"scripts.rvarcomma"}} c]
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "played thus"}
		    	    b2 b2 \unHideNotes
		    	    d32[ e d16 c8]
		    	    \bar "||" \noBreak
		    	    \hideNotes
		    	    b64
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    \revert TextScript #'extra-offset 
		    	    f'4 e^\markup{\concat{\rotate #40 \musicglyph #"scripts.rvarcomma" \rotate #40 \musicglyph #"scripts.rvarcomma"}}
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "thus"}
		    	    b2 \unHideNotes
		    	    f'4( e32[ f e8.])
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.7\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsNine = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{\column{{"Transient"} \line{"or passing"} \line{"shakes"}}}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \stemDown
		    	    \override TextScript #'extra-offset = #'(0.3 . -0.8 )
		    	    c16[^\markup{\concat{\rotate #40 \musicglyph #"scripts.rvarcomma" \rotate #40 \musicglyph #"scripts.rvarcomma"}}
		    	    b
		    	    \override TextScript #'extra-offset = #'(0.3 . -1.6 )
		    	    a^\markup{\concat{\rotate #40 \musicglyph #"scripts.rvarcomma" \rotate #40 \musicglyph #"scripts.rvarcomma"}}
		    	    g]
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "or"}
		    	    b8 \unHideNotes
		    	    c16[\prall b
		    	    \override TextScript #'extra-offset =  #'(0.6 . -1.3 )
		    	    a^\markup{\musicglyph #"scripts.prall"} g]
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "thus"}
		    	    b8 \unHideNotes
		    	    c64[ d c32 b16] a64[ b a32 g16] 
		    	    \bar "||" \noBreak
		    	    \hideNotes
		    	    \revert TextScript #'extra-offset
		    	    \override TextScript #'extra-offset = #'(1 . 9.5)
		    	    b64-\markup{\whiteout \pad-markup #0.1 \column{{\small "Sometimes ex-"} \line{\small "-pressed in small"} \line{\small "notes."}}}
		    	    b1 b1 b1
		    	    \sameSizeClef \forceClef
		    	    b64 \unHideNotes
		    	    \stemUp  \grace {c16[d]} \stemDown c16[ b \stemUp \grace {a[b]} \stemDown a g]
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.5\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsTen = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{\column{{"Turned"} \line{"Shake."}}}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \stemDown
		    	    d4\trill
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "or"}
		    	    b16 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    d4^\markup{\musicglyph #"scripts.turn"}^\markup{\concat{\rotate #40 \musicglyph #"scripts.rvarcomma" \rotate #40 \musicglyph #"scripts.rvarcomma"}}
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "or"}
		    	    b16 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    d4^\markup{\concat{\rotate #40 \musicglyph #"scripts.rvarcomma" \rotate #40 \musicglyph #"scripts.rvarcomma"}}^\markup{\musicglyph #"scripts.turn"}
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "or"}
		    	    b16 \unHideNotes
		    	    \override TextScript #'extra-offset = #'(0.5 . 0.0 )
		    	    d4^\markup{\musicglyph #"scripts.prallprall"}^\markup{\musicglyph #"scripts.turn"}
		    	    \override TextScript #'extra-offset = #'(1 . 6.9)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.2 \small "played"}_\markup{\whiteout \pad-markup #0.2 \small "thus  "}
		    	    b2. \unHideNotes
		    	    e32[ d e d e d c d]
		    	    \bar "|"
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.2 \small "and sometimes"}_\markup{\whiteout \pad-markup #0.4 \small "turned thus  "}
		    	    b2 b2 b4 \unHideNotes
		    	    e32[ d e d e d cis d]
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.4\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsEleven = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \set Staff.instrumentName = \markup{\column{{"Continued"} \line{"shake."}}}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \stemDown
		    	    d4(\startTrillSpan \bar "|"
		    	    d4)
		    	    \override TextScript #'extra-offset = #'(-0.7 . 5.5)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "thus"}\stopTrillSpan
		    	    b8 \unHideNotes
		    	    \revert TextScript #'extra-offset
		    	    e32[ d e d e d e d]
		    	    \bar "|"
		    	    e32[ d e d e d cis d]
		    	    \bar "||"
		    	    \hideNotes
		    	    c64^\markup{ "Prepared shake"}
		    	    \sameSizeClef \forceClef
		    	    \unHideNotes
		    	    \grace {c16[ d]} d4\trill
		    	    \bar "|"
		    	    \override TextScript #'extra-offset = #'(1 . 5.5)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "thus"}
		    	    b8 \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points =  #'( ( 0.9962 . 2.739) ( 2.4906 . 4.234) ( 6.2266 . 4.607) ( 8.4682 . 3.237) )
		    	    \times 2/6 { \moveTupletNumOne c32[ d e d e d] }
		    	    \override TupletBracket #'control-points =  #'( ( 1.3698 . 3.736) ( 3.985 . 4.856) ( 6.6002 . 4.483) ( 8.3437 . 3.113) )
		    	    \times 2/6 { \moveTupletNumOne e[d e d c d] }
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.4\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsTwelve = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
		    	    \clef treble
		    	    \cadenzaOn
		    	    \override TextScript #'extra-offset = #'(1.6 . -1.1 ) 
		    	    e4( d)^\markup{\small \musicglyph #"scripts.trill"} c \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(0.0 . 3.2 )
		    	    \hideNotes b64_\markup{\small thus} \unHideNotes
		    	    e4( e32)[ d e d e d c d] c4 \bar "|" \noBreak
		    	    \override TextScript #'extra-offset = #'(-2.0 . 3.2 )
		    	    \hideNotes b64_\markup{\whiteout \pad-markup #0.1 \small "or thus"} \unHideNotes
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points =  #'( ( 0.5977 . 2.689) ( 1.3947 . 3.188) ( 2.7895 . 3.188) ( 3.8854 . 2.391) )
			    \once \override Slur #'control-points = #'( ( 0.7748 . 2.656) ( 4.4278 . 4.759) ( 17.268 . 4.87) ( 20.589 . 2.103) )
		    	    e4( d32[ e d e d e] \times 2/3 { \moveTupletNumSix d[ c d] } c4) \bar "||" \noBreak
		    	    \hideNotes b64 \sameSizeClef \forceClef
		    	    \unHideNotes
		    	    \once \override Slur #'control-points = #'( ( 0.797 . 4.184) ( 2.1917 . 5.678) ( 4.6824 . 5.778) ( 6.1768 . 4.881) )
		    	    \override TextScript #'extra-offset = #'(0.7 . -3.1 )
		    	    e4( f^\markup{\small \musicglyph #"scripts.trill"}
		    	    \override TextScript #'extra-offset = #'(0.6 . 3.4 )
		    	    g)-\markup{\whiteout \pad-markup #0.1 \small "thus"} \hideNotes d8 \unHideNotes
		    	    \override TupletBracket #'control-points = #'( ( 0.6973 . 3.586) ( 1.4944 . 4.184) ( 3.2876 . 4.184) ( 3.7858 . 3.387) )
		    	    e4( f32[ g f g f g \times 2/3 { \moveTupletNumSix f e f] } g4)
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.2\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsThirdteen = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
	    	     	    \set Staff.instrumentName = \markup { "The "\caps "beat"}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \once \override TextScript #'extra-offset = #'(0.4 . -0.9 )
		    	    c4^\markup{\rotate #-25 \musicglyph #"scripts.rvarcomma" \rotate #-25 \musicglyph #"scripts.rvarcomma"}
		    	    \override TextScript #'extra-offset =  #'(-2.3 . 6.0 )
		    	    \hideNotes b64-\markup{\whiteout \pad-markup #0.1 \small "or"} \unHideNotes
		    	    c4\prallmordent \bar "|"
		    	    \override TextScript #'extra-offset =  #'(0.0 . 6.4 )
		    	    \hideNotes b64-\markup{\whiteout \pad-markup #0.1 \small "thus"} b16 \unHideNotes
		    	    \override TextScript #'extra-offset = #'(2.2 . 4.0 )
		    	    b32[ c b c b c8.]-\markup{\whiteout \pad-markup #0.1 \small "or"}
		    	    \override TupletBracket #'stencil = #ly:slur::print
		    	    \override TupletBracket #'control-points =  #'( ( 0.8855 . 2.324) ( 2.1032 . 3.431) ( 4.3171 . 3.542) ( 5.6455 . 2.546) )
		    	    \times 2/3 { \moveTupletNumTwo b32[c b } c8.]-\markup{\whiteout \pad-markup #0.1 \small "or"}
		    	    c32[b c b c8]-\markup{\whiteout \pad-markup #0.1 \small "or"}
		    	    c32[b c8.]-\markup{\whiteout \pad-markup #0.1 \small "or"}
		    	    b32[ c8..]		    	    
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.4\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsFourteen = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c''{
	    	     	    \set Staff.instrumentName = \markup {Ex:}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \hideNotes b32 \unHideNotes
		    	    b4( c)\prallmordent \bar "|"
		    	    \override TextScript #'extra-offset = #'(1 . 6.9)
		    	    \hideNotes b32-\markup{\whiteout \pad-markup #0.4 \small "played"}_\markup{\whiteout \pad-markup #0.4 \small "thus  "}
		    	    b2 \unHideNotes
		    	    b4( c32[b c8.)]
		    	    \bar "||"
		    	    \hideNotes b64 \sameSizeClef \forceClef
		    	    b32
		    	    \unHideNotes
		    	    f4( g)\prallmordent
		    	    \bar "|"
		    	    \override TextScript #'extra-offset =  #'(0.0 . 6.4 )
		    	    \hideNotes b64-\markup{\whiteout \pad-markup #0.1 \small "thus"} b16 \unHideNotes
		    	    f4( g32[ f g8.]) 
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.4\in
	      ragged-right = ##f
	    }
	    }
}
inlineScoreTurnsFifteen = \markup { \general-align #Y #CENTER 
	    \score {
	    	    \new Staff
	    	    	  \with{\remove Time_signature_engraver}
	    	     \relative c'''{
	    	     	    \set Staff.instrumentName = \markup {Examples}
		    	    \clef treble
		    	    \cadenzaOn
		    	    \hideNotes b32 \unHideNotes
		    	    a4\prallmordent b8[ e,] \bar "|" \noBreak
		    	    \override TextScript #'extra-offset =  #'(0.0 . 6.4 )
		    	    \hideNotes b64-\markup{\whiteout \pad-markup #0.1 \small "thus"} b16 \unHideNotes
		    	    a'32[ gis a gis a8] b[ e,]
		    	    \bar "||" \noBreak
		    	    \hideNotes b64 \sameSizeClef \forceClef
		    	    b32
		    	    \unHideNotes
		    	    \stemDown
		    	    a4 d\prallmordent
		    	    \bar "|" \noBreak
		    	    \override TextScript #'extra-offset =  #'(0.0 . 6.4 )
		    	    \hideNotes b64-\markup{\whiteout \pad-markup #0.1 \small "thus"} b16 \unHideNotes
		    	    a4 d32[ cis d cis d8]
		    	    \bar "||"
		     }
	  \layout {
	      indent = 0.4\in
	      ragged-right = ##f
	    }
	    }
}

  #(define-markup-list-command (paragraph layout props args) (markup-list?)
  (interpret-markup-list layout props
   (make-justified-lines-markup-list (cons (make-hspace-markup 2) args))))

partOneTurnsShakesBeats = \markuplist {
  \override-lines #'(baseline-skip . 2.5) {
    \paragraph{" "}
    \paragraph{ \inlineScoreTurnsOne }
    \paragraph{ \inlineScoreTurnsTwo }
    \paragraph{ \inlineScoreTurnsThree}
    \paragraph{ \inlineScoreTurnsFour }
    \paragraph{ N.B. The \caps lowest note of \caps every sort of turn is \caps mostly a semitone: }
    \paragraph{ \inlineScoreTurnsFive }
    \paragraph{ \inlineScoreTurnsSix }
    \paragraph{ \inlineScoreTurnsSeven }
    \paragraph{ \inlineScoreTurnsEight }
    \paragraph{ \inlineScoreTurnsNine }
    \paragraph{ \inlineScoreTurnsTen }
    \paragraph{ \inlineScoreTurnsEleven }
    \paragraph{ The shake \caps legato with the preceding note, explained:}
    \paragraph{ \inlineScoreTurnsTwelve }
    \paragraph{
    	    N.B. The \caps general mark for the shake is this "  " \musicglyph #"scripts.trill" " and" composers trust
    	    \caps chiefly to the taste and judgement of the performer, whether it shall be long, short, 
    	    transient, or turned.
    }
    \paragraph{ \inlineScoreTurnsThirdteen }
    \paragraph{
    	    The \caps length of the \caps beat is determined, like that of the other graces, by the 
    	    circumstances of the passage.
    }
    \paragraph{
    	    N.B.  When the note preceding the beat is an interval of a \caps second, let the beat 
    	    adopt it, whether it be a semitone or a whole tone:
    }
    \paragraph{ \inlineScoreTurnsFourteen }
    \paragraph{
    	    But when the beat, is on the \caps first note of a passage, or, when it follows a note,
    	    whose interval is \caps greater than a \caps second, it should be made with a semitone; as
    	    the following examples will show.
    }
    \paragraph{ \inlineScoreTurnsFifteen }
    \paragraph{
    	Lastly, let us remark, that the beat is seldom used in modern music.	    
    }
    \paragraph{" "}
  }
}
