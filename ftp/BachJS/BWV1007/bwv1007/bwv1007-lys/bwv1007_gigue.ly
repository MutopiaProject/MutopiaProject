\version "2.18.2"

gigue = \context Staff \relative c' {

	\time 6/8
	\key g \major
	\set Staff.midiInstrument = "cello"

    %\tempo 4 = 90
    \repeat volta 2 {
	    \partial 8 d8 
	    g d e e c d | d g d b g d' |
	    g16(a b8 a) a16(b c8 b) | \acciaccatura g,8 <b' d,>4.^\trill~<a d,>4 a8 |
	%6
	    b fis(g) g( e) g | a e(fis) fis( d) fis | g b g e b d |
	    cis( e a) a,4 e'8 | f( e g) g( f a) | a( g bes) bes( a g) |
	%12
	    f( e d) a( d cis) | d a( fis!) d4 } \break \repeat volta 2 { a''8 | 
	    a fis g g e fis |
	    fis16( g a8) fis d c'(b) | b g a a fis g | g16(a b8) g e d'(c) |
	    a d(c) d, c'(b) | g c(b) c, b'(a) | g( fis e) b( e dis) |
	    e b(g) e4 g'8 | a( fis g) cis16(d e8 fis,) | g( e f) b16( c d8 e,) |
	    f( d e) a16( b c8 a) | fis!16( g a8 fis) d4 a'8 | bes( a c) c( bes d) |
	    d( c ees) ees(\( d) c\) | bes( a g) d( g) fis | g b,!16(c d8) g,( b) d |
	    g e16(f g8) b,(c) e | a fis!16(g a8) cis,(d) fis | b g16(a b8) dis,(e) c' |
	    e,(fis) d' fis,(g) e' | d, e16(fis g a b8) g fis |
	    g d( b) g4
	}
}
