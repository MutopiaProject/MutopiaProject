%#######################################################################
%#               M O U V E M E N T   3   -   V O I X   2               #
%#######################################################################
MvtTroisVoixDeux = \relative c {
	\clef treble
	\override TupletBracket #'bracket-visibility = ##f
% mesure 1 à 5
	c''8\f r f4.-> d8
	c d f4 r
	c8 r f4.-> d8
	c d a4 r
	f4\p( g-> d8 e)
% mesure 6 à 10
	f4( g-> d8 e)
	f4( g-> d8 e)
	f4( g8 e f) r
	c'\f\upbow r f4.-> d8
	c d f4 r
% mesure 11 à 15
	c8\upbow r f4.-> d8
	c d a4 r
	f'4\pp( g-> d8 e)
	f4( g-> d8 e)
	f4( g-> d8 e
% mesure 16 à 20
	f4) r r \mark \default
	r2.
	c'8\ff d a4 r
	r2. 
	c,8_\dimi d\! a4 r
% mesure 21 à 25
	r4 c8\p d f4
	r4 c8 d f4
	r4 c8 d f4
	r4 c8 d f4
	r4 c8 d f4
% mesure 26 à 30
	r4 c8 d f4
	r4 c8( d bes4
	a) r r \mark \default
	c,8\p d f4 r
	r2.
% mesure 31 à 35
	r4 <d a'>8\mf <d a'> <d a'>\noBeam r
	r2.
	c'8->\ff d a4 r
	c8-> d a4 r
	c8-> d a4 r
% mesure 36 à 40
	c8-> d a4 r
	c8\ff d a4 r
	c8 d a4 r
	c8 d a4 g8( f)
	f4 r r \mark \default
% mesure 41 à 45
	\tempo "Poco meno mosso." <f a>2.\fz\>
	<f a>\fz\>
	<f a>\fz\>
	<f a>\fz\>
	f4\p\>( g-> d8 e)
% mesure 46 à 50
	f4( g-> d8 e)
	f4^\rit( g-> d8 e)
	f2\pp( a,4)\fermata^\fine \bar "||" \key f \minor \mark \default
	c'2._\ppdolce^\intempo(
	f2 des4)
% mesure 51 à 55
	c2( des4
	f2) r4
	c2.(
	f2 des4)
	c2 des4(
% mesure 56 à 60
	<aes c>2) r4
	aes8->[\mf r16 g g8 r16 f] f4
	aes8->[ r16 g g8 r16 f] f4
	aes8->[ r16 g g8 r16 f] f4
	aes8->[ r16 g g8 r16 f] f4
% mesure 61 à 65
	aes8->[ r16 g g8 r16 f] f4
	aes8->[\f r16 g g8 r16 f] f4
	aes8->[ r16 g g8 r16 f] f4
	ees2.\fp
	ees\fp_\dim
% mesure 66 à 70
	fes\fp_\dim(
	fes\>)
	ees
	c\p(
	c\fp)
% mesure 71 à 80
	c\pp
	aes2 r4 \mark \default
	R2.*8
% mesure 81 à 85
	aes'8\ff[ r16 g g8 r16 f] f4
	aes8[ r16 g g8 r16 f] f4
	aes8[ r16 g g8 r16 f] f4
	aes8[ r16 g g8 r16 f] f4
	aes8[ r16 g g8 r16 f] f4
% mesure 86 à 90
	aes8[ r16 g g8 r16 f] f4
	aes8[ r16 g g8 r16 f] f4
	ees8[ r16 des des8 r16 c] c4
	f8\dimi[ r16\! ees ees8\> r16 des] des4\!
	fes8\dimi[ r16\! ees ees8\> r16 des] des4
% mesure 91 à 95
	fes8[ r16 ees ees8 r16 des] des4\!
	ees8\>[ r16 des des8 r16 c] c4
	aes'8\p[ r16 g g8\> r16 f] f4
	des'8[ r16 c] c8[ r16 b] b8[ r16 bes]
	bes8\pp[ r16 a] a8[ r16 aes] aes8[ r16 g]
% mesure 96 à 100
	g8[ r16 ges] ges8[ r16 e] f8 r \bar "||" \key f \major \mark \default
	R2.*4
% mesure 101 à 105
	r4 r bes,(\p
	a) r bes(
	a) r bes(
	a) r r
	r a'\<( bes~
% mesure 106 à 110
	bes\> a)\! r
	r a(\< bes~
	bes\> f)\! r
	f'4\pp( g-> d8 e)
	f4( g-> d8 e)
% mesure 111 à 115
	f4( g-> d8 e)
	f2 r4 \mark \default
	r4 d8\p d d4
	r f,8\mf f f4
	r d''8\f d d4
% mesure 116 à 120
	r f,8\ff f f4
	r c8\f d f4
	r c8 d f4
	r c8 d f4
	r c8 d f4
% mesure 121 à 125
	r c8 d f4
	r c8 d f4
	r c8( d bes4
	a) r r \mark \default
	c8\f d f4 r
% mesure 126 à 130
	c8\mf d a4 r
	c,8\dimi d\! f4 r
	c8\p d a4 r
	c'8\p d a4 r
	c8 d a4 r
% mesure 131 à 135
	c8 d a4 r
	c8 d a4 r
	c8 d a4 r
	c8 d a4 r
	c8 d a4 g8( f)
% mesure 136 à 140
	f4 r r \mark \default
	c'4\ff( f4.-> d8-.)
	c( d f2)
	c4( f4.-> d8-.)
	c8( d <f, a>2)
% mesure 141 à 145
	f'4\p( g d8 e)
	f4\dimi( g\! d8 e)
	f4( g d8 e)
	f4\>^\moltorit( g d8 e)
	f2.\pp^\intempo\((
% mesure 146 à 150
	f)(
	c')(
	f)\)\fermata \bar "||" \key f \minor \mark \default
	c\pp(
	f2 des4)
% mesure 151 à 155
	c2( des4
	f2) r4
	c2.(
	f2 des4)
	c2( des4
% mesure 156 à 160
	c2) r4
	c,,4\f\<( bes'-> aes)
	c,\<( bes'-> aes)
	c,\<( bes'-> aes)
	c\f\<( bes'-> aes)
% mesure 161 à 165
	c,\<( bes'-> aes)
	c,\<( bes'-> aes)
	c,\<( bes'-> aes)
	ees,\<( des' c\!)
	c( g'-> f)
% mesure 166 à 170
	des( aes'-> fes)
	des\dimi( ees->\! fes)
	ees( bes' aes)
	f!( e8 f fis4
	g\> e! f)
% mesure 171 à 175
	des!\p( c4. bes8
	aes2)\> r4\! \mark \default
	\tuplet 3/2 {\repeat tremolo 3 c,8\ppp } \tuplet 3/2 {\repeat tremolo 3 f } \tuplet 3/2 {\repeat tremolo 3 g}
	\tuplet 3/2 {\repeat tremolo 3 aes } \tuplet 3/2 {\repeat tremolo 3 g } \tuplet 3/2 {\repeat tremolo 3 f}
	\tuplet 3/2 {\repeat tremolo 3 aes } \tuplet 3/2 {\repeat tremolo 3 c } \tuplet 3/2 {\repeat tremolo 3 bes}
% mesure 176 à 180
	\tuplet 3/2 {\repeat tremolo 3 aes } \tuplet 3/2 {\repeat tremolo 3 g } \tuplet 3/2 {\repeat tremolo 3 f}
	\tuplet 3/2 {\repeat tremolo 3 ees } \tuplet 3/2 {\repeat tremolo 3 f } \tuplet 3/2 {\repeat tremolo 3 g}
	\tuplet 3/2 {\repeat tremolo 3 aes } \tuplet 3/2 {\repeat tremolo 3 bes } \tuplet 3/2 {\repeat tremolo 3 b}
	\tuplet 3/2 {\repeat tremolo 3 c} \tuplet 3/2 {\repeat tremolo 3 aes} \tuplet 3/2 {\repeat tremolo 3 f}
	\tuplet 3/2 {\repeat tremolo 3 c} \tuplet 3/2 {\repeat tremolo 3 b} \tuplet 3/2 {\repeat tremolo 3 c}
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
	c c b\dimmolto b\! c c
	des\> des c c aes' aes\!
% mesure 191 à 195
	f f fes fes ees ees
	des\p des c c b b
	c\> c aes' aes g g
	f\pp f des' des e, e
	f f f' f f, f_\dacapo
% mesure 196 à 200
	f' f f,4 r \bar "|."
}
