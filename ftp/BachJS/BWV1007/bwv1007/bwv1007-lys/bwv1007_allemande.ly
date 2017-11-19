\version "2.18.2"

allemande = \context Staff \relative c'' {

	\time 2/2
	\key g \major
	\set Staff.midiInstrument = "cello"

	\repeat volta 2 {
	    \partial 16 b16 |
	% 1
	    \acciaccatura g,16 <b' d,>4~<b d,>16[ a( g fis]) g16[(d e fis] g[a b c)] |
	    d[(b g fis]) g[( e d c]) b[(c) d e] fis[g a b] |
	    c[(a g fis] g[) e( fis g] a,[) d( fis g] a[ b) c a] |
	    b[(g) g(d)] d[(b) b(g)] g8.[(b'16]) c[( b a g]) |
	    a[(b) c a] g[(fis g a)] dis,8.[(c'16]) b[(a g fis]) |
	% 6
	    g[(e) e(b)] b[(g) g(e)] e8.[(b'16]) e[(g fis a]) |
	    g[(fis e fis] g[)cis g(fis] g[)cis e,(fis] g[e) a,( g']) |
	    fis8[ d16( e]) fis[(d) g( e]) fis[(d) fis g] a[(b c! a]) |
	    b[(d, g, d'] b'[g) a fis] g[e g a] b[(cis d b]) |
	    cis[(e, g, e'] cis'[a) b d] cis[a d b] cis[a e'( g,]) |
	% 11
	    fis8.[( d'16]) a[(g fis e)] d[(a') g e] fis d a'( c,!]) |
	    b8.[( g'16]) d[(c b a)] g[(d') c a] b[g d'( fis,]) |
	    e[(g a b] cis[d) e fis] g[a cis d] e[ a, g'8] |
	    d,16[(g') fis e] fis[(d a d]) d,[(fis a c!]) b8.[( a16]) |
	    \acciaccatura g,16 <b' d,>8.[( a16]) g16[(fis e d']) cis[(e) a, g] fis[(d) a cis] |
	% 16
	    d,8.[(a'16]) d[(fis) a cis] d[a fis d] d,8. } \repeat volta 2 { a''16 |
	    <a d,>4~a16 fis(g a) d,16[(e fis g] a[fis d c]) |
	    b[(d g fis] g[a b c] d[) b( a) g] f[(e f d']) |
	    e,8[(^\trill d16 c16] c'16[) a,( b c] d,[) c''( b c]) d[( b c a]) |
	    gis8[(^\trill fis!16 e16] b'16[) d,( c b]) c[( e fis gis]) a[( c b a] |
	% 21
	    d8[) b,16(c)] d[(e f a,]) gis8.[( e'16]) b'[( d) c b] |
	    \acciaccatura a,16 <c' e,>8.[( b16]) a16[( g! f e]) f[( d) bes' a] bes[( c d a]) |
	    gis[(a b! e,]) f[( d c b)] c[( e a b]) <b e,>8.[(^\trill a16]) |
	    \acciaccatura a,16 <a' e>8.[( b16]) c16[(b c g]) fis[( g) a e] d[( c b a]) |
	    g[( d'fis) c'] b[a g a] b[( c) d e] d[( e f d]) |
	% 26
	    e8[ g,] c,16 d'[( c b]) a[( b) c e] d8.[( c16]) |
	    d8[ a] b,16 c'[( b a]) g[( fis e g]) b[( d) c b] |
	    c8[ g] a,16 e'[( fis g]) fis[( a b c)] d,[( c) b a] |
	    g[( d' fis a] c[) a( fis d])
		    \acciaccatura g,16 <b' d,>8.[( d,16]) e16[( g) a cis] |
	    d[( a fis e] d[) f( g b]) c![( g e d] c[) e( a c]) |
	    fis,[( a) c e] d8.[( c,16]) b[( g') a, g] d[( a' g' fis]) |
	    g[( g,) b d] g[ b d( fis]) g[d b g] g,8. 
	}
}
