\version "2.18.2"
\include "header.ily"

global =  {
    \time 3/4
    \key f \major
}
    
setBeatStructure = {
  \set Staff.beamExceptions = #'()
  \set Staff.baseMoment = #(ly:make-moment 1/4)
  \set Staff.beatStructure = #'(1 1 1)
}

hornI =  \relative c' {
  \setBeatStructure
    \repeat volta 2 {
    f2.\f
    bes2.
    a8( c) f e d c |
    c( b ) bes2 |
    a16( c) bes a bes c d e f e d c |
    c8( b ) bes2 |
    a16 f g a bes c d e f g a bes |
    c4 r g, |
    a8 f'16 d c4 b
    \octaveCheck c''
    c r r 
	}
    \repeat volta 2 {
	c2. b4 bes2 |
	a4 as2 |
	c8 (as g4) r
	c8 d16 e  f g a g f e d c |
	bes8 c16 d e f g f e d c bes |
	a8 bes16 c d e f e d c bes a  |
	c8( a) g bes a g |
	f4 r8 f g a |
	c( b) bes2 |
	a16( c16) bes a bes c d e f e d c |
	c8( b) bes2 |
	a16( c) bes a bes c d e f g a bes |
	c4 r c,  |
	d8 e16 f f,4 a8( g) \octaveCheck f' f4 r r |
	}
    \repeat volta 2 {
	\key bes \major
	
    bes4\p^"Trio" bes bes bes8( a) a2 |
    a16 g f g a bes c d es8 a, c8( bes) bes2 |
    d8( c ) bes a g  a16 bes |
    c8( bes) a g f16-. a-. c-. f-. |
    a-. f -. c-. a -. f4 g8. (a16) |
    f4 r8 f\p g a }
    \repeat volta 2 {
	\octaveCheck bes'
	% where does \< start exactly? 
	bes4 ( a as g4.\< a8 bes b\!) |
	c4 \tuplet 3/2 { g'8 f es } \tuplet 3/2 { d c bes }
	bes4( a ) r |
	bes\p bes bes |
	bes8( a) a2 |
	a16\< g f g a bes c d es8 a,\! |
	c8(b) b2 |
	c16 d  e f g8 g, g a |
	bes16 c d es f8 d bes f |
	g8 es'16 c bes4 a | a( \octaveCheck bes' bes) r 
	}

    
}
hornII =  \relative c' {
  \setBeatStructure
    \repeat volta 2 {
	r4 a\f f |
	r c' e f r r |
	r8 g8 e g c, e f4 f, r |
	r8 g' e g c, e f4 r f, |
	e r e' |
	f g g |
	c, c, r
	\octaveCheck c
	}
    \repeat volta 2 {
	r4 e' fis g d e |
	f2 b,4 c r8 c c, c' |
	c,4 r a''4 |
	a g2 |
	g4 f2 |
	a8(f) c4 r |
	f,4 a f c r8 c'  d e |
	f4 r r |
	r8 g e g c, e |
	f4 r r
	a, r4 a, |
	bes c c f f, r | 
	}
    \repeat volta 2 {
	d''\p
	\octaveCheck d'
	d d |
	d8( es) es2 es4 es es |
	es8( d) d2 |
	bes'8 \mf( a) g f e f16 g |
	a8( g ) f c a4 |
	r c c, |
	f16 a c a f4 r4 |
	}
    \repeat volta 2 {
	r4 r d'4
	es8( f ) g4\< f |
	es2\! e4 |
	f4 \tuplet 3/2 { c'8 bes a } \tuplet 3/2 { g f es }  |
	d4 d d |
	d8( es) es2 |
	es4\< es es |
	d8\! as'4 g f8 |
	e4 es2 | d4 r d |
	es f f f( d) r_" "_\markup { \halign #0.65 "Menuetto da capo" }
	}
    }

\score {
  \new StaffGroup   <<
    \new Staff << \global \hornI >>
    \new Staff <<\global \hornII >>
    >>

  \layout { \context { \Score \override SpacingSpanner.spacing-increment = #1.1 }}


  \midi {
    \tempo 4 = 100
    }
    
  \header {
     piece = \markup { \hspace #9 "No. 6.  Menuetto" } 
    }

}
