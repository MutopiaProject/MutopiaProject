%#######################################################################
%#               M O U V E M E N T   2   -   V O I X   4               #
%#######################################################################
MvtDeuxVoixQuatre = \relative c {
	\clef bass
	\override TupletBracket #'bracket-visibility = ##f
% mesures 1 à 5
	d8^\pizz\p r r d r r 
	d r r d r r
	d r r d r r
	<d a'> r r d r r
	<d a'> r r a r r
% mesures 6 à 10
	<d a'>_\cresc r r <d a'>\< r r
	d\fp r r d\> r r\!
	<d a'> r r\< d r r
	c\mf r r <c, g'> r r
	<c g'>\> r r c'\! r r \clef tenor \mark \default
% mesures 11 à 15
	a''4.\pp\<(^\arco a8) g( f16 d\!)
	d4.( d16\<) a a( d) d( e)\!
	f4( d8) c4\prall\> a16( c\!)
	d4. r8 d32\<([ a bes c] \tuplet 5/4 { d[ e f g gis])}
	a4.\sfz\>( a8) g( f16 d)
% mesures 16 a 20
	d4.\<( d16) a a( d) e( f)
	g4\mf( f16_\cres e\!) e4 \tuplet 3/2 {d16( c a) }
	c4.\>( c8) r\! r \clef bass \mark \default
	cis,^\pizz r r cis r r 
	cis r r cis r r 
% mesures 21 à 25
	cis r r cis r r 
	<<{cis\< d\rest d\rest cis[ d\rest cis\!]}\\{s4.\moltocresc s4.\!}>>
	f8\f f, r bes[_\dimi r\! bes]
	d\p r d b_\cres[ r\! b]
	c\<[ r cis] d[ r dis]
% mesures 26 à 30
	e\mf r r e\<[ r e]
	f\f r r g\> r r\!
	a_\dimi r\! r b\p[ r b]
	c\>[ r c\!] c_\dimi[ r\! c]
	f,\pp[ r c r f,] r \clef tenor \mark \default
% mesures 31 à 35
	g''4\p^\arco\< f16( e) g4 \tuplet 3/2 {f16( a e)}
	g4.\!( g8) r g
	g4\<( f16 e) g4 f32( a) a( e)
	g4.\<( g8) gis4
	a8\f( c) bes16( a) g8( f d)
% mesures 36 a 40
	d4.( d16\>) a a( d) e( f)
	a4.\mf( a16[\<) f f( g]) a[( c]) \clef treble
	c4.->\f\< d8( g bes,!)\!
	bes16\(( a) c4( c16\>)\) bes( g ees) g( bes) \clef tenor
	a4.\> g8\p\>( f d)
% mesures 41 a 45
	c4\>\(( c16) a'\) a4.\pp
	a4.( a8) r r \clef bass \mark \default
	d,,8^\pizz\mp r r d\< r d16 fis
	c8\f r r c\> r r
	d\p r r d\< r d16 fis
% mesures 46 a 50
	c8\f r r c\> r r
	bes\p r r bes\< r r
	ees\fz r r ees\> r r
	bes\pp r r bes r r
	ees\pp r r ees r r \mark \default
% mesures 51 a 55
	ees r r cis_\cres r\! r
	d\< r r d a\! f
	bes_\cres f\! f' bes, f f'
	f,\< f' r b, b'! r
	<c,, c'>\ff r r <c c'> r r
% mesures 56 a 60
	<c c'> r r <c c'> r r
	<c c'>_\dimi r\! r <c c'> r r
	c' r r c_\dimi r\! r 
	c r r a\p r r
	g_\dimi r\! r f\pp r r
% mesures 61 a 65
	c' r r a r r \mark \default
	d r r d_\cres r\! d16 fis
	c8\fz r r c r r
	d\pp r r d\< r d16 fis\!
	c8_\cresc r r c\< r c
% mesures 66 a 70
	bes\ff r r bes r r
	ees\> r r ees\! r r
	bes\p r r bes\> r r
	ees\pp r r ees r r \mark \default
	ees\< r r cis r r\!
% mesures 71 a 75
	d_\cres r\! r d a f
	bes\<( f) f'-- bes,( f) f'--\!
	bes, bes' r e,,_\cres e'\! r
	f,\f r r f' r r
	f, r r f' r r
% mesures 76 a 80
	f,_\dimi r\! r f' r r
	f, r r f'\mp r r
	d_\dimi r r\> g, r r\!
	a_\dimi r\! r b[ r b]
	c\pp r r des r r
% mesures 81 a 85
	c_\rit r r cis r a \clef tenor \mark \default
	a''4.\p_\arco^\intempo( a8) g( f16 d)
	d4.( d16) a a( d) d( e)
	f4\pp( d8) c4\prall( a16 c)
	d4.\<( d8)\noBeam d32([ a bes c)] \tuplet 5/4 {d([ e f g gis)\!]}
% mesures 86 a 90
	a4.( a8) g( f16 d)
	d4.\<( d16) a a( d) d( e)
	f2.\f\>~
	f4.\p~ f8\> e( ees)
	d4.\pp( d8) c( bes16 c)
% mesures 91 a 95
	d4.( d8) c( bes16 c) \clef bass
	d4.\<( d8) a( g16 f)
	d4.\>( d8) a( g16 f)
	d8( a' g16 f) d8\ppp( a' g16 f)
	d2.(_\morendo
% mesures 96 à 97
	d)
	d\fermata \bar "|."
}
