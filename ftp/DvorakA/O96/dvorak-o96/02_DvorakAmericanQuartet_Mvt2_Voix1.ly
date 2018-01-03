%#######################################################################
%#               M O U V E M E N T   2   -   V O I X   1               #
%#######################################################################
MvtDeuxVoixUne = \relative c {
	\clef treble
	\override TupletBracket #'bracket-visibility = ##f
% mesures 1 à 5
	R1*6/8*2
	\acciaccatura a''8 a'4.(\mp a8)_\moltoespress g( f16 d)
	d4.( d16) a\< a( d) d( e)\!
	f4( d8)\> c4(\prall a16 c)
% mesures 6 à 10
	d4.\p r8 d32\<([ a b cis] \tuplet 5/4 {d[ e f g gis)]\!} 
	\acciaccatura a,8 a'4.\sfz( a8\p\>) g( f16 d)\!
	d4.( d16\<) a a( d) e( f)
	g4\mf( f16 e) <c e>4 \tuplet 3/2 {<f, d'>16( \arpeggio c' a)}
	<e c'>4.\>( c'8) r\! r \mark \default
% mesures 11 à 15
	d16(\pp f8 f-. f16-.) d16( f8 f-. f16-.)
	d( f8 f-. f16-.) d16( f8 f-. f16-.)
	d( f8 f-. f16-.) c16( f8 f-. f16-.)
	d( f8 f-. f16-.) d16(_\cres f8\! f-. f16-.)
	d(\fp\> f8 f-. f16-.) d16( f8 f-. f16-.)
% mesures 16 a 20
	d(\< f8 f-. f16-.) d16( f8) f16( g a)
	c,16\mf( e8 e-. e16-.) c16(_\cres e8\!) e( c'16)
	c,16\>( e8 e-. e16-.) c16\p( e8 e-. e16-.) \mark \default
	<bes g'>4\pp( f'16 e) <bes g'>4 << {\tuplet 3/2 {f'16( a e)}} \\ {a,8} >>
	<bes g'>4. r8 r g'\p
% mesures 21 à 25
	<bes, g'>4( f'16 e) <bes g'>4 <a f'>32( a') a( e)
	<bes g'>4.\< <bes g'>4( <b gis'>8)
	<c a'>->\f c'-> bes16 a \acciaccatura d,8 g8(\> f d)
	d4.\p( d16)\< a a( d) e( f)
	a4._\cresc( a16)( f)\< f( g) a( c)
% mesures 26 à 30
	c4.\mf d8\<( g bes,\f)
	bes16\( a c4( c16)\) bes->(\> g-> ees-> g-> bes->\!)
	a4.\> g8\p( f d)
	c4\((\dimi c16)\! a'\) <c, a'>4. 
	<a f'>4.\pp( <a f'>8)\noBeam a16( c) c( a) \mark \default
% mesures 31 à 35
	<<{s2 s8. \grace {a32[ bes]}}\\{bes2.\p^+}>> 
	bes8(\< e f16 e) g8\f\>( e'8. g,16)\!
	<<{s2 s8. \grace {a32[_\cres bes\!]}}\\{bes2.\pp^+}>>
	bes8(\< e) f16( e) e8( f8.) f16-.
	f8\f( a) g16( f) e8-> d-> bes->
% mesures 36 a 40
	<f! a>4.(\> <f a>8) <f a> g\!
	c(\< a) f' f4 f8
	a4.\f\< bes4( d,8)\!
	d16( c a8 g16 f) ees4\((_\dim ees16\!) g\)
	f4.(\> f8)\p d( g)
% mesures 41 a 45
	a,4(\> d8) <e, c'>4.\pp
	<f c'>4.( <f c'>16) f[\< a( c) c( f)] \mark \default
	a4.\mp( a8)\< g( fis16 d)
	a'4.\f\>( a8) r a,16(\p a')
	a4.( a8)\< g( fis16 d)
% mesures 46 a 50
	a'4.\fz\>( a8) r a
	d4.(\< d8) c( bes16 g)
	g4.\f\>( g8) r g
	d'4.\pp( d8)\> c( bes16 g)
	g4.\pp( g8) r g \mark \default
% mesures 51 a 55
	bes4.(\< bes8) a( g)
	a8.[( g16)] \tuplet 3/2 {g16( f d\!)} d4 d8
	g8--_\cres a8.(\! d16) g,8-- a8.( d16)
	d4.\< dis4.
	e8\ff-> c'-> b-> a-> g-> a->
% mesures 56 a 60
	e4.( e4) r8
	e8(-> a-> g->) e8->( d-> e->)
	\acciaccatura c,8 c'4.( c8_\dimi) b(\! c)
	c4.( c8\p) b( c)
	c4.(_\dimi c8)\! b\pp( c)
% mesures 61 a 65
	c4.( c8) b( c) \mark \default
	a4.(\< a8) g( fis16 d)\!
	a'4.(_\cres a8\!) r a,16(\p a')
	a4.(\< a8) g( fis16 d)
	a'4.\f\<( a8) r a
% mesures 66 a 70
	d4.(\ff d8) bes( a16 f)
	g4.\>( g8) r g
	d'4.\p( d8\pp\>) bes( a16 f)
	g4.\pp( g8)\< r g\! \mark \default
	bes4.( bes8_\cres) a(\! g)
% mesures 71 a 75
	a8.[(\<\( g16)] \tuplet 3/2 {g16( f d\!)\)} d4( d8-.\!)
	g8\< a8.( d16) g,8 a8.( d16)\!
	g,4.->_\cres gis->\!
	a8(\f f') e-> d8.(-> c16-> d8->)
	a4.( a4) r8
% mesures 76 a 80
	a( d) c-- a_\dimi( gis\! a)
	a4. f8\mp( e f)
	f4._\dimi f8(\! e f)
	f4. f8(\> e f)
	f4.\pp f8( e f)
% mesures 81 a 85
	f4._\ritard f8( e-- f--) \mark \default
	<f, d'>8^\arco^\intempo <f d'> r <f d'>^\pizz <f d'> r
	<f a>^\arco <f a> r < f a>^\pizz <f a> r
	<f a>^\arco <f a> r < f a>^\pizz <f a> r
	<f a>^\arco <f a> r < f a>^\pizz <f a> r
% mesures 86 a 90
	<a, f'>^\arco <a f'> r <a f'>^\pizz <a f'> r
	<a f'>^\arco <a f'> r <a f'>^\pizz <a f'> r
	b2.\fp->^\arco
	c4.\p\> bes!
	f'8\pp^\pizz f r f e r
% mesures 91 a 95
	f f r f e r
	f f_\cres r\! f f r
	f f r f_\dimi f\! r
	f f r f f r
	f4 r8 f4 r8
% mesures 96 à 97
	f4 r8 f4 r8
	f2.^\fermata^\arco \bar "|."
}
