\version "1.5.66"

flautiI = \notes \relative c'' {
	\time 2/4
	\key e \major
\partial 16  r16 
	r2 
	dis8-.\f e-. r8 \bar "||" r8^\segno 
	r2
\stemUp
	r4 r8 b\p
	e8.( fis32 e dis16 e fis )gis
	gis8( )fis r4
\stemBoth
	r2
% 2
	r
	r
	r16 b8( gis32 )e dis16( fis8 e32 )cis
	b4 r
	r2
	r
	r
	r
	r
	r
	r
	r4 r16 e( gis )a
	b8.( )gis16 e8.( fis32 )gis
% 3
	b8( )a r16 fis fis fis
	gis8 fis32( gis a )fis e8( )dis
	e4 r
	r2
	r8 gis16-. gis-. a-. a-. fis-. fis-.
	e8 r r4
	r8 r16 gis( fis cis' b )dis,
	fis4( )e8^\segno
\bar "|."
}

flautiII = \notes \relative c'' {
	\time 2/4
	\key e \major
	\stemDown
	\tieDown
\partial 16  r16
	r2
	a8 gis r r
	r2
	r
	r8 b4\p ~ b16( )e
	e8( )dis r4 
	r2	
% 2
	r r r r r r r
	r r r r r r
% 3
	r r r r 
	r8 e16 e fis fis dis dis
	e8 r r4
	r2
	dis4( )e8
}

fagottiI = \notes \relative c' {
	\time 2/4
	\key e \major
	\slurUp
	\stemUp
\partial 16  r16
	r2 
	dis8-.\f e-. r
	r
	r2 r r r r
% 2
	r r r
	b2\p ~
	b ~
	b ~
	b ~
	b ~
	b8 r r4
	r2 r r r
% 3
	r r r r r
	r4 b4( )cis8 r r4
	dis4( )e8
}

fagottiII = \notes \relative c' {
	\time 2/4
	\key e \major
	\slurDown
	\stemDown
\partial 16  r16
	r2 
	a8 gis r
	r
	r2 r r r r
% 2
	r r r
	b4( )a
	gis2
	fis16.( gis32 a4 gis16 )fis
	e( dis e )fis gis4
	fis16.( gis32 a4 gis16 )fis
	e8 r r4
	r2 r r r
% 3
	r r r r r 
	r4 b'4( )cis8 r r4
	a4( )gis8
}

cornieI = \notes \relative c'' {
	\time 2/4
\partial 16  r16
	r2 
	d8-.\f c-. r 
	r
	r2 r r r r
% 2
	r r r
	g2\p ~
	g ~
	g ~
	g ~
	g
	r r r r r
% 3
	r r r r
	r8 e'16-. e-. f-. f-. d-. d-.
	c8 r r4
	r2
	d4( )c8
}

cornieII = \notes \relative c'' {
	\time 2/4
\partial 16  r16
	r2 
	g8 c r 
	r
	r2 r r r r
% 2
	r r r
	g,2 ~
	g ~
	g ~
	g ~
	g
	r r r r r
% 3
	r r r r
	r8 c'16-. c-. d-. d-. g,-. g-.
	e8 r r4
	r2
	g4( )e8
}

violinoI = \notes \relative c'' {
	\time 2/4
	\key e \major
\partial 16  b16\p
	b8.( )gis16
	fis8.( )a16
	dis,8-.\f e-. r
	r
	b'4\p( )a
	gis( )fis8 r
	r e( dis16 e fis )gis
	gis8( )fis16 dis-. e16-. fis-. gis-. a-.
	b4( )a
% 2
	gis4( )fis8 r
	r e-. dis-. cis-.
	b cis'-. b-. ais-.
	b4 r16 b-. cis-. dis-.
	e-. fis-. gis-. a-. b-. cis-. dis-. e-.
	e8( )dis r16 b,-. cis-. dis-.
	e-. fis-. gis-. a-. b-. cis-. dis-. e-.
	e8( )dis r16 fis,,( gis )a
	r8 b r b
	r a r a
	gis( a gis )fis
	fis( )gis r16 e( gis )a
	b8.( )gis16 e8.( fis32 )gis
% 3
	b8( )a r16 fis fis fis
	gis8 fis32( gis a )fis e8( )dis
	r8 e r e
	r fis r a
	r gis16-. gis-. a-. a-. fis-. fis-.
	e8 r16 e'( dis a' fis )dis
	e8 r16 gis,( fis cis' b )dis,
	fis4( )e8
}

violinoII = \notes \relative c'' {
	\time 2/4
	\key e \major
\partial 16  gis16\p
	gis8.( )e16 cis8.( )fis16
	a,8-.\f gis-. r
	r
	gis'4( )fis
	e( )dis8 r
	r b4 ~ b16( )e
	e8( )dis16 b-. cis16-. dis-. e-. fis-.
	gis4( )fis
% 2
	e4( )dis8 r
	r cis-. b-. ais-.
	b e-. fis-. fis-. 
	b,16-.( b-. b-. b-. b-. b-. b-. )b-. 
	b b b b b b b b
	b b b b b b b b
	b b b b b b b b
	b b b b b fis'( e )dis
	r8 e r e
	r e r dis
	e( fis e )dis
	dis( )e r4
	r8 e r e
% 3
	r8 e r dis
	e-. cis( b )a
	r gis r cis
	r cis r fis
	r e16-. e-. fis-. fis-. dis-. dis-.
	e8 r a4( 
	)gis8 e4( )dis8
	dis4( )e8
}

viola = \notes \relative c' {
	\time 2/4
	\key e \major
	\clef "alto"
\partial 16  r16
	b8\p r a r
	fis-.\f e-. r
	r
	e'4\p( )cis
	b ~ b8 r
	r b a16( gis fis )e
	b'4 r
	e( )cis
% 2
	b4 ~ b8 r
	r gis-. fis-. e-.
	dis e'-. fis-. fis-.
	b,16-.( b-. b-. b-. a-. a-. a-. )a-.
	gis gis gis gis gis gis gis gis
	fis16.( gis32 )a16 a-. a-. a-.( gis-. )fis-.
	e-.( dis-. e-. )fis-. gis-.( gis-. gis-. )gis-.
	fis16.( gis32 )a16 a-. a-. a( gis )fis
	r8 gis r gis
	r cis r b
	b( cis )b b
	b4 r
	r8 gis r gis
% 3
	r8 fis r a
	gis a( gis )fis
	r e r gis
	r a r cis
	r b r a
	gis r fis'4( 
	)e8 b( cis )fis,
	a4( )gis8
}

violoncello = \notes \relative c {
	\time 2/4
	\key e \major
\partial 16  r16
	e8\p r a, r
	b-.\f e,-. r
	r
	e'4\p( )a,
	b4 ~ b8 r
	r gis' fis16( e dis )e
	b4 r
	e( )a,
% 2
	b4 ~ b8 r
	r e fis fis,
	b r r4
	r2
	r4 r16 e-. fis-. gis-.
	a-. gis-. fis-. e-. dis-. cis-. b-. a-.
	gis4 r16 e'-. fis-. gis-.
	a-. gis-. fis-. e-. dis-. cis-. b-. a-.
	gis8 r cis r
	fis, r b r
	e a, b b
	e4 r
	gis,8 r cis r
% 3
	fis, r b r
	e a, b b
	e r cis r
	a r a r
	b r b r
	e8 r b'4( 
	)cis8 gis-. a-. b-.
	b4( )e,8
}

contrabasso = \notes \relative c {
	\time 2/4
	\key e \major
\partial 16  r16
	e8\p r a, r
	b-.\f e,-. r
	r_\segno
	e'4\p( )a,
	b4 ~ b8 r
	r gis' fis16( e dis )e
	b4 r
	e( )a,
% 2
	b4 ~ b8 r
	r e fis fis,
	b r r4
	r2
	r4 r16 e-. fis-. gis-.
	a-. gis-. fis-. e-. dis-. cis-. b-. a-.
	gis4 r16 e'-. fis-. gis-.
	a-. gis-. fis-. e-. dis-. cis-. b-. a-.
	gis8 r cis r
	fis, r b r
	e a, b b
	e4 r
	gis,8 r cis r
% 3
	fis, r b r
	e a, b b
	e r cis r
	a r a r
	b r b r
	e8 r r4
	r8 gis,-. a-. b-.
	b4( )e,8_#'( bold ( italic "D.S."))_\segno
}

sarastro = \addlyrics \notes \relative c' {
	\time 2/4
	\key e \major
	\property Voice.automaticMelismata = ##t
\partial 16  r16
	r2 
	r4 r8
	b8
	b8. b16 b( )cis a( )fis
	e8.( )fis16 dis8 b
	e8. fis32( )e dis16( )e fis( )gis
	gis8( )fis r b
	b8. b16 bis16( )cis a( )fis	
% 2
	e8.( )fis16 dis8 fis
	gis16( )b8 gis32( )e dis16( )fis8 e32( )cis
	b4 r
	r r16 b cis dis
	e( )fis gis( )a b( cis32 b a )gis fis( )e
	fis4 r16 b, cis dis
	e( )fis gis( )a b( cis32 b a )gis fis( )e
	fis4 r16 fis gis a
	b8. gis16 e8. fis32( )gis
	b8( )a r16 fis fis fis
	gis8 fis32( gis a )fis e8 fis
	fis( )gis r16 e b a
	gis8. gis16 cis8. cis16
% 3
	fis,4 r16 b b b
	e8 a,8 b b
	e4 gis,
	fis( )a8 cis
	b4. cis16( )dis
	e4 r
	r2
	r4 r8
}

\context Lyrics \lyrics {
<
\context LyricsVoice = "one" {
	In die -- sen heil' gen
	Hal -- len kennt
	man die Ra -- che 
	nicht, und
	ist ein Mensch ge-	
% 2
	fal -- len, f\"uhrt
	Lie -- ben ihn zur
	Pflicht.
	Dann wan -- delt
	er an Freun -- des
	Hand verg -- n\"ugt und
	froh in's bess' -- re
	Land, dann wan -- delt er an Freun -- des
	Hand verg -- n\"ugt und froh in's bess' -- re
	Land, dann wan -- delt
	er an Freun -- des
% 3
	Hand verg -- n\"ugt und
	froh in's bess' -- re
	Land, in's
	bess're in's
	bess' -- re
	Land.
	}
\context LyricsVoice = "two" {
	In die -- sen heil' gen
	Mau -- ern, wo
	Mensch den Men -- schen
	liebt, kann
	kein Ver -- r\"a -- ther	
% 2
	lau -- ern, weil
	man dem Feind ver-
	giebt.
	Wen sol -- che
	Leh -- ren nicht er-
	freu'n, ver -- die -- net
	nicht ein Mensch zu
	sein, wen sol -- che
	Leh -- ren nicht er-
	freu'n, ver -- die -- net
	nicht ein Mensch zu
	sein, wenn sol -- che
	Leh -- ren nicht er-
% 3
	freu'n, ver -- die -- net
	nicht ein Mensch zu
	sein, ein
	Mensch, ein
	Mensch zu
	sein.
 } >
}