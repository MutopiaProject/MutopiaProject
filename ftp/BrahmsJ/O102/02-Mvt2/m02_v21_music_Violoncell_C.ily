%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicVioloncellMvtII = \relative c {
	\clef bass
	\key d \major
%	\transposition a
% Bars 1 to 5
	R2.\fermata
	R2.\fermata
	a8(_\pocofmadolce d e a fis d)
	<<{\shape #'((0 . 1.0)(0 . 0.5)(0 . 0.5)(0 . 1.0)) Slur d4( g, a)} \\ {g g( d)}>>
	a'8( d e fis d b)
% Bars 6 to 10
	<<{d8([ cis)] cis([ b)] a4} \\ {e e  a}>>
	R2.
	<<{\tuplet 3/2 4 {g8( b d) g,( d' e)} a,4} \\ {g\p g d}>>
	R2.
	<<{\tuplet 3/2 4 {e8( gis b) e,( b' e)} e4} \\ {e, e a}>>
% Bars 11 to 16
	c'8(_\pocofmadolce a fis dis e g)
	<<{fis([ dis)] e([ cis!)] dis([ b])} \\ {b4 b b}>>
	c'8( a fis dis e g)
	<< {
		\voiceOne c,,4\< c\> cis8( a')\!
		a4(_\p a-\tweak rotation #'(2 -1 0) \< d)
		g, g
	} 
	\new Voice { 
		\voiceTwo
		s2 cis,4
		d4( d d)
		s2
	}>> \oneVoice a'4(~\!
% Bars 17 to 20
	a8\> d) fis,4 a(~\!
	a8_\pdim d) fis,4 a(~
	a d,8) r r4
	R2.
% Bars 21 to 25
	<<{\tupletDown \tuplet 3/2 4 {b'8( fis' a) b,( e g) b,( fis' b)} \tupletNeutral} \\ {b,4_\moltop b b}>>  
	R2.
	<<{\tuplet 3/2 4 {\tupletDown c,8(\< g' c) c( e\> g) cis,( e a)\! \tupletNeutral }} \\ {c,,4 c cis}>>
	\tuplet 3/2 4 {d8( a' fis') d,( a' e') d,(\< a' fis')
	cis,( a' e')} d4 \tuplet 3/2 {dis,8( b' fis')}
% Bars 26 to 30
	e4 \tuplet 3/2 {fis,8( d' a')} c,4\!
	\tuplet 3/2 4 {b8(\mf d g) g,( b d)} a4(~\dimD\>
	a8 d) fis,4 a(~\!
	a8\pp d) fis,4 a(~
	a d,8) r r4 \bar "||" \mark \default \key f \major
% Bars 31 to 35
	f!4^\pizz r r
	R2.*3
	
	
	f4 r r
% Bars 36 to 40
	R2.
	r4 r g(\p^\arco
	c,2) r4
	R2.*10
% Bars 41 to 45
	
% Bars 46 to 50
	
	
	
	r4 r8 bes'_\ppdim r b
	r c r4 c^\pizz \mark \default
% Bars 51 to 55
	f, r r
	r r  <<{ %  
		<des' bes'>-\tweak X-offset #-10 ^\pizz-\tweak X-offset #-7 -\tweak Y-offset #-2.7 _\pocofD % bar 52 & 53
		r <c a'>
	} \\ {
		\hairpinShorten #'(0.8 . 0) f,4\>_\arco~
		f2\p
	}>> r4
	R2.
	r4 r <<{ %bar 55 & 56
		<b aes'>
		r <c a'!>\p
	} \\ {
		f,4_\pfD~\>
		f2\p
	}>> r4
	R2.
	r4 r <<{ % bars 58 & 59
		fis'!
		r g
	} \\ {
		bes,4-\offset X-offset 1 _\pfD~\>
		bes2-\offset X-offset 1 \p
	}>> r4
	R2.
	r4 r <<{ % bars 61, 62 & 63
		des4 
		r c_\dimmarkup r
		f, r r
	} \\ {
		f4-\offset X-offset 0.8 \p~
		f2.~
		f
	}>>
	des4^\pizz r r
	r cis'\pp r
% Bars 66 to 70
	cis r r \bar "||" \key d \major
	fis, r r
	R2.
	a'4\f d r
	r r \stemOffset #-2 d,_\mfcresc^\arco~
% Bars 71 to 75
	d2 d4(~
	d cis b 
	a) a^\pizz r
	R2.*5
% Bars 76 to 80
	
	
	
	r4 a^\pizz-\tweak X-offset #-4 \mf d
	g g, d'
% Bars 81 to 85
	r a d
	e e, a
	R2.
	r4 r d\pp
	g, g' d
% Bars 86 to 90
	R2.
	r4 r d
	e e, a
	\tuplet 3/2 4 {c'8\f\> a fis dis c a g b e\!
	b-\offset X-offset -0.5 \mf dis fis} b4 r
% Bars 91 to 95
	\tuplet 3/2 4 {c8-\offset X-offset -0.5 \f\> a fis dis c a g b e\!
	c e g} c4 \tuplet 3/2 4 {cis,,!8 a' e'
	d, a' fis' d, a' e' d,\< a' fis'
	cis, a' e' d, a' fis' dis, b' fis'
	e, b' g' fis, d' a' c, fis a\!
% Bars 96 to 100
	b,\mf d g g, b d} a4(~^\arco
	a8\> d) fis,4 a4(~
	a8 d)\! fis,4\pp a(~
	a d,8) r r4 \mark \default
	R2.*3
% Bars 101 to 105
	
	
	r4 r d'(\p
	e f ees
	d c_\dimmarkup b
% Bars 106 to 110
	d c bes
	a2) aes4(
	g2.)~
	g
	a2\p\< a4(
% Bars 111 to 115
	g) fis( f)\!
	e8[\f-\tweak X-offset #-5 ^\pizz e'] a,[ a'] r4
	R2.
	a,4\p d r
	r d r
% Bars 116 to 118
	d r r 
	d r r
	d r r\fermata \bar "|."
}
