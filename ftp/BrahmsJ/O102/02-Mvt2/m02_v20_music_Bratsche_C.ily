%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicBratscheMvtII = \relative c' {
	\clef alto
	\key d \major
%	\transposition a
% Bars 1 to 5
	R2.\fermata
	R2.\fermata
	R2.
	g8([_\pocofmadolce d]) d([ e)] fis4
	R2.
% Bars 6 to 10
	fis8[( e)] e[( d)] cis4
	R2.
	g'8([\p d)] d[( g)] fis4
	R2.
	d8([ fis)] fis([ e)] e4
% Bars 11 to 15
	c'8(_\pocofmadolce a fis dis e g)
	a([ fis)] g([ e]) fis([ b])
	c( a fis dis e g)
	<c, e>\<([-\tweak X-offset #-1.5 ^\div <e g>]) q([ <c e>])\> <cis e>([ <g' a>])\!
	<fis a>4(\p <e g>\< <d fis>)
% Bars 16 to 20
	<d g> <<{g8([ e)] e([ fis)]} \\ {d4 d\!}>>
	<d fis>2\> <e g>4\!
	<d fis>2_\pdim <e g>4
	fis8( a fis) r r4
	R2.
% Bars 21 to 25
	dis'4(_\moltop cis dis)
	R2.
	<e, g>4\< <e g>4.(\> <g a>8)\!
	<fis a>4( <e g> <d fis>)\<
	g8( e) fis4 a8( fis)
% Bars 26 to 30
	g4 c8([ a]) a([ fis])\!
	<<{d4^\div d8([ e)] e([ fis)] } \\ {d4\mf d d}>>
	<d fis>2\dimD\> <e g>4
	<d fis>2\pp <e g>4
	fis8( a fis) r r4 \bar "||" \mark \default \key f \major
% Bars 31 to 35
	f!4^\pizz r r 
	R2.*13
% Bars 36 to 40
	
% Bars 41 to 45
	
	
	
	
	aes8^\arco\p aes4 g aes8~
% Bars 46 to 50
	aes\< g4 f8( e) e(
	f) f( e) e\! r ees-.-\tweak X-offset #-3 \pdolceD_(
	r ees-. r ees-.) r e-.
	r f_\dimmarkup r g r f
	r f r4 r \mark \default
% Bars 51 to 55
	R2.
	r4 r <e des'>-\tweak X-offset #-7 _\pocof-\tweak X-offset #2 ^\pizz
	r <f c'>\p r
	R2.
	r4 r <d b'>-\tweak X-offset #-3 _\pf
% Bars 56 to 60
	r <c c'>\p <a' cis>(^\div
	<bes d> <a c!>\< <g bes>\!
	<f a>\> <e g>)\! << {c'^\pizz} \\ {ees,_\pf} >>
	r << {bes'} \\ {d,\p} >>  <a' c>^\arco(
	<bes d> <fis c'> <g bes>~
% Bars 61 to 65
	q <f! a>) <e des'>^\pizz\p
	r <f  c'>\dimD\> r
	<f ees'> r <f des'>\!
	R2.
	r4 gis\pp r
% Bars 66 to 70
	b r^\div <fis a>\pp^\arco~( \bar "||" \key d \major
	q_\crescmarkup <gis b> <a cis>
	<gis b> <fis a>) 
	<<{
		a(\<
		c2.)~\f
		c2
	} \\ {
		a4
		c2.(~
		c4 a)
	}>> <g b>4~(
% Bars 71 to 75
	q <e cis'!> <fis d'>)
	<g e'>2( <d' fis>4
	<e g>) e,^\pizz r
	R2.*5
	
% Bars 76 to 80
	
	
	
	r4 e-\tweak X-offset #-4 \mf^\pizz \tuplet 3/2 {fis8 a d}
	b4 \tuplet 3/2 {b8 d g} fis4
% Bars 81 to 85
	r4 cis, \tuplet 3/2 {fis8 b d}
	b4 d cis
	R2.
	r4 r \tuplet 3/2 {d,8\pp a' d}
	d4 g fis
% Bars 86 to 90
	R2.
	r4 r \tuplet 3/2 {fis,8 b d}
	b4 b a
	R2.
	dis4\mf cis b
% Bars 91 to 95
	R2.
	e4 g, e8(^\arco g)
	<fis a>4(^\div <e g> <d fis>)\<
	g8( e) fis4 a8( fis)
	g4 c8([ a)] a([ fis)]\!
% Bars 96 to 100
	<<{d4^\div d8([ e]) e([ fis]) } \\ {d4\mf d d}>>
	<d fis>2\> <e g>4\!
	<d fis>2\pp <e g>4
	fis8( a fis) r a4(\pp \mark \default
	d2.)~
% Bars 101 to 105
	d2 b4(
	a2.)~
	a2 fis4(
	g a g
	fis! ees_\dimmarkup d
% Bars 106 to 112
	f ees d
	e!2) c4(
	d2) g4~
	g <ees g>2^\div
	<<{
		fis!4(\p e!)\< fis(
		e) a( d)\!
		<gis, e'>-\tweak X-offset #-5 ^\pizz\f <a e'>
	} \\ {
		d,2 d4~
		d d( a')
		<e d'> <e cis'>
	}>> r4
% Bars 113 to 115
	R2.
	g4\p fis r
	r <g d'> r
% Bars 116 to 118
	<fis d'> r r
	a r r
	fis r r\fermata \bar "|."
}
