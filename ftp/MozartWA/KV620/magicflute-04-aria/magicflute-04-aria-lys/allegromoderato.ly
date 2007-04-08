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
	r1^#'( bold ( italic ( large "Allegro Moderato")))
\property Voice.TextScript \revert #'extra-offset
	bes'4-.\f bes,-. r2
	f'4-. f,-. r2
	r1
	r
	r
	r
	c'1\p ~
	c2.( )ees4
	d r bes'2\f
	r1
	r
	r8 a8-.\f f-. a-. f4 r
	r1
	r
\tieUp
\slurUp
	f1\p ~
	f1 ~
	f4 r r2
	r1
	r
	r
	r
	r 
	r8 f-. f-. f-. f-. f-. f-.( )bes-. 
	a4 r r2 
	r8 a-. a-. a-. a-. a-. a-.( )c-. 
	bes4 r8 f-. d-. f-. d-. f-. 
	g4 r8 bes-. g-. bes-. g-. bes-. 
	ees,4 r8 g-. ees-. g-. ees-. g-. 
	c,4 r r2 
	ees1 
	d 
	c 
	bes4 r r2 
	r ees 
	d g 
	bes4\f bes8. bes16 a4 a8. a16 
	bes4 bes, r2 
	c'4 f, r2 
	f4 r c'16 bes a g f ees d c 
	bes8 f'16 f f8 ees d ees d ees 
	d f16 f f8 ees d ees d ees 
	d4 bes' bes, r 
	\bar "|."
}

oboeII = \notes \relative c'' {
	\time 4/4
	\key bes\major
\tieDown
\slurDown
	r1
	d4 bes r2
	a4 f r2
	r1
	r
	r
	r
	bes1( 
	)a
	bes4 r f'2
	r1
	r
	r8 c8 a c a4 r
	r1
	r
	f1 ~
	f1 ~
	f4 r r2
	r1
	r
	r
	r
	r
	r8 d' d d d d d d
	ees4 r r2
	r8 ees ees ees ees ees ees ees
	d4 r8 d bes d bes d
	ees4 r8 g ees g ees g
	bes,4 r8 ees bes ees bes ees
	g,4 r r2
	c1
	bes ~
	bes2( )a
	bes4 r r2
	r c_"cresc."
	bes ees
	d4\f d8. d16 c4 c8. c16
	d4 bes r2
	a'4 f r2
	d4 r c'16 bes a g f ees d c
	bes8 f'16 f f8 c bes c bes c
	bes f'16 f f8 c bes c bes c
	bes4 d bes r
}

fagottoI = \notes \relative c' {
	\time 4/4
	\key bes\major
	r1
	bes4\f r8 \times 2/3 {f16( g a} )bes4 bes,-.
	r r8 \times 2/3 {c16( d ees} )f4 f,-.
	r1
	r
	r
	r
	r
	r
	r2 f''\f
	r1
	r
	r8 f,8\f f f f4 r
	r1
	r
	r
	r
	r
	r
	r
	r
	r
	r 
	r8 bes,-.\p d-. f-. bes-. f-. d-. bes-. 
	f4 r r2 
	r8 f8-. a-. c-. f-. c-. a-. f-. 
	bes4 r8 bes'8-. bes,-. bes'-. bes,-. bes'-. 
	ees,4 r8 ees'8-. ees,-. ees'-. ees,-. ees'-. 
	g,4 r8 g-. g,-. g'-. g,-. g'-. 
	ees4 r r2 
	r1 
	r r r r r 
	f'4\f f8. f16 f,4 f8. f16 
	bes4 r8 \times 2/3 { f16( g a} )bes4 bes, 
	r r8 \times 2/3 { c16( d ees} )f4 f, 
	bes r16 bes16 c d ees8 c f f, 
	bes4 r8 f' bes f bes f 
	bes4 r8 f bes f bes f 
	bes4 bes bes, r 
}

fagottoII = \notes \relative c' {
	\time 4/4
	\key bes\major
	r1
	bes,4 r8 \times 2/3{f'16 g a} bes4 bes,
	r r8 \times 2/3{c16 d ees} f4 f,
	r1
	r
	r
	r
	r
	r
	r2 d'' 
	r1
	r
	r8 f, f f f4 r
	r1
	r
	r
	r
	r r r r r
% 3
	r
	r
	r
	r
	r
	r1 r
	r
	r
	r r r r r
	f4\f f8. f16 f,4 f8. f16 
	bes4 r8 \times 2/3 { f'16 g a} bes4 bes, 
	r r8 \times 2/3 { c16 d ees} f4 f, 
	bes r16 bes16 c d ees8 c f f, 
	bes4 r8 f' bes f bes f 
	bes4 r8 f bes f bes f 
	bes4 bes bes, r 
}

cornibI = \notes \relative c'' {
	\time 4/4
	r2 g4\f r
	g r c-. c,-.
	r2 g4-. g-.
	r1 
	r
	r
	r 
	r 
	r
	r2 c\f
	r1
	r
	r8 g'8\f g g g4 r
	r1 r r r
	r 
	r 
	r 
	r 
	r
% 3
	r 
	r8 c-.\p c-. c-. c-. c-. c-. c-.  
	d4 r r2 
	r8 d-. d-. d-. d-. d-. d-. d-. 
	e4 r r2 
	r1 
	r 
	r 
	r 
	g,1\p ~ 
	g 
	c,4 r r2 
	r1 
	r2 c'2 
	e4\f e8. e16 d4 d8. d16 
	c4 r c c, 
	r2 g'4 g 
	r1 
	r8 g16 g g8 g c d e d 
	c g16 g g8 g c d e d 
	c4 c c, r 
}

cornibII = \notes \relative c' {
	\time 4/4
\tieDown
	r2 g4 r
	c r c c
	r2 g'4 g
	r1
	r
	r
	r 
	r 
	r
	r2 c
	r1
	r
	r8 g8 g g g4 r
	r1 r r r
	r r r r r
% 3
	r
	r8 e e e e e e e
	g4 r r2
	r8 g g g g g g g
	c4 r r2
	r1
	r
	r
	r
	g1\p ~
	g
	c,4 r r2
	r1
	r2 c2_"cresc."
	c'4\f c8. c16 g4 g8. g16
	e4 r c c
	r2 g4 g
	r1
	r8 g'16 g g8 g e g c g
	e g16 g g8 g e g c g
	e4 e c r
}

violinooneI = \notes \relative c'' {
	\time 4/4
	\key bes\major
	g4 r <c, ees a\f> r
	<d-. bes' bes'> bes'-. r2
	<f4-. c' f4> f-. r2
	bes4\p r d r
% 2
	f2 ~ f8.( g32 f ees8. )d16 
	d8( c d )ees bes4 a 
	bes4.( )c8 d4 r 
	c,8 c c c c c c c 
	c c c c f f f ees 
	d4 r bes'16\f c d ees f g a bes 
	g8-.\p g4( )bes8 ees,-. ees4( )g8 
	c,8.( )d16 ees8.( )f16 g_"cresc." g ees ees c c bes bes 
	a8\f f' f, f f4 r 
	r8 f'\p( c' )bes r f( c' )bes 
	r f16( ees d c bes a g f e f e f g )a 
	r8 f'( c' )bes r f( c' )bes 
	r f16( ees d c bes a g f e f e f g )a 
	bes8 bes4 bes bes bes8 
	c2 r8 c8 c c 
	d8 r f r aes r d, r 
	ees ees ees ees f f f f 
	g16( f ees d ees f g )aes_"cresc." g( f ees d ees f g )a 
% 3
	bes8\fp bes, bes bes bes4 r 
	r1 
	r8 a a a a4 r 
	r1 
	r8 d-. bes4 r2 
	r8 bes-. g4 r2 
	r8 ees'-. bes4 r2 
	r8 c4 c8 r c4 c8 
	r ees, r ees r ees r ees 
	d d d d d d d d 
	c16 c c c c c c c c c c c c c c c 
	d bes' bes bes bes bes bes bes g' g g g g g g g 
	f f f f f f f f a_"cresc." a a a a a a a 
	bes bes bes bes bes bes bes bes g g g g g g g g  
	f4\f r <f, c' a'> r 
	<f d' bes'> <d bes'> r2 
	<a'4 c'> <a, f'> r2 
	d''16 c bes a g f ees d c bes a g f ees d c 
	bes4 r8 a'' bes a bes a 
	bes4 r8 a bes a bes a  
	<d,4 bes'> <d, bes' bes'> bes r 
}

violinooneII = \notes \relative c'' {
	\time 4/4
	\key bes\major
	g4 r <c, ees a> r
	<d bes' bes'> d r2
	<f4 c' f> a, r2
	bes'4 r d r
% 2
	f2 f8. g32 f ees8. d16  
	d8 c d ees bes4 a 
	bes4. c8 d4 r 
	c,8 c c c c c c c 
	c c c c f f f ees 
	d4 r bes'16 c d ees f g a bes 
	g8 g4 bes8 ees, ees4 g8 
	c,8. d16 ees8. f16 g g ees ees c c bes bes 
	a8 a a, a a4 r 
	r8 f'' c' bes r f c' bes 
	r f16 ees d c bes a g f e f e f g a 
	r8 f' c' bes r f c' bes 
	r f16 ees d c bes a g f e f e f g a 
	bes8 bes4 bes bes bes8 
	c2 r8 c8 c c 
	d8 r f r aes r d, r 
	ees ees ees ees f f f f 
	g16 f ees d ees f g aes g f ees d ees f g a 
% 3
	bes8 bes, bes bes bes4 r
	r1
	r8 a a a a4 r
	r1
	r8 d bes4 r2
	r8 bes g4 r2
	r8 ees' bes4 r2
	r8 c4 c8 r c4 c8
	r ees, r ees r ees r ees
	d d d d d d d d
	c16 c c c c c c c c c c c c c c c
	d bes' bes bes bes bes bes bes g' g g g g g g g
	f f f f f f f f a a a a a a a a
	bes bes bes bes bes bes bes bes g g g g g g g g 
	f4 r <f, c' a'> r
	<f d' bes'> <d bes'> r2
	<a'4 c'> <a, f'> r2
	d''16 c bes a g f ees d c bes a g f ees d c
	bes4 r8 c' d c d c
	d4 r8 c d c d c
	<d4 bes'> <d, bes' bes'> bes r
}

violinotwoI = \notes \relative c' {
	\time 4/4
	\key bes\major
	bes4 r <c\f ees a> r
	<f-. d' bes'> bes-. r2
	f'4-. f,-. r2
	d4\p r bes' r
% 2
	d2 ~ d8.( c16 bes8. )a16 
	g2 d8( f ees )c 
	bes bes'4( )a8 bes4 r 
	bes,8 bes bes bes bes bes bes bes 
	a a a a a a a a 
	bes4 r bes'16\f c d ees f g a bes 
	bes,8-.\p bes4( )g'8 g,8-. g4( )bes8 
	bes bes4_"cresc." bes g g8 
	f\f f' f, f f4 r 
	bes,16\p d f d f d f d bes d f d f d f d 
	a4.( )c8 ees4-. r 
	bes16 d f d f d f d bes d f d f d f d 
	a4.( )c8 ees4-. r 
	d8 d4 d d d8  
	ees2 r8 ees ees ees 
	bes'8 bes4 bes bes bes8 
	bes bes bes bes bes bes bes bes 
	bes bes4 bes bes_"cresc." ees8 
% 3
	d\fp d, d d d4 r 
	r1 
	r8 ees ees ees ees4 r 
	r1 
	r8 f-. d4 r2 
	r8 g-. ees4 r2 
	r8 bes'-. ees,4 r2 
	r8 g4 g8 r g4 g8 
	r c, r c r c r c 
	bes bes bes bes bes bes bes bes 
	bes16 bes bes bes bes bes bes bes a a a a a a a a 
	bes d d d d d d d bes' bes bes bes bes bes bes bes 
	d d d d d d d d ees_"cresc." ees ees ees ees ees ees ees 
	d d d d d d d d ees ees ees ees ees ees ees ees 
	d4\f r <f, c' a'> r 
	d16 d d d d d d d d d d d d d d d 
	f f f f f f f f f f f f f f f f 
	d4 r16 f' ees d c bes a g f ees d c 
	bes4 r8 a'' bes a bes a 
	bes4 r8 a bes a bes a 
	<d,4 bes'> <d, bes' bes'> bes r	
}

violinotwoII = \notes \relative c' {
	\time 4/4
	\key bes\major
	bes4 r <c ees a> r
	<f d' bes'> d r2
	a'4 c, r2
	d4 r bes' r
% 2
	d2 d8. c16 bes8. a16
	g2 d8 f ees c
	bes bes'4 a8 bes4 r
	bes,8 bes bes bes bes bes bes bes
	a a a a a a a a
	bes4 r bes'16 c d ees f g a bes
	bes,8 bes4 g'8 g,8 g4 bes8
	bes bes4 bes g g8
	f a a, a a4 r
	bes16 d f d f d f d bes d f d f d f d
	a4. c8 ees4 r
	bes16 d f d f d f d bes d f d f d f d
	a4. c8 ees4 r
	d8 d4 d d d8 
	ees2 r8 ees ees ees
	bes'8 bes4 bes bes bes8
	bes bes bes bes bes bes bes bes
	bes bes4 bes bes ees8
% 3
	d d, d d d4 r
	r1
	r8 c c c c4 r
	r1
	r8 f d4 r2
	r8 g ees4 r2
	r8 bes' ees,4 r2
	r8 g4 g8 r g4 g8
	r c, r c r c r c
	bes bes bes bes bes bes bes bes
	bes16 bes bes bes bes bes bes bes a a a a a a a a
	bes d d d d d d d bes' bes bes bes bes bes bes bes
	d d d d d d d d ees ees ees ees ees ees ees ees
	d d d d d d d d ees ees ees ees ees ees ees ees
	d4 r <f, c' a'> r
	bes,16 bes bes bes bes bes bes bes bes bes bes bes bes bes bes bes
	a a a a a a a a a a a a a a a a
	bes4 r16 f'' ees d c bes a g f ees d c
	bes4 r8 c' d c d c 
	d4 r8 c d c d c
	<d4 bes'> <d, bes' bes'> bes r	
}

violaI = \notes \relative c' {
	\time 4/4
	\key bes\major
	d4 r f\f r 
	bes, r8 \times 2/3 {f'16( g a} )bes4 bes,-. 
	r r8 \times 2/3 {c16( d e} )f4 f,-.
	r a\p r a
% 2
	r8. bes16( d8. f16 bes8. a16 g8. )f16  
	ees8 ees ees ees f f f f 
	g g f ees d c d bes 
	g g g g g g g g 
	f f f f f f f f 
	g g g g f'\f f f f 
	ees\p ees ees ees ees ees ees ees 
	g8 g4 g_"cresc." c, c8 ~ 
	c\f f f, f f4 r 
	bes\p r d r 
	c r f, r 
	bes r d r 
	c r f, r 
	f'8 f4 f f f8 
	g2 r8 g8 g g 
	f8 f4 f f f8 
	g g g g aes aes aes aes 
	g aes g f ees_"cresc." aes g f 
% 3
	f8\fp f f f f4 r 
	r1 
	r8 f f f f4 r 
	r1 
	r8 bes-. bes,4 r2 
	r8 ees-. ees,4 r2 
	r8 g'-. g,4 r2 
	r8 ees'4 ees8 r ees4 ees8 
	g,1 
	f8 f f f f f f f 
	f f f f f f ees ees 
	d bes' bes bes ees ees ees ees 
	f f f f fis_"cresc." fis fis fis 
	g g g g ees ees ees ees 
	f4\f r f r 
	d16 d d d d d d d d d d d d d d d 
	f f f f f f f f f f f f f f f f 
	d4 r16 bes c d ees8 c f f, 
	bes4 r8 f' c f c f 
	c4 r8 f c f c f 
	c4 c bes, r 
}

violaII = \notes \relative c' {
	\time 4/4
	\key bes\major
	d4 r f r
	bes, r8 \times 2/3 {f'16 g a} bes4 bes,
	r r8 \times 2/3 {c16 d e} f4 f,
	r a r a
% 2
	r8. bes16 d8. f16 bes8. a16 g8. f16
	ees8 ees ees ees f f f f
	g g f ees d c d bes
	g g g g g g g g
	f f f f f f f f
	g g g g f' f f f
	ees ees ees ees ees ees ees ees
	g8 g4 g c, c8 
	c f f, f f4 r
	bes r d r
	c r f, r
	bes r d r
	c r f, r
	f'8 f4 f f f8
	g2 r8 g8 g g
	f8 f4 f f f8
	g g g g aes aes aes aes
	g aes g f ees aes g f
% 3
	f8 f f f f4 r
	r1
	r8 f f f f4 r
	r1
	r8 bes bes,4 r2
	r8 ees ees,4 r2
	r8 g' g,4 r2
	r8 ees'4 ees8 r ees4 ees8
	g,1
	f8 f f f f f f f
	f f f f f f ees ees
	d bes' bes bes ees ees ees ees
	f f f f fis fis fis fis
	g g g g ees ees ees ees
	f4 r f r
	bes,16 bes bes bes bes bes bes bes bes bes bes bes bes bes bes bes
	a a a a a a a a a a a a a a a a
	bes4 r16 bes c d ees8 c f f,
	bes4 r8 f' c f c f
	c4 r8 f c f c f
	c4 c bes, r	
}

violoncello = \notes \relative c' {
	\time 4/4
	\key bes\major
	g4 r f\f r
	bes, r8 \times 2/3 {f'16( g a} )bes4 bes,-.
	r r8 \times 2/3 {c16( d e} )f4 f,-.
	r bes\p r bes
% 2
	r8. bes16( d8. f16 bes8. a16 g8. )f16 
	ees8 ees ees ees f f f f 
	g g f ees d c d bes 
	ees ees ees ees ees ees ees ees 
	f f f f f f f f 
	g g g g d\f d d d 
	ees\p ees ees ees ees ees ees ees  
	ees ees_"cresc." ees ees ees ees e e 
	f\f f f f f4 r 
	bes\p r d r 
	c r f, r bes r d r 
	c r f, r 
	bes,8 bes' bes bes bes bes bes bes 
	bes bes bes bes bes bes bes bes 
	aes aes aes aes aes aes aes aes 
	g g g g d d d d 
	ees f g d ees_"cresc." f ees c 
% 3
	bes\fp bes' bes bes bes4 r 
	r1 
	r8 f f f f4 r 
	r1 
	r8 bes-. bes,4 r2 
	r8 ees-. ees,4 r2 
	r8 g'-. g,4 r2 
	ees'4 r ees r 
	ees8 r ees r ees r ees r 
	f4 r r2 
	f8 f f f f f f f 
	bes bes bes bes ees, ees ees ees 
	f f f f fis_"cresc." fis fis fis 
	g g g g ees ees ees ees 
	f4\f r f r 
	bes,4 r8 \times 2/3 {f'16( g a} )bes4 bes, 
	r r8 \times 2/3 {c16( d e} )f4 f, 
	bes r16 bes c d ees8 c f f, 
	bes4 r8 f' bes f bes f 
	bes4 r8 f bes f bes f 
	bes4 bes bes, r 
}

contrabasso = \notes \relative c' {
	\time 4/4
	\key bes\major
	g4 r f\f r
	bes, r8 \times 2/3 {f'16( g a} )bes4 bes,-.
	r r8 \times 2/3 {c16( d e} )f4 f,-.
	r bes\p r bes
% 2
	r8. bes16( d8. f16 bes8. a16 g8. )f16
	ees8 ees ees ees f f f f
	g g f ees d c d bes
	ees ees ees ees ees ees ees ees
	f f f f f f f f
	g g g g d\f d d d
	ees\p ees ees ees ees ees ees ees 
	ees ees_"cresc." ees ees ees ees e e
	f\f f f f f4 r
	bes\p r d r
	c r f, r bes r d r
	c r f, r
	bes,8 bes' bes bes bes bes bes bes
	bes bes bes bes bes bes bes bes
	aes aes aes aes aes aes aes aes
	g g g g d d d d
	ees f g d ees_"cresc." f ees c
% 3
	bes\fp bes' bes bes bes4 r
	r1
	r8 f f f f4 r
	r1
	r8 bes-. bes,4 r2
	r8 ees-. ees,4 r2
	r8 g'-. g,4 r2
	ees'4 r ees r
	ees8 r ees r ees r ees r
	f4 r r2
	f8 f f f f f f f
	bes bes bes bes ees, ees ees ees
	f f f f fis_"cresc." fis fis fis
	g g g g ees ees ees ees
	f4\f r f r
	bes,4 r8 \times 2/3 {f'16( g a} )bes4 bes,
	r r8 \times 2/3 {c16( d e} )f4 f,
	bes r16 bes c d ees8 c f f,
	bes4 r8 f' bes f bes f
	bes4 r8 f bes f bes f 
	bes4 bes bes, r
}

konigindernacht = \addlyrics \notes \relative c'' {
	\time 4/4
	\key bes\major
	\property Voice.automaticMelismata = ##t
	g4 r r2
	r1
	r1
	bes4 r d r
% 2
	f2. ees8( )d
	d c d ees bes4 a 
	bes4.( \grace {[c32 bes a bes]} )c8 d4 r 
	c2 c4. c8 
	ees4 c8( )a f4. ees8 
	d4 r bes' r 
	g'4.( )bes8 ees,4. g8 
	c,8.( )d16 ees8.( )f16 g8( )ees c( )bes 
	f'4 r r2 
	r r8 bes,8 c d 
	f( )ees d( )c bes( )a f'( )ees 
	cis4 d r8 bes c d 
	f8( )ees d( )c bes( )a f'( )ees 
	d4 r r8 bes bes bes 
	c16 d c b c d ees d c4 r 
	d16 c bes a bes c d ees f g aes g aes f ees d 
	ees f ees d ees g f ees f g f ees f aes g f  
	g f ees d ees f g aes g f ees d ees f g a 
% 3
	bes4 r bes,8 c16 d ees f g a 
	bes4 r8 f-. d'-. bes-. f-. d-. 
	ees4 r c8 d16 ees f g a bes 
	c4 r8 a-. c-. a-. f-. a-. 
	bes4 r8 bes16 c d8 d16 c bes8 bes16 a 
	g4 r8 g16 a bes8 bes16 a g8 g16 f 
	ees4 r8 ees16 f g8 g16 f ees8 ees16 d 
	c16 d c b c ees d ees c d c bes c ees d ees 
	c8 g'16 fis g fis g fis g fis g fis g ees d c 
	d f ees d ees f g a bes8-. d-. f-. r 
	c,2\trill ~ c4. bes8 
	bes4 r g'2 
	f a  
	bes g 
	f a, 
	bes r 
	r1 
	r 
	r 
	r 
	r 
}

\context Lyrics \lyrics {
	schwach.
	Du, du,
	du wirst _
	sie zu be -- frei -- en
	ge -- hen, 
	du wirst der
	Toch -- ter 
	Ret -- ter
	sein, ja,
	du wirst der
	Toch -- ter Rett -- ter 
	sein.
	Und werd' ich
	dich als Sie -- ger 
	se -- hen so sei sie
	dann auf e -- wig
	dein, so sei sie
	dann _ --  _ -- _ -- _ -- _ -- _ -- _ -- _ -- 
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --

	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- _ -- _ --
	_ -- _ -- _ -- _ -- _ -- _ -- auf _
	e _ -- _ -- _ -- _ -- _ -- _ -- _ -- _ -- _ -- 
	_ -- _ -- wig dein, auf
	e -- wig
	dein, auf
	e -- wig dein.	
}