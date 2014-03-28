\version "2.16.1"

romanze =  \relative c' {
	\key f \major
	\time 2/2
	\set Score.skipBars = ##t

	c'4.( _ \markup{{\dynamic "p"} \italic  " con molto espressione"} 
		 f8) a,4 a
	 bes8[( c d bes]  g4) r8 g
	a r bes r c r  d[( bes)]
	a2(   g8)[ a( bes  b)]
	c4. ( f8) a,4 a |
	% 6 
	 bes8[ (c d bes)] g4 r8 c,
	 c8[( e g  bes)]  a[( c f  d)]
	c r e r f r r4
	\mark "A"
	R1*8
	g4.\mf f8   e[ d c bes]
	% 18
	 bes[( a d  c)] c4 r
	R1*2
	g'4. f8  e[ d c bes]
	 bes[ (a d  c)] c4 r
	R1
	% 25
	 c16[ ( d c  d)]  e[ ( f e  f)]  g[( e) c-. c-.]  f[( d) b-. b-.]
	 c16[\p ( d) c  d]  e[ ( f e  f)]  g[( e) c-. c-.]  f[( d) b-. b-.]
	 c8[ \< c, c c]  c[ c c  c\! ]
	\mark "B"
	c1\f
	R1*9
	f'4.(\p  d8) b4 r8 g
	g'4.( e8) c4 r8 cis |
	% 39
	d4(~  d16[ e d  e)]  f8[ ( d) f( d)]
	c2( b4) r
	R1*4
	e4. ( g8) c,4 ( cis)
	 d8[( e f  d)] b4 r8 g
	 c[ ( e) g g]  g[( f e  d)]
	c4(
	\grace {
\override Flag #'stroke-style = #"grace"
  e16 
  \revert Flag #'stroke-style }

	 d8.[  c16) \< ]  c8[ c-.( c-.  c\!)-.]
	\mark "C"
	des1\sfp
	g,1\sfp 
	c\sfp   
	c,\sfp  
	R1*3
	r8  c[\p c c] c2~
	 c8[ c' c c] c2~
	 c8[ \< e( g f]  e[  d\! \> c bes]
	\mark "D"
	 a4\!) r r2
	R1*3
	c4.\p ( f8) a,4 a |
	 bes8[ (c d bes)] g4 r8 c,
	 c8[( e g  bes)]  a[( c f  d)]
	c r e r f4 r4
	R1*3
	r2 r4 r8 c,8
	 c8[( e g  bes)]  a[( c f  d)]
	c r e r f4 r4	
	g,1
	c,2 c4. c8
	 c8[( e g  bes)]  a[( c f  d)]
	c r e r f4 r4			% -. ? 

	R1
	c8-.   r e-. r f4 r4

	% Finish with F if played separately 
	c8-.(   r c,-. r  c4) r4| 
	\bar "|."
}



\score
{
     { \transpose c' bes \romanze }
     \header { 
     		piece =\markup{ \caps "romanze"}
     		opus = ""
     		instrument = ""
     }	
	
  \midi {
    \tempo 4 = 70
    \context{
    	    \Staff
    	    midiInstrument = #"french horn"
    }
    }


	\layout{
		\context{
		\Score
		\override RehearsalMark #'padding = #1
		\override MultiMeasureRest #'padding = #0.5
		\override Beam #'beam-thickness = #0.55
		}
	}
}
