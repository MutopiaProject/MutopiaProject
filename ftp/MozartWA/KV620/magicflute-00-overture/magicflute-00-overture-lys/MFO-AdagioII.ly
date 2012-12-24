\version "2.14.2"

markings = {\time 2/2 \mark "Adagio" s1*6 \bar "||"}
incmidi="midiadagio.ly"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%											   %
%		One source, Dover Publications (an unabridged republication of urtext      %	
%	originally published by C. F. Peters, n.d.) states "For legal reasons this title   %
%	cannot be offered or sold in the Federal Republic of Germany and West Berlin." 	   %
%	Other urtext and other pieces (from late 1800's) consulted had no such             %
% 	disclaimer.  If you reside and/or are a citizen of Germany, please consult your    %
%	local laws before downloading or using this piece.  			  	   %
%		Please note that there are some problems with the original score (lots of  %
%	errors, poor printing, and omissions). I have corrected what I could find, but     %
%	most certainly missed some. Please let me know if you find any problems so that    %
%	I may update the file for everyone.						   %
%		Due to many requests from personal friends, I have included the whole	   %
%	score, the score broken down to the four movements, and all the individual 	   %
%	instrument parts. This increases the total zip size, but I included them all 	   %
%	because of the many requests for these formats. Karmically, Deborah		   %
%											   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


flautoI =  \relative c''' {
	\key ees \major
	r1 
	r\fermata
	r4 r8. d16\f d2
	d2 r2\fermata
	r4 r8. f16\f f2
	f2 r2\fermata
}

flautoII =  \relative c''' {
	\key ees \major
	R1*4
	r4 r8. d16 d2
	d2 r2\fermata
}

oboeI =  \relative c''' {
	\key ees \major
	r4 r8. bes16\f bes2
	bes2 r2\fermata
	r4 r8. bes16 bes2
	bes2 r2\fermata
	r4 r8. bes16 bes2
	bes2 r2\fermata
}

oboeII =  \relative c'' {
	\key ees \major
	r4 r8. f16\f f2
	f2 r2\fermata
	r4 r8. f16 f2
	f2 r2\fermata
	r4 r8. f16 f2
	f2 r2\fermata
}

clarinettibI =  \relative c'' {
	\key f \major
	r4 r8. e16\f e2
	e2 r2\fermata
	r4 r8. e16 e2
	e2 r2\fermata
	r4 r8. e16 e2
	e2 r2\fermata
}

clarinettibII =  \relative c'' {
	\key f \major
	r4 r8. c16\f c2
	c2 r2\fermata
	r4 r8. c16 c2
	c2 r2\fermata
	r4 r8. c16 c2
	c2 r2\fermata
}

fagottoI =  \relative c {
	\key ees \major
	r4 r8. bes16\f bes2
	bes2 r2\fermata
	r4 r8. bes16 bes2
	bes2 r2\fermata
	r4 r8. bes16 bes2
	bes2 r2\fermata
}

fagottoII =  \relative c {
	\key ees \major
	r4 r8. bes16\f bes2
	bes2 r2\fermata
	r4 r8. bes16 bes2
	bes2 r2\fermata
	r4 r8. bes16 bes2
	bes2 r2\fermata
}

corniesI =  \relative c'' {
	r4 r8. d16\f d2
	d r\fermata
	r4 r8. d16 d2
	d r\fermata
	r4 r8. d16 d2 
	d r\fermata
}

corniesII =  \relative c'' {
	r4 r8. g16\f g2
	g r\fermata
	r4 r8. g16 g2
	g r\fermata
	r4 r8. g16 g2 
	g r\fermata
}

trombeesI =  \relative c'' {
	r4 r8. g16\f g2
	g2 r\fermata
	r4 r8. g16 g2
	g r\fermata
	r4 r8. g16 g2
	g r\fermata
}

trombeesII =  \relative c' {
	r4 r8. g16\f g2
	g2 r\fermata
	r4 r8. g16 g2
	g r\fermata
	r4 r8. g16 g2
	g r\fermata
}

timpani =   \relative c {
	r1 
	r\fermata 
	r 
	r\fermata 
	r 
	r\fermata
}

trombonealto =  \relative c {
	\key ees \major
	r4 r8. f16\f f2
	f r\fermata
	r4 r8. f16 f2
	f r\fermata
	r4 r8. f16 f2
	f2 r\fermata
}

trombonetenor =  \relative c' {
	\key ees \major
	r4 r8. d16\f d2
	d r\fermata
	r4 r8. d16 d2
	d r\fermata
	r4 r8. d16 d2
	d2 r\fermata
}

trombonebasso =  \relative c {
	\key ees \major
	r4 r8. bes16\f bes2
	bes r\fermata
	r4 r8. bes16 bes2
	bes r\fermata
	r4 r8. bes16 bes2
	bes2 r\fermata
}

violinoI =  \relative c' {
	\key ees \major
	r1 
	r\fermata 
	r 
	r\fermata 
	r 
	r\fermata
}

violinoII =  \relative c' {
	\key ees \major
	r1 r\fermata r r\fermata r r\fermata
}

viola =  \relative c {
	\key ees \major
	r1 
	r\fermata 
	r 
	r\fermata 
	r 
	r\fermata
}

violoncello =  \relative c {
	\key ees \major
	\slurUp
	\stemUp
	r1 
	r\fermata
	r 
	r\fermata
	r 
	r\fermata
}

contrabasso =  \relative c {
	\key ees \major
	r1 
	r\fermata
	r 
	r\fermata
	r 
	r\fermata
}
