\version "2.18.2"

bourreeI = \relative c' {
	\time 2/2
	\key ees \major
	\set Staff.midiInstrument = "cello"

	\repeat volta 2 {
	    % 1
	    \partial 4 ees16(f g aes | bes4) c8 aes bes4 c8 g |
	    aes4 f( f,) d'16(ees f g | aes4) bes8 g aes4 bes8 f |
	    g4 ees( ees,) ees'16(f g aes | bes4) bes,16(c d ees f4) aes |
	    % 6
	    aes8(g) f ees f4 ees16(f g aes | bes4) bes,16(c d ees f4) aes |
	    aes8(g) f ees f4 f16(g a bes | c4) a16(bes c d ees4) f,16(g a bes |
	    c4) a16(bes c d ees4) d8 c |
	    % 11
	    d bes g bes ees, c' f, a | bes4 f bes, 
	}
	\repeat volta 2 {
	    bes16(c d ees |
	    f4) g8 ees f4 bes8 f | g4 ees ees, aes'16(g f ees |
	    d4) f16(ees d c b4) d16(c b a |
	    % 16
	    g8 d') f b d4 g,16(f ees d | ees4) c,16(d ees f g4) d''16(c b a |
	    b4) g,16(a b c d4) g'16(f ees d | ees4) ees16(d c b c4) c16(bes aes! g |
	    % 20
	    aes4) aes16(g f ees d4) c'8 b | c aes f aes d, c' g b |
	    c4 g, c, c'16(d e f | g4) aes8 f g4 c8 g | bes( aes g f) ees'( d c bes) |
	    % 25
	    ees4 ees,16(f g aes bes4) c | ees,8(d) c d bes4 bes16(c d ees |
	    f4) d16(ees f g aes4) bes,16(c d ees |
	    f4) d16(ees f g aes4) ees16(f g aes |
	    bes4) g16(aes bes c des4) ees,16(f g aes |
	    % 30
	    bes4) g16(aes bes c des4) c8 bes | c bes bes aes bes g g, g'16( aes |
	    bes8) g16( aes bes8 aes16 g) aes8( f) f, aes' |
	    g16(f ees d) ees8 bes' g16(f ees d) ees8 ees' |
	    % 34
	    aes,16[(g f g] aes[g f g]) aes[(g f ees] d[c bes aes)] |
	    g8( ees') c' aes bes4 c8 g | aes4 f f, c''16(bes aes g |
	    f4) aes16(g f ees d4) f16(ees d c | bes8 d) f aes f'4 ees16(d c bes |
	    % 39
	    ees4) ees,16(f g aes bes4) c | ees,8(d) c d bes4 ees'16(d c bes |
	    ees4) ees,16(f g aes bes4) c | des16( c bes8 c4.) bes16(aes bes[ aes g8)] |
	    aes16( g f8 g4.) f16(ees f[ ees d8)] |
	    % 44
	    ees8 bes g bes ees,4 bes'16(c d ees |
	    f4) d16(ees f g aes4) bes,16(c d ees | f4) d16(ees f g aes4) g8 f |
	    g bes ees g, f ees bes d' | <<{ees2.} \\ {ees,,} \\ {g'} \\ {bes,}>>
	}
}
