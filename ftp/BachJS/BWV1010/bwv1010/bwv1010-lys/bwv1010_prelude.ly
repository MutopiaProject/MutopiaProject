\version "2.18.2"

prelude = \context Staff \relative c {
	\time 2/2
	\key ees \major
	\set Staff.midiInstrument = "cello"

	% 1
	ees8 ees'' bes g bes ees, g bes, | ees, ees'' bes g bes ees, g bes, |
	ees, des'' bes g bes ees, g bes, | ees, des'' bes g bes ees, g bes, |
	% 5
	ees, c'' aes ees aes c, ees aes, | ees c'' aes ees aes c, ees aes, |
	ees aes' f d f bes, d aes | ees aes' f d f bes, d aes |
	ees g' ees bes ees g, bes ees, |
	% 10
	d g' ees bes ees g, bes d, | c ees'' c g c ees, g c, |
	bes ees' c g c ees, g bes, | a ees'' c f, a c, ees a, |
	f ees'' c a c f, a ees |
	% 15
	bes d' bes f bes d, f bes, | aes d' bes f bes d, f aes, | 
	g des'' bes ees, g bes, ees g, | ees des'' bes g bes ees, g des |
	aes c' aes ees aes c, ees aes, |
	% 20
	g c' aes ees aes c, ees g, | f aes' d, b d aes b f |
	ees aes' f c f aes, c ees, | d aes'' f b, f' g, aes d, |
	c aes'' f c f aes, c f, |
	% 25
	b d' aes f aes d, f b, | g d'' b f aes d, f b, |
	c, ees'' c g c ees, g c, | c, ees'' c g c ees, g c, 
	c, e'' c g c e, g c, |
	% 30
	bes e' c g c e, g bes, | aes f'' c aes c f, aes e |
	f c' aes e f c f aes, | e des'' bes g bes e, g c, |
	% 34
	des bes' g e g bes, des e, | f aes' f c f aes, c f, |
	ees! aes' f c f aes, c ees, | d aes'' f d f bes, d f |
	aes d,, f bes d bes aes' f |
	% 39
	ees, g' ees bes ees g, bes ees, | g bes ees bes g' ees bes' g |
	c a, c fis a fis c' a | ees' g,, c ees g ees c' g |
	ees' fis,, a c ees c fis c |
	% 44
	a' d, fis a c a d a | g, bes' g d g bes, d g, |
	f bes' g d g bes, d g, | ees bes'' g d g bes, d g, |
	d bes'' g d g bes, d g, |
	% 49
	cis,4.^\fermata r8 r cis'16[(d] e[fis g a] |
	bes[a g fis] g[e) cis( d] e[fis g a] bes[a g a]) |
	bes[( c d c] ees [d c bes] a[ bes c bes] a[g fis g)] |
	% 52
	d,8 c'' a fis a d, fis a, | d, c'' a fis a d, fis a, |
	d, bes'' g d g bes, d g, | d bes'' g d g bes, d g, |
	% 56
	 d16[( cis'' bes! a)] bes[( cis bes a)] bes[( cis bes a)] bes[( cis bes a)] |
	 g[( bes g fis)] g[( bes g fis)] g[( bes g fis)] g[( bes g fis)] |
	 e[( g e d]) cis[( e cis b]) a[( cis a g]) fis[( a fis e)] |
	% 59
	<<{<ees'' fis,>4 ~ ees16[ d c bes] a_[ g fis e] d[c bes( a)]} \\
		<as d,>8 >> |
	<<{<d' g,>8.[( c16])} \\ <bes, d,>8 >> bes'16(a bes) g
		<<{<bes g>8.[( a16)]} \\ cis,8>> g'16(fis g cis,!) |
	<<{g'8.[( a16])} \\ <a d,>8>> g16(fis g) e fis4.^\trill( g8) |
	% 62
	g,8 bes' g d g bes, d fis, | g bes d g bes g d' f,! |
	g, des'' bes g bes e, g bes, | des g, bes e g e des' e, |
	aes, c' aes f aes c, f aes, |
	% 67
	c f aes f c' f, d' f, | a, ees'' c a! c ees, ges c, |
	ees a, c ees ges a! c ees | bes, d' ces16(bes a8) bes d ces16(bes a8) |
	% 71
	bes ces bes16(aes! g8) aes ces bes16(aes g8) |
	aes bes aes16(ges f8) ges bes aes16(ges f8) |
	ges ges fes16(ees d8) ees ges fes16(ees d8) |
	ees( ces) ees aes ces aes ees' ces |
	% 75
	aes ces aes ees ces aes f' aes, |
	c,!( a' ges' d) ees16[( ges ees d)] ees([ ges ees d)] |
	ees[(a ges f)] ges[(a ges f)] ges[( c ges f)] ges[( ees' ges, f)] |
	ges8( bes,) ees ges bes ges ees' bes |
	% 79
	ges ees bes' ges ees bes ges'( ees) |
	<<{ces'4 s2.} \\ {aes,4 s2.} \\ {fes'4~ fes16[( ges fes ges]) aes[( beses aes beses]) ces![( beses ces beses])}>> |
	aes[( ges aes ges]) fes[( ees d ees]) <<{d4.\trill ees8} \\ bes2>> |
	ees,8 ees'' bes g! bes ees, g bes, |
	% 83
	ees, ees'' bes g bes ees, g bes, | ees, des'' bes g bes ees, g bes, |
	ees, des'' bes g bes ees, g bes, | ees, c'' aes ees aes c, ees aes, |
	ees c'' aes ees aes c, ees aes, |
	% 88
	d4 ~ d16[( c bes c]) d[( ees f g] aes[ f g aes]) |
	d,[( ees f bes,]) c[ d ees f] g[ aes bes c] d[ c ees d] |
	d4( ~ d16[ bes) aes g] f[ ees d c] bes[ aes g f] |
	<<{ees''4} \\ {ees,,} \\ {g'} \\ {bes,}>> r r2 \bar "|."
}
