\version "2.11.63"

piccoloInDb = \relative c''' {
  \clef treble
  \key d \major
  \time 2/4

  \grace { a16[( b cis] } d8.)\f-> a16 b8 g | a8.-> fis16 b8 g8 | 
  fis16 e d e fis8 e | d8 r r \times 2/3 {a16( b cis)} | \bar "||"
  d8\f e fis a | d8.-> cis16 d8 b | a8. gis16 a8 fis | a4. d,16-. fis-. |
  b8 b16 b b8 d,16 fis | b8 b16 b b8 d,16 fis | 
  b8 b b cis | a4.\< \times 2/3 {a,16(\! b cis} |
  d8->) e fis a | d8.-> cis16 d8 b | a8. gis16 a8 fis | a4. fis16-. a16-. |
  cis8 cis16 cis cis8 fis,16 a | cis8 cis16 cis cis8 eis,16 gis |
  \repeat tremolo 4 cis8 | cis8 r cis4(\< | d8.->)\! a16 b8 g | a8.-> fis16 b8 g |
  fis16 e d e fis8 e | d8 e fis a | d8. a16 b8 g | a8. fis16 b8 g |
  fis16 e d e fis8 e | d8 r d4-^( |
  \repeat volta 2 { cis8) e cis4~ | cis8 cis16( d e8) d16( e | 
		    fis8) a fis4~ | fis8 fis16( g a8) gis16( a |
		    b8) a b4~ | b8\< a16( b cis8) b16( cis\! |
		    d8) d16( e fis8) fis16( e | d8\>) a fis d\! |
		    cis8 e cis4~ | cis8 cis16( d e8) d16( e |
		    fis8) a fis4~ | fis8 fis16( g a8) gis16( a | 
		    \repeat percent 2 { \acciaccatura cis8 b8) ais b4 | }
		    \acciaccatura cis8 b8 ais b b | cis8 r cis4\ff( |
		    d8.->)_\markup {\italic "giocoso"} a16 b8 g | a8.-^ fis16 b8 g |
		    fis16 e d e fis8 e | d8 e fis a |
		    d8. a16 b8 g | a8. fis16 b8 g | fis16 e d e fis8 e | 
		  }
  \alternative { { d8 r d4\laissezVibrer } { d8 r d4\p( } } | \bar "||"
  \key g \major
  d'2\p) | g,4( b | e2 | b2)
  \acciaccatura b8 a8.( gis16 a8. c16 | b4 a) | g2 | d2 |
  e4-.( e-. | e4-. fis-.) | \acciaccatura a8 g8. fis16 g8. a16 | b2 |
  \acciaccatura b8 a8.( gis16 a8. b16 | cis4) a | d2~ | d4 d, |
  d'2 | g,4( b | e2 | b2) | 
  e4( b8. a16 | g4 fis | e2 | b2) |
  fis'4 g8.( fis16) | g4 fis8.( g16) | fis'2( | e2) |
  d8( b) r4 | d8( a) r4 | g2~ | g8 r g4\ff
  \repeat volta 2 { fis8-> b-> r4 | fis8 b fis b | fis8-> b-> r4 | c!2( |
		    b8) e e dis | e8 e16 dis e dis e fis |
		    g16 fis e8 fis dis | e8 r r4 | e,8-> a-> r4 | e8 a e a |
		    e8-> a-> r4 | b2 | a8 d d cis | d8 d16 cis d cis d e |
		    fis16 e d8 e cis | d8 r r \times 2/3 { a16( b cis) } |
		    d8.-> a16 b8 g | a8. fis16 b8 g | 
		    fis16 e d e fis8 e-> | d8 r d4\ff( |
		    d'2) | g,4( b | e2) | b2 |
		    \acciaccatura b8 a8.( gis16 a8. c16 | b4 a) |
		    g2 | d2 | e4-.( e-. | e4-. fis-.) |
		    \acciaccatura a8 g8.( fis16 g8. a16 | b2) |
		    \acciaccatura b8 a8.( gis16 a8. b16 | cis4 a) |
		    d2~ | d4 d, | d'2 | g,4( b | e2 | b2) |
		    e4( b8. a16 | g4 fis | e2 | b2) |
		    fis'4 g8.( fis16) | g4 fis8.( g16 | fis'2 | e2) |
		    d8( b) r4 | d8( a) r4 |
		  }
  \alternative { {g2~ | g8 r g4 | } { g2~ | g8 r g-> r | } } \bar "|."
}

fluteInC = \relative c''' {
  \clef treble
  \key ees \major
  \time 2/4

  \grace { bes16[( c d] } ees8.)-> bes16 c8 aes | bes8.-> g16 c8 aes8 | 
  g16 f ees f g8 f | ees8 r r \times 2/3 {bes16(\f c d)} | \bar "||"
  ees8 f g bes | ees8.-> d16 ees8 c | bes8. a16 bes8 g | bes4. ees,16 g |
  c8 c16 c c8 ees,16 g | c8 c16 c c8 ees,16 g | 
  c8 c c d | bes4. \times 2/3 {bes,16(\< c d)} |
  ees8-^\! f g bes | ees8. d16 ees8 c | bes8. a16 bes8 g | bes4. g16-. bes16-. |
  d8 d16 d d8 g,16 bes | d8 d16 d d8 fis,16 a |
  \repeat tremolo 4 d8 | d8 r d4( | ees8.->) bes16 c8 aes | bes8.-> g16 c8 aes |
  g16 f ees f g8 f | ees8 f g bes | ees8. bes16 c8 aes | bes8. g16 c8 aes |
  g16 f ees f g8 f | ees8 r ees4-> |
  \repeat volta 2 { 
    <<
      { aes8 r aes4~ | aes8 r aes4( | g8) } \\
      { d8 f d4~ | d8 d16 ees f8 ees16 f | g8 } 
    >>
        bes g4~ | g8 g16( aes bes8) a16( bes |
    c8) bes c4~ | c8 bes16( c d8)\< c16( d |
    ees8)\! ees16( f g8) g16(\> f | ees8) bes\! g ees |
    <<
      { aes8 r aes4~ | aes8 r aes4( | g8) } \\
      { d8 f d4~ | d8 d16 ees f8 ees16 f | g8 } 
    >>
        bes g4~ | g8 g16( aes bes8) a16( bes) | 
    \repeat percent 2 { \acciaccatura d8 c8 b c4 | }
    \acciaccatura d8 c8 b c c | d8 r d4( |
    ees8.->)_\markup {\italic "giocoso"} bes16 c8 aes | bes8.-^ g16 c8 aes |
    g16 f ees f g8 f | ees8 f g bes |
    ees8. bes16 c8 aes | bes8. g16 c8 aes | g16 f ees f g8 f | 
  }
  \alternative { { ees8 r ees4 } { ees8 r ees4 } } | \bar "||"
  \key aes \major
  ees'2\p | aes,4( c | f2 | c2)
  \acciaccatura c8 bes8.( a16 bes8. des16 | c4 bes | aes2 | ees2) |
  f4-.( f-. | f4-. g-.) | \acciaccatura bes8 aes8. g16 aes8. bes16 | c2 |
  \acciaccatura c8 bes8.( a16 bes8. c16 | d4 bes) | ees2~ | ees4 ees, |
  ees'2( | aes,4 c | f2 | c2) | 
  f4( c8. bes16 | aes4 g | f2 | c2) |
  g'4 aes8.( g16) | aes4( g8. aes16) | g'2( | f2) |
  ees8( c) r4 | ees8( bes) r4 | aes2~ | aes8 r aes4(\ff
  \repeat volta 2 { g8->) c-> r4 | g8 c g c | g8-> c-> r4 | des2( |
		    c8) f f e | f8 f16 e f e f g |
		    aes16 g f8 g e | f8 r r4 | f,8-> bes-> r4 | f8 bes f bes |
		    f8-> bes-> r4 | ces2 | bes8 ees ees d | ees8 ees16 d ees( d ees f |
		    g16) f ees8 f d | ees8 r r \times 2/3 { bes16( c d) } |
		    ees8.-> bes16 c8 aes | bes8. g16 c8 aes | 
		    g16 f ees f g8 f-> | ees8 r ees4\ff |
		    ees'2( | aes,4 c) | f2( | c2) |
		    \acciaccatura c8 bes8. a16 bes8. des16 | c4 bes |
		    aes2 | ees2 | f4-.( f-. | f4-. g-.) |
		    \acciaccatura bes8 aes8. g16 aes8. bes16 | c2 |
		    \acciaccatura c8 bes8.( a16 bes8. c16 | d4) bes |
		    ees2~ | ees4 ees, | ees'2( | aes,4 c | f2 | c2) |
		    f4( c8. bes16 | aes4 g | f2 | c2) |
		    g'4 aes8.( g16) | aes4( g8. aes16) | g'2( | f2) |
		    ees8( c) r4 | ees8( bes) r4 |
		  }
  \alternative { {aes2~ | aes8 r aes4\ff | } { aes2~ | aes8 r aes-> r | } } \bar "|."
}

oboeOne = \relative c'' {
  \clef treble
  \key ees \major
  \time 2/4

  \grace { bes16[( c d] } ees8.->)\f bes16 c8 aes | bes8.-> g16 c8 aes8 | 
  ees'4. d8 | ees8 r r4 | \bar "||"
  \repeat tremolo 4 ees8\f | \repeat tremolo 4 ees8 | 
  \repeat tremolo 4 ees8 | \repeat tremolo 4 ees8 |
  \repeat percent 2 { ees8 ees16 ees ees4 } |
  ees8 ees f f | d2 |
  \repeat tremolo 4 ees8\f | \repeat tremolo 4 ees8 | 
  \repeat tremolo 4 ees8 | \repeat tremolo 4 ees8 |
  g8 g16 g g4 | fis8 fis16 fis fis4 | \repeat tremolo 4 g8 | aes8 r aes4( |
  \repeat percent 2 { g4) aes } | g4. f8 | ees2 |
  \repeat percent 2 { g4 aes } | g4. f8 | ees8 r ees,4->(\mf |
  \repeat volta 2 { d8) f d4~ | d8 d16( ees f8) ees16( f |
		    g8) bes g4~ | g8 g16( aes bes8) a16( bes |
		    c8) bes c4~ | c8 bes16( c d8) c16( d |
		    ees8) ees16( f g8) g16( f | ees8) bes g ees |
		    d8 f d4~ | d8 d16( ees f8) ees16( f |
		    g8) bes g4~ | g8 g16( aes bes8) a16( bes) |
		    \repeat percent 2 {\acciaccatura d8 c8 b c4 | }
		    \acciaccatura d8 c8 b c c | d8 r aes'4( |
		    g4)_\markup {\italic "giocoso"} aes( | g4 aes |
		    g4. f8 | ees2 | \repeat percent 2 {g4 aes | }
		    g4.) f8 |
		  }
  \alternative { { ees8 r ees,4 } { ees'8 r ees,4 } } | \bar "||"
  \key aes \major
  c'2_\markup {\italic "dolce"} | aes4( c | c2) | c2 | 
  des4 des | ees4 des | c2 | c2 |
  des4-.( ees-. | des4-. des-.) | c2 | ees4 ees | d2 | d4 d4 | ees2~ | ees4 ees |
  c2 | c4 c | c2 | c4 c | c4 e | f4 e | f2 | f2 |
  c2 | c2 | des2 | bes2 | 
  ees8( c) r4 | ees8( bes) r4 | \repeat tremolo 4 ees8 | ees8 r aes,4( |
  \repeat volta 2 { g8->)\ff c-> r4 | g'8 c g c | g8-> c-> r4 | g2( | 
		    c,8) f f e | f8 f16 e f e f g | aes16 g f8 g e | f8 r r4 |
		    f8-> bes-> r4 | f8 bes f bes | f8-> bes-> r4 | f2( |
		    bes,8) ees ees d | ees8 ees16 d ees d ees f | 
		    g16( f ees8) f d | ees8 r r \times 2/3 { bes16( c d) } |
		    ees8. bes'16 c8 aes | bes8. g16 c8 aes | g16 f ees f g8 f | ees8 r ees4->\ff | 
		    r8 ees16 ees ees8 ees | r8 ees r ees | r8 ees16 ees ees8 ees8 | r8 ees r ees |
		    r8 ees16 ees ees8 ees | r8 ees r ees | r8 ees16 ees ees8 ees8 | r8 ees r ees |
		    r8 f r f | r8 f r ees | r8 ees16 ees ees8 ees | r8 ees r ees |
		    r8 d16 d d8 d | r8 d r d | r8 ees16 ees ees8 ees | r8 ees r ees |
		    r8 ees16 ees ees8 ees | r8 ees r ees | r8 ees16 ees ees8 ees8 | r8 ees r ees |
		    r8 ees r e | r8 f r e | \repeat percent 2 { r8 f16 f f8 f | }
		    r8 e r e | r8 f r f | r8 f16 f f8 f | r8 f16 f f8 f |
		    r8 ees16 ees ees8 ees | r8 ees16 ees ees8 ees | }
  \alternative { { r8 ees16 ees ees8 ees | ees8 r aes,4\laissezVibrer } 
		 { ees'8 ees16 ees ees8 ees | ees8 r ees-> r } } \bar "|."
}

oboeTwo = \relative c'' {
  \clef treble
  \key ees \major
  \time 2/4
  
  \grace { bes16[( c d] } ees8.->)\f bes16 c8 aes | bes8.-> g16 c8 aes8 | 
  g4. aes8 | g8 r r4 | \bar "||"
  \repeat tremolo 4 g8\f | \repeat tremolo 4 g8 | 
  \repeat tremolo 4 g8 | \repeat tremolo 4 g8 |
  \repeat percent 2 { g8 g16 g g4 } |
  g8 g a a | bes2 |
  \repeat tremolo 4 g8\f | \repeat tremolo 4 g8 | 
  \repeat tremolo 4 g8 | \repeat tremolo 4 g8 |
  bes8 bes16 bes bes4 | c8 c16 c c4 | \repeat tremolo 4 bes8 | bes8 r bes4~ |
  \repeat percent 2 {bes4 c} | bes4. aes8 | g2 |
  \repeat percent 2 {bes4 c} | bes4. aes8 | g8 r ees4->(\mf
  \repeat volta 2 { d8) f d4~ | d8 d16( ees f8) ees16( f |
		    g8) bes g4~ | g8 g16( aes bes8) a16( bes |
		    c8) bes c4~ | c8 bes16( c d8) c16( d |
		    ees8) ees16( f g8) g16( f | ees8) bes g ees |
		    d8 f d4~ | d8 d16( ees f8) ees16( f |
		    g8) bes g4~ | g8 g16( aes bes8) a16( bes) |
		    \repeat percent 2 {\acciaccatura d8 c8 b c4 | }
		    \acciaccatura d8 c8 b c c | d8 r bes4~ |
		    bes4 c( | bes4 c
		    bes4. aes8 | g2 | \repeat percent 2 {bes4 c | }
		    bes4.) aes8 |
		  }
  \alternative { { g8 r ees4 } { g8 r ees4\p } }
  \key aes \major
  aes2 | aes4( c | aes2) aes2 | g4 g | g4 g | aes2 | aes2 |
  aes4-.( a-. | bes4-. g-.) | aes2 | c4 c | bes2 | bes4 bes | g2~ | g4 g |
  aes2 | aes4 aes | aes2 | aes4 aes | aes4 c | aes4 bes | aes2 | aes2 |
  bes2 | aes2 | bes2 | aes2 | 
  ees'8( c) r4 | ees8( bes) r4 | \repeat tremolo4 c8 | c8 r aes4(
  \repeat volta 2 { g8->)\ff c-> r4 | g8 c g c | g8-> c-> r4 | f2( | 
		    c8) f f e | f8 f16 e f e f g | aes16 g f8 g e | f8 r r4 |
		    f8-> bes-> r4 | f8 bes f bes | f8-> bes-> r4 | ees,2( |
		    bes8) ees ees d | ees8 ees16 d ees d ees f | 
		    g16( f ees8) f d | ees8 r r \times 2/3 { bes16( c d) } |
		    ees8. bes'16 c8 aes | bes8. g16 c8 aes | g16 f ees f g8 f | ees8 r des4->\ff | 
		    r8 c16 c c8 c | r8 c r c | r8 c16 c c8 c8 | r8 c r c |
		    r8 des16 des des8 des | r8 des r des | r8 c16 c c8 c8 | r8 c r c |
		    r8 des r ees | r8 des r des | r8 c16 c c8 c | r8 c r c |
		    r8 bes16 bes bes8 bes | r8 bes r bes | r8 bes16 bes bes8 bes | r8 bes r bes |
		    r8 c16 c c8 c | r8 c r c | r8 c16 c c8 c8 | r8 c r c |
		    r8 c r c | r8 c r c | \repeat percent 2 { r8 c16 c c8 c | }
		    r8 c r c | r8 c r c | r8 des16 des des8 des | r8 bes16 bes bes8 bes |
		    r8 c16 c c8 c | r8 des16 des des8 des | }
  \alternative { { r8 c16 c c8 c | c8 r aes4\laissezVibrer } 
		 { c8 c16 c c8 c | c8 r c-> r } } \bar "|."
}

bassoonOne = \relative c' {
  \clef bass
  \key ees \major
  \time 2/4
  
  \grace { bes16[( c d] } ees8.->)\f bes16 c8 aes | bes8. g16 c8 aes8 | 
  bes4. bes8 | bes8 ees r ees | \bar "||"
  \repeat percent 4 { r8\ff ees r ees | } ees2 | ees2 | r8 ees r ees | d2 |
  \repeat percent 4 { r8 ees r ees | } d2 | d2 | \repeat tremolo 4 d8 | d8 r bes4( |
  bes4)( c | bes4 c | bes4 bes | bes2) | bes4( c | bes4 c) | bes4( bes | bes8) r ees4\mf( |
  \repeat volta 2 { d4.)( d16 ees | f2) | g4.( g16 aes | bes2) |
		    c,8 bes c4~ | c8 bes16( c d8) c16( d | 
		    ees8)\> ees16( f g8) g16( f | ees8) bes\! g ees | 
		    d'4. d16( ees | f2) | g4.( g16 aes | bes2) |
		    r8 ees, ees ees | r8 e e e | r8 f f f | d8 r d4->(\< |
		    bes4)(\!_\markup { \italic "giocoso" } c | bes4 c | bes4 bes | bes2) |
		    bes4( c | bes4 c | bes4 bes 
		  }
  \alternative { { bes8) r ees4\laissezVibrer } { bes8 r ees,4 } } \bar "||"
}

bassoonTwo = \relative c' {
  \clef bass
  \key ees \major
  \time 2/4
  
  \grace { bes16[( c d] } ees8.->)\f bes16 c8 aes | bes8. g16 c8 aes8 | 
  g4. aes8 | g8 g r g | \bar "||"
  \repeat percent 4 { r8\ff g r g | } g2 | g2 | r8 g r a | bes2 |
  \repeat percent 4 { r8 g r g | } g2 | fis2 | \repeat tremolo 4 g8 | aes8 r aes4( |
  g4)( aes | g4 aes | g4 aes | g2) | g4( aes | g4 aes) | g4( aes | g8) r ees'4\mf(
  \repeat volta 2 { d4.)( d16 ees | f2) | g4.( g16 aes | bes2) |
		    c,8 bes c4~ | c8 bes16( c d8) c16( d | 
		    ees8)\> ees16( f g8) g16( f | ees8) bes\! g ees | 
		    d'4. d16( ees | f2) | g4.( g16 aes | bes2) |
		    r8 c, c c | r8 bes bes bes | r8 aes aes aes | bes8 r bes4(\< |
		    g4)(\! aes | g4 aes | g4 aes | g2) |
		    g4( aes | g4 aes | g4 aes |
		  }
  \alternative { { g8) r ees'4\laissezVibrer } { g,8 r ees4 } } | \bar "||"
}

clarinetInEb = \relative c''' {
  \clef treble
  \key c \major
  \time 2/4

  \grace { g16[( a b] } c8.)\f-> g16 a8 f | g8. e16 a8 f8 | 
  e16 d c d e8 d | c8 r r \times 2/3 {g16( a b)} | \bar "||"
  c8\f d e g | c8.-> b16 c8 a | g8. fis16 g8 e | g4. c,16( e |
  a4.) c,16( e | a4.) c,16( e | 
  a8) a a b | g4. \times 2/3 {g,16(\< a b} |
  c8->\!) d e g | c8.-> b16 c8 a | g8. fis16 g8 e | g4. e16( g16 |
  b4.) e,16( g | b4.) dis,16( fis |
  b8) b b b | b8 r b4->( | c8.->) g16 a8 f | g8.-> e16 a8 f |
  e16 d c d e8 d | c8 d e g | c8.-> g16 a8 f | g8. e16 a8 f |
  e16 d c d e8 d | c8 r c4->( |
  \repeat volta 2 { b8)\mf d b4~ | b8 b16( c d8) c16( d | 
		    e8) g e4~ | e8 e16( f g8) fis16( g |
		    a8) g a4~ | a8\< g16( a b8) a16( b\! |
		    c8) c16( d e8) e16( d\> | c8) g e c\! |
		    b8 d b4~ | b8 b16( c d8) c16( d |
		    e8) g e4~ | e8 e16( f g8) fis16( g) | 
		    \repeat percent 2 { \acciaccatura b8 a8 gis a4 | }
		    \acciaccatura b8 a8 gis a a | b8 r b4->( |
		    c8.->)_\markup {\italic "giocoso"} g16 a8 f | g8.-> e16 a8 f |
		    e16 d c d e8 d | c8 d e g |
		    c8. g16 a8 f | g8. e16 a8 f | e16 d c d e8 d | 
		  }
  \alternative { { c8 r c4->\laissezVibrer } { c8 r c4 } } | \bar "||"
  \key f \major
  c'2\p_\markup {\italic "dolce"} | f,4( a) | d2 | a2
  \acciaccatura a8 g8.( fis16 g8. bes16 | a4 g) | f2( | c2) |
  d4-.( d-. | d4-. e-.) | \acciaccatura g8 f8.( e16 f8. g16 | a2) |
  \acciaccatura a8 g8.( fis16 g8. a16 | b4) g | c2~ | c4 c, |
  c'2 | f,4( a | d2 | a2) | 
  d4 a8.( g16) | f4 e | d2 | a2 |
  e'4( f8. e16) | f4( e8. f16) | e'2( | d2) |
  c8( a) r4 | c8( g) r4 | f2~ | f8 r f4\ff
  \repeat volta 2 { e8-> a-> r4 | e8 a e a | e8-> a-> r4 | bes!2 |
		    a8 d d cis | d8 d16 cis d cis d e |
		    f16 e d8 e cis | d8 r r4 | d,8-> g-> r4 | d8 g d g |
		    d8-> g-> r4 | aes2( | g8) c c b | c8 c16 b c b c d |
		    e16( d c8) d b | c8 r r \times 2/3 { g16( a b) } |
		    c8.-> g16 a8 f | g8. e16 a8 f | 
		    e16 d c d e8 d-> | c8 r c4\ff |
		    c'2( | f,4 a) | d2( | a2) |
		    \acciaccatura a8 g8.( fis16 g8. bes16 | a4 g) |
		    f2( | c2) | d4-.( d-. | d4-. e-.) |
		    \acciaccatura g8 f8.( e16 f8. g16 | a2) |
		    \acciaccatura a8 g8. fis16 g8. a16 | b4 g |
		    c2~ | c4 c, | c'2 | f,4( a | d2 | a2) |
		    d4 a8. g16 | f4 e | d2 | a2 |
		    e'4( f8. e16) | f4( e8. f16) | e'2( | d2) |
		    c8( a) r4 | c8( g) r4 |
		  }
  \alternative { {f2~ | f8 r f4-> | } { f2~ | f8 r f-> r | } } \bar "|."
}

clarinetInBbSOne = \relative c''' {
  \clef treble
  \key f \major
  \time 2/4

  #(set-octavation 1)
  \grace { c16[( d e] } f8.)\ff-> c16 d8 bes | c8. a16 d8 bes8 | 
  a16 g f g a8 g | f8 r r \times 2/3 {c16\f( d e)} | \bar "||"
  f8-> g a c | f8.-> e16 f8 d | c8. b16 c8 a | c4. f,16 a |
  d4. f,16 a | d4. f,16 a | 
  d8 d d e | c4. \times 2/3 {c,16( d e) } |
  f8-> g a c | f8.-> e16 f8 d | c8. b16 c8 a | c4. a16 c16 |
  e4. a,16 c | e4. gis,16 b |
  \repeat tremolo 4 e8 | e8 r e4->( | f8.->) c16 d8 bes | c8.-> a16 d8 bes |
  a16 g f g a8 g | f8 g a c | f8. c16 d8 bes | c8. a16 d8 bes |
  a16 g f g a8 g | f8 r 
  #(set-octavation 0)
  f4->\f( |
  \repeat volta 2 { e8) g e4~ | e8 e16( f g8) f16( g | 
		    a8) c a4~ | a8 a16( bes c8) b16( c |
		    d8) c d4~ | d8\< c,16( d e8) d16( e\! |
		    f8) f16( g a8) a16( g\> | f8) c' a f\! |
		    e8 g e4~ | e8 e16( f g8) f16( g |
		    a8) c a4~ | a8 a16( bes c8) b16( c) | 
		    \repeat percent 2 { \acciaccatura e8 d8 cis d4 | }
		    \acciaccatura e8 d8 cis d d | e8 r e4->( |
		    f8.->)_\markup {\italic "giocoso"} c16 d8 bes | c8.-> a16 d8 bes |
		    a16 g f g a8 g | f8 g a c |
		    f8. c16 d8 bes | c8. a16 d8 bes | a16 g f g a8 g | 
		  }
  \alternative { { f8 r f4->\laissezVibrer } { f8 r f,4(\p } } | \bar "||"
  \key bes \major
  f'2)_\markup {\italic "dolce"} | bes,4 d | g2 | d2
  \acciaccatura d8 c8.( b16 c8. ees16 | d4 c) | bes2 | f2 |
  g4-.( g-. | g4-. a-.) | \acciaccatura c8 bes8. a16 bes8. c16 | d2 |
  \acciaccatura d8 c8. b16 c8. d16 | e4 c | f2~ | f4 f, |
  f'2 | bes,4( d | g2) | d2 | 
  g4( d8. c16) | bes4 a | g2 | d2 |
  a'4 bes8.( a16 | bes4) a8.( bes16) | a'2( | g2) |
  f8( d) r4 | f8( c) r4 | bes2~ | bes8 r bes'4\ff
  \repeat volta 2 { a8-^ d-^ r4 | a8-. d-. a-. d-. | a8-^ d-^ r4 | ees,!2( |
		    d8) g-. g-. fis-. | g8 g16-. fis-. g-.\< fis-. g-. a-.\! |
		    bes16-. a-. g8 a-. fis-. | g8 r r4 | g8-> c-> r4 | g8-> c-> g-> c-> |
		    g8-> c-> r4 | des2 | c,8 f f e | f8 f16 e f e f g |
		    a16 g f8 g e | f8 r r \times 2/3 { c'16( d e) } |
		    f8.-> c16 d8 bes | c8. a16 d8 bes | 
		    a16 g f g a8 g-> | f8-> r f4\ff |
		    f'2 | bes,4 d | g2 | d2 |
		    c8. b16 c8. ees16 | d4 c |
		    bes2 | f2 | g4 g | g4 a |
		    bes8.( a16) bes8.( c16) | d2 |
		    c8. b16 c8. d16 | e4 c |
		    f2~ | f4 f, | f'2 | bes,4 d | g2 | d2 |
		    g4 d8. c16 | bes4 a | g2 | d2 |
		    a'4( bes8. a16 | bes4 a8. bes16) | a2 | g2 |
		    f'8( d) r4 | f8( c) r4 |
		  }
  \alternative { {bes2~ | bes8 r bes4 | } { bes2~ | bes8 r bes-> r | } } \bar "|."
}

clarinetInBbTwo = \relative c'' {
  \clef treble
  \key f \major
  \time 2/4

  \grace { c16[( d e] } f8.)\ff-> c16 d8 bes | c8. a16 d8 bes8 | 
  a16 g f g a8 g | f8 r r \times 2/3 {c16( d e)} | \bar "||"
  f8-^ g a c | f8. e16 f8 d | c8. b16 c8 a | c4. f,16 a |
  d8 d16 d d8 f,16 a | d8 d16 d d8 f,16 a | 
  a8 a b b | c8 c c \times 2/3 {c,16( d e) } |
  f8-^ g a c | f8.-> e16 f8 d | c8. b16 c8 a | c4. a16( c16) |
  e8 e16 e e8 a,16 c | e8 e16 e e8 gis,16 b |
  e8 e e e | e8 r e4( | f8.) c16 d8 bes | c8.-> a16 d8 bes |
  a16 g f g a8 g | f8 g a c | f8. c16 d8 bes | c8. a16 d8 bes |
  a16 g f g a8 g | f8 r f4->( |
  \repeat volta 2 { e8) g e4~ | e8 e16( f g8) f16( g | 
		    a8) c a4~ | a8 a16( bes c8) b16( c |
		    d8) c d4\<~ | d8 c16( d e8)\! d16( e |
		    f8) f16( g a8) a16( g\> | f8) c a f\! |
		    e8 g e4~ | e8 e16( f g8) f16( g |
		    a8) c a4~ | a8 a16( bes c8) b16( c) | 
		    r8 f f f | r8\< fis fis fis\! |
		    r8 g g g | g8 r g4-> |
		    f8.-^_\markup {\italic "giocoso"} c16 d8 bes | c8.-> a16 d8 bes |
		    a16 g f g a8 g | f8 g a c |
		    f8. c16 d8 bes | c8. a16 d8 bes | a16 g f g a8 g | 
		  }
  \alternative { { f8 r f4->\laissezVibrer } { f8 r f4( } } | \bar "||"
  \key bes \major
  f'2\p) | bes,4( d) | d2 | r8 bes bes bes |
  r8 a16 a a8 a | r8 a r a | \repeat percent 2 {r8 bes16 bes bes8 bes | }
  r8 g r g | r8 g r a | r8 f16 f f8 f8 | d'2 | e2 | e2 | f2~ | f4 f,4 |
  f'2( | bes,4 d | d2) | bes2( | 
  bes4 fis | g4 fis | g2) | d2
  a'4( bes8. a16) | bes4( a8. bes16) | ees2 | c2 |
  f8( d) r4 | f8( c) r4 | \repeat tremolo 4 d8 | d8 r bes'4->
  \repeat volta 2 { fis8->\ff fis-> r4 | a8 d a d | fis,8-> fis-> r4 | a2 |
		    #(set-octavation 1)
		    d8 d d d | d8 d c4 | d8 d d d | d8 
		    #(set-octavation 0)
		    r8 r4 | 
		    e,8-> e-> r4 | g8 c g c |
		    e,8-> e-> r4 | g2 | 
		    \repeat tremolo 2 c8 \repeat tremolo 2 c8 | 
		    \repeat tremolo 2 c8 \repeat tremolo 2 b8 |
		    \repeat tremolo 2 c8 \repeat tremolo 2 c8 |
		    c8 r r \times 2/3 { c16( d e) } |
		    f8.-> c16 d8 bes | c8. a16 d8 bes | 
		    a16 g f g a8 g | f8 r f4\ff |
		    f2 | bes,4 d | g2 | d2 |
		    c8. b16 c8. ees16 | d4 c |
		    bes2 | f2 | g4 g | g4 a |
		    bes8.( a16) bes8.( c16) | d2 |
		    c8. b16 c8. d16 | e4 c |
		    f2~ | f4 f, | f'2 | bes,4 d | g2 | d2 |
		    g4 d8. c16 | bes4 a | g2 | d2 |
		    a'4 bes8. a16 | bes4 a8. bes16 | a'2( | g2) |
		    f8( d) r4 | f8( c) r4 |
		  }
  \alternative { {bes2~ | bes8 r bes'4 | } { bes8 f16 f f8 f | f8 r f-> r}}
}
clarinetInBbThree = \relative c'' {
  \clef treble
  \key f \major
  \time 2/4

  \grace { c16[( d e] } f8.)\ff-> c16 d8 bes | c8. a16 d8 bes8 | 
  a16 g f g a8 g | f8 r r \times 2/3 {c16( d e)} | \bar "||"
  f8-^ g a c | f8. e16 f8 d | c8. b16 c8 a | c4. f,16 a |
  d8 a16 a a8 f16 a | d8 a16 a a8 f16 a | 
  f8 f f f | e8 e e \times 2/3 {c16( d e) } |
  f8-^ g a c | f8.-> e16 f8 d | c8. b16 c8 a | c4. a16( c16) |
  e8 c16 c c8 a16 c | e8 d16 d d8 gis,16 b |
  c8 c c c | c8 r c4( | f8.) c16 d8 bes | c8.-> a16 d8 bes |
  a16 g f g a8 g | f8 g a c | f8. c16 d8 bes | c8. a16 d8 bes |
  a16 g f g a8 g | f8 r f4->( |
  \repeat volta 2 { e8) g e4~ | e8 e16( f g8) f16( g | 
		    a8) c a4~ | a8 a16( bes c8) b16( c |
		    d8) c d4\<~ | d8 c16( d e8)\! d16( e |
		    f8) f16( g a8) a16( g\> | f8) c a f\! |
		    e8 g e4~ | e8 e16( f g8) f16( g |
		    a8) c a4~ | a8 a16( bes c8) b16( c) | 
		    r8 d d d | r8\< d d d\! |
		    r8 d d d | e8 r e4-> |
		    f8.-^_\markup {\italic "giocoso"} c16 d8 bes | c8.-> a16 d8 bes |
		    a16 g f g a8 g | f8 g a c |
		    f8. c16 d8 bes | c8. a16 d8 bes | a16 g f g a8 g | 
		  }
  \alternative { { f8 r f4->\laissezVibrer } { f8 r f4( } } | \bar "||"
  \key bes \major
  f'2\p) | bes,4( d) | bes2 | r8 d, d d |
  r8 ees16 ees ees8 ees | r8 ees r ees | \repeat percent 2 {r8 d16 d d8 d | }
  r8 ees r f | r8 ees r ees | r8 d16 d d8 d8 | d'2 | bes2 | bes2 | a2~ | a4 f4 |
  f'2( | bes,4 d | bes2) | bes2( | 
  bes4 fis | g4 fis | g2) | d2
  a'4( bes8. a16) | bes4( a8. bes16) | c2 | bes2 |
  f'8( d) r4 | f8( c) r4 | \repeat tremolo 4 f,8 | f8 r bes'4->
  \repeat volta 2 { d,8->\ff d-> r4 | a'8 d a d | d,8-> d-> r4 | g2 |
		    #(set-octavation 1)
		    g8 g c c | bes8 bes bes4 | bes8 bes c c | bes8 
		    #(set-octavation 0)
		    r8 r4 | 
		    c,8-> c-> r4 | g'8 c g c |
		    c,8-> c-> r4 | f2 | 
		    \repeat tremolo 2 f8 \repeat tremolo 2 bes8 | 
		    \repeat tremolo 2 a8 \repeat tremolo 2 gis8 |
		    \repeat tremolo 2 a8 \repeat tremolo 2 bes8 |
		    a8 r r \times 2/3 { c16( d e) } |
		    f8.-> c16 d8 bes | c8. a16 d8 bes | 
		    a16 g f g a8 g | f8 r f4\ff |
		    f2 | bes,4 d | g2 | d2 |
		    c8. b16 c8. ees16 | d4 c |
		    bes2 | f2 | g4 g | g4 a |
		    bes8.( a16) bes8.( c16) | d2 |
		    c8. b16 c8. d16 | e4 c |
		    f2~ | f4 f, | f'2 | bes,4 d | g2 | d2 |
		    g4 d8. c16 | bes4 a | g2 | d2 |
		    a'4 bes8. a16 | bes4 a8. bes16 | a'2( | g2) |
		    f8( d) r4 | f8( c) r4 |
		  }
  \alternative { {bes2~ | bes8 r bes'4 | } { bes,8 d16 d d8 d | d8 r d-> r}}
}
