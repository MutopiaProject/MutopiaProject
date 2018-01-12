\version "2.18.2"

courante = \relative c' {
	\time 3/4
	\key ees \major
	\set Staff.midiInstrument = "cello"

	\repeat volta 2 {
	    % 1
	    \partial 8 ees8 | ees bes c aes f d' | \acciaccatura d8 ees4( ees,16) d'( ees f g f g a) |
	    bes8 f g ees c a' | \acciaccatura a8 bes4( bes,8) aes!(^\trill g ees') |
	    % 5
	    \times 2/3{aes,[( bes c])} \times 2/3{c[( d ees])} \times 2/3{f[( g aes])} |
	    \times 2/3{g,[( aes bes])} \times 2/3{bes[( c d])} \times 2/3{ees[( f g])} |
	    \times 2/3{f[( g aes]} \times 2/3{g[) f ees]} \times 2/3{bes[( ees d])} |
	    ees4( ees,16) bes'( c d ees d ees f) |
	    % 9
	    g8 ees g d c bes' | \acciaccatura bes8 a4( ees,16) c'( d ees f ees f g) |
	    a8 f a ees d c' | bes4( d,,16) d'( ees f g f g a) |
	    % 13
	    bes8 g bes f ees d' | c a c g f ees' | d bes d a g f' |
	    ees c ees a, f c' | d bes d g, ees c' |
	    % 18
	    <<{
	        a4 ~ \times 2/3 {a8[ f( g]} \times 2/3{a[ bes c])} |
	        c4~ \times 2/3{c8[ a( bes]} \times 2/3{c[ d ees])} |
	        ees4~ \stemDown \times 2/3{ees8[ c( d]} \times 2/3{ees[ f g])} \stemNeutral
	        g4 f8( ees d c)
	    } \\ {
	        f,4 s2 |
	        ees4 s2 |
	        <c a'>4 s2 |
	        a'4 s2
	    }>> 
	    % 22
	    d8 bes ees, c' f, a | bes4( bes,16) bes'( a g f g f ees) |
	    \times 2/3{d8[( bes c])} \times 2/3{d[( ees f])} \times 2/3{f[( g a])} |
	    bes8 d, <<{c4.( bes8)} \\ f2>> | bes2 r8
	}
	\repeat volta 2 {
	    % 27
	    f'8 | f d g ees a, f' | d4( bes8) c16( d ees d ees f) |
	    g8 ees aes f b, g' | ees4( c,16) g''( a b c b c d) |
	    % 31
	    ees8 d ees c ees bes! | ees aes, ees' g, f ees' |
	    d c d bes d aes | d g, d' f, ees d' |
	    c bes c aes c g | c f, c' ees, d f |
	    % 37
	    aes g aes f aes ees | aes d, aes' c, b d |
	    f ees f d f c | f b, f' a, g b' | c ees f, d' g, b |
	    % 42
	    c4( c,,16) g'( a b c b c d) | e( d e f g f g aes!) bes!( aes bes g) |
	    \times 2/3{aes8[( g f])} \times 2/3{f[( ees d])} \times 2/3{d[( c bes])} |
	    % 45
	    bes16(c d ees f ees f g) aes( g aes f) |
	    \times 2/3{g8[( f ees])} \times 2/3{ees[( d c])} \times 2/3{c[( bes aes])} |
	    aes8 c'16 bes aes bes aes g f g f ees |
	    % 48
	    d ees d c bes c bes aes g aes g f | ees8 ees'' bes16( aes g f) ees8 bes |
	    g des'' bes16( aes g f) ees8 des' |
	    % 51
	    aes, des' c16(bes aes g) f8 c' | g, c' bes16( aes g f) e8 bes' |
	    f, bes' aes16(g f ees!) d8 aes' | ees, aes' g16(f ees d) ees8 g |
	    % 55
	    a, c ees ges a c |
	    <<{
	        d,4~ \times 2/3 {d8[ bes( c]} \times 2/3 {d[ ees f])} |
	        f4~ \times 2/3 {f8[ d( ees]} \times 2/3 {f[ g aes])} |
	        aes4~ \times 2/3{aes8[ f( g]} \times 2/3{aes[ bes c])} |
	        c4 bes8( aes g f)
	    } \\ {
	        bes,4 s2 |
	        aes4 s2 |
	        <f d'>4 s2 |
	        d'4 s2 |
	    }>>
	    % 60
	    g8 ees aes, f' bes, d | ees4( ees,16) bes'( c d ees d ees f) |
	    \times 2/3{g8[( ees f])} \times 2/3{g[( aes bes])} \times 2/3{bes[( c d])} |
	    ees8 g, <<{f4.( ees8)} \\ bes2>> | <<{ees2} \\ {ees,} \\ {bes'}>> r8
	}
}
