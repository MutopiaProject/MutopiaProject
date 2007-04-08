
\version "1.9.8"

\include "header.ly"
global = \notes {
    \time 3/4
    \key c \major
    \skip 2.* 16
    \key f \major
    \skip 2. * 16
    \key c \major
    }

hornI = \notes \relative c'' {
    \repeat volta 2 { 
    c4\f d8 e f e e( d ) d4 d |
    d e8 f g
    f f( e ) 
    e4 e | e f8 g a g |
    fis d f4. e8 |
    e8( d ) d c d e c4 r r
    }
    \repeat volta 2 {
	d4 e8 f g f dis( e) e4 r |
	g8 e c' g f e |
	g8( e) d4 r |
	c4 d8 e f e d4 e8 f g f e( g)  c,4 b |
	c4 r r 
    }
    \repeat volta 2 {
	c2.\p^"Trio"
	cis8( d) d4. g8 f( e d c d e ) |
	f-. a( g f e d ) |
	cis2 d8( a') |
	b,2 c8( g') |
	g( f) f( d) c( b) |
	c4 r r 
	}
    \repeat volta 2 {
	e2( f4)|
	\times 2/3 { g8 e c } bes4 a |
	e'2(\p f4) |
	\times 2/3 { g8 e c } bes4 a c2. |
	cis8\mf( d) d4.(g8) |
	f( e d c d e ) f4 r r 
	}
}


hornII = \notes \relative c' {
    \repeat volta 2 {
	r4 r c \f g' r8 g( fis g) |
	g,4 r g' |
	c r8 c g e |
	c4 r c'8 b |
	a d a b c4 |
	c8 g r4 g |
	c,8 c' g e c4  |
	}
    \repeat volta 2 {
	b'8 g
	\repeat unfold 2 { b g } |
	\repeat unfold 3 {c g } |
	c g e' g, c g |
	e'( c) b4 g |
	r4 c, c'~ c b8 a b4 c4 e, g c, g c
    }
    \repeat volta 2 {
	a'4\p r a
	bes r bes |
	g c bes a r r |
	r8 g a g fis4 |
	r8 f g f e4 |
	f4 r g |
	c,8 c' g e c4 |
	}
    \repeat volta 2 {
	\times 2/3 { c8\mf e g } bes4 a |
	e2( f4)
	\times 2/3 { c8\p e g } bes4 a |
	e2( f4)
	a4 f a bes\mf f bes g c c, f8 a c a f4_\markup { \italic \halign #0.65 "Menuetto da capo" }
	}
    }



\score {
   \new StaffGroup <<
    \new Staff << \global \hornI >>
    \new Staff <<\global \hornII >>
    >>
   \midi { \tempo 4 = 120 }
   \paper { }
\header {
    piece = "No. 11.  Menuetto"
    footer = "Mutopia-2004/01/12-400"
}
   }
