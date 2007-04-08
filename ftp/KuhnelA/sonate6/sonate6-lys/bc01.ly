\version "2.6.0"
bc =	<<
	
\context FiguredBass
		\figuremode {
<_>1
<_>4 <6>2.
<_>4 <6>2.
<_>2 <6+>
<_> <4>4. <_+>8
<_>1
<4>4. <_+>8 <_>2
<_>1
<_>
<_>
<_>2 <_+>
<_> <_+>
<_>1
<_>
<_>
<5>4 <6>8 <5> <4>4. <_+>8
<_>1
<4>4. <_+>8 <_>2
<_> <_+>
<_>1
<_+>
<4>4. <_+>8 <_>2
%%%
<_>2 <6>
<_>1
<6>2 <_>2
<6> <5>
<_> <6>
<5> <_+>
<6> <5>
<_> <6>
<5> <_+>
<6> <5>
<_> <6>
<5> <_>
<6> <_+>
<4>4. <_+>8 <_>2
<_+> <4>4. <_+>8
<_+>2 <6>
<_> <4>4. <_+>8
<_+>1
<4>4. <_+>8 <_>2
<6>1
<_+>
<_+>
<6>
<4>4. <_+>8 <_>2
<_> <4>4. <_+>8
<_>1
<_>
<_>
<_>
<_>2 <3 5>
<_>1
<4>4. <_+>8 


	}	        	

		\context Voice  {
		\set Staff.minimumVerticalExtent = #'(0 . 0)
		
		\override FiguredBass.BassFigure  #'font-size = #'-6

		

		\relative c {
		\clef F
		\key c \major
		\time 2/2
c2 g
g4 b c2
g4 b c2
c a
g d
g g 
d g4 c
f,2 c'
f, c'
f c 
d a
d a
d c
f, c' 
f, c'
f g
c, f
g c,
c d
g, c
d g,
d g
\bar ":|:"
g' fis
g g
fis g
cis, cis
d cis
c d
gis, gis
a gis
g a
dis, dis
e dis
dis e
cis' d 
e a,
d e
a, fis
g a
d, g 
a d,
b' c
d g,
d' g,
e f
g c
f, g 
c c'
g a
e f
g c,
f, g 
c f 
g c,
\bar ":|"

}	
		
   }     
>>