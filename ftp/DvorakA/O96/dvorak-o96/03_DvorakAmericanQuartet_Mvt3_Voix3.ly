%#######################################################################
%#               M O U V E M E N T   3   -   V O I X   3               #
%#######################################################################
MvtTroisVoixTrois = \relative c {
	\clef alto
	\override TupletBracket #'bracket-visibility = ##f
% mesure 1 à 5
	R2.*4
	a'4\p( bes4.-> g8)
% mesure 6 à 10
	a4( bes4.-> g8)
	a4( bes4.-> g8)
	a4 r r
	c8\f\upbow r f4.-> d8
	c d f4 r
% mesure 11 à 15
	c8\upbow r f4.-> d8
	c d a4 r
	a'4\pp( bes4.-> g8)
	a4( bes4.-> g8)
	a4( bes4.-> g8)
% mesure 16 à 20
	a4 r r \mark \default
	r <d, a'>8\ff <d a'> <d a'>\noBeam r
	r4 <f c'>8 <f c'> <f c'>\noBeam r
	R2.*2
% mesure 21 à 25
	f8\p f f f a( f)
	f f f f a( f)
	f f f f a( f)
	a( f) f f a( f)
	f f f f a( f)
% mesure 26 à 30
	f f f f a( f)
	f f f f a( f)
	f4-. f,-. r \mark \default
	r2.
	c'8\p d a4 r
% mesure 31 à 35
	c,8\mf d f4 r
	r <f c'>8 <f c'> <f c'>\noBeam r
	f\ff f f f a( f)
	f f f f a( f)
	f f f f a( f)
% mesure 36 à 40
	a( f) f f a( f)
	f\ff f f f a( f)
	f f f f a( f)
	f f f f g( f)
	c4 r r \mark \default
% mesure 41 à 45
	\tempo "Poco meno mosso." c'\mf( d-> f,)
	a2( d4)
	c( d-> f,)
	f'8\>( d c2)
	a4\p\>( bes4.-> g8\!) 
% mesure 46 à 48
	a4( bes4.-> g8)
	a4\>^\ritard( bes4.-> g8)
	a2\pp( c4)\fermata^\fine \bar "||" \key f \minor \mark \default
% mesure 49 à 56
	R2.*8^\atempo
% mesure 57 à 60
	f,8\fz f f4-> r
	des8\fz des des4-> r
	f8\fp f f4-> r
	des8\fp des des4-> r 
% mesure 61 à 65
	f8\fp f f4-> r
	des8\fz-> des des4 r
	f8\fz-> f f4 r
	c8\fp-> c c4 r
	des8\fp-> des des4\dimi r\!
% mesure 66 à 70
	des8\fp-> des\dimi des4\! r\>
	des8 des des4 r
	aes'8 aes aes4 r
	c,8\p c c4 r
	c8\fp c c4\dimi r\!
% mesure 71 à 75
	f8\pp f f4 r
	c2 r4 \mark \default
	c-.\p f-. g-.
	aes-. g-. f-.
	aes-. c-. r8 bes-.
% mesure 76 à 80
	aes4-. g-. f-.
	ees-. f-. g-.
	aes-. bes-. r8 b-.
	c4-. aes-. f-.
	c-. ees-. aes-.
% mesure 81 à 85
	aes8\ff[ r16 g g8 r16 f] f4
	aes8[ r16 g g8 r16 f] f4
	aes8[ r16 g g8 r16 f] f4
	aes8[ r16 g g8 r16 f] f4
	aes8[ r16 g g8 r16 f] f4
% mesure 86 à 90
	aes8[ r16 g g8 r16 f] f4
	aes8[ r16 g g8 r16 f] f4
	ees8[ r16 des des8 r16 c] c4
	f4\dimi r\! f8\> f
	fes\dimi fes\! r4 fes8\> fes
% mesure 91 à 95
	fes fes r4 fes8 fes
	ees ees r4 ees8 ees
	f8\p f r4 aes8 aes
	<<{
		bes2.\((
		bes4) a aes(
		aes2.)\)
	}\\{
		c,2.\>(
		c\pp)(
		c)
	}>> \bar "||" \key f \major \mark \default
% mesure 97 à 100
	c'8\upbow r f4.-> d8
	c8 d f4 r
	c8\upbow r f4.-> d8
	c d a4 r
% mesure 101 à 105
	a4\p( bes f8 g)
	a4( bes f8 g)
	a4( bes f8 g)
	a4 r r
	r d\<\( g(
% mesure 106 à 110
	g)\> d\)\! r
	r d\<\( g(
	g)\> c,\)\! r
	a'\pp( bes4.-> g8)
	a4( bes4.-> g8)
% mesure 111 à 115
	a4( bes4.-> g8)
	a2 r4 \mark \default
	c,8\p d f4 r
	c8\mf d a4 r
	c'8\f d f4 r
% mesure 116 à 120
	c8\ff d a4 r
	f8\f f f f a->\fz f
	f8 f f f a->\fz f
	f8 f f f a->\fz f
	f8 f f f a->\fz f
% mesure 121 à 125
	f8 f f f a f
	f8 f f f a f
	f8 f f f g( f)
	f4-. f,-. r \mark \default
	r a'8\f a a4
% mesure 126 à 130
	r c,8\mf c c4
	r a8_\dimi a\! a4
	r c,8\p c c4
	f8\p f f f a( f)
	f f f f a( f)
% mesure 131 à 135
	f f f f a( f)
	f f f f a( f)
	f f f f a( f)
	f f f f a( f)
	f f f f g( f
% mesure 136 à 140
	c4) r r \mark \default
	<<{a''4( f2)}\\{a,2.\ff}>>
	<<{a'4( f2)}\\{a,2.}>>
	<<{a'4( f2)}\\{a,2.}>>
	<f' a>4( c2)
% mesure 141 à 145
	a'4\p( bes4. g8)
	a4( bes4._\dimi g8)\!
	a4( bes4. g8)
	a4(^\moltorit\> bes2)\!
	<<{a8^\intempo[_\legato( s a s a s)]}\\{s a[ s a s a]}>>
% mesure 146 à 150
	<<{a8[( s a s a s)]}\\{s a[ s a s a]}>>
	<<{a8[( s a s a s)]}\\{s a[ s a s a]}>>
	<a a>2.\fermata \bar "||" \key f \minor \mark \default
	\clef treble c2.\pp(
	f2 des4
% mesure 151 à 155
	c2 des4
	f2) r4
	c2.(
	f2 des4
	c2 des4
% mesure 156 à 160
	aes2) r4 \clef alto
	c,,4\f\<( bes'-> aes)
	c,4\<( bes'-> aes)
	c,4\<( bes'-> aes)
	c4\<( bes'-> aes)
% mesure 161 à 165
	c,4\<( bes'-> aes)
	c,4\<( bes'-> aes)
	c,4\<( bes'-> aes)
	ees,4\<( des'-> c)
	c4\<( g'-> f)
% mesure 166 à 170
	des4\<( aes'-> fes)\!
	des_\dimi( ees\! fes)
	ees_\dimi( bes'\! aes)
	f!( e8\> f fis4
	g e f!)
% mesure 171 à 175
	des!\p( c4. bes8)
	aes2\> r4\! \mark \default
	\tuplet 3/2 {\repeat tremolo 3 c,8\ppp} \tuplet 3/2 {\repeat tremolo 3 f} \tuplet 3/2 {\repeat tremolo 3 g}
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 g} \tuplet 3/2 {\repeat tremolo 3 f}
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 c} \tuplet 3/2 {\repeat tremolo 3 bes}
% mesure 176 à 180
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 g} \tuplet 3/2 {\repeat tremolo 3 f}
	\tuplet 3/2 {\repeat tremolo 3 ees} \tuplet 3/2 {\repeat tremolo 3 f} \tuplet 3/2 {\repeat tremolo 3 g}
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 bes} \tuplet 3/2 {\repeat tremolo 3 b}
	\tuplet 3/2 {\repeat tremolo 3 c} \tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 f}
	\tuplet 3/2 {\repeat tremolo 3 ees} \tuplet 3/2 {\repeat tremolo 3 fes} \tuplet 3/2 {\repeat tremolo 3 ees}
% mesure 181 à 185
	c4\ff( d\< e)
	f( g aes8 f')\!
	e2( f4)
	c( bes aes)
	aes2( e4)
% mesure 186 à 190
	f( g aes8 f')
	e2( f8 f,)
	f2 r4
	ees_\dim( fes\> ees
	ees2 c4\!)
% mesure 191 à 194
	des2( c4)
	bes'4->\p( aes g\>)
	aes( f ees)
	des2\pp( c8 bes')
% mesure 195 à 200
	<<{
		bes4( aes g_\dacapo
		aes2)
	}\\{
		c,2.(
		c2)
	}>> r4 \bar "|."
}
