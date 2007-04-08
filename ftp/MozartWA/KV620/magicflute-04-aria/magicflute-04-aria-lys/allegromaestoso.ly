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
%		For those who know German, my apologies upfront. I'm not sure if I	   %
%	have syllables in the correct places. If you have corrections, please email	   %	%	me and I would be very happy to correct them.				 	   %
%		If you know someone who can sing this including the HIGH F, WOW! 	   %
%	Karmically, Deborah								   %
%											   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

oboeI = \notes \relative c'' {
	\time 4/4
	\key bes\major
\property Voice.TextScript \override #'extra-offset = #'(0 . 3.5)
	r1^#'( bold ( italic (large "Allegro Maestoso"))) r r r r
\property Voice.TextScript \revert #'extra-offset
	f1\f ~
	f1 ~
	f1 ~
	f1 ~
	f4 f f f
	f r r2
	r r4 bes,\f (
	d f bes ) d
	e,\p r r2
	r1
	r2 r4 a,4\f (
	c f a ) c
	fis,\p r r2
	r1
	r1
	\bar "||"
}

oboeII = \notes \relative c'' {
	\time 4/4
	\key bes\major
\slurDown
\tieDown
	r1 r r r r
	d1 ( 
	) ees1 (  
	
	) d1 (  
	) ees1 ( 
	) d4 d d d
\slurBoth
	d r r2
	r r4 bes
	d f bes d
	e, r r2
	r1
	r2 r4 a,4
	c f a c
	fis, r r2
	r1
	r1
}

fagottoI = \notes \relative c' {
	\time 4/4
	\key bes\major
	r1 r 
	aes1\p
	g2_"cresc." () ges
	f8-.\f f ( a c ees c a )f
	bes-. bes,-. d-. f-. bes-. f-. d-. bes-.
	a ees''16 c a8 f ees c a f
	bes bes d f bes f d bes
	a ees''16 c a8 f ees c a f
	bes4 bes bes bes
	bes r r2
	r2 r4 bes\f (
	d f bes ) d
	e,\p r r2
	r1
	r2 r4 a,\f (
	c f a ) c
	fis,\p r r2
	r1
	r1
}

fagottoII = \notes \relative c' {
	\time 4/4
	\key bes\major
	r1 r 
	aes1
	g2 ges
	f8 f a c ees c a f
	bes bes, d f bes f d bes
	a ees''16 c a8 f ees c a f
	bes bes d f bes f d bes
	a ees''16 c a8 f ees c a f
	bes4 bes bes bes
	bes r r2
	r2 r4 bes
	d f bes d
	e, r r2
	r1
	r2 r4 a,
	c f a c
	fis, r r2
	r1
	r1
}

cornibI = \notes \relative c' {
	\time 4/4
	r1 
	c\p ~
	c_"cresc." ~
	c
	g'\f
	c
	d
	c
	d
	c4 c c c
	c r r2
	r1
	c1\f ~
	c4\p r r2
	r1
	r
	g\f
	r
	r
	r	
}

cornibII = \notes \relative c' {
	\time 4/4
	r1 
	c 
	c 
	c
	g'
	e
	g
	e
	g
	e4 e e e
	e r r2
	r1
	c1
	c4 r r2
	r1
	r
	g'
	r
	r
	r	
}

violinooneI = \notes \relative c' {
	\time 4/4
	\key bes\major
	bes8\p bes4 bes bes bes8 ()
	d d4 d d d8 ()
	f f4 f f_"cresc." f8 ()
	bes bes4 bes bes bes8 ()
	ees\f ees4 ees ees ees8 ()
	d d'4 d d d8 ()
	ees ees4 ees ees ees8 ()
	d d4 d d d8 ()
	ees ees4 ees ees ees8 ()
	d r16 f, f8 r16 d d8 r16 bes bes8 r16 f
	f4^#'( bold ( large "Recitativ.")) r a\p r
	bes8\p bes4 bes bes_"cresc." bes8 ~
	bes bes4 bes bes\f bes8
	g,4\p r r g'
	r c r2
	a8\p a4 a a_"cresc." a8 ~
	a a4 a a\f a8 ~
	a4\p r d r
	bes2 aes
	fis4 r r fis
}

violinooneII = \notes \relative c' {
	\time 4/4
	\key bes\major
\slurDown
\tieDown
	bes8 bes4 bes bes bes8 
	d d4 d d d8 
	f f4 f f f8 
	bes bes4 bes bes bes8 (  
	) f f4 f f f8 ~
	f f'4 f f f8 ~
	f f4 f f f8 ~
	f f4 f f f8 ~
	f f4 f f f8 ~
	f r16 f f8 r16 d d8 r16 bes bes8 r16 f
	f4 r a r
	bes8 bes4 bes bes bes8 
	bes bes4 bes bes bes8
	g,4 r r g'
	r c r2
	a8 a4 a a a8 
	a a4 a a a8 
	a4 r d r
	bes2 aes
	fis4 r r fis
}

violinotwoI = \notes \relative c' {
	\time 4/4
	\key bes\major
	bes8\p bes4 bes bes bes8 ()
	bes bes4 bes bes bes8 ()
	d d4 d d_"cresc." d8 (
	f8 e )ees ees4 ees ees8 ()
	c'\f c4 c c c8 ()
	bes bes'4 bes bes bes8 ()
	c c4 c c c8 ()
	bes bes4 bes bes bes8 ()
	c c4 c c c8 ()
	bes r16 d, d8 r16 bes bes8 r16 f f8 r16 d
	d4 r ees\p r
	d8\p d4 d d_"cresc." d8 ~
	d d4 d d\f d8
	bes4\p r r bes
	r g' r2
	f8\p f4 f f_"cresc." f8 ~
	f f4 f f\f f8 ()
	fis4\p r a r
	g2 ees ~
	ees4 r r c
}

violinotwoII = \notes \relative c' {
	\time 4/4
	\key bes\major
\slurDown
\tieDown
	bes8 bes4 bes bes bes8 
	bes bes4 bes bes bes8 
	d d4 d d d8 
	f8 e ees ees4 ees ees8( 
	)a a4 a a a8( 
	)bes d4 d d d8(  
	)ees ees4 ees ees ees8( 
	)d d4 d d d8(  
	)ees ees4 ees ees ees8( 
	)d r16 d d8 r16 bes bes8 r16 f f8 r16 d
	d4 r ees r
	d8 d4 d d d8 
	d d4 d d d8
	bes4 r r bes
	r g' r2
	f8 f4 f f f8 
	f f4 f f f8 
	fis4 r a r
	g2 ees 
	ees4 r r c
}

violaI = \notes \relative c {
	\time 4/4
	\key bes\major
	d1\p
	f
	aes_"cresc."
	g2 () ges
	f8-.\f f ( a c ees c a )f
	bes-. bes-. d-. f-. bes-. f-. d-. bes-.
	a ees''16 c a8 f ees c a f
	bes bes d f bes f d bes
	a ees''16 c a8 f ees c a f
	bes r16 bes'16 bes8 r16 f f8 r16 d d8 r16 bes
	bes4 r c\p r
	f8\p f4 f f_"cresc." f8 ~
	f f4 f f\f f8
	e4\p r r e,
	r4 c' r2
	c8\p c4 c c_"cresc." c8 ~
	c c4 c4 c\f c8 ~
	c4\p r a r
	d2 c
	a4 r r a
}

violaII = \notes \relative c {
	\time 4/4
	\key bes\major
	d1
	f
	aes
	g2 ges
	f8 f a c ees c a f
	bes bes d f bes f d bes
	a ees''16 c a8 f ees c a f
	bes bes d f bes f d bes
	a ees''16 c a8 f ees c a f
	bes r16 bes'16 bes8 r16 f f8 r16 d d8 r16 bes
	bes4 r c r
	f8 f4 f f f8 
	f f4 f f f8
	e4 r r e,
	r4 c' r2
	c8 c4 c c c8 
	c c4 c4 c c8 
	c4 r a r
	d2 c
	a4 r r a
}

violoncello = \notes \relative c' {
	\time 4/4
	\key bes\major
	bes,4\p bes bes bes
	bes bes bes bes
	bes bes bes_"cresc." bes
	bes8 bes bes bes bes bes bes bes
	bes\f bes bes bes bes bes bes bes
	bes-. bes-. d-. f-. bes-. f-. d-. bes-.
	a ees''16 c a8 f ees c a f
	bes bes d f bes f d bes
	a ees''16 c a8 f ees c a f
	bes4 bes bes bes
	bes r bes\p r
	bes\p ( d f_"cresc." ) bes
	bes,1\f
	c4 r r c
	r e r2
	f4\p ( a c_"cresc." )f
	ees,1\f
	d4\p r fis r
	g2 c, ~
	c4 r r d
}

contrabasso = \notes \relative c' {
	\time 4/4
	\key bes\major
	bes,4\p bes bes bes
	bes bes bes bes
	bes bes bes_"cresc." bes
	bes8 bes bes bes bes bes bes bes
	bes\f bes bes bes bes bes bes bes
	bes-. bes-. d-. f-. bes-. f-. d-. bes-.
	a ees''16 c a8 f ees c a f
	bes bes d f bes f d bes
	a ees''16 c a8 f ees c a f
	bes4 bes bes bes
	bes r bes\p r
	bes\p ( d f_"cresc." ) bes
	bes,1\f
	c4 r r c
	r e r2
	f4\p ( a c_"cresc." )f
	ees,1\f
	d4\p r fis r
	g2 c, ~
	c4 r r d
}

konigindernacht = \addlyrics \notes \relative c'' {
	\time 4/4
	\key bes\major
	\property Voice.automaticMelismata = ##t
	r1 r r r r r r
	r r r
	bes4 d8. f16 a,4 r16 c ees d
	bes4 r r2
	r1
	r8 g e f g g r4
	c8 c r4 a r
	r1
	r
	r8 a fis16 fis fis g a4 r16 a d a
	bes8 bes r bes aes8. c16 d8 ees
	ees8. fis,16 fis8 g g d r4
}

\context Lyrics \lyrics {
	O _ zitt'--re____ nicht,_ _mein lie -- ber
	Sohn!
	Du bist un -- _schul -- dig,
	_weise, ___ fromm.
	Ein _J\"ung -- ling, so wie du, ver -- mag am
	bes -- ten, dies tief -- bet -- r\"ub -- te
	Mut -- ter -- herz zu tr\"os -- ten.
}