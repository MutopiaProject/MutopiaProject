\version "2.16.1"
%\include  "mozart-hrn3-defs.ly"

allegro =
	
	\relative c'
{
	\time 4/4
	\key c \major
	\compressFullBarRests
	\override Score.MetronomeMark #'extra-spacing-width = #'(5 . 0)
	\partial 4
	r4 
	|
	R1*4
	c'2^"Tutti" g-\tweak #'stencil ##f \p   %sets the initial volume for midi, preventing warning in v2.16.1 -- the tweak hides the dynamic mark
	c, r
	R1*1
	r8  g'[ g g]  g[ g e c]
	g'4 g, r2
	R1*18 \break
	r2 r4 g'4^"Solo" |
	\mark "A"
	e'4. ( c8)  f[ (d c  b) ]
	 b[( c)] g4 r8  g[ c e]
	g2.   g16[( f e  f)]
	dis4 ( e4) r8  c8[-. c-. c-.]
	c4.(  d16[ e]  f4  e)
	a,( d g, c)
	d-. d-. \grace { \override Flag #'stroke-style = #"grace" e16( \revert Flag #'stroke-style }
        d8.)[ c16 d8. e16]
	c4 r r2
	R1*3
	c,2 ~  c8[ e g c]
	 c[  b ] b4 r2 \noBreak
	 c,8[ ( e) g c]  e[( g) e c]
	 c[( b)] b4 r2
	c4.( g8 e'4. c8)
	 g'[( d) ] d4 r4 d
	 d8[ ( c)] c4.(  d16[ e]  d8[  c)]
	 c8[(\trill  b)] b4 r2 |
	d2( ~   d8[ e16 d]  c8[  b)] |
	 b[( a)] a4 r8  a[ a a]
	a4( cis e  g)
	\grace { \override Flag #'stroke-style = #"grace" g16( \revert Flag #'stroke-style }
        fis8)[( e16  d)] d4-. r2 | 
	\mark "B"
	R1*3
	r2 r4  d8[(_\markup{\italic \bold "con espressione"} b) ]
	 a[(  g) d'(  b)]  a[(  g) e'(  c) ]
	 b8[(  a)] a4 r4  a8[ a]
	 a[( \< b c  cis\!\> ]  d4  c\!)
	 ais8[( b)] r8  b  b[(_\cresc c)] r c
	 cis[ ( d)] r4 r2 
	 g,1\f ~ g2 ~  g8[ a16 b]  c[( d) e c]
	%% 64
	f4-. d-. b-. g-.
	R1

	c,2\p e4 g c e\cresc g4. e8 |
	d4.\f  e16[ fis]  g[ ( fis) e d]  c[( b) a g]

	<< a1(\trill
	  { s2 \grace { \override Flag #'stroke-style = #"grace" g16[ a] \revert Flag #'stroke-style }
        } >>
	\mark "C"
	 g4) r r2
	R1*15
	\mark "D"
	bes2\mf d4 f
	g,2^~  g8[ g' es c]|
	bes4(  a4.)  c8[( d  es)]
	cis4( d) r8  bes[ (c  d)]
	es2 ( d4) r
	es2 ( d4) r \pageBreak
	 c8[( g' es  c)] bes4( c)
	c4.( cis8  d4) r
	R1*2
	es1~es1|
	e!
	d
	c
	c,
	e'
	e,
	c'2  b8[( a gis  a)]
	 gis8[ e gis b ] e4 r |
	r8  e,[ a c] dis4 r
	r8  e,[ a c] dis4 r
	r8  e,[ g b] e4 r
	r8  fis,[ b dis] fis4 r
	r8  gis,[ b d] f4 r
	r8  g,[ b d] f4 r
	\mark  "E"
	R1*8
	r2 r8  g,[ g g]
	e'4.( c8)  f[( d c  b)]
	 b[( c)] g4 r8  g[ c e] |
	g2.   g16[( f e  f)]
	dis4( e) r8  c[-. c-. c-.]
	c4.(  d16[ e] f4  e)
	a, ( d g,  c)
	d d 
        \grace {
            \override Flag #'stroke-style = #"grace"
            e8( 
            \revert Flag #'stroke-style
        }
        d8.)[ c16 d8. e16] 
	c4 r r2
	\mark "F"
	R1*3
	c,2~ c8[ e g c]
	 c8[( b)] b4 r2
	 c,8[ e g c ]  e[ ( g) e c]
	 c[( b)] b4 r2
	c2 (bes  a)  a8[(b c  cis)]
	d2( ~  d8[ e16 d] \grace {
                             \override Flag #'stroke-style = #"grace"
                             d16\( 
                             \revert Flag #'stroke-style 
                          }
        c8\)[ b16  c)]
	\grace { \override Flag #'stroke-style = #"grace" c16 \revert Flag #'stroke-style }
        b8[( a16  g)] g4 r2 |
	R1*3
	r2 r4  g'8[( e)]
	\mark "G"
	 d[( c) g'( e)]  d[( c) a'( f)]
	 e[( d)] d4 r  d8[ d]
	d4(~  d16[ e d  e)]  g8[( f) e d] |
	c4 r r2
	R1
	c1 ~
	c |
	c8[-. c-.] r c-.  cis[( d)] r d-. |
	dis[(\cresc e)] r e-.  e[( f)] r f-. |
	g4-.\f  e-. c-. bes-. |
	g-.\ff e-. c-. r |
	a'2 ~  a8[_" "_\markup{\italic "sempre" \dynamic "f"} b16 c]  d[( e d  e)]

	
	f4. ( d8)  f8[ ( d) f d]
	c[ (e]  g2) \grace { \override Flag #'stroke-style = #"grace" f16( \revert Flag #'stroke-style }
        e8)[( d16  c)]

	<< d1\trill (
	  { s2 \grace { \override Flag #'stroke-style = #"grace" c16[ d] \revert Flag #'stroke-style }
       } >>
	
	 c4) r r2
	R1 |
	\mark "H"
	\times 2/3 {  c8[ b a ] } \times 2/3 {  g[ a b] }
	  \times 2/3 {  c[ d e] } \times 2/3 {  f[ e d] } |
	\times 2/3 {  c[ b a ] } \times 2/3 {  g[ a b] }
	  \times 2/3 {  c[ d e] } \times 2/3 {  f[ e d] }|
	c4 \times 2/3 {  r8  g'[( e)]} c4 \times 2/3 {  r8  e[ ( c)]} |
	g4 \times 2/3 {  r8  c8[( g)] } \times 2/3 {  e[ ( g) e-. ] } \times 2/3 {  c[ ( e) c-.] }|
	g4 r8 g'\f  a[ b c d]|

	<< d1(\trill
	  { s2 \grace { \override Flag #'stroke-style = #"grace" c16[ d] \revert Flag #'stroke-style }
        }  >>
	 c4) r r2
	R1*3

	c4.^\fermata_"Cadenza ad lib." ( d8) \once \override Script #'script-priority = #-100 d4.^\fermata^\trill (  c16[  d)] 
	c4 r r2
	R1*8
	r4  c8.[^"tutti"\f c16] c4 c
	c  c,8.[ c16] c4 c|
	c2 r2 \bar "|."
	
}


\score
{
	{ \transpose c' bes \allegro }
	\layout{ 
		\context{
			\Score
			\override RehearsalMark #'padding = #1
			\override MultiMeasureRest #'padding = #0.5
			\override Beam #'beam-thickness = #0.55
		}
	}
	\header { 
		piece = \markup{ \caps "   allegro"}
		opus = ""
		instrument = ""
	}
	
  \midi {
    \tempo 4 = 90
    \context{
    	    \Staff
    	    midiInstrument = #"french horn"
    }
  }


}
