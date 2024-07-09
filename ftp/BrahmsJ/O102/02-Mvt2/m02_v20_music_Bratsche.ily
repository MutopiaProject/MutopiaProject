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
	\ni \mmrPos #-4 R2._\fermata
	\clef treble \mmrPos #-4 R2._\fermata
	\mmrPos #4 R2. \clef alto \no
	g8(_\pocofmadolce d) d( e) fis4
	R2.
% Bars 6 to 10
	fis8([ e)] e( d) cis4
	R2.
	g'8[(\p d)] d( g) fis4
	R2.
	d8([ fis)] fis( e) e4
% Bars 11 to 15
	c'8(_\pocofmadolce a fis dis e g)
	a([ fis]) g([ e)] fis( b)
	c( a fis dis e g)
	<< {
		e8[(^\div g)] g([ e)] e([ a])
		a4( g fis)
% Bars 16 to 18
		g g8[( e)] e( fis)
		fis2 g4
		fis2 g4
	} \\ {
% Bars 14 to 15
		c,8[(\< e)] e([ c\!]) cis(\> g')\!
		fis4\p( e\< d)
% Bars 16 to 20
		d d d\!
		d2\> e4\!
		d2_\pdim e4
	}>>
	fis8( a fis) r r4
	R2.
% Bars 21 to 25
	dis'4(_\moltop cis dis)
	R2.
	<< {
		g,4^\div g4.( a8)
		a4( g fis)
		s2.
% Bars 26 to 30
		s
		d4^\div d8[( e)] e( fis)
		fis2 g4
		fis2 g4
	} \\ {
% Bars 23 to 25
		e4\< e4.(\> g8)\!
		fis4( e d\<)
		\oneVoice g8( e) fis4 a8( fis)
% Bars 26 to 30
		g4 c8([ a)] a( fis)\!
		\voiceTwo d4\mf d d
		\hairpinShorten #'(0.5 . 0) d2^\dimmarkup\> e4\!
		d2-\offset X-offset 1.3 \pp e4
	} >>
	fis8( a fis) r r4 \bar "||" \mark \default \key f \major
% Bars 31 to 35
	f!4^\pizz-\offset X-offset -9 ^\tutti r r 
	R2.*7
% Bars 36 to 40
	
	
	
	R2.*2^\solo
	
% Bars 41 to 45
	\ni \clef treble \mmrPos #-4 R2.
	\mmrPos #-4 R
	\mmrPos #-4 R
	\mmrPos #-4 R \no \clef alto
	aes8^\arco\p aes4 g aes8~
% Bars 46 to 50
	aes\< g4 f8( e) e(
	f) f( e) e\! r ees-.\p^\dolce(
	r ees-. r ees-.) r e-.
	r f_\dimmarkup r g r f
	r f r4 r \mark \default
% Bars 51 to 55
	R2.
	r4 r <e des'>-\tweak X-offset #-2 _\pocof^\pizz
	r <f c'>\p r
	R2.
	r4 r <d b'>_\pf
% Bars 56 to 60
	r <c c'>\p << { cis'(^\arco_\div
		d c! bes
		a g) s
		s s c^\div^\arco(
		d c bes~
% Bars 61
		bes a) s
	} \\ {
% Bars 56 to 60
		a
		bes a\< g\!
		f\> e\! \oneVoice <ees c'>^\pizz_\pf
		r <d bes'>\p \voiceTwo a'
		bes fis g~
% Bars 61 to 65
		g f! \oneVoice <e des'>\p^\pizz
	}>>
	r <f  c'>\dimD\> r
	<f ees'> r <f des'>\!
	R2.^\tutti
	r4 gis\pp r
% Bars 66 to 70
	b r-\offset X-offset -1 ^\div << { a(^\arco~ \bar "||" \key d \major
		a b cis
		b a) a(
		c2.)~
		c2 b4~(
% Bars 71
		b^\solo cis! d)
	} \\ {
% Bars 66 to 70
		fis,\pp~
		fis_\crescmarkup gis a
		gis fis a\<
		c2.\f(~
		c4 a) g~
% Bars 71 to 75
		g e fis
	}>>
	<g e'>2( <d' fis>4
	<e g>) e,^\pizz r
	R2.*5
	
% Bars 76 to 80
	
	
	
	r4 e\mf^\pizz \tuplet 3/2 {fis8 a d}
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
	dis4\mf cis! b
% Bars 91 to 95
	R2.
	e4 g, e8(^\arco g)
	<< {
		a4(^\div g fis)
		s2.
		s
% Bars 96 to 100
		d4^\div d8([ e]) e( fis)
		fis2 g4
		fis2 g4
	} \\ {
% Bars 93 to 95
		fis( e d)\<
		\oneVoice g8( e) fis4 a8( fis)
		g4 c8([ a)] a( fis)\!
% Bars 96 to 100
		\voiceTwo d4\mf d d
		d2\> e4
		d2\pp e4
	} >>
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
	g 
	<<{
		g2^\div
		fis!4( e!) fis(
		e) a( d)\!
		<gis, e'>^\pizz <a e'>
	} \\ {
		ees2
		d2\p\< d4~
		d d( a')\!
		\shiftNote #1.7 <e d'>\f \shiftNote #1.4 <e cis'>
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
