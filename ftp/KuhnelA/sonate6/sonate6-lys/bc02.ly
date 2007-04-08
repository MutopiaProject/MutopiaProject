\version "2.6.0"
bc =	<<
	
\context FiguredBass
		\figuremode {

<_>1
<_>2 <4>8. <_+>16 <_>4
<_>2 <4>8. <_+>16 <_>4
<_>2 <_+>
<_+>4 <6> <4>8. <_+>16 <_>4
<_+>4 <_>8. <5 6>16 <4>8. <_+>16 <_>4
%%%%%%%%%%%
<_>4 <_-> <_+>2
<_>4 <6> <4>8. <_+>16 <_>4
<_>4 <6> <4>8. <_+>16 <_>4
<_>4 <6>2.
<_>2 <4>8. <_+>16 <_>4 
<_>2 <4>8. <_+>16 <_>4

	}	        	

		\context Voice  {
		\set Staff.minimumVerticalExtent = #'(0 . 0)
		
		\override FiguredBass.BassFigure  #'font-size = #'-6

		

		\relative c {
		\clef F
		\key c \major
		\time 4/4
c2  g4. g8
a8. [b16 c8. f,16] g4 c8. g16
a8. [b16 c8. f,16] g4 c
c2 d4 d,
d' b8. c16 d4 g,
d' b8. c16 d4 g,
\bar ":|:"
a4 d e2
f4 d e a,
f' d e a,
a b c2
f,2 g4 c
f,2 g4 c
\bar ":|"

}	
		
   }     
>>