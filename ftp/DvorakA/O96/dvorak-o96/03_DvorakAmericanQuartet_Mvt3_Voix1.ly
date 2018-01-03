%#######################################################################
%#               M O U V E M E N T   3   -   V O I X   1               #
%#######################################################################
MvtTroisVoixUne = \relative c {
	\clef treble
	\override TupletBracket #'bracket-visibility = ##f
% mesure 1 à 5
	R2.*4
	c''2.->\p_\espressivo
% mesure 6 à 10
	c->_\espressivo
	c->(_\espressivo
	c4) r r
	c'8\f\upbow r f4.-> d8
	c d f4 r
% mesure 11 à 15
	c8\upbow r f4.-> d8
	c d a4 r 
	c2.\pp->_\espressivo
	c->_\espressivo
	c->(_\espressivo
% mesure 16 à 20
	c4) r r \mark \default
	c8\ff d f4 r
	r2.
	c,8\> d f4\! r
	r2.
% mesure 21 à 25
	a'4\p( f) r8 c
	c4( g'8 f) r a
	a4( f e8 d
	f4) r r
	a( f) r8 c
% mesure 26 à 30
	c4( g'8 f) r a
	a4( f e8 d
	f4) r r \mark \default
	r <d, a'>8\p <d a'> <d a'>\noBeam r
	r4 <f, c'>8\< <f c'> <f c'>\!\noBeam r
% mesure 31 à 35
	R2.*2
	r4 c''8\ff d f4--
	r4 c8 d f4--
	r4 c8 d f4--
% mesure 36 à 40
	r4 c8 d f4--
	r4 c8\ff d f4--
	r4 c8 d f4--
	r4 c8( d bes4)
	a-. f-. r \mark \default
% mesure 41 à 45
	\tempo "Poco meno mosso." c4\mf( f4. d8)
	c( d f4) r
	c( f4. d8)
	c\>( d a4\!) r
	c2.\p\> \trill
% mesure 46 à 50
	c2.\! \trill
	\afterGrace c\trill^\ritard {b16[ c]}
	c8\pp( d c g) f4\fermata^\fine \bar "||" \key f \minor \mark \default
	c'4\pp^\intempo( f g
	aes g f)
% mesure 51 à 55
	aes( c bes
	aes g f)
	ees( f g
	aes bes b)
	c( aes f
% mesure 56 à 60
	ees2) r4
	aes8->[ r16 g g8 r16 f] f4
	aes8->[ r16 g g8 r16 f] f4
	aes8->[ r16 g g8 r16 f] f4
	aes8->[ r16 g g8 r16 f] f4
% mesure 61 à 65
	aes8->[ r16 g g8 r16 f] f4
	aes8->[\f r16 g g8 r16 f] f4
	aes8->[ r16 g g8 r16 f] f4
	ees8->[ r16 des des8 r16 c] c4
	f8->[ r16 ees ees8_\dimi r16\! des] des4
% mesure 66 à 70
	fes8->\>[ r16 ees ees8 r16 des] des4
	fes8->[ r16 ees ees8 r16 des] des4
	ees8->\>[ r16 des des8 r16 c] c4
	aes8->\p[ r16 g g8 r16 f] f4
	des'8->\fp\>[ r16 c c8 r16 b b8 r16 bes]
% mesure 71 à 80
	bes8[ r16 a] a8[ r16 aes] aes8\pp[ r16 g]
	g8[ r16 f] f4 r \mark \default
	R2.*8
% mesure 81 à 85
	c''2._\fmoltoespressivo
	f2( des4)
	c2( des4)
	f2.
	c2.
% mesure 86 à 90
	f2( des4)
	c2( des4)
	aes2 r4
	aes2._\dimi
	bes2_\dimi( aes4)\!
% mesure 91 à 95
	g2\>( aes4)
	c2.
	aes2.\p(\>
	bes2 g4)
	f2(\pp c4
% mesure 96 à 100
	aes2 f4) \bar "||" \mark \default \key f \major
	R2.*4	
% mesure 101 à 105
	d2.\p\downbow
	d\downbow
	d(~\upbow
	d8 c f g a c)
	c4(\< f4. d8-.)
% mesure 106 à 110
	c-. d-. f4-.\! r
	c\<( f4.-> d8-.)\!
	c-. d-. a4 r
	d'2\pp\prall g8( d)
	d2\prall g8( d)
% mesure 111 à 115
	d2\prall g8( d)
	d2 r4 \mark \default
	r4 a8 a a4
	r4\mf c,8 c c4
	r a''8\f a a4
% mesure 116 à 120
	r c,8\ff c c4
	a'4\f( f) r8 c
	c4( g'8 f) r a
	a4( f) e8( d
	f4) r r
% mesure 121 à 125
	a4( f) r8 c
	c4( g'8 f) r a
	a4( f) e8( d 
	f2) r4 \mark \default
	c8\f d f4 r
% mesure 126 à 130
	c8\mf d a4 r
	c,8 d_\dimi f4\! r
	c8\p d a4 r
	r c'8\p d f4--
	r c8 d f4-- 
% mesure 131 à 135
	r c8 d f4--
	r c8 d f4--
	r c8 d f4--
	r c8 d f4--
	r c8\p( d bes4)
% mesure 136 à 140
	a-. f-. r \mark \default
	c'\ff( f4. d8-.)
	c( d f2->)
	c4( f4.-> d8-.)
	c8( d a2)
% mesure 141 à 145
	d2\prall\p( g8 d)
	d2\prall( g8_\dimi d\!)
	d2\prall( g8 d)
	d4.\>^\moltorit( e8 f g)
	a2.\pp\intempo(
% mesure 146 à 150
	a2.)(
	a2.)(
	a2.)\fermata \bar "||" \key f \minor \mark \default
	\tuplet 3/2 {\repeat tremolo 3 c,8\ppp } \tuplet 3/2 {\repeat tremolo 3 f} \tuplet 3/2 {\repeat tremolo 3 g }
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 g} \tuplet 3/2 {\repeat tremolo 3 f}
% mesure 151 à 155
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 c} \tuplet 3/2 {\repeat tremolo 3 bes}
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 g} \tuplet 3/2 {\repeat tremolo 3 f}
	\tuplet 3/2 {\repeat tremolo 3 ees} \tuplet 3/2 {\repeat tremolo 3 f} \tuplet 3/2 {\repeat tremolo 3 g}
	\tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 bes} \tuplet 3/2 {\repeat tremolo 3 b}
	\tuplet 3/2 {\repeat tremolo 3 c} \tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 f}
% mesure 156 à 160
	ees2 r4
	\ottava #1 \set Staff.ottavation = #"col 8va ad libitum" c'2.\f(
	f2 des4)
	c2( des4
	f2) r4
% mesure 161 à 165
	c2.(
	f2 des4)
	c2( des4
	aes2) r4
	aes2.
% mesure 166 à 170
	bes2( aes4)
	g2( aes4
	c2) r4
	aes2~^( aes8 a
	bes2\> g4)
% mesure 171 à 175
	f2.\p
	c2\> r4\! \ottava #0 \mark \default
	c,4\ppp-- c8(-.^\staccato c-. c-. c-.)
	f4-- f8(-. f-. des-. des-.)
	c4-- c8(-. c-. des-. des-.)
% mesure 176 à 180
	f(-. f-.) f4 r
	c-- c8-.( c-. c-. c-.)
	f4-- f8-.( f-. des-. des-.)
	c4-- c8-.( c-. des-. des-.)
	aes-.( aes-.) aes4 r
% mesure 181 à 185
	c8\ff c f f g g
	aes aes g g f f
	aes aes c c bes bes
	aes aes g g f f
	e e f f g g
% mesure 186 à 190
	aes aes bes bes b b
	c c aes aes f f
	c c b b c c
	c c b_\dimmolto b\! c c
	des des c c aes' aes
% mesure 191 à 195
	f\> f fes fes ees ees
	des\p des c c b b
	c\> c aes' aes g g
	f\pp f des' des e, e
	f f f' f f, f_\dacapo
% mesure 196 à 200
	f' f f,4 r \bar "|."
}
