\version "1.5.66"

Pamina = \addlyrics \notes \relative c'' {
	\time 6/8
	\key bes \major
	\clef treble
	\property Voice.automaticMelismata = ##t

	r4 r8 d4 c16( )bes |
	\grace {a16( } )g8 r g g'4 f16( )ees |
	ees8 d r c8.( )ees16 d32( c bes )a |
	\grace {g16( } )fis8 r fis g4 bes16. a32 |
	a4 r8 g'4 cis,8 |

	d8 r d g( )bes cis, |
	d4 r8 r4 r8 |
	r4 r8 f4 d8 |
	bes4 d16( )bes f4 ees8 |
	ees d r bes'4 b8 |
	b( )c c16.( )des32 des8.( ees32 des )c16 bes |

	a4 r8 f16( a c )ees cis( )d |
	a16( c ees )g e16( )f f( )ees ees( )d d( )c |
	bes8 ~ bes32( c bes )a bes( c d )ees f( g f )e f( g f )e f( g a )bes |
	f16-.( g-. a-. )bes-. f( )d d32( c ees c )bes8 a |
	bes4 r8 r4 r8 |
% 2
	r4 r8 f'4 b,8 |
	d c r8 r4 r8 |
	r4 r8 g'4 cis,8 |
	e d d16 c bes8. d16 c bes |
	\grace {bes8( } )a8 r r d8.( ees32 d )c16 bes |

	\grace {bes16( } )a8 r d16 d ees8. ees16 c a |
	g( fis )fis8 r r r16 a c ees |
	ees( )fis, fis8 r a( )c bes |
	a( )ees' d cis4 c8 |
	bes4 \times 2/3 {a16( c )ees} g,4 bes16( )a |

	g8 r g'16 g aes8. b,16 b b |
	d( )c c8 r c4 c16( )g' |
	g4 g8 bes4 cis,8 |
	cis d r d,16( fis a )c a( )bes |
	fis( a c )ees cis( )d d( cis d )c c( )bes |
% 3
	aes4 c16( )ees g,4 bes16( )a |
	g4 r8 g4 g8 |
	g'4. ~ g4 cis,,8 |
	d4.( )bes'4 a8  |
	g r bes a( )c fis, |

	g r bes a16( c )ees8^\fermata \grace {[d64( c bes a]} )g16( )fis |
	g4 r8 r4 r8 |
	r2. | r | r |
}


\context Lyrics \lyrics {
	Ach, ich 
	f\"uhl's, es ist ver-
	schwun -- den, e -- wig
	hin der lie -- be _
	Glu\"ck, e -- wig
	hin der lie -- be
	Gl\"uck!
	Nim -- mer
	kommt ihr, won -- ne-
	stu -- den, mei -- nem
	Her -- zen mehr zu- 
	r\"uck, mei -- nem
	Her -- zen, mei -- _ nem
	Her -- _ -- _ -- _ -- _ --
	zen mehr zu-
	r\"uck!
% 2
	Sieh', Ta -- 
	mi -- no, 
	die -- se
	Thr\"a -- nen flies- sen, Trau -- ter, dir al-
	lein, dir al-
	lein! F\"uhlst du nicht der Lieb -- be
	Seh-nen, der Lie -- be
	Seh -- nen, so wird
	Ru -- he, so wird 
	Ruh' im To -- de
	
	sein; f\"uhlst du nicht der Lie -- be
	Sehn-en, _ f\"uhlst du nicht der Lie -- be
	Sehnen, _ so wird 
	Ru -- he, so wird
% 3
	Ruh' im To -- de
	sein, so wird
	Ruh' im
	To -- de
	sein, im To -- de

	sein, im To -- de
	sein.



}