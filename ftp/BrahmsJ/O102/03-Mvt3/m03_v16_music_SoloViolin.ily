%  work         : Double Concerto Op102
%  typesetter   : Sébastien MANEN
%  date         : Thursday 20 April 2023, 19:50
%###############################################################################
%#                          M U S I C   S E C T I O N                          #
%###############################################################################
musicSoloViolinMvtIII = \relative c''' {
	\clef treble
	\key a \minor
%	\transposition a
% Bars 1 to 5
	R2*6
% Bars 6 to 10
	
	\ni \clef bass \mmrPos #-4 R2
	\mmrPos #-4 R
	\mmrPos #-4 R
	\mmrPos #-4 R \no \clef treble
% Bars 11 to 15
	a8(\p e'16)-. e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	f8( e16-.) e-. a8( e16-.) e-.
	f8( e16-.) e-. a-. c-. e-. c-.
	a8( g16-.) g-. c8( g16-.) g-.
% Bars 16 to 20
	aes8( g16-.) g-. c-. e-. g-. e-.
	c8-- b16-. c-. b8--\< c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.\!
	e8-- d16-. e-. d8--\> e16-. d-.
	e8-- d16-. e-. d( f) d-. b-.\!
% Bars 21 to 25
	g8 r r4
	R2*3
	
	
	<a, f'>8_\dolce( <c e>16 <d f>) <c e>4
% Bars 26 to 30
	<bes d>16( <a c> <g bes> <a c>) <f a>4
	<f' a>8( <e g>16 <f a>) <e g>4
	<d f>16( <c e> <bes d> <c e>) <a c>4~
	q8(\pp b16 c) f,4
	a8( gis16 a) a'4
% Bars 31 to 35
	a'8( gis16 a) a,,4
	c'8( b16 c) c'4
	\tuplet 3/2 8 {a16([ gis a] f[ e f] c[ b c] a[ gis a])}
	\tuplet 3/2 8 {f([ e f] d[ cis d] b[ ais b] f[ e f])}
	\tuplet 3/2 8 {e(_\benmarccresc d e} d8-.) \tuplet 3/2 8 {f16( d f} d8-.)
% Bars 36 to 40
	\tuplet 3/2 8 {e16( d e} d8-.) \tuplet 3/2 8 {a'16( d, a'} d,8-.)
	\tuplet 3/2 8 {d'16( d, d'} d,8-.) \tuplet 3/2 8 {d'16( d, d'} d,8-.)
	\tuplet 6/4 4 {<d' f>16\f d, <d' f> d, <d' f> d, <d' f> d, <d' f> d, <d' f> d, } \mark \default
	<gis b e>8-. r r4
	R2*6
% Bars 41 to 45
	
% Bars 46 to 50
	\ni \mmrPos #-4 R2
	\mmrPos #-6 R
	\mmrPos #-4 R \no
	r4 <e c' a'>->\f
	<d b' a'>-> <d b' gis'>->
% Bars 51 to 55
	<e c' a'>8-. r r4
	R2*2
	
	r4 <g, d' b' aes'>->-\tweak extra-offset #'(-2.2 . 2) \f
	<g ees' c' g'>-> <g ees' a! fis'>->
% Bars 56 to 60
	<g d' b' g'>8-.\noBeam <d'' f!>16-. d,-. <c'  ees>4->~
	q8\noBeam <c d>16-. d,-. <d' c'>4->~
	q8\noBeam <d b'>16-. d,-. <d' f>-. g,,-. <c' ees>8->~\noBeam
	q\noBeam <c d>16-. d,-. <d' c'>4->~
	q8\noBeam <d b'>16-. g,,-. <d'' c'>4->~
% Bars 61 to 65
	q8\noBeam <d b'>16-. d,-. <bes' aes'>4->~
	q8\noBeam <bes g'>16-. g,-. <bes' aes'>4~->
	\beamOffset #'(-0.5 . 0.5) q8 <bes g'>16-. g,-. <bes' g'>8( <a! fis'>16-.) c,-.
	<a' fis'>-. ees( <fis ees'>) c( <ees c'>) a,( <c a'>8-.)\noBeam
	<b! g'>8-. r r4
% Bars 66 to 70
	R2*9
% Bars 71 to 75
	
	
	
	
	\ni \clef bass \mmrPos #-4 R2
% Bars 76 to 80
	\mmrPos #-6 R \no
	r4 \clef treble g'(\f
	<c e> <d g> 
	<e c'>) <a f'>8-.( <g e'>-.)
	<f d'>( a) <dis, b'>-.( a'-.)
% Bars 81 to 85
	<e g>4 <a, a'>~
	q <a' f'>8-.( <g e'>-.)
	<f d'>[( a)] <a a'>-.( <g g'>-.)
	<f f'>( <e e'> <d d'>) a'(\noBeam \bar "||"
	\time 3/4 <e c'> <d b'>) <d b'>4.( <c a'>8)
% Bars 86 to 90
	<b g'>2 r8 g( \bar "||"
	\time 4/4 <e c'> <d b'> <e c'> <d b'>) <d b'>4.( <c a'>8)
	<b g'>4 r r2 \bar "||" 
	\timeMvtIII r8 <cis' a'>16-.\f a-. <d g>8( <a e'>16-.) g-.
	r8 <fis' d'>16-. d,-. \beamOffset #'(0 . 0.5) <g' c!>8( <c, a'>16-.) d,-.
% Bars 91 to 95
	r8 \beamGap #2 <c'' a'>16-. d,,-. <a'' f'!>8( <f d'>16-.) d,-.
	<d' c'>8( <c a'>16-.) d,-. <a' f'>8( <f b>16-.) g,-.
	<e' c'>8-. \tuplet 3/2 8 {g''16([ bes, g'] fis[ a, fis'] f[ aes, f']}
	\tuplet 6/4 4 {e g, e' d f, d' c e, c' g d g)}
	c,8\noBeam g'( a b
% Bars 96 to 100
	c d e g
	c2)
	r8 \ottava #1 c,( c'4)~
	c r
	r8 e,( \open e'4)~ \open \markWhiteout \mark \default
% Bars 101 to 105
	e8 \ottava #0 r r4
	r r8 \tuplet 3/2 8 {e,,,16_\plegg-. c'-. a-.}
	\tuplet 3/2 8 {dis,[ c' a] e[ c' a] f[ c' a] e[ e' c]}
	\tuplet 3/2 8 {dis,[ dis' c] e,[ e' c] f[ a e] c[ e e,]}
	a,8 r r4
% Bars 106 to 110
	R2
	\ni \mmrPos #-4 R2
	\mmrPos #-4 R \no
	r16 gis''_\plegg-. b-. gis-. d8-. r
	r16 gis-. b-. gis-. d-. b-. d-. f-. 
% Bars 111 to 115
	a8( e'16-.) e-. dis8( d16-.) d-.
	cis-. c-. b-. bes-. <<{s e,-. e-. e-.} \\ {a-._\dimmarkup e-. dis-. d-.}>>
	<<{e-. e-. e-. e-.} \\ {cis c b bes}>> <a e'>-. e-. dis-. <d e>-.
	cis8-. <c e>-. b <bes e>-.
	<a e'>-. r r8. bes16-.
% Bars 116 to 120
	<a e'>8-. r r4
	R2
	r4 r8. a''16-._\ffsempre \bar "||" \key d \minor
	a8-.[ r16 <f a>]-. q8-.[ r16 q-.]
	\tuplet 3/2 4 {q4( <e g>8) <d f>( <e g> <f a>)}
% Bars 121 to 125
	\tuplet 3/2 4 {<f a>4( <ees g>8) <des f>( <ees g> <f a>)}
	<c a'>4 <cis e!>
	r8. <c! g'>16-. <e g>8-.[ r16 q-.]
	\tuplet 3/2 4 {q4( <d f>8) <b d>( <c e> <d f>)}
	\tuplet 3/2 4 {<d f>4( <c e>8) <a c>( <b d> <c e>)}
% Bars 126 to 130
	<c, a'>4 <b g'>8. <g' g'>16
	<< {
		\voiceOne g'8( \tuplet 3/2 {f16 g f} \tuplet 6/4 4 {ees f ees d ees d)}
		ees8( \tuplet 3/2 {d16 ees d} \tuplet 6/4 4 {c d c bes c bes)}
		\tuplet 6/4 4 {\hairpinShorten #'(0.5 . 0) a16(\> bes a bes\! c bes) a( bes a bes c bes)}
	}
	\new Voice {
		\voiceTwo g,8 s s4
		g2
		g4 g
	}
	\new Voice {
		\voiceFour g'2
		s
		s
	} >> \oneVoice
	\tuplet 3/2 {<g, a'>16( bes' a)} r8 r8. <d d'>16
% Bars 131 to 135
	<<{
		\voiceOne d'8( \tuplet 3/2 {c16 d c} \tuplet 6/4 4 {bes c bes a bes a)}
		\shape #'((0 . -1)(0 . 0.3)(0 . 0)(0 . 0)) Slur bes8( \tuplet 3/2 {a16 bes a} \tuplet 6/4 4 {g a g f g f)}
		\tuplet 6/4 4 {\hairpinShorten #'(0.5 . 0) e16(\> f e f\! g f e f e f g f)}
	}
	\new Voice {
		\voiceTwo d,8 s s4
		d2
		d4 d
	}
	\new Voice {
		\voiceFour d'2
		s
		s
	}>> \oneVoice
	\tuplet 3/2 {<d, e'>16( f' e)} r8 r8. <a, a'>16
	<a a'>8( \tuplet 3/2 {f'16 g f} \tuplet 6/4 4 {d e d cis d cis)}
% Bars 136 to 140
	f8( \tuplet 3/2 {d16 e d} \tuplet 6/4 4 {bes c! bes g a g)}
	e8 r r4
	\ni \mmrPos #-4 R2
	\mmrPos #-4 R \no
	\tuplet 3/2 4 {r8 a(\p gis a c, f)}
% Bars 141 to 145
	e4 r
	\ni \mmrPos #-4 R2
	\mmrPos #-4 R
	\mmrPos #-4 R
	\mmrPos #-4 R \no
% Bars 146 to 150
	r4 \tuplet 3/2 4 {r8 bes'(\p gis}
	\tuplet 3/2 4 {a cis, e)} a,4 \mark \default
	R2
	r4 \tuplet 3/2 4 {r8 <c! a'>\pp\(( c'!)}
	\tuplet 3/2 4 {<a f'>( a') c~} c4\)
% Bars 151 to 155
	r4 \tuplet 3/2 4 {r8 <c,, a'>\(( c')}
	\tuplet 3/2 4 {<a f'>( a') c~} c4\)
	r4 \tuplet 3/2 4 {r8 <f,, des'>\(( f')}
	\tuplet 3/2 4 {<f aes>( d'!) f(} <a, f'>4)\)
	r4 \tuplet 3/2 4 {r8 <g,, e'>\(( g')}
% Bars 156 to 160
	\tuplet 3/2 4 {<g bes>( e') g(} <bes, g'>4)\)
	r4 r8 c,16_\legg( c'
	f a! c f a4)
	r4 r8 a,,,16( a'
	d fis a d fis4)
% Bars 161 to 165
	r4 r8 bes,,,16(_\dimmarkup d
	ees fis a c) r4
	r4 r8 g,16( bes
	a c f a) \clef bass r4
	\ni \mmrPos #-4 R2 \no
% Bars 166 to 170
	r4 \clef treble r8 a,(\f
	<f' a>) <d a'>4 <bes gis'>8(
	<a a'>) <f' a>4 <f~ d'>8^(
	<f c'>) <c f>4 <d~ bes'>8^(
	<d a'>)\noBeam <cis e>8. <d f>16( <f a> <e g>)
% Bars 171 to 175
	<d f>8 a'4 gis8(
	a)\noBeam a8. a,16(\f a' f
	e d cis d f a d b
	d a f e d a) <c! a'>8(\noBeam
	<c' a'>) q4 <b gis'>8(
% Bars 176 to 180
	<c a'>8) q4 <f d'>16( a
	<e c'> a e c a c) <d bes'>([ f]
	<c a'> f c a) f( <f' a>) <e c'>([ <d bes'>]
	<cis a'>8)\noBeam <cis e>8. <bes g'>16(\> <a f'> <g e'>) \mark \default
	<e cis'>( <f d'>) <e gis> <f a>\! \beamOffset #'(0.5 . 0) \tuplet 6/4 4 {a,_\plegg( fis' a fis' a fis')}
% Bars 181 to 185
	\tuplet 6/4 4 {a( fis a, d,, a'' fis'} a8) r
	\tuplet 6/4 4 {a16( fis a, a, fis d) a( fis' a fis' a fis')}
	\tuplet 6/4 4 {a( fis a, d,, a'' fis'} a8) r
	\tuplet 6/4 4 {a16( a, fis a, fis d} bes!8) r
	\tuplet 6/4 4 {a'''16( a, a, c ees, a} bes,!8) r
% Bars 186 to 190
	\tuplet 6/4 4 {f'''!16( f, d b d, b} d8) r
	\tuplet 6/4 4 {d''16( b d, b d, b} cis8) r
	\tuplet 6/4 4 {b''16( g b, g e cis) a( fis' a fis' a fis')}
	\tuplet 6/4 4 {a16( fis a, d,, a'' fis'} a8) r
	\tuplet 6/4 4 {a16( a, fis a, fis d) fis( dis fis b dis fis)}
% Bars 191 to 195
	\tuplet 6/4 4 {b( fis dis b dis fis} b8) r
	\tuplet 6/4 4 {b'16( fis dis b fis dis} b8) r
	\tuplet 6/4 4 {a'!16( fis c! a fis c} b8) r
	\tuplet 6/4 4 {dis''16(_\dimmarkup c a fis dis c} b8) r
	\tuplet 6/4 4 {bes!16( g e d! bes g} e'8) r
% Bars 196 to 200
	R2*10
% Bars 201 to 205
	
% Bars 206 to 210
	\ni \mmrPos #-4 R2
	\mmrPos #-4 R
	\mmrPos #-4 R \no
	r8 <<{\tuplet 3/2 8 {f'16( g f d[ e d)] b'([ cis b])}} \\ {a,8[\ff d,] d'}>>
	<cis a'>8-. r r4
% Bars 211 to 215
	R2*2
	
	r8 <<{\tuplet 3/2 8 {c'16([ d c] a[ b a])}} \\ {e8\ff[ a,]}>> \tuplet 3/2 8 {<a fis''>16( gis'' fis)}
	<gis, e'>8-. r r4
	R2*3
% Bars 216 to 220
	
	\bar "||" \mark \default \key a \minor
	R2*6
% Bars 221 to 225
	
	
	
	\ni \mmrPos #-10 R2
	\mmrPos #-10 R
% Bars 226 to 230
	\mmrPos #-8 R
	\mmrPos #-8 R \no 
	a8(\p e'16-.) e-. dis8( d16-.) d-.
	c8( b16-.) b-. a8( e16-.) e-.
	f8( e16-.) e-. a8( e16-.) e-.
% Bars 231 to 235
	f8( e16-.) e-. a-. c-. e-. c-. 
	a8( g16-.) g-. c8( g16-.) g-.
	aes8( g16-.) g-. c-. e-. g-. e-. 
	c8-- b16-. c-. b8-- c16-. b-.
	c8-- b16-. c-. b( a') g-. fis-.
% Bars 236 to 240
	e4 r
	r \tuplet 6/4 4 {g,,16_\legg( b d g b d)} \mark \default
	\tuplet 6/4 4 {e( c g e d e)} d8 r
	\tuplet 6/4 4 {f'16( a, f e d e)} d8 r
	\tuplet 6/4 4 {g'16( d b g f e)} g8 r
% Bars 241 to 245
	\tuplet 6/4 4 {g'16( d bes g bes des, a' c, f bes, g' e)}
	c8 r \tuplet 6/4 4 {r16 a(_\moltoleggieroedolce bes c d e)}
	\tuplet 6/4 4 {f16( g a bes a g)} \tuplet 3/2 {c( a f} c8)\noBeam
	r4 \tuplet 6/4 4 {r16 f,_\piup( ges aes ges f)}
	\tuplet 6/4 4 {bes( des ges bes aes ges)} \tuplet 3/2 {aes( f des} aes8)\noBeam
% Bars 246 to 250
	r8 \tuplet 3/2 8 {bes'16( aes g aes f ces} aes8)\noBeam
	r8 \tuplet 3/2 8 {des16( ces bes ces f aes} ces8)\noBeam
	r \tuplet 3/2 8 {bes16( aes g aes ees ces} aes8)\noBeam
	r \tuplet 3/2 8 {ees16( g bes ees g bes} ees8)\noBeam
	\tuplet 3/2 8 {gis,,,16(\>_\marcecrescmolto fisis gis} fisis8-.)\!\noBeam \tuplet 3/2 8 {b!16(\> gis b} fisis8-.)\!\noBeam
% Bars 251 to 255
	\tuplet 3/2 8 {gis16( fisis gis} fisis8-.)\noBeam \tuplet 3/2 8 {dis'16(\> b dis} fisis,8-.)\!\noBeam
	\tuplet 3/2 8 {gis16( fisis gis} fisis8-.)\noBeam \tuplet 3/2 8 {gis'16(\> gis, gis'} fisis,8-.)\!\noBeam
	\tuplet 3/2 8 {gis'16( gis, gis'} fisis,8-.)\noBeam \tuplet 3/2 8 {gis'16( gis, gis'} fisis,8-.)\noBeam
	\tuplet 3/2 8 {gis16([ b e] b\<[ e gis]) e([ gis b] gis[ b e])}
	\tuplet 3/2 8 {gis,[( b e] b[ e gis] e[ gis b] gis[ b e])\!)}
% Bars 256 to 260
	gis2\f-\tweak extra-offset #'(0 . -0.5) \startTrillSpan~
	\afterGrace gis {fis16[ gis]\stopTrillSpan}
	a8 r r4
	R2*5
% Bars 261 to 265
	
	
	
	\ni \mmrPos #-4 R2
	\mmrPos #-6 R
% Bars 266 to 270
	\mmrPos #-4 R
	\mmrPos #-4 R \no
	r8  <f, d'>16-.\f d, <e' d'>8-> <e c'>16-. g,-.
	\stemDown <d' c'>8-> <d b'>16-. g,,-. \stemNeutral <d'' b'>-.[ d,-.] <c' a'>-. a-.
	<gis b e>8-. r r4
% Bars 271 to 275
	\ni \mmrPos #-6 R2
	\mmrPos #4 R
	\clef bass \mmrPos #-4  R \no \clef treble \bar "||" \key a \major
	a,4(\f b
	cis) fis8(-. e-.)
% Bars 276 to 280
	d4 d8(-. b-.)
	cis4 d~
	d fis8(-. e-.)
	d4 d'8-.( cis-.)
	fis,( e) d4
% Bars 281 to 285
	r e\f(
	<a cis> <b e>
	<cis a'>) <fis d'>8(-. <e cis'>-.)
	<d b'>([ fis)] <bis, gis'>-.( fis'-.)
	<cis e>4 <fis, fis'>4~
% Bars 286 to 290
	q <fis' d'>8-.( <e cis'>-.)
	<<{b'8[( fis])} \\ {d r}>> <fis fis'>(-. <e e'>-.)
	<d d'>( <cis cis'> <b b'>) fis'(\noBeam \bar "||"
	\time 3/4 <cis a'>_\crescmarkup <b gis'>) q4.( <a fis'>8)
	<gis e'>4 r r8 e( \bar "||"
% Bars 291 to 295
	\time 4/4 <cis a'> <b gis'> <cis a'> <b gis'>) q4.( <a fis'>8)
	<gis e'>4 r r2 \bar "||"
	\timeMvtIII r8 <ais' fis'>16-.\f fis-. <b e>8( <fis cis'>16-.) e-.
	r8 <dis' b'>16-. b-. <e a>8( <b fis'>16-.) a!-.
	r8 <fis' fis'>16-. d,!-. <d' d'>8( <b b'>16-.) d,-.
% Bars 296 to 300
	<a' a'>8( <a fis'>16-.) <d,>-. <e d'>8( gis16-.) d-. \bar "||"
	<cis a'>8-. r r4
	R2
	r8 e32(_\pdolce a cis e a4)
	r8 e,32( a cis e a[ cis e cis] a e cis e,)
% Bars 301 to 305
	a( cis e cis a[ e cis b]) a( cis e cis a8)\noBeam
	r8_\piup a'32( d fis a d4)
	r8 a,32( d fis a d[ fis a fis] d a fis a,)
	d( fis a fis d[ a fis a,)] d( fis a fis b,8)
	r e'32( b gis\< b fis'[ b,\! a\> b] e b\! gis b)
% Bars 306 to 310
	r8 gis'32( b, e, b' fis'[ b, a b] e b gis b)
	r8 e32(\< b gis b fis'[ d\! a\> d] e b gis\! b)
	r8 b'32( d, b d a'[ d, cis d] gis d b d)
	r8 fis32(_\crescmarkup d d, fis' \beamOffset #'(0.5 . 0.5) a\<[ fis d, fis'] \beamOffset #'(0.5 . 0.5) d' fis, d, fis')\!
	\beamOffset #'(0.5 . 0.5) cis'(\>[ e, d, e'] \beamOffset #'(0.5 . 0.5) b'[ d, d, d'\!] a'[ cis, d, cis'] gis'[ b, d, b']
% Bars 311 to 315
	eis[ gis, d gis)] fis'([ a, d, fis'] a\<[ fis d, a''] fis'[ a, d,, gis'])\!
	e'(\>[ gis, d, fis'] d'[ fis, d, e'] cis'[ e, d, d'] b'[ d, d, d'])\!
	e'8\p\<( eis) fis4(~
	fis8 fisis) gis4\!~
	gis8\f\>( cis b a)
% Bars 316 to 320
	gis( fis d gis,)\!
	a32(\p[ cis e cis)] a[ a cis a] fis\<[ fis a fis] d[ d fis d]
	b([ dis fis dis]) b[ b dis b] gis[ gis b gis] e[ e gis e\!]
	cis8\noBeam cis''(\f b a)
	gis'32(\sf\> fis e d cis b a gis fis e d cis b a gis fis)\! 
% Bars 321 to 325
	e(\p fis gis a b cis d dis e fis gis a b cis d! e)
	gis(\pp fis e dis cis b a gis cis b a gis fis e dis cis)
	gis'( fis e dis cis b a gis cis b a gis fis e dis cis) \bar "||"
	e8-. r r4
	R2*2
% Bars 326 to 330
	
	\tuplet 6/4 4 {fis''16(\f e d cis b a gis fis e d cis b)}
	\tuplet 3/2 4 {a8( e''-.) e-. dis( e-.) e-.}
	\tuplet 3/2 4 {fis( e-.) e-. dis( e)-. e-.}
	\tuplet 6/4 4 {a,,16( a') e( e') e,( e') dis,( dis') e,( e') e,( e')}
% Bars 331 to 335
	\tuplet 6/4 4 {fis,( fis') e,( e') e,( e') dis,( dis') e,( e') e,( e')}
	\tuplet 6/4 4 {fis,( fis') e,( e') e,( e') dis,( dis') e,( e') e,( e')}
	\tuplet 6/4 4 {fis,( fis') e,( e') e,( e') dis,( dis') e,( e') e,( e')}
	\tuplet 6/4 4 {fis,( fis') e,( e') e,( e') fis,( fis') e,( e') e,( e')}
	\tuplet 6/4 4 {fis,( fis') e,( e') e,( e')} fis32( e dis e fis gis a b
% Bars 336 to 340
	cis8-.) r r4
	R2
	<e,,, cis' a'>8-. r r4
	<e cis' a'>8-. r r4
	<cis a'>2\fermata \bar "|."
}
