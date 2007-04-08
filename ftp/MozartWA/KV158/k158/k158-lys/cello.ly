
celloAllegro = \relative c {
  \clef bass
  \key f \major
  \time 3/4
 \repeat volta 2 {
  \partial 16 * 5
  r16 r4 |						%Upbeat
  r4 r fis \f |						%1
  g r r |
  r r e |						%3
  f? r r |
  r f f |						%5
  r a a |
  r bes bes |						%7
  r bes, bes |
  r c c |						%9
  f r8 r16 f \times 2/3 {a8( f d)} |
  b4 r r |						%11
  c\p r r | 
  c r r |						%13
  d r r |
  d r r |						%15
  g, r r |
  g r r |						%17
  c r r |
  c r r |						%19
  f r r |
  e r r |						%21
  b2.( |
  c4) r r |						%23
  f r r |
  e r r |						%25
  b2.( |
  c4) r r |						%27
  f r r |
  r d( f) |						%29
  g g g |
  g, r8 r16 g'\f \times 2/3 {a8( fis g)} |		%31
  g,4 r r |
  r r8 r16 g'\f \times 2/3 {a8( fis g)} |		%33
  g,4 r r |
  R2. |							%35
  r4 e' e |
  f r r |						%37
  R2. * 2						%38,39
  r4 g g, |
  c r r |						%41
  g'\p r r |
  c r r |						%43
  g r r |
  \mypartial #5 #16
  c,4 r8 r16 |				%45
 }
 \repeat volta 2 {
  \mypartial #7 #16
  r16 r4 |			

  c8-.\f r e-.\p r g-. r  |
  aes r f r r4 |					%47
  c'8-.\f r aes-.\p r f-. r |
  e r g r r4 |						%49
  c,8-.\f r e-.\p r g-. r  |
  aes-. r e-. r f-. r |					%51
  des r c r b r |
  c4 c c\f |						%53
  e e e |
  fis d fis |						%55
  g g f? |
  e c e |						%57
  f4 f e |
  d bes d |						%59
  e e d |
  cis4 r8 r16 a'-. \times 2/3 {bes8( gis a)} |		%61
  a,4 r r |
  r4 r8 r16 a'-. \times 2/3 {bes8( gis a)} |		%63
  a,4-. r r |
  r4 r8 r16 d-. \times 2/3 {e8( cis d)} |		%65
  d,4 r r |
  r4 r8 r16 f'-. \times 2/3 {g?8( e f)} |		%67
  f,4 r r |
  R2. |							%69
  r4 bes'\p a |
  g r r |						%71
  r bes,( b) |
  c c c |						%73
  c r r |
  r r fis\f |						%75
  g r r |
  r r e | 						%77
  f r r |
  r f f |						%79
  r a a |
  r bes bes |						%81
  r bes, bes |
  r c c |						%83
  f, r8 r16 f'16 \times 2/3 {ees8( f g)} |
  a,4 r r |						%85
  bes4\p r r |
  bes4 r r |						%87
  c4 r r |
  c4 r r |						%89
  f,4 r r |
  f4 r r |						%91
  bes4 r r |
  bes4 r r |						%93
  bes4 r r |
  bes4 r r |						%95
  f2.( |
  bes4) r4 r |						%97
  bes'4 r r |
  f4 r r |						%99
  c2.( |
  f4)  r r |						%101
  bes,4 r r |
  r bes( g) |						%103
  c c c |
  c r8 r16 c'16-.\f \times 2/3 {d8( b c)} |		%105
  c,4 r r |
  r4 r8 r16 c16-.\f \times 2/3 {d8( b c)} |		%107
  c,4 r r |
  R2.							%109
  r4 a' a |
  bes? r r |						%111
  R2. * 2						%112,113
  r4 c' c, |
  f r r |						%115
  c\p r r |
  f r r |						%117
  c r r |
  f r r |						%119
  r r d\f |
  g r r |						%121
  r r c, |
  f r fis,( |						%123
  g) r a( |
  bes) r r |						%125
  r4 c\p c |
  f,? r8 r16						%127
 } 
}

celloAndante = \relative c {
	\clef bass
	\key a \minor
	\time 4/4
	\repeat volta 2 {
		R1 * 3
		a8( %{\parenthesize%} \f c e c) b( d f d) |
		r16 c16( e) e-.  r16 a16( c) c-. 
			r16 a16( f) f-. r16 a16( dis,) dis-. |
		e2.(\p d?4) |
		c8\f r8 r4 r2 |
		b8\f r8 r4 r2 |
		c4\f r4 f8-. e-. d-. c-. |
		g'4 g, g' r4 |
		c,4 r4 g' r |
		c,4 r4 c8 c'[( b bes]) |
		a8.( g16) f4 r8 f8 g g, |
		c c'( b bes) a8.( g16) f16( d) d( bes?)
		c8 f g g, c4 r4 |
		r2 r8 e8(\p dis e) |
		gis,4( a) e' r4 |
		e e e8-. b'-.\f gis-. r8 |
	}
	\repeat volta 2 {
		R1
		r8 a-.\p f-. d-. g-. e-. cis-. a-. |
		d4 r4 r2 |
		r8 g8-. e-. c?-. f-. d-. b-. g-. |
		c4 r4 r8 e( f dis) |
		e4 r4 r8 e,( f dis) |
		e-. e'( f cis d dis e gis,) |
		a4\f r4 r2 |
		R1 * 2
		a8(\f c e c) b( d f d) |
		c4 r dis r |
		e4(\p f e d?) |
		c4\f r4 r2 |
		gis4\f r4 r2 |
		a4\f r4 d8-. c-. b-. a-. |
		e'4 e, e' r4 |
		a4 r e r |
		a,4 r a8 a'[( gis g]) |
		f8.( e16) d4 r8 d8 e e, |
		a8-. a'( gis g) f8.( e16) d8( b16 gis) |
		a8 d e e, a4 r4 |
		r2 r8 a'(\p gis a) |
		e4( f) a,-. r4 |
		dis4( e) a, r4 |
		dis,4( e) a8-. a'-.\f a,-. r8

	}
}

celloMinuetto = \relative c {
    \clef bass
    \key f \major
    \time 3/4
    \repeat volta 2 {
        \grace s16 
        \partial 4 r4
        a4(\p f g) |
        a4 r4 r |
        R2. * 2
        e'4-. e( f) |
        g4 r4 r |
        R2. * 2 |
        f4\f r4 r |
        g4\p r4 r |
        a4\f r4 r |
        b,4\p r4 r |
        c8-. r8 b-. r c-. r |
        a'2(\fp g4) |
        g8-. r8 f-. r g-. r |
        f2(\fp e4) |
        e,4 r4 r |
        f4 r4 r |
        r4 g'\f g,
        c4 r4 
    }
    \repeat volta 2 {
        r4
        R2.
        r4 r f8-.\p e-. |
        d4-. d-. d-. |
        e4( c) r4 |
        fis4( g) r4 |
        e4( f?) r4 |
        r4 e4( f) |
        c4 r4 \times 2/3 {c8(\f d e)} |
        f4 r4 \times 2/3 {e8( f g)} |
        a4 r4 \times 2/3 {g8( a b)} |
        c4 d e |
        c4 r4 r |
        R2. * 2
        r4 r des4 |
        f,4( e) bes'!-. |
        des,4( c) des' |
        f,4( e) r4 |
        R2. * 2
        a,4(\p f g) |
        a4-. r4 r |
        R2. * 2
        e4-. e( f) |
        g4 r4 r |
        R2. * 2 
        f'4\f r4 r |
        bes,4\p r4 r |
        g'4\f r4 r |
        e4\p r4 r |
        f8 r8 e r f r |
        g2(\fp e4) |
        g8 r8 f r g r |
        a2(\fp f4) |
        a,4 r4 r |
        bes4 r4 r |
        r4 c4( cis) |
        d4 r4 r |
        bes4\f r4 r |
        R2.
        r4 c4 c,4
        f4 r4 \bar "||"
        \key aes \major
        r4
        r4 r c''4-. |
        b4( c) r4 |
        r4 r c,4-. |
        f4( e) r4 |
        f2.\p |
        ees?2. |
        des?2. |
        a2. |
        bes2. |
        aes?2. |
        g4 r4 r |
        b2.\f |
        c4 r4 ees,(\p |
        f4) r4 g( |
        c8) r8 ees r g r |
        c,4 r4 
    }
    \repeat volta 2 {
        r4
        r4 r a'\f |
        c4( bes) r4 |
        r4 r g4 |
        bes4( aes) r4 |
        R2. * 8
        r4 r c-.\f |
        b4( c) r4 |
        r4 r c,4-. |
        f4( e) r4 |
        f2.\p |
        ees?2. |
        des2. |
        c2. |
        bes2. |
        aes2. |
        g4 r4 r |
        b2.\f( |
        bes!4) r4 r |
        e2.( |
        f4) r4 aes,(\p |
        bes4) r4 c( |
        f8) r8 aes, r c r
        f,4 
        \once \override TextScript #'staff-padding = 5
        r4_\markup { \right-align \column { {"Da capo Tempo di Minuetto"} {"senza Ritornello."} } }
        \once \override Score.RehearsalMark #'break-visibility = #begin-of-line-invisible
        \once \override Score.RehearsalMark #'self-alignment-X = #right
       % \once \override Score.RehearsalMark #'break-align-symbol = #'staff-bar
       % \once \override Score.RehearsalMark #'direction = #-1
       % \once \override Score.RehearsalMark #'Y-offset = #-15
        %\mark \markup { \column { {"Da capo Tempo di Minuetto"} {"senza Ritornello."} } }
    }
}
