violinOneAllegro = \relative c'' {
  \clef treble
  \key f \major
  \time 3/4
 \repeat volta 2 {
  \partial 16 * 5
  f16\f \times 2/3 {a8( f c)} |
  a4 r c | 					%1
  bes r8 r16 e \times 2/3 {g8( e bes)} |
  g4 r4 bes | 					%3
  a r8 r16 a16 \times 2/3 {c8( a f)} |
  f'2.~ |					%5
  f |
  f2.~ |					%7
  f4 r8 r16 f16 \times 2/3 {d8( bes g)} |
  f2( \grace {a16} g4) |			%9
  f4 r4 r |
  R2. |						%11
  g'2.~\p | 
  g4 \grace {f16} e4 \grace {d16} c4 |		%13
  c2.( |
  b4) r4 r |					%15
  f'2.~ |
  f4 \grace {e16} d4 \grace {c16} b4 |		%17
  d2.( |
  c4) r r |					%19
  a'8.(\trill g32 a) r4 r |
  g8.(\trill f32 g) r4 r |			%21
  d2(~ d8 e16 f) |
  e4 r4 r |					%23
  a8.(\trill g32 a) r4 r |
  g8.(\trill f32 g) r4 r |			%25
  d2(~ d8 e16 f) |
  e4 r4 r |					%27
  cis8( d e d g f) |
  a4( a, d) |					%29
  c?2.( |
  b4) r4 r					%31
  r g'-.\p g-. |
  e( f) r |					%33
  r f-. f-. |
  d( e8) r16 e16\f \times 2/3 {g8( e c)} |	%35
  bes'?2 bes,,?4 |
  a r8 r16 f'' \times 2/3 {a8( f d)} |		%37
  c'4( gis a |
  e f d) |					%39
  c2( \grace {e16} d4) |
  c8 r g'\p r g r |				%41
  g r g r g r |
  g4 r8 r16 e, \times 2/3 {g8( f e)} |		%43
  d4 r8 r16 d \times 2/3 {f8([ e d)]} |
  \mypartial #5 #16 
  c4 r8 r16 | 			%45
 }
 \repeat volta 2 {
  \mypartial #7 #16 
  r16 r4 |			

  \set Score.currentBarNumber = #46
  c8-.\f r e-.\p r g-. r  |
  aes r f r r4 |				%47
  c'8-.\f r aes-.\p r f-. r |
  e r g r r4 |					%49
  c,8-.\f r e-.\p r g-. r  |
  aes-. r e-. r f-. r |				%51
  des r c r b r |
  c4 r r |					%53
  r4 r8 r16 c'16\f \times 2/3 {g'8( f e)} |
  d2.~ |					%55
  d4 r8 r16 d16 \times 2/3 {f8( e d)} |
  c2.~ |					%57
  c4 r8 r16 c16 \times 2/3 {a'8( f c)} |
  bes2.~ |					%59
  bes4 r8 r16 bes16 \times 2/3 {g'8( e bes)} |
  a4 r r |					%61
  r4 a'-.\p a-. |
  fis( g) r |					%63
  r4 g-. g-. |
  e( f?) r4 |					%65
  r4 f-. f-. |
  d4( ees) r |					%67
  r4 ees-. ees-. |
  cis4( d8) r16 d,16 \times 2/3 {bes'8( a g)} |	%69
  d'2.~ |
  d2( bes'4 |					%71
  a g f) |
  f8( e) g( e) f( d) |				%73
  c4 r8 r16 f16\f \times 2/3 {a8( f c)} |
  a4 r c | 					%75
  bes r8 r16 e \times 2/3 {g8( e bes)} |
  g4 r4 bes | 					%77
  a r8 r16 a16 \times 2/3 {c8( a f)} |
  f'2.~ |					%79
  f~ |
  f2.~ |					%81
  f4 r8 r16 f16 \times 2/3 {d8( bes g)} |
  f2( \grace {a16} g4) |			%83
  f4 r4 r |
  R2. |						%85
  f'2.~\p |
  f4 \grace {ees16} d4 \grace {c16} bes4 |	%87
  bes2.( |
  a4) r4 r |					%89
  ees'2.~ |
  ees4 \grace {d16} c4 \grace {bes16} a4 |	%91
  c2.( |
  bes4) r4 r |					%93
  g'8.(\trill f32 g) r4 r |
  f8.(\trill e?32 f) r4 r |			%95
  c2~( c8 d16 ees) |
  d4 r4 r |					%97
  d8.(\trill c32 d) r4 r |
  c8.(\trill bes32 c) r4 r |			%99
  g2~( g8 a16 bes) |
  a4 r r |					%101
  fis8( g a g c bes) |
  d4( d, g) |					%103
  f?2.( |
  e4) r r |					%105
  r c''-.\p c-. |
  a( bes) r |					%107
  r bes-. bes-. |
  g( a8) r16 a16-.\f \times 2/3 {c8( a f)} |	%109
  ees'2 ees,4 |
  d4 r8 r16 d16 \times 2/3 {bes'8( g d)} |	%111
  d'4( a bes) |
  fis8( g) a( g bes g) |			%113
  f?2( \grace {a16} g4) |
  f8 r c\p r c r |				%115
  c r c r c r |
  c4 r8 r16 a16 \times 2/3 {c8( bes a)} |	%117
  g4 r8 r16 g16 \times 2/3 {bes8( a g)} |
  f4 r8 r16 f'16\f \times 2/3 {a8( f c)} |	%119
  a4 r c |
  bes r8 r16 e16 \times 2/3 {g8( e c)} |	%121
  g4 r bes |
  a r a( |					%123
  bes) r c( |
  d) r8 r16 cis16\p \times 2/3 {d8( bes g)} |	%125
  f2( \grace {a16} g4) |
  f4 r8 r16 					%127
 }


}

violinOneAndante = \relative c'' {
	\clef treble
	\key a \minor
	\time 4/4
	\repeat volta 2 {
		a8( %{ \parenthesize %} \f c e c) b( d f d) |
		r16 c16( e) e-.  r16 c16( e) e-. 
			r16 gis,16( b) b-. r16 gis16( b) b-. |
		a4 a'8.( e16) d8.( b16) gis16( b d f) |
		f16( e) r16 e([ c) a]-. r16 a[( gis) f']-. 
			r16 f,[( d) d] r16 g( |
		a8[) c32( b c d]) e8( a) r8 r16 c[( a) a]-. r16 c,( |
		b1)\p |
		c8\f g'8[-.\p e-. c-.] c'8.( d32 b c8) r8 |
		<< g,,8 g'\f >> d'[-.\p b-. g]-. f'8.( g32 e f8) r8 |
		e8.(\f f32 g) f16( e) d( c) b8-. c-. f-. e-. |
		e8.(\trill d32 e) d4 r8 g8 g g |
		g8.( c16) g4 r8 g8 g g |
		g8.( c16) g4 r8 c,8( d e) |
		f8.( g16) a16-. a-. a-. a-. a( g) a( f) e8( d) |
		r8 c( d e) f8.( g16) a16-. a-. a-. a-. |
		a( g) a( f) e8( d) c e8[(\p dis e]) |
		b4( c d e) |
		d( c) b8-. e[( dis e]) |
		b8 \grace {d16} c16( b32 c) b8 \grace {d16} c16( b32 c)
			b8-. gis'\f b-. r8 |
	}
	\break
	\repeat volta 2 {
		r2 bes,2\p |
		a4.( d8) e4~ e8.( f32 g) |
		f4 r4 a,2 |
		g4.( c8) d4~ d8.( e32 f) |
		e8 dis[( e b?]) c( gis a b) |
		gis4 r4 r2 |
		R1
		a8(\f c e c) b( d f d) |
		r16 c8 e a e16 r16 d8 b gis b16 |
		a4~ a16( c e a) a( gis) gis8-. r16 d16( b' gis) |
		a8( e c a) 
			\once \override Beam #'auto-knee-gap = #0 d( f) d,( f) |
		e8-. a'( gis a) r8 c,( b c) |
		b1\p
		a8-.\f e'[-.\p c-. a]-. a'8.( b32 gis a8) r |
		<<e,8 e' b\f>> b[-.\p gis-. e]-. d'8.( e32 cis d8) r8 |
		c?8.(\f d32 e) d16( c) b( a) gis8-. a-. d-. c-. |
		c8.(\trill b32 c) b4 r8 e8 e e |
		e8.( a16) e4 r8 e8 e e |
		e8.( a16) e4 r8 a,8( b cis) |
		d8.( e16) f16-. f-. f-. f-. f( e f d) c?8( b) |
		r8 a8( b cis) d8.( e16) f16-. f-. f-. f-. |
		f( e f d) c?8( b) a8 a\p[( gis a]) |
		e4( f g? a) |
		g( f) e8 e'[( dis e])
		a,4.( \grace { c16 } b8) a-. e'[( dis e]) |
		a,4.( \grace { c16 } b8) a-. e'-.\f a-. r8
	}
}

violinOneMinuetto = \relative c''' {
	\clef treble
	\key f \major
	\time 3/4
	\repeat volta 2 {
    \grace g16
    \partial 4 f8(\p e16 d) |
    c4( a bes) |
    c4 r f8.(\trill e32 f) |
    a4 r4 f8.(\trill e32 f) |
    c4 r \grace {d16} c8( bes16 a) |
    g4-. g( a) |
    bes4-. r g'8.(\trill f32 g) |
    bes4 r g8.(\trill f32 g) |
    e4 r r |
    r4 gis4(\f a) |
    r4 c,4(\p b) |
    r4 b'4(\f c) |
    r4 g?4(\p f) |
    e8-. r d-. r e-. r |
    f2(\fp e4) |
    e8-. r d-. r e-. r |
    a2(\fp g4) |
    r4 a16( g8.) f16( e8.) |
    cis16( d8.) e16( f8.) gis16( a8.) |
    c,?2\f \grace e16 d8( c16 d) |
    \mypartial #1 #4
    c4 r 
  }
  \repeat volta 2 {
    \mypartial #2 #4
    g'8-.\p f-. |
    e4-. e-. e-. |
    f4( d) r4 |
    R2.
    r4 r4 \grace d16 c8( bes16 a) |
    d2 \grace c16 bes8( a16 g) |
    c2 \grace bes16 a8( g16 f) |
    c4 bes'( a)|
    g4 r4 \times 2/3 { c,8(\f d e) } |
    f4 r4 \times 2/3 { e8( f g) } |
    a4 r4 \times 2/3 { g8( a b) } |
    c4-. d-. e-. |
    c4 r4 bes?8.\trill\f( a32 bes) |
    e4 r4 g8.\trill( f32 g) |
    bes?4 r4 r |
    R2. * 5
    r4 r \grace g16 f8(\p e16 d) |
    c4( a bes) |
    c4-. r f8.(\trill e32 f) |
    a4 r4 f8.(\trill e32 f) |
    c4 r \grace {d16} c8( bes16 a) |
    g4-. g( a) |
    bes4-. r g'8.(\trill f32 g) |
    bes4 r g8.(\trill f32 g) |
    e4 r r |
    r4 b'4(\f c) |
    r4 ees,4(\p d) |
    r4 a'4(\f bes) |
    r4 d,4(\p c) |
    a'8 r8 g r a r |
    bes2(\fp g4) |
    bes8 r8 a r bes r |
    c2(\fp a4) |
    r4 d16( c8.) bes16( a8.) |
    fis16( g8.) a16( g8.) bes16( g8.) |
    f?2 g8(\trill f16 g) |
    f4 r4 r |
    r4 cis16(\f d8.) c16( bes8.) |
    a16( g8.) fis16( g8.) bes16( g8.) |
    f?2 \grace a16 g8( f16 g) |
    f4 r4 \bar "||"
    \key aes \major
    c'4 
    f4( e) r4 |
    r4 r c4-. |
    b4( c) r4 |
    r4 r c\p |
    aes'2. |
    ges2. |
    f2. |
    ees?2. |
    des?2. |
    c2. |
    b16( c b c d ees d ees f g! f g) |
    aes4(\f g f) |
    ees4 r4 c(\p |
    des4) r4 b( |
    c8) r8 ees, r g r |
    c,4 r4 
  }
  \repeat volta 2 {
    ees'4\f |
    ges4( f) r4 |
    r4 r des4 |
    f4( ees) r4 |
    r4 r c4 |
    aes'2. |
    g2. |
    f2. |
    ees2. |
    des2. |
    c2.~ |
    c4( bes aes) |
    g4 r4 c-.\f |
    f4( e) r4 |
    r4 r c4-. |
    b4( c) r4 |
    r4 r c\p |
    aes'2. |
    ges2. |
    f2. |
    ees2. |
    des2. |
    c2. |
    b16( c b c d ees d ees f g f g) |
    aes4(\f g f) |
    e16( f e f g aes g aes bes c bes c) |
    des!4( c bes) |
    aes4-. r4 f(\p |
    ges4) r4 e( |
    f8) r8 aes, r c r |
    \mypartial #1 #4 f,4 r4
    \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
    \once \override Score.RehearsalMark #'self-alignment-X = #right
    \once \override Score.RehearsalMark #'direction = #-1
    \once \override Score.RehearsalMark #'Y-offset = #-15
    \mark \markup { \column { {"Da capo Tempo di Minuetto"} {"senza Ritornello."} } }
  }
}

