\version "2.14.2"

markings = {\time 2/2 \key f \major s1*28 \bar "|."}
incmidi = "midi.ly"

flauto = \relative c''' {
  \repeat volta 2 {
	a2_\markup{\italic "sotto voce"}( c)
	f, r4 f(
	g a bes d)
	c4.( bes8) a2
	g c4.( e8)
	f,4.( a8) d4.( b8)
	c8.( b16) a8.( d16) c4-. b-.
	b2( c4) r
  }
  \repeat volta 2 {
	g2 g4( a)
	c4.( bes8) bes4( a)
	d( c bes a)
	a2( bes4) g(
	c bes a g)
	f bes2( a4)
	\grace a8 g4. g8 g4. f8
	f( e d c d e f g)
	a2( c)
	f,( fis)
	g4( a bes d)
% 3
	c4.( bes8 a4 f)
	d'2 bes4.( g8)
	e2 c'\sfp ~
	c8.( e,16 f8. g16) a8-. r g-. r
	f4 r d'2\sfp ~
	d8.( fis,16 g8. g16) a4( g8. a16)
	bes4 r f'2\sfp ~
	f8.( a,16 bes8. d16) a8 r a16( g f g)
	g2( f4) r
	}
}

cornibassettoI = \relative c'' {
  \repeat volta 2 {
	e2( g)
	c, r4 c(
	d e f a)
	g4.( f8) e2
	d g4.( b8)
	c,4.( e8) a4.( fis8)
	g8.[( fis16)] e8.[( a16)] g4-. fis-.
	fis2( g4) r 
	}
  \repeat volta 2 {
	d2 d4( e)
	g4.( f8) f4( e)
	a( g f e)
	e2( f4) d(
	g f e d)
	c( f2 e4)
	\grace e8 d4. d8 d4. c8
	c b a g a b c d
	e2( g)
	c, g'
	a4( b c a)
% 3
	g4.( f8 e4 c)
	a'2 f4.( d8)
	b2 g'\sfp ~
	g8.( b,16 c8. d16) e8-. r d-. r
	c4 r c'2\sfp ~
	c8.( e,16 f8. a16) e8 r e16( d c d16)
	f4 r c'2\sfp ~
	c8.( e,16 f8. a16) e8 r e16( d c d)
	d2( c4) r
	}
}

cornibassettoII = \relative c'' {
  \repeat volta 2 {
	c2_\markup{\italic "sotto voce"}( b)
	c r4 g(
	a b c e)
	d( b) c2
	b1 ~
	b4( a) c2
	b4( e4) d c
	c2( b4) r
	}
  \repeat volta 2 {
	b2 b4( c)
	d2. c4
	f( e d cis)
	cis2( d4) b(
	e d c b)
	c( b8. c16 d4 c)
	c2 a
	g r
	c( g)
	c e
	f4( g a e)
% 3
	d( b c2)
	c a4.( f8)
	g2 r
	r c8-. r b-. r
	c4 r r2
	r c4( b)
	c r r2
	r c8 r c16( b a b)
	b2( c4) r
	}
}

fagottoI = \relative c' {
  \repeat volta 2 {
	c2_\markup{\italic "sotto voce"}( bes)
	a r4 a(
	g c bes a)
	c1 ~
	c1
	a2 g4( b8 d)
	c4( f) e-. d-.
	d2( c4) r
	}
  \repeat volta 2 {
	c2. c4
	c1
	bes4( c d d)
	c2( bes4) c ~
	c( d c bes)
	a( des c2)
	d g,
	g r
	c( bes)
	a r
	r r4 f'(
% 3
	e c f2)
	g,1
	g2 r8. g16( a8. bes16)
	c4 r c8-. r bes-. r
	a4 r r8. a16( bes8. c16)
	d4 r c-. c-.
	f, r r8. c'16( d8. ees16)
	f4 r8. g,16 c8-. r bes-. r
	bes2( a4) r
	}
}

fagottoII = \relative c' {
  \repeat volta 2 {
	c2_\markup{\italic "sotto voce"}( bes)
	a r4 a(
	g c bes a)
	c1 ~
	c1
	a2 g4( b8 d)
	c4( f) e-. d-.
	d2( c4) r
	}
  \repeat volta 2 {
	c2. c4
	c1
	bes4( c d d)
	c2( bes4) c ~
	c( d c bes)
	a( des c2)
	d g,
	g r
	c( bes)
	a r
	r r4 f'(
% 3
	e c f2)
	g,1
	g2 r8. e16( f8. g16)
	a4 r c8-. r bes-. r
	a4 r r8. fis16( g8. a16)
	bes4 r c-. c-.
	f, r r8. a16( bes8. c16)
	d4 r8. g,16 c8-. r bes-. r
	bes2( a4) r
	}
}

cornifI = \relative c'' {
  \repeat volta 2 {
	c2_\markup{\italic "sotto voce"}( g)
	e r
	r1
	d'2 e
	d r
	r1
	r2 r4 d
	d2 ~ d4 r
	}
  \repeat volta 2 {
	g,1 ~
	g
	r 
	r2 r4 d'
	g f e r
	R1*3
	c2( g)
	e r 
	R1*3
	g2 r
	R1*4
	r2 r4 d'8 r
	d2( c4) r4
  }
}

cornifII = \relative c' {
  \repeat volta 2 {
	c2_\markup{\italic "sotto voce"}( g)
	c r
	r1
	g'2 c
	g r
	r1
	r2 r4 d'
	d2( g,4) r
	}
  \repeat volta 2 {
	g,1 ~
	g
	r 
	r2 r4 g'
	e' d c r
	R1*3
	c,2( g)
	c r 
	R1*3
	g2 r
	R1*4
	r2 r4 g'8 r
	g2( c,4) r4
  }
}

trombonealto = \relative c'' {
  \repeat volta 2 {
	a2_\markup{\italic "sotto voce"}( g)
	f r
	R1*2
	g2 r4 g
	f2 r4 f
	e a g f
	f2( e4) r
}
  \repeat volta 2 {
	g2 r
	g2. a4
	bes, c d d
	d2 r
	r1
	r2 r4 a'
	g r d r
	c2 r
	a'( g)
	f r
	R1*2
	f2 r
	e r
	R1*4
	r2 r4 e8 r
	e2( f4) r
}
}

trombonetenor = \relative c' {
  \repeat volta 2 {
	c2_\markup{\italic "sotto voce"}( bes)
	a r
	R1*2
	e'2 r4 e
	f2 r4 f
	e a g f
	f2( e4) r
}
  \repeat volta 2 {
	e2 r
	c2. f4
	bes, c d d,
	d2 r
	r1
	r2 r4 c'
	d r g, r
	g2 r
	c bes 
	a r
	R1*2
	g2 r
	g r
	R1*4
	r2 r4 bes8 r
	bes2( a4) r
}
}

trombonebasso = \relative c {
  \repeat volta 2 {
	f2_\markup{\italic "sotto voce"}( c)
	d r
	R1*2
	c2 r4 a
	d2 r4 g,
	a f g g
	c2 ~ c4 r
  }
  \repeat volta 2 {
	c2 r
	e2. f4
	r2 r4 d
	g,2 r4 bes(
	a bes c cis)
	d g( e f)
	bes, r b r
	c2 r
	f( c)
	d r
	R1*2
	bes2 r
	bes r
	R1*4
	r2 r4 c8 r
	c2( f,4) r
	}
}

violinoI = \relative c'' {
  \repeat volta 2 {
	a2_\markup{\italic "sotto voce"}( c)
	f, r4 f(
	g a bes d)
	c4.( bes8) a2
	g c4.( e8)
	f,4.( a8) d4.( b8)
	c8.( b16) a8.( d16) c4-. b-.
	b2( c4) r
  }
  \repeat volta 2 {
	g2 g4( a)
	c4.( bes8) bes4( a)
	d( c bes a)
	a2( bes4) g(
	c bes a g)
	f bes2( a4)
	\grace a8 g4. g8 g4. f8
	f( e d c d e f g)
	a2( c)
	f, r
	r1
% 3
	r2 r4 f
	d'2 bes4.( g8)
	e2 c'\sfp ~
	c8.( e,16 f8. g16) a8-. r g-. r 
	f4 r d'2\sfp ~
	d8.( fis,16 g8. bes16) a4( g8. a16)
	bes4 r f'2\sfp ~
	f8.( a,16 bes8. d16) a8 r a16( g f g)
	g2( f4) r
	}
}

violinoII = \relative c' {
  \repeat volta 2 {
	f2_\markup{\italic "sotto voce"}( e)
	f r4 c(
	d e f a)
	g2 f
	e1 ~
	e4( d f2)
	e4( a) g-. f-.
	f2( e4) r
  }
  \repeat volta 2 {
	e2 e4( f)
	g2.( f4)
	bes( a g fis)
	fis2( g4) e(
	a g f e)
	f( des c2)
	d4 d2( g,4)
	g2 r
	f'( e)
	f r
	r1
% 3
	r2 r4 a,
	f'2 d4.( bes8)
	g2 r8. g16( a8. bes16)
	c4 r8. d16 f8-. r e-. r
	f4 r r8. a,16( bes8. c16)
	d4 r8. g16 f4( e)
	f r r8. c16( d8. ees16)
	f4 r8. bes16 f8 r f16( e d e)
	e2( f4) r
	}
}

viola = \relative c' {
  \repeat volta 2 {
	c2_\markup{\italic "sotto voce"}( bes)
	a r4 a(
	g c bes a)
	c( e) c2
	c1
	a2 g4( b8 d)
	c4( f) e-. d-.
	d2( c4) r
  }
  \repeat volta 2 {
	c2. c4
	c1
	bes4( c d) <c d> 
	<c d>2( <bes d>4 c) ~
	c( d c bes)
	a e'8.( f16 g4 f)
	f f2( d4)
	c2 r
	c( bes)
	a r
	r1
% 3
	r2 r4 c4
	g2.( d'4)
	c2 r8. e,16 f8.( g16)
	a4 r8. bes16 c8-. r bes-. r
	a4 r r8. fis16( g8. a16)
	bes4 r8. d16 c4-. c-.
	f, r r8. a16( bes8. c16)
	d4 r8. g,16 c8 r bes r
	bes2( a4) r
	}
}

violoncello = \relative c {
  \repeat volta 2 {
	f2_\markup{\italic "sotto voce"}( c)
	d r4 a(
	bes c d f)
	e( c) f2
	c2.( a4)
	d2( b4 g)
	a( f) g-. g-.
	c2 ~ c4 r
  }
  \repeat volta 2 {
	c2 c4( f)
	e2.( f4)
	r2 r4 d
	g d g, bes(
	a bes c cis)
	d( g e f)
	bes,2( b)
	c r
	f( c)
	d r
	R1*2
	bes2. bes4
	bes2 r
	a4 r8. bes16 c4-. cis-.
	d r r2
	bes4 r8. g16 c4-. c-.
	d4 r r2
	d4 r8. bes16 c8 r c r
	c2( f,4) r
	}
}

contrabasso = \relative c {
  \repeat volta 2 {
	f2_\markup{\italic "sotto voce"}( c)
	d r4 a(
	bes c d f)
	e( c) f2
	c2.( a4)
	d2( b4 g)
	a( f) g-. g-.
	c2 ~ c4 r
  }
  \repeat volta 2 {
	c2 c4( f)
	e2.( f4)
	r2 r4 d
	g d g, bes(
	a bes c cis)
	d( g e f)
	bes,2( b)
	c r
	f( c)
	d r
	R1*2
	bes2. bes4
	bes2 r
	a4 r8. bes16 c4-. cis-.
	d r r2
	bes4 r8. g16 c4-. c-.
	d4 r r2
	d4 r8. bes16 c8 r c r
	c2( f,4) r
	}
}
