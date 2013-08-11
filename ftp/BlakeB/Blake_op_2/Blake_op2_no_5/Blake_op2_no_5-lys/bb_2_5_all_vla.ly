\version "2.16.0"

viola_minuetto = \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \tempo "Tempo di Minuetto"
  \time 3/4
  \clef alto
  \key g \major

  \partial 4

  g'16[( a b c]) d4.( e16[ f]) e8-|[ d-|] d16[( c b a]) a4 fis16[( g a b]) c4.( d16[ e]) d8-|[ c-|] c16[( b a g]) g4 d'16[( b c a])  g4-.( g-. g-.)

  << { c2 b4 a a a a2 } \\ { g2. g4-.( g-. g-.) g8[( e]) fis4 } >> r4 e16[( fis gis a]) b8[( c16 d]) c8-|[ b-|] a4 a, r d16[( e fis g]) a8[( b16 c]) b8-|[ a-|] g4 g, r4

  << {d'8 s e s d s  } \\ { b8\p[( g) c( g) b( g]) } >> e'2\rfz( d4) c2( b4) a\f a a d16[ d' a fis] d4 r d16[ d' a fis] d4 r fis8[( g16 a] b[ cis d cis]) b[( a g fis])

  fis8[( a,) e'( a,) d( a]) e'16[( g) a-.( g-.]) cis,16[( g') a-.( g-.])  a,16[( g') a-.( g-.])  a,[( fis') a( fis]) d'[( fis,) a( fis]) a,[( fis') a( fis]) a,[ e' cis e] a,[ e' cis e] a,[ e' cis e] cis4( d8) r8 g16[( fis e d])

  a16[( g') a-.( g-.]) cis,16[( g') a-.( g-.])  a,16[( g') a-.( g-.])  d[( fis) a( fis]) d'[( fis,) a( fis]) a,[( fis') a( fis]) g,8[ g'] b g,4( gis8) a4 r16 a16[ b cis] d[ e fis g] a[ fis e d] cis[ d e fis] g[ a b c] 

  d8[( a]) a4 r R2. d,16[( fis) a( fis]) a[( fis) a( fis]) d[( fis) a( fis]) g,[( g') b( g]) b[( g) b( g]) g,([ g') b( g]) cis,[( e) a( e]) a[( e) a( e])  cis[( e) a( e]) d16[( fis) a( fis]) d'[( fis,) a( fis]) d16[( fis) a( fis])

  d16[( fis) a( fis]) a[( fis) a( fis]) d[( fis) a( fis]) g,[( g') b( g]) b[( g) a( b]) a[( g) fis( e]) d[( fis) e( g]) fis[( a) g( gis]) a8[ a,] << { d'4( cis c) b } \\ { d,2.\p  d4 } >> \grace { a'32 } g16[( fis g a]) b8-|[ g-|] fis4-| r r 

  a,8[( a') fis-| d-|] \grace { fis32 } e16[( d e fis]) d4 d,\fermata  \bar ":|:" 

  d'16[( e fis g]) a4.( b16[d]) b8-|[ a-|] a16[( g fis e]) e4 r16 e[ b-| g-|] e[ g b e] g8 r8 r4 fis16[( g) fis( g]) dis4( e8.[) fis16-|] 


  g4.( a16[ b]) a8-|[ g-|] g16[( fis e d]) d4 d,8[ \times 2/5 { d'16( e fis e d]) } 
  \times 2/3 { a8[( fis') a-|] }
  \times 2/3 { g8[( fis) fis-|] }
  \times 2/3 { e8[( d) fis-|] }
  g4 g16[( fis e d]) cis[( d e cis]) d[( fis a fis]) d4 r d'8[( a]) a8-| fis16( a]) g[( e) cis( e])

  d8[( fis]) r8 fis8-| e[( g]) fis8\ff << { a4 a a8 } \\ { fis4 fis fis8 } >>  g8\p[ g,] << { e'8 s d s } \\ { c8[^( g) b^( g]) } >> e'2\rfz( d4) << { e2 e4 } \\ { cis2\f cis4 } >> cis4( d8) r8 r4 << { d8 s e s d s } \\ { b8\p[^( g) c^( g) b^( g]) } >> e'2\< d4\!

  cis4\f( d c) b8[( d) b( d) a( d]) g,[ b d g d b] a[ d c d a d] g, r r16 b16[ c d] e[ d e fis] g4 g, r

  r8 c r b r a r16 g-|[ b-| d-|] g8-|[ b16( d]) c[( b) a( b]) r8 c, r b r a r16 g-|[ b-| d-|] g8-|[ b16( d]) c[( b) a( b]) \grace { b16( } c8.[) d16] 
  \times 4/6 { e8[ d c b a g] }
  \times 2/3 { g8[( fis) a-|] }
  \times 2/3 { a8[( g) b-|] }
  \times 2/3 { b8[( a) b-|]( }
  c8)[ c,]( e) c4 cis8 

  d4 r16 d,-|[ e-| fis-|] g-|[ a-| b-| c-|] d[ b a g] fis[ g a b] c[ d e fis] g8[( d]) d4 r R2.

  g,16[( b) d( b]) d[( b) d( b]) g[( b) d( b]) c,[( c') e( c]) e[( c) e( c]) c,[( c') e( c]) g16[( b) d( b]) d[( a) d( a]) fis[( a) d( a]) g16[( b) d( b]) g'16[( b,) d( b]) g16[( b) d( b])

  g16[( b) d( b]) d[( b) d( b]) g[( b) d( b]) c,[( c') e( c]) e[( c) d( e]) d[( c) b( a]) g[( b) a( c]) b[( d) c( cis]) d8[ d,] << { g'4( fis f) e } \\ { g,2.\p g4 } >>

  \grace { d'16 } c16[( b c d]) e8-|[ c-|] b4 r r \grace { g8 } d'4( b8[) g-|] \grace { b32 } a16[( g a b]) g4 g'\fermata \bar ":|" 

}


viola_duetto_v = \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \tempo "Allegro con Spirito"
  \time 2/2
  \clef alto
  \key g \major

  \partial 4 
  r4 g8[ a16( b] c[ d e fis]) g8[ b, d g]
  \times 2/3 { a8[( g a] }
  \times 2/3 { fis8[ g a]) }
  g8[( fis]) e16[( d e c]) b4 g d' d, g g' g,
  \times 2/3 { g8[ a b] }
  c4 r4 r2 r4 << { fis8.[ fis16] fis4 fis g } \\ { d8.[ d16] d4 c b } >> c d d, g b8.[ d16]

  \times 4/6 { g8[( b a g a b]) }
  \clef treble
  c4 << {e8.[ e16] e4 d c } \\ { c8.[ c16] c4 b a } >> \grace { d4^( } a'2)
  \times 2/3 { a8[( fis) d-|] } g[( d]) d4.( e16[ d]) c8-|[ b-|] b\trill[( a]) a4 r2
  \clef alto
  g,8\p[( b) d( g]) e[( g) e( g]) d\rfz[( g) d( g]) c,[( g') c,( g']) b,4 r fis d g g' g, r g'\p fis e a,\< d a\! cis\f a d d, r2
  \times 4/6 { d''8[ a g fis e d] }
  \times 4/6 { cis8[ e d cis b a] }
  d8\p[( a) fis'8.( e16]) e8[( a,) g'8.( fis16]) \grace { fis8\rfz } d'4. cis16[( b])
  \times 2/3 { a8[ b g] }
  \times 2/3 { fis8[ g e] }
  d8\p[( a) fis'8.( e16]) e8[( a,) g'8.( fis16]) \grace { fis8\rfz } d'4. cis16[( b])
  \times 2/3 { a8[ b g] }
  \times 2/3 { fis8[ g e] }
  d8\f[ e16 fis] g[ a b cis] d[ cis b a] g[ fis e d] cis8[ d16 e] fis[ g a b]  cis[ d e d] cis[ b a g] fis4 a16[( g fis e]) d4 r fis d g a

  d,8 r a' r g r fis r r4
  \times 2/3 { d'8 a g }
  fis8.[ e16]
  \times 2/3 { d8 e cis }
  d8 r a' r g r fis r r4
  \times 2/3 { d'8 a g }
  \times 4/6 { fis d e fis g a }
  < d, b' >4
  \times 2/3 { g,8 b d }
  g,8[ g' e d] < cis e >4
  \times 2/3 { a8 cis e }
  a,[ a' gis g] \grace { g16 } fis16[( e fis g]) a8-.[ a-.] a4
  \times 2/3 { a8-. g-. fis-. }

  e8 r a,[( g']) < a, g' >4 
  \times 2/3 { g'8-.[ fis-. e-.] }
  d4 g a a, d16-|[ d( e\trill d]) cis16-|[ d( e\trill d]) b16-|[ d( e\trill d]) a16-|[ d( e\trill d])
  \times 2/3 { d,8[( a' d]) }
  \times 2/3 { fis8[ a cis] }
  \times 4/6 { d8[ a g fis g e] }
  d16-|[ d( e\trill d]) cis16-|[ d( e\trill d]) b16-|[ d( e\trill d]) a16-|[ d( e\trill d])
  \times 2/3 { d,8[( a' d]) }
  \times 2/3 { fis8[ a cis] }
  \times 4/6 { d8[ a g fis e d] }

  g,8[ b'] b4.\trill b8[ cis d] a,8[ cis'] cis4.\trill cis8[ d e] \grace { e32 } d16[( cis d e]) fis4( 
  \times 4/6 { fis8)[ e d8 cis b a ] }
  g8[( e']) e4(
  \times 4/6 { e8)[ d8 cis b a g] }
  \times 2/3 { fis8[ d' a] }
  \times 2/3 { b8[ g e] }
  \grace { d16[ e] } e2\trill 
  d8[( \times 2/3 { a'16 g fis] } g8[ e]) d8[( b' g a])
  d,8[( \times 2/3 { a'16 g fis] } g8[) e] d8[( b' g a])
  << { g2( fis4) } \\ { a,2. } >> \bar ":|:" 

  r4 d,8[ e16( fis]) g-|[ a-| b-| cis-|] d8[( fis) a-| d-|]
  \times 4/6 { e8[( d e cis d e]) }
  d8[( cis]) b16[( a b g]) fis4 d a' a, d d' d,
  \times 2/3 { d8[( e fis]) }
  g4 r r2 r4 << { cis8.[ cis16] cis4 cis d } \\ { a8.[ a16] a4 g fis } >> g a a, d d' d, a'

  < a, fis' d' >4.( cis'16[ b]) a4 fis << { a2 } \\ { g4.( fis8) } >> e8.[ g16] 
  \times 2/3 { fis8[( g) e-|] }
  < a, fis' d' >4.( cis'16[ b]) a4 fis << { a2 } \\ { g4.( fis8) } >> e4-| a16[( g fis e]) fis8[ a fis d] b[( d) b( d]) a[( d) a( d]) g,[( d') g,( d']) fis,4 r cis' a d, d' d, e8[( fis])

  g4 r r2 r b2\f g4 g'8[( e]) g[( a16 g]) fis8-|[ e-|] b4 b' b, r e r dis r e8[ g fis e] dis[ fis e dis] e4 r dis r e8[ g fis e] dis[ fis e dis]

  \grace { c16^( } e'8[) d16( c]) b[ a g fis] e8-|[ d16( c]) b[ a g fis] e8-|[ g16( b]) e8-|[ g-|] << { b4 c b } \\ { g4 a g } >> r8 e8 b'4 b, 
  \times 2/3 { e,8[ g b] }
  \times 2/3 { e8[ b g ] }
  e4 r r gis'\p a fis8.[( g32 a]) g8[ fis e cis] d4 c

  b8.[( d16) g8.( a16]) b8[ c16( b]) a16[( g) fis( e]) d4 d16[( fis a fis]) d4 c b\p g'8.[( fis16]) fis4 a8.[( g16]) g8\rfz( b d) c-|]
  \times 2/3 { b8[ c a] }
  \times 2/3 { g8[ a fis] }
  g4 g8.[( fis16])  fis4 a8.[( g16]) g8-|\rfz[ b,( d c])
  \times 2/3 { b8[ c a] }
  \times 2/3 { g8[ a fis] }

  g8\f[ a16 b] c[ d e fis] g[ fis e d] c[ b a g] fis8[ g16 a] b[ c d e] fis[ g a g] fis[ e d c] b[ d e fis] g[ a b c] d[ e fis g] fis[ g fis g] d,8 d'4 b16[ g] \appoggiatura { g16[ a] } a2\trill 

  \clef treble

  g16-|[ g( a\trill g]) fis16-|[ g( a\trill g]) e16-|[ g( a\trill g]) d16-|[ g( a\trill g]) 
  \times 2/3 { g,8[ d' g] }
  \times 2/3 { b8[ d fis] }
  \times 4/6 { g8[ d c b c a] }
  g16-|[ g( a\trill g]) fis16-|[ g( a\trill g]) e16-|[ g( a\trill g]) d16-|[ g( a\trill g]) 
  \times 2/3 { g,8[ d' g] }
  \times 2/3 { b8[ d fis] }
  \times 4/6 { g8[ d c b a g] }

  c,8[ e'] e4.\trill e8[ fis g] d,8[ fis'] fis4.\trill fis8[ g a] \grace { a16 } g[( fis g a]) b4( \times 4/6 { b8)[ a g fis e d] }
  c8[( a']) a4(  \times 4/6 { a8)[ g fis e d c] } 
  \times 2/3 { b8[ g' d] }
  \times 2/3 { e8[ c a] }
  \grace { g16[ a] } a2\trill

  \clef alto

  g8 r d r c r b r 

  r4 \times 2/3 { g'8[ d c] }
  b8.[ a16]
  \times 2/3 { g8[ a fis] }
  g8 r d' r c r b r r4
  \times 2/3 { g'8[ d c] }
  \times 4/6 { b8[ g a b c d] }
  < g, e' >4-|
  \times 2/3 { c8[ e g] }
  c,8-|[ c'-| a-| g-|] < fis a >4
  \times 2/3 { d8[ fis a] }
  d,8-|[ d'-| cis-| c-|] \grace { c16 } b16[( a b c]) d8-.[ d-.]

  d4-. \times 2/3 { d8-.[ c-. b-.] }
  a4-. d,8[( c']) < d, c' >4 
  \times 2/3 { c'8-.[ b-. a-.] }
  g4 c, d d, g8[( \times 2/3 { d'16 c b] } c8[ a]) g8[( e' c d])
  g,8[( \times 2/3 { d'16 c b] } c8[ a]) g8[( e' c d])
  << { c2( b4) } \\ { d,2. } >>

   \bar ":|"
 }
