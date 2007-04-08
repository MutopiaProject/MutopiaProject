\version "1.5.66"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%											   %
%		One source, Dover Publications (an unabridged republication of urtext      %	
%	originally published by C. F. Peters, n.d.) states "For legal reasons this title   % %	cannot be offered or sold in the Federal Republic of Germany and West Berlin." 	   %
%	Other urtext and other pieces (from late 1800's) consulted had no such             %
% 	disclaimer.  If you reside and/or are a citizen of Germany, please consult your    %	%	local laws before downloading or using this piece.  			  	   %
%		Please note that there are some problems with the original score (lots of  %	%	errors, poor printing, and omissions). I have corrected what I could find, but     %
%	most certainly missed some. Please let me know if you find any problems so that    %
%	I may update the file for everyone.						   %
%		Due to many requests from personal friends, I have included the whole	   %
%	score, the score broken down to the four movements, and all the individual 	   %	%	instrument parts. This increases the total zip size, but I included them all 	   %
%	because of the many requests for these formats. Karmically, Deborah		   %
%											   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


flautoI = \notes \relative c''' {
	\time 2/2
	\key ees \major
	\slurUp
	r1^#'( bold ( italic ( Large "Adagio."))) 
	r^\fermata
	r4 r8. d16\f d2
	d2 r2^\fermata
	r4 r8. f16\f f2
	f2 r2^\fermata
\bar "||" }

flautoII = \notes \relative c''' {
	\time 2/2
	\key ees \major
	\slurDown
	r1
	r1
	r1
	r1
	r4 r8. d16 d2
	d2 r2 }

oboeI = \notes \relative c''' {
	\time 2/2
	\key ees \major
	\slurUp
	\stemUp
	r4 r8. bes16\f bes2
	bes2 r2
	r4 r8. bes16 bes2
	bes2 r2
	r4 r8. bes16 bes2
	bes2 r2 }

oboeII = \notes \relative c'' {
	\time 2/2
	\key ees \major
	\slurDown
	\stemDown
	r4 r8. f16 f2
	f2 r2
	r4 r8. f16 f2
	f2 r2
	r4 r8. f16 f2
	f2 r2 }

clarinettibI = \notes \relative c'' {
	\slurUp
	\stemUp
	\time 2/2
	r4 r8. e16\f e2
	e2 r2^\fermata
	r4 r8. e16 e2
	e2 r2^\fermata
	r4 r8. e16 e2
	e2 r2^\fermata }

clarinettibII = \notes \relative c'' {
  	\slurDown
	\stemDown
	\time 2/2
	r4 r8. c16 c2
	c2 r2
	r4 r8. c16 c2
	c2 r2
	r4 r8. c16 c2
	c2 r2 }

fagottoI = \notes \relative c {
	\slurUp
	\stemUp
	\time 2/2
	\key ees \major
	r4 r8. bes16\f bes2
	bes2 r2^\fermata
	r4 r8. bes16 bes2
	bes2 r2^\fermata
	r4 r8. bes16 bes2
	bes2 r2^\fermata }

fagottoII = \notes \relative c {
	\slurDown
	\stemDown
	\time 2/2
	\key ees \major
	r4 r8. bes16 bes2
	bes2 r2
	r4 r8. bes16 bes2
	bes2 r2
	r4 r8. bes16 bes2
	bes2 r2 }

corniesI = \notes \relative c'' {
	\slurUp
	\stemUp
	\time 2/2
	r4 r8. d16\f d2
	d r^\fermata
	r4 r8. d16 d2
	d r^\fermata
	r4 r8. d16 d2 
	d r^\fermata }

corniesII = \notes \relative c'' {
	\slurDown
	\stemDown
	\time 2/2
	r4 r8. g16 g2
	g r
	r4 r8. g16 g2
	g r
	r4 r8. g16 g2 
	g r }

trombeesI = \notes \relative c'' {
	\slurUp
	\stemUp
	\time 2/2
	r4 r8. g16\f g2
	g2 r\fermata
	r4 r8. g16 g2
	g r\fermata
	r4 r8. g16 g2
	g r\fermata }

trombeesII = \notes \relative c' {
	\slurUp
	\stemUp
	\time 2/2
	r4 r8. g16 g2
	g2 r
	r4 r8. g16 g2
	g r
	r4 r8. g16 g2
	g r }

timpani =  \notes \relative c {
	\time 2/2
	r1 
	r^\fermata 
	r 
	r^\fermata 
	r 
	r^\fermata }

trombonealto = \notes \relative c {
	\time 2/2
	\key ees \major
	r4 r8. f16 f2
	f r
	r4 r8. f16 f2
	f r
	r4 r8. f16 f2
	f2 r }

trombonetenor = \notes \relative c' {
	\time 2/2
	\key ees \major
	r4 r8. d16\f d2
	d r^\fermata
	r4 r8. d16 d2
	d r^\fermata
	r4 r8. d16 d2
	d2 r^\fermata }

trombonebasso = \notes \relative c {
	\time 2/2
	\key ees \major
	r4 r8. bes16\f bes2
	bes r^\fermata
	r4 r8. bes16 bes2
	bes r^\fermata
	r4 r8. bes16 bes2
	bes2 r^\fermata }

violinoI = \notes \relative c' {
	\time 2/2
	\key ees \major
	r1 
	r^\fermata 
	r 
	r^\fermata 
	r 
	r^\fermata }

violinoII = \notes \relative c' {
	\time 2/2
	\key ees \major
	r1 r^\fermata r r^\fermata r r^\fermata }

viola = \notes \relative c {
	\time 2/2
	\key ees \major
	r1 
	r^\fermata 
	r 
	r^\fermata 
	r 
	r^\fermata }

violoncello = \notes \relative c {
	\time 2/2
	\key ees \major
	\slurUp
	\stemUp
	r1 
	r^\fermata
	r 
	r^\fermata
	r 
	r^\fermata }

basso = \notes \relative c {
	\time 2/2
	\key ees \major
	r1 
	r^\fermata
	r 
	r^\fermata
	r 
	r^\fermata }
