\version "2.18.2"
\include "header.ly"
global =  {
    \time 2/4
    \key c \major
    
    }

hornI =  \relative c'' {
    \repeat volta 2 {
    c4\f c d4. e8( f) d c b
    c16-. e-. g-. e-.
    c8 c |
    c4 c | d4. e8( f) d c b |
    c4 r
}
\repeat volta 2 {
    e8 c g' e
    d4. dis8( e8) c g' e | d2
    g8 f e dis e fis g a g4 fis g r 
}
    \octaveCheck g''
    g,8\p\< a b c \! d4 r |
    b8\< c d e \! f4 r
    f\mf r
    f4.\fermata\f a8_\markup { \center-column { \italic rall. } } |
    g\> e f d\! |
    \repeat volta 2 {
	c4^\markup { \italic { a tempo }}  c
	d4. e8(f) d c b |
	c16 e g e
	c8 c |
	c4\mf c d4. e8( f) d c b c4 r 
	}
    e4 f8( d) g( e) c4
    e4\p f8(d)

    %% stoesser has dotted half notes? 
    g2\fermata
    cis,4 cis d8( a' f d) |
    c4 e8( d) c4 r |
    e4\f f8( d) |
    g(e) c4 |
    e4 f8(d)
    g2\fermata |
    \octaveCheck g''
    cis,4\p cis d8( a' f d)
    c4 e8( d) |
    c4 r8 g' |
    g4. e8 |
    e4. c8 |
    d d c d e4 r8 g\p g4. e8 e4. c8 d8 c d e
    | c4 r
    
\bar "|."    
    
}
hornII =  \relative c' {
    \repeat volta 2 { 
    e4\f e g2 g4 g e4 r |
    e4 e g2 g,4 g c4 r |
}
        \repeat volta 2 {
	    c'4 g b g c g b g b2 c d4 d g, 4 r
}
    R2*2
    g8\< a b c\! d4 r8 d
    b\mf d b g g,4.\f \fermata r8
    R2
    \octaveCheck c'
    \repeat volta 2 {
	e'4\p e g2  |
	g4 g | e r4 |
	e\mf e | g2 | g,4 g | c r  |
	    
}
    \octaveCheck c'
    
    c'4 g  |
    e2 |
    
    % no \p in 2nd voice? 
    c'4\p g |
    e2\fermata |
    bes'4( a8 g) |
    f2 |
    g4 g, c r
    c'\f g e2 c'4 g e2\fermata
    bes'4(\p a8 g ) |
    f2 | g4 g, |
    c r8 e'\f |
    e4. c8 c4. e,8 g4 g8 g c4 r8 e\p |
    e4. c8 | c4. e,8 |
    g4 g, | c4 r
    }



\score {
   \new StaffGroup <<
    \new Staff << \global \hornI >>
    \new Staff <<\global \hornII >>
    >>
   
  \midi {
    \tempo 4 = 116
    }


   \layout { } 
\header {
    piece = "No. 8. Allegro"
    footer = "Mutopia-2004/01/12-397"
}
   }
