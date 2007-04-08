\version "2.6.0"
bc =	<<
	
\context FiguredBass
		\figuremode {
<_>2 <6>2. <5>4
<_>1.
<_>2 <6>2. <5>4
<_+>1.
<_>2 <6>2. <5>4
<_+>1.
<6>2 <6>2. <5>4
<_+>1.
<6>2 <4>2. <_+>4
<_>1.
<6>2 <4>2. <_+>4
<_>1.
%%%%%%%
<_+>1.
<_>
<6>
<_>
<6>
<_>
<6>2 <6>2. <5>4
<_->1.
<_>2 <4>2. <_+>4
<_>1.
<_>2 <4>2. <_+>4
<_>1.

	}	        	

		\context Voice  {
		\set Staff.minimumVerticalExtent = #'(0 . 0)
		
		\override FiguredBass.BassFigure  #'font-size = #'-6

		

		\relative c {
		\clef F
		\key c \major
		\time 3/2
c2 b1
c2 c1
f2 d1
e2 e1
f2 d1
e2 e1
cis2 cis1
d2 d1
b4 c d2. d4
g,2 g1
b4 c d2. d4
g,2 g1
\bar ":|:"
e'2 e2. e4
a,2 a1
fis2 fis2. fis4
g2 g1
fis2 fis2. fis4
g2 g1
gis2 gis2. gis4
a2 a1
f2 g2. g4
c2 c1
f,2 g2. g4
c2 c1
\bar ":|"

}	
		
   }     
>>