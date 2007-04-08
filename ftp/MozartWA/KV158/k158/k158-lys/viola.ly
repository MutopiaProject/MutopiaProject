
violaAllegro = \relative c' {
  \clef alto
  \key f \major
  \time 3/4
 \repeat volta 2 {
  \partial 16 * 5
  r16 r4 |        					%Upbeat
  r4 r d\f |        					%1
  d r r |
  r r c |        					%3
  c r r |
  r c a |        					%5
  r c f |
  r d bes |        					%7
  r d bes |
  r a( e4) |        					%9
  f r8 r16 f' \times 2/3 {a8( f d)} |
  b4 r r|        					%11
  r g\p g |
  r g g4 |         					%13
  r g g |
  r g g |        					%15
  r g g |
  r g g4 |        					%17
  r b b |
  r c c, |        					%19
  r f'8( c) a'( f) |
  r4 e8( c) g'( e) |        				%21
  d4( b) \grace {g'16} f8( e16 d) |
  c4 r r |        					%23
  r f8( a) f( a) |
  r4 e8( c) g'( e) |        				%25
  d4( b) \grace {g'16} f8( e16 d) |
  c4 r r |        					%27
  f r r |
  r a, f' |        					%29
  g2.~ |
  g4 r8 r16 g\f \times 2/3 {a8( fis g)} |        	%31
  g,4 r r |
  r4 r8 r16 g' \times 2/3 {a8( fis g)} |        	%33
  g,4 r r |
  R2. |        						%35
  r4 g g |
  f r r |        					%37
  R2. * 2        					%38,39 
  e'2( \grace{g16} f4) |
  e4 r8 r16 e16\p \times 2/3 {g8( f e)} |        	%41
  d4 r8 r16 b'16 \times 2/3 {d8( c b)} |
  c8 r g r g r |        				%43
  g r g r g r |
  \mypartial #5 #16 
  <<e4 g,4>> r8 r16 |        		%45
 }
 \repeat volta 2 {
  \mypartial #7 #16 
  r16 r4 |        		

  c8-.\f r e-.\p r g-. r  |
  aes r f r r4 |        				%47
  c'8-.\f r aes-.\p r f-. r |
  e r g r r4 |        					%49
  c,8-.\f r e-.\p r g-. r  |
  aes-. r e-. r f-. r |        				%51
  des r c r b r |
  c4 r r |        					%53
  g'2.\f |
  a4 fis d |        					%55
  g2.~ |
  g4 e c |        					%57
  f?2.~ |
  f4 d bes |        					%59
  e2.~ |
  e4 r8 r16 a-. \times 2/3 {bes8( gis a)} |        	%61
  a,4 r r |
  r4 r8 r16 a'-. \times 2/3 {bes8( gis a)} |        	%63
  a,4-. r r |
  r4 r8 r16 d-. \times 2/3 {e8( cis d)} |        	%65
  d,4 r r |
  r4 r8 r16 f'-. \times 2/3 {g?8( e f)} |        	%67
  f,4 r r |
  R2. |        						%69
  r4 r8 r16 d'16\p fis4 |
  g d r |        					%71
  r4 d d |
  c c c |        					%73
  g r r |
  r4 r d'\f |        					%75
  d r r |
  r r c |        					%77
  c r r |
  r c a |        					%79
  r c f |
  r d bes |        					%81
  r d bes |
  r a( e) |        					%83
  f r8 r16 f' \times 2/3 {ees8( f g)} |
  a,4 r r|        					%85
  r4 f\p f |
  r4 f f |        					%87
  r4 f f |
  r4 f f |        					%89
  r4 f f |
  r4 f f |        					%91
  r4 a a |
  r4 bes bes |        					%93
  r4 g'8( ees) d( ees) |
  r4 f8( d) bes( f) |        				%95
  ees'4( c f,) |
  f8( bes) d( bes f' d) |        			%97
  r4 f8( d) bes( f) |
  r4 a8( f) c'( a) |        				%99
  bes4( g c) |
  c4 r r |        					%101
  bes r r |
  r g( d) |        					%103
  c4 c c |
  c r8 r16 c''16-.\f \times 2/3 {d8( b c)} |        	%105
  c,4 r r |
  r4 r8 r16 c16-.\f \times 2/3 {d8( b c)} |        	%107
  c,4 r r |
  R2.        						%109
  r4 f' f |
  f r r |        					%111
  R2. * 2         					%112,113
  r4 c( bes?) |
  a r8 r16 a16\p \times 2/3 {c8( bes a)} |        	%115
  g4 r8 r16 e'16 \times 2/3 {g8( f e)} |
  f8 r c r c r |        				%117
  c r c r c r |
  c4 r r |        					%119
  r r fis\f |
  d r r |        					%121
  r r e |
  c r fis,( |        					%123
  g) r a( |
  bes) r r |        					%125
  r a(\p e) |
  f? r8 r16        					%127
 }
}

violaAndante = \relative c' {
        \clef alto
        \key a \minor
        \time 4/4
        \override TupletNumber #'transparent = ##t
        \override TupletBracket #'transparent = ##t
        \repeat volta 2 {
        	R1 * 2
        	a8( %{\parenthesize%} \f c e c) b( d f d) |
        	r16 c16( e) e-.  r16 c16( e) e-. 
        		r16 gis,16( b) b-. r16 gis16( b) b-. |
        	c32( d c b a8) a'32( gis a f e8)
        		r16 c'( a) a-. r16 e( fis) fis-. |
        	b,4\p e2 f?16( e f e) |
        	e8\f r8 r4 e16-.\p c-. e-. c-.  e-. c-. e-. c-. |
        	<<d8 g,\f>> r8 r4 d'16-.\p b-. d-. b-.  d-. b-. d-. b-. |
        	c4\f r4 g4 b8-. c-. |
        	c8.(\trill b32 c) b4
        		\times 2/3 { d16[( e d]) b[( c b]) d[( e d]) b[( c b]) }
        	\times 2/3 { e[( f e]) c[( d c]) e[( f e]) c[( d c]) 
        		d[( e d]) b[( c b]) d[( e d]) b[( c b]) } |
        	\times 2/3 { e[( f e]) c[( d c]) e[( f e]) c[( d c]) }
        		e8-. c( d e) |
        	c8.( e16) f16-. f-. f-. f-. f( e) f( d) c8( b) |
        	r8 e8( f g) a( c,) b16( d) d( f) |
        	f( e) f( d) c8( b) c4 r4 |
        	R1
        	r8 e8(\p dis e) b4 r4 |
        	e8( dis e dis e) e-.\f e-. r8 
        }
        \break
        \repeat volta 2 {
        	r4 cis16\p cis cis cis d4:16 e: |
        	cis: d: d16 d g g e e cis cis |
        	d2:16 d4: c?: |
        	b: c16 c e e c c f f d d b b |
        	a4 r4 r8 b8( a fis) |
        	gis4 r8 dis8( e) d( c fis) |
        	e-. e'( f cis d dis e gis,) |
        	a4\f r4 r2 |
        	R1
        	a8(\f c e c) b( d f d) |
        	r16 c8 e a e16 r16 d8 b gis b16 |
        	c4 r4 fis r |
        	b,4(\p d e f?) |
        	e8\f r8 r4 c16-.\p a-. c-. a-. c-. a-. c-. a-. |
        	b8\f r8 r4 b16-.\p gis-. b-. gis-. b-. gis-. b-. gis-. |
        	a4\f r4 e4 gis8-. a-. |
        	a8.(\trill gis32 a) gis4 \times 2/3 { b'16[( c b])
        		gis[( a gis]) b([ c b]) gis[( a gis]) } |
        	\times 2/3 { c[( d c]) a[( b a]) c[( d c]) a[( b a])
        		b[( c b]) gis[( a gis]) b([ c b]) gis[( a gis]) } |
        	\times 2/3 { c[( d c]) a[( b a]) c[( d c]) a[( b a]) }
        		e8-. a,[( b cis]) |
        	d8.( e16) f16-. d-. d-. d-. d( c? d b) a8( gis) |
        	a-. c( d e) f8.( g16) a16( f) d( b) |
        	c8( d16 b) a8 gis a4 r4 |
        	R1
        	r8 a(\p gis a) e4 r4 |
        	r8 c'4( gis8) a4 r4 |
        	r8 fis8( e d) c c'-.\f e-. r8 
        }
}

violaMinuetto = \relative c' {
    \clef alto
    \key f \major
    \time 3/4
    \repeat volta 2 {
        \grace s16
        \partial 4 r4
        a4\p( f g) |
        a4 r4 r |
        R2. * 2
        e4-. e( f) |
        g4-. r4 r |
        R2.
        r4 r \grace a'16 g8 f16 e |
        f4\f r4 r |
        d4\p r4 r |
        c4\f r4 r |
        g4\p r4 r |
        e'8-. r8 d-. r e-. r |
        f2(\fp e4) |
        e8-. r8 d-. r e-. r |
        a2(\fp g4) |
        g,4 r4 r |
        a4 r4 r |
        g2\f b4 
        c4 r4
    }
    \repeat volta 2 {
    r4
    R2.
    r4 r a'8-.\p g-. |
    f4-. f-. f-. |
    g4( e) r4 |
    a4( g) r4 |
    g4( f) r4 |
    r4 c4 c |
    c4 r4 \times 2/3 { c8(\f d e) } |
    f4 r4 \times 2/3 { e8(\f f g) } |
    a4 r4 \times 2/3 { g8(\f a b) } |
    c4 d e |
    c4 r4 r |
    R2. * 5
    r4 r c,8.(\trill b32 c) |
    e4 r4 g8.(\trill f32 g) |
    bes4 r4 r |
    a,4(\p f g) |
    a4-. r4 r |
    R2. * 2
    e4-. e( f) |
    g4-. r4 r |
    R2.
    r4 r \grace a'16 g8( f16 e) |
    f4\f r4 r |
    f4\p r4 r |
    g,4\f r4 r |
    g'4\p r4 r |
    c,8 c c c c c |
    c8\fp c c c c c |
    c8 c c c c c |
    c8\fp c c c c c |
    f4 r4 r |
    d4 r4 r |
    a2( bes4) |
    a4 r4 r |
    f4\f r4 r |
    r4 fis16( g8.) bes16( g8.) |
    c2 e,4 |
    f? r4 \bar "||" \key aes \major r4
    r4 r e'-. |
    f4( e) r4 |
    r4 r e4-. |
    b4( c) r4 |
    r4 f4\p f |
    r4 aes,4 aes |
    r4 aes4 aes |
    r4 c4 c |
    r4 bes4 bes |
    r4 c4 c |
    d4 r4 r |
    d2.\f |
    ees4 r4 g,4(\p |
    aes4) r4 f( |
    ees8) r8 ees' r g r |
    c,4 r4
    }
    \repeat volta 2 {
        r4
        r4 r c'4\f |
        ees4( des) r4 |
        r4 r bes4 |
        des4( c) r4 |
        f,2.\p |
        e2 ees4 |
        d2 des4 |
        c2. |
        bes2. |
        aes2. |
        e2( f4) |
        c4 r4 r |
        r4 r e'-.\f |
        f4( e) r4 |
        r4 r e-. |
        b4( c) r4 |
        r4 f4\p f |
        r4 aes,4 aes |
        r4 aes4 aes |
        r4 a4 a |
        r4 bes4 bes |
        r4 c4 c |
        d4 r4 r |
        d2.\f |
        des?4 r4 r |
        g4( c,) c-. |
        c4 r4 c(\p |
        des4) r4 bes4( |
        aes8) r8 aes r c r 
        f,4 r4 
        \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
        \once \override Score.RehearsalMark #'self-alignment-X = #right
        \once \override Score.RehearsalMark #'direction = #-1
        \once \override Score.RehearsalMark #'Y-offset = #-10
        \mark \markup { \column { {"Da capo Tempo di Minuetto"} {"senza Ritornello."} } }
    }
}
