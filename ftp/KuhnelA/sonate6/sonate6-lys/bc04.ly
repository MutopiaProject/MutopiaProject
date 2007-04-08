\version "2.6.0"
bc =	<<
	
\context FiguredBass
		\figuremode {
<_>2.
<6>2 <5>4
<_>2.
<_>
<6>
<5>2 <6>4
<6>2.
<_+>
<6+>2 <5>4
<_+>2 <6>4
<7>2 <6+>4
<_>2 <6>4
<7>2 <6+>4
<_>2.
<6>2.
<_+>
<6>2.
<7>2 <6+>4
<_>2 <6>4
<7>2 <6+>4
<_>2.
<_>
%%%%%%%
<_>
<_>
<_+>
<_+>
<6+>
<_>
<_+>
<_+>
<_->
<_+>
<_+>
<6>
<_>
<6>
<_>2 <6>4
<_>2.
<4>2 <_+>4
<_>2 <6>4
<_>2.
<4>2 <_+>4

	}	        	

		\context Voice  {
		\set Staff.minimumVerticalExtent = #'(0 . 0)
		
		\override FiguredBass.BassFigure  #'font-size = #'-6

		

		\relative c {
		\clef F
		\key c \major
		\time 3/4
c2. 
b
c
g2 g'4
fis2.
g 
gis
a
ais
b4. a8 g4
fis2. 
e2 g4
fis2.
e4. d8 e4
cis2.
d4. c8 d4
b2 b4
a2 a4
g2 b4
a2 a4
g2.~
g2.
\bar ":|:"
g2.
c4. b8 c4
a2.
d4. c8 d4
b4. a8 gis4
a2. 
e'
a,
a
e'
a,2 g4
fis2.
g
b
c2 b4
c2.
g 
c2 b4
c2.
g 
c~
c
\bar ":|"

}	
		
   }     
>>
