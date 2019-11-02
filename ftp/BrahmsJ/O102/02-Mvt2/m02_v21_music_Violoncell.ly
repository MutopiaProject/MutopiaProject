% Project Name : Double Concerto Op102
% Fichier :      m02_v21_music_Violoncell.ly
% Generated on : Friday 02 August 2019, 19:28:01
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicVioloncellMvtII = \relative c {
	\clef bass
	\key d \major
%	\transposition a
% Bars 1 to 5
	\cueDuring #"cueVoiceVlcmII" #DOWN {
		\ni \MmrPos #-2 R2._\fermataMarkup
		\MmrPos #-2 R2._\fermataMarkup \no
	}
	a8(_\pocofmadolce^\solo d e a fis d)
	<<{\shape #'((0 . 1.5)(0 . 0.5)(0 . 0.5)(0 . 1.5)) Slur d4( g, a)} \\ {g g( d)}>>
	a'8( d e fis d b)
% Bars 6 to 10
	<<{d8( cis) cis( b) a4} \\ {e e  a}>>
	R2.
	<<{\times 2/3 {g8( b d)} \times 2/3 {g,( d' e)} a,4} \\ {g\p g d}>>
	R2.
	<<{\times 2/3 {e8( gis b)} \times 2/3 {e,( b' e)} e4} \\ {e, e a}>>
% Bars 11 to 16
	c'8(_\pocofmadolce a fis dis e g)
	<<{fis( dis) e( cis!) dis( b)} \\ {b4 b b}>>
	c'8( a fis dis e g)
	<<{
		c,,4\< c\> cis8( a')
		a4(_\p a\< d)
		g, g\!
	} \\ {
		s2 cis,4
		d4( d d)
		s2
	}>> a'4(~
% Bars 17 to 20
	a8\> d) fis,4 a(~\!
	a8_\pdim d) fis,4 a(~
	a d,8) r r4
	R2.
% Bars 21 to 25
	<<{\times 2/3 {b'8( fis' a)} \times 2/3 {b,( fis' g)} \times 2/3 {b,( fis' b)}} \\ {b,4_\moltop b b}>>
	R2.
	<<{\times 2/3 {c,8(\< g' c)} \times 2/3 {c( e\> g)} \times 2/3 {cis,( e a)\!}} \\ {c,,4 c cis}>>
	\times 2/3 {d8( a' fis')} \times 2/3 {d,( a' e')} \times 2/3 {d,(\< a' fis')}
	\times 2/3 {cis,( a' e')} d4 \times 2/3 {dis,8( b' fis')}
% Bars 26 to 30
	e4 \times 2/3 {fis,8( d' a')} c,4
	\times 2/3 {b8(\mf d g)} \times 2/3 {g,( b d)} a4(~\dimD\>
	a8 d) fis,4 a(~
	a8\pp d) fis,4 a(~
	a d,8) r r4 \bar "||" \mark \default \key f \major
% Bars 31 to 35
	f!4^\pizz^\tutti r r
	R2.*3
	
	
	f4 r r
% Bars 36 to 40
	R2.
	r4 r g(\p^\arco
	c,2) r4^\solo
	R2.*6
% Bars 41 to 45
	
	
	
	\clef treble
	\cueDuring #"cueVoiceVlcmII" #UP {
		\ni \MmrPos #-6 R2.
% Bars 46 to 50
		R
		\MmrPos #-6 R
		\clef bass R
		r4 \no } r8 bes'_\ppdim r b
	r c r4 c-\tweak X-offset #-1.5 ^\pizz \once \override Score.RehearsalMark.self-alignment-X = #-1 \mark \default
% Bars 51 to 55
	f, r r
	r r -\tweak X-offset #-5 -\tweak Y-offset #-7 _\pocof <<{ %  
		<des' bes'>^\pizz % bar 52 & 53
		r <c a'>
	} \\ {
		f,4\> -\tweak X-offset #-5 _\arco~
		f2\p
	}>> r4
	R2.
	r4 r <<{ %bar 55 & 56
		<b aes'>
		r <c a'!>^\p
	} \\ {
		f,4 -\tweak X-offset #-4 -\tweak Y-offset #-7 _\pf~\>
		f2\p
	}>> r4
	R2.
	r4 r <<{ % bars 58 & 59
		fis'!
		r g
	} \\ {
		bes,4 -\tweak X-offset #-4 -\tweak Y-offset #-6 _\pf~\>
		bes2\p
	}>> r4
	R2.
	r4 r <<{ % bars 61, 62 & 63
		des4 
		r c_\dimmarkup r
		f, r r
	} \\ {
		f4\p~
		f2.~
		f
	}>>
	des4-\tweak X-offset #-2 ^\pizz -\tweak X-offset #-2 ^\tutti r r
	r cis'\pp r
% Bars 66 to 70
	cis r r \bar "||" \key d \major
	fis, r r
	R2.
	a'4\f d r
	r r d,_\mfcresc^\arco~
% Bars 71 to 75
	d2-\tweak X-offset #1 ^\solo d4(~
	d cis b 
	a) a^\pizz r
	R2.*5
% Bars 76 to 80
	
	
	
	r4 a^\pizz\mf d
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
	\times 2/3 {c'8\f\> a fis} \times 2/3 {dis c a} \times 2/3 {g b e\!}
	\times 2/3 {b\mf dis fis} b4 r
% Bars 91 to 95
	\times 2/3 {c8\f\> a fis} \times 2/3 {dis c a} \times 2/3 {g b e\!}
	\times 2/3 {c e g} c4 \times 2/3 {cis,,!8 a' e'}
	\times 2/3 {d, a' fis'} \times 2/3 {d, a' e'} \times 2/3 {d,\< a' fis'}
	\times 2/3 {cis, a' e'} \times 2/3 {d, a' fis'} \times 2/3 {dis, b' fis'}
	\times 2/3 {e, b' g'} \times 2/3 {fis, d' a'} \times 2/3 {c, fis a}
% Bars 96 to 100
	\times 2/3 {b,\mf d g} \times 2/3 {g, b d} a4(~^\arco
	a8\> d) fis,4 a4(~
	a8 d) fis,4\pp a(~
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
	a!2\p\< a4(
% Bars 111 to 115
	g) fis( f)
	e8\f^\pizz e' a, a' r4
	R2.
	a,4 d r
	r d r
% Bars 116 to 118
	d r r 
	d r r
	d r r\fermata \bar "|."
}
