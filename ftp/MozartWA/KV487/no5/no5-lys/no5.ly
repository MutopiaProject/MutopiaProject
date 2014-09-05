\version "2.18.2"
\include "header.ily"

global =  {
    \time 2/2
    \key c \major
    }

hornI =  \relative c'' {
    \repeat volta 2 {
    e4-\omit\p r e8( d) d( c ) |
    c4 r8 g-.\< c-. d-. e-. f-. |
    g(\mf e) a( g) g(f) f( e) |
    e2( d4) r
    e4\p r8 e8 e(d) d(c) |
    c4 r8 g-.\< c-. d-. e-. f-. |
    g(\f c) e,( g) g( f e d )
    d2 \octaveCheck c'' c4 r4
    }
    \repeat volta 2 {
	d2-\f e g8( fis f e) d4 r8 d |
	e4 e fis fis |
	g2.( fis8 f)
	e4\p r4 e8( d) d(c) |
	c4 r8 g c16\<[ d e f]  g[ a b c] |
	g4\!_\markup { \dynamic p -- \dynamic f } e8( g) g( f e d) |
	d2(
	\octaveCheck c''
	c4) r4
    }
}
hornII =  \relative c'' {
        \repeat volta 2 {
	    c4\p r4 c8(g) g(e) |
	    e4 r r8 g-.\< c-. d-. |
	    e(\mf c) f(e) e(d) d(c) |
	    g-. g( fis g) g,4 r4 |
	    c'\p r8 c c( g) g( e) |
	    e4 r r8 g-.\< c-. d-. |
	    e4\f c8( e) e( d c g) |
	    g2( \octaveCheck e' e4) r 
	}
        \repeat volta 2 {
	    b'4\f g c g d' g, b g |
	    c4.\mf b16 c d8 c b a |
	    g2 r
	    c4\p r c8(g ) g( e) |
	    e16[ g c e] c[ g e g] c,4 r |
	    e'4_\markup { \dynamic p -- \dynamic f } c8( e) e( d c g) |
	    g2( e4) r
	}
    }


\score {
  \new StaffGroup   <<
    \new Staff << \global \hornI >>
    \new Staff << \global \hornII >>
    >>
  
  \midi {
    \tempo 4 = 60
    }

  \layout { }
  
  \header {
    piece = \markup { \hspace #9 "No. 5. Larghetto"  }
  }
}
