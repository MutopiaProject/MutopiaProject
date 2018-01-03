%#######################################################################
%#               M O U V E M E N T   3   -   V O I X   4               #
%#######################################################################
MvtTroisVoixQuatre = \relative c {
	\clef bass
	\override TupletBracket #'bracket-visibility = ##f
% mesure 1 à 5
	c'8\f\upbow r f4.-> d8
	c d f4 r
	c8\upbow r f4.-> d8
	c d a4 r
	c,2\p c,4
% mesure 6 à 10
	c'2 c,4
	c'2 c,4
	f4 r r 
	r2.
	r4 <d' a'>8->\fz <d a'> <d a'>\noBeam r8
% mesure 11 à 15
	r2.
	r4 <f c'>8\fz-> <f c'> <f c'>\noBeam r8
	c'2\pp c,4
	c'2 c,4
	c'2 c,4
% mesure 16 à 20
	f d8-. c-. f,-.\noBeam r \mark \default
	R2.*2
	r4 <d' a'>8\mf <d a'> <d a'>\noBeam r8
	r4 <f c'>8_\dimi <f c'>\! <f c'>\noBeam r8
% mesure 21 à 25
	c'8->\p d a4 r
	c8-> d a4 r
	c8-> d a4 r
	c8-> d a4 r
	c8-> d a4 r
% mesure 26 à 31
	c8-> d a4 r
	c8-> d a4 g8( f)
	f4-. f,-. r \mark \default
	R2.*3
% mesure 32 à 35
	c'8\mf d a4 r
	a4(\ff f) r8 c
	c4( g'8 f) r f
	a4( f) e8( d
% mesure 36 à 40
	f4) r f
	a\ff( f) r8 c
	c4( g'8 f) r f
	a4( f) e8( d
	f2) r4 \mark \default 
% mesure 41 à 45
	\tempo "Poco meno mosso." f'4\mf( d2->)
	f4( d2)->
	f4( d2->)
	d4\>( f2->)
	c2.\p\>
% mesure 46 à 48
	c
	c^\rit\!
	f,\pp\fermata^\fine \bar "||" \key f \minor \mark \default
% mesure 49 à 56
	R2.*8^\intempo
% mesure 57 à 60
	c''2._\mfespressivo
	f2( des4)
	c2( des4)
	f2.
% mesure 61 à 65
	c2.
	f2( des4)
	c2( des4)
	aes2 r4
	aes2._\dimi
% mesure 66 à 70
	bes2(\! aes4\>)
	g2( aes4)
	c2.\!
	aes\p\>
	bes2( g4)
% mesure 71 à 75
	f2.\pp(
	f,2) r4 \mark \default
	c''2.\pp
	f2( des4)
	c2( des4)
% mesure 76 à 80
	f2.
	c2.
	f2( des4)
	c2( des4)
	aes2.
% mesure 81 à 85
	f,8\f-> f r4 aes8-> aes
	des,-> des r4 aes'8-> aes
	f-> f r4 aes8-> aes
	des,-> des r4 aes'8-> aes
	f-> f r4 aes8-> aes
% mesure 86 à 90
	des,-> des r4 f8-> f
	f-> f r4 aes8-> aes
	c-> c r4 aes8-> aes
	des-> des r4 des8-> des
	des,_\dimi des\! r4 des8\> des
% mesure 91 à 95
	des des r4 des8 des
	aes' aes r4 aes8 aes
	c\p c r4 c8 c
	c,\ff c r4 c8 c
	f16\pp f r8 f16 f r8 f16 f r8
% mesure 96 à 100
	f16 f r8 f16 f r8 f16 f r8 \mark \default \key f \major
	c'8\p r f4.-> d8
	c d f4 r
	c8 r f4.-> d8
	c d a4 r
% mesure 101 à 105
	f( g d8 e)
	f4( g d8 e)
	f4( g d8 e)
	f4 r r
	r2.
% mesure 106 à 110
	r4 d''8\p^\pizz a d,4
	r2.
	r4 f8 c f,4
	r4 d'8\pp a d,4
	r4 d''8 a d,4
% mesure 111 à 115
	r4 d8 a d,4
	d' d, r \mark \default
	c'8^\arco\p d f4 r
	c8\mf d a4 r
	c'8\f d f4 r
% mesure 116 à 120
	c8\ff d a4 r
	c8\f d a4 r
	c8 d a4 r
	c8 d a4 r
	c8 d a4 r
% mesure 121 à 125
	c8 d a4 r
	c8 d a4 r
	c8 d a4 g8( f)
	f4-. f,-. r \mark \default
	r4 d''8\f d d4
% mesure 126 à 130
	r4 f,8\mf f f4
	r4 d8_\dimi d\! d4
	r4 f,8\p f f4
	a( f) r8 c
	c4( g'8 f) r8 f
% mesure 131 à 135
	a4( f) e8( d
	f4) r f
	a( f) r8 c
	c4( g'8 f) r f
	a4( f) e8( d)
% mesure 136 à 140
	f2 r4 \mark \default
	f'4\ff( d2)
	f4( d2)
	f4( d2)
	d4( f2)
% mesure 141 à 145
	d'2.\p
	d
	d_\dimi
	d4\!^\moltorit( c2)
	f4\pp^\intempo( d4. c8
% mesure 146 à 150
	a4 f d)(
	d8) c a4.( g8
	f2.)\fermata \bar "||" \key f \minor \mark \default
	c''2.\p(
	f2 des4)
% mesure 151 à 155
	c2( des4
	f2.)
	c2.(
	f2 des4)
	c2( des4
% mesure 156 à 160
	aes2) r4
	aes,8\f[ r16 g] g8[ r16 f] f4
	aes8\fz[ r16 g] g8[ r16 f] f4
	aes8\fz[ r16 g] g8[ r16 f] f4
	aes8\fz[ r16 g] g8[ r16 f] f4
% mesure 161 à 165
	aes8\fz[ r16 g] g8[ r16 f] f4
	aes8\fz[ r16 g] g8[ r16 f] f4
	aes8\fz[ r16 g] g8[ r16 f] f4
	c'8\fz[ r16 bes] bes8[ r16 aes] aes4
	f8\fz[ r16 ees] ees8[ r16 des] des4
% mesure 166 à 170
	fes8\fz[ r16 ees] ees8[ r16 des] des4
	fes8_\dimi[ r16\! ees] ees8[ r16 des] des4
	aes'8\>[ r16 g] g8[ r16 f!] f4
	f'8[ r16 des] des8[ r16 c] c4
	des8[ r16 c]\! c8[ r16 b] b8[ r16 bes]
% mesure 171 à 175
	bes8\p\>[ r16 a] a8[ r16 aes] aes8[ r16 g]
	g8[ r16 f] f4\! r \mark \default
	\tuplet 3/2 {\repeat tremolo 3 c8\ppp} \tuplet 3/2 {\repeat tremolo 3 f} \tuplet 3/2 {\repeat tremolo 3 g}
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 g} \tuplet 3/2 {\repeat tremolo 3 f}
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 c} \tuplet 3/2 {\repeat tremolo 3 bes}
% mesure 176 à 180
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 g} \tuplet 3/2 {\repeat tremolo 3 f}
	\tuplet 3/2 {\repeat tremolo 3 ees} \tuplet 3/2 {\repeat tremolo 3 f} \tuplet 3/2 {\repeat tremolo 3 g}
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 bes} \tuplet 3/2 {\repeat tremolo 3 b}
	\tuplet 3/2 {\repeat tremolo 3 c} \tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 f}
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 aes}
% mesure 181 à 185
	c4->\ff c8 c c c
	f4-> f8 f des des
	c4-> c8 c des des
	f-> f f4 r
	c-> c8 c c c
% mesure 186 à 190
	f4-> f8 f des des
	c4-> c8 c des des
	aes-> aes aes4 r
	aes->_\dimmolto aes8\! aes aes aes
	bes4->\> aes8 aes aes aes\!
% mesure 191 à 195
	g4-> g8 g aes aes
	c\p c c4 r
	aes\> aes8 aes aes aes
	bes4\pp bes8 bes g g
	f4 f8 f f f_\dacapo
% mesure 196 à 200
	f2 r4 \bar "|."
	
}
