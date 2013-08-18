\version "2.16.0"

violin_minuetto = \relative c' {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \tempo "Tempo di Minuetto"
  \time 3/4
  \clef treble
  \key g \major

  \partial 4 r4
  g b gis a c8-|[ e16( c]) a8 r8 << { fis'8[ fis fis fis fis fis] } \\ {a,2. } >> g'4 b,8-|[ d16( b]) g8 r8 < b d >8[( g) < c e >8( g) < b d >8( g]) e'2( d4) < cis e >2 < cis e >4

  cis4( d8)[ e16( fis] g[ a b c]) d4.( e16[ f]) e8-|[ d-|] d16[( c b a]) a4 fis16[( g a b]) c4.( d16[ e]) d8-|[ c-|] c16[( b a g]) g8[( d']) c16[( b c a]) g4-.\p( g-. g-.) << { c2( b4) e2( d4) cis4-.( cis-. cis-.) } \\ { g2.\< g2.\! g2.\f } >>

  < fis d' >4. < d' fis >8[ < cis e > < e g >] < d fis >4. < fis a >8[ < e g > < g b >] a8( b16 cis] d[ e fis e] d[ cis b a]) a4( g\trill fis) g4( e) cis-| a'4( fis) d-| e8.[ fis16 g8 g] r g eis4( fis8)[ a,16( b] cis[ d e fis]) g4( e) cis-|

  a'( fis) d-|( b'8)[ b,( g') g,]( e'8.)[d16-|] d16[( cis b a]) a4-| r R2. r16 d,16[ e fis] g[ a b cis] d[ e fis g] a[ fis e d] cis[ d e fis] g[ a b c] d8[( a]) a4. d8 cis8[( b]) b2

  e,8[ \appoggiatura { fis16[ e dis] } e8] a4.( g8) g[( fis]) fis4. a8 d8[( a]) a4. d8 cis[( b]) b[ cis16( d]) cis[( b) a( g]) fis[( a) g( b]) a[( fis) g( e]) \appoggiatura { d16[ e] }  e4\trill d8[( d,]) e4\p( fis) g \grace { cis16 } b16[( a b cis]) d8-|[ b-|] 

  a8[( a') fis( d]) \grace { fis16 } e16[( d e fis]) d4 < a d > < a d > < a d >2 \bar ":|:" r4 dis,\p dis r \grace { b'16\f^( } b'8)[ \times 2/5 { b,16( cis dis cis b]) } e8-|[ \times 2/5 { e,16( fis g fis e]) } b'8[ b,] g16[( b e g]) b[( e g b]) a[( g) g( e])dis16[( e) dis( e]) b8.[ a16] g16[( fis e d]) cis2 r4 \grace { a'16^( } a'8)[ \times 2/5 { a,16( b cis b a]) } d8-|[ \times 2/5 { d,16( e fis e d]) } a'8[ a,]
  \times 2/3 { d8[( a fis']) }
  \times 2/3 { e8[( d a']) }
  \times 2/3 { g8[( fis d']) }
  cis16[( b a b]) cis[( d e fis]) g[( fis g e]) a4 fis16[( d fis a]) g16[( e) cis( e])


  d8[( fis]) r fis-| e[( g]) \grace { fis16 } a4 fis16[( d fis a]) g[( e) cis( e]) d8\f < d, c' >4_"mo" < d c' >4 < d c' >8 < d b' >4 g4\p g 
  << { c2( b4-.) a-.( a-. a-. a4. s8)  } \\ { g2.\< g4\!\f( g g) g8[(e fis) d'-|]  } >>  c16[( b c a]) g4-.\p( g-. g-.)
  << { c2( b4) a a2 b c4 } \\ { g2.\< g4 fis2 g\!\f a4 } >>

  \grace { b16^( } d4) b4. d8 d16[( c b c]) a4. c8 b16[ d c b] c[ d e fis] g[ fis g a] b[ g d b] g'[ d b g] c[ a fis d] c[( d) a'-.( d,-.]) b[( d) d'-.( d,-.]) a[( d) c'-.( d,-.]) g,[( b d) g-|] b-|[ d-| g-| b-|] a[( g) fis( g])

  c,,[( d) a'-.( d,-.]) b[( d) d'-.( d,-.]) a[( d) c'-.( d,-.]) g,[( b d) g-|] b-|[ d-| g-| b-|] a[( g) fis( g]) \grace { dis16^( } e8.)[ fis16] \grace { a16 }
  \times 2/3 { g8[ fis e] }
  \times 2/3 { dis8[ c b] }
  \times 2/3 { b8[( a) c-|] }
  \times 2/3 { c8[( b) d-|] }
  \times 2/3 { d8[( c) dis(] } e8)[ e,]( c')[ c,]( a'8.[ g16]) g[( fis e d]) d8 r8 r4

  R2. r16 g,[ a b] c[ d e fis] g[ a b c] d[ b a g] fis g a b] c[ d e fis] g8[( d]) d4. g8 fis8[( e]) e2 a,8[ \appoggiatura { b16[ a gis] } a8] d4.( c8) c[( b]) b4. d8 g[( d]) d4. g8

  fis8[( e]) e[ fis16( g]) fis[( e) d( c]) b[( d) c( e]) d[( b) c( a]) \appoggiatura { g16[ a] } a4\trill g\p( a b) c \grace { fis16 } e16[( d e fis]) g8-|[ e-|] d4( b8)[ g-|] \grace { b16 } a16\trill[( g a b]) g4 < d g > < d g > < d g >2 \bar ":|"

}


violin_duetto_v = \relative c' {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \tempo "Allegro con Spirito"
  \time 2/2
  \clef treble
  \key g \major

  \partial 4 d4
  < g, b' g' >4.( fis''16[ e]) d4 << { d4 d2 } \\ { b4 \times 4/6 { c8[^( b c a b c]) } } >> b8[( d]) c16[( b c a]) g4 g8[ g] \grace { b16 } a8[( g a d]) c2( \times 4/6 { b8)[ g a b c d] }

  << { e4 e8.[ e16] e4 d c } \\ { c4 c8.[ c16] c4 b a } >> \grace { d16^( } a'2) 
  \times 2/3 { a8[( fis d]) }
  g8[( d) e( c]) b4 a8[( d]) c16[( b a g]) g4( \times 4/6 { g8)[ d-| c-| b-| a-| g-|] } < g e' >4 r r2 r4 << { fis'8.[ fis16] fis4 fis g } \\ { d8.[ d16] d4 c b } >> g'8[( b,]) b8[ c16 b] a8-|[ g-|]

  d'4 d' d,8[ d'] c16[( b) c( a]) g2\p << { c2 b e } \\ { g,2\rfz g g } >> d'8[( b) a( g]) a4.( b16[ c]) c8[( b e d]) cis[( d c a]) g2\p 

  << { cis2 d e4.( fis16[ g]) } \\ { g,2\< fis a\f } >> 
  \times 4/6 { fis'8[ a g fis e d] }
  \times 4/6 { cis8[ e d cis b a] }
  d8[( fis]) a,4 r e8\p[( g]) fis[( a) d8.( cis16]) cis4-| e8.[( d16]) d8-|\rfz[ fis,( a g])
  \times 2/3 { fis8[ g e] }
  \times 2/3 { d8[ e cis] }
  d4-|\p d8.[( cis16]) cis4-| e8.[( d16]) d8-|\rfz[ fis( a g])
  \times 2/3 { fis8[ g e] }
  \times 2/3 { d8[ e cis] }
  d4 r r2

  e8-|\f[ fis16( g]) a-|[ b-| cis-| d-|] e[ fis g fis] e[ d cis b] a8-|[ b16( cis]) d[ e fis g] a[ b cis d] cis[ d cis d] a,8-| a'4 fis16[( d]) \appoggiatura { d16[ e] } e2\trill d16-|[ d( e\trill d])
  cis16-|[ d( e\trill d]) b16-|[ d( e\trill d]) a16-|[ d( e\trill d])
  \times 2/3 { d,8[( a' d]) }
  \times 2/3 { fis8[( a cis]) }

  \times 2/3 { d8[ a g] }
  \times 2/3 { fis8[ g e] }
  d16-|[ d( e\trill d]) cis16-|[ d( e\trill d]) b16-|[ d( e\trill d]) a16-|[ d( e\trill d])
  \times 2/3 { d,8[( a' d]) }
  \times 2/3 { fis8[( a cis]) }
  \times 2/3 { d8[ a g] }
  \times 2/3 { fis8[ e d] }
  g,8[ b'] b4.\trill b8-|[ cis-| d-|] a,[ cis'] cis4.\trill cis8-|[ d-| e-|] \grace { e16 } d16[( cis d e]) fis4( \times 4/6 { fis8[) e d cis b a] }

  g8[( e']) e4( \times 4/6 { e8[) d cis b a g] } 
  \times 2/3 { fis8[ d' a] }
  \times 2/3 { b8[ g e] }
  \grace { d16[ e] } e2\trill d8 r a r g r fis r r4
  \times 2/3 { d8[ a' g] }
  fis8.[ e16]
  \times 2/3 { d8[ e cis] }
  d8 r a' r g r fis r r4
  \times 2/3 { d8[ a' g] }
  fis8.[ e16]
  \times 2/3 { d8[ e fis] }

  < d b' >4-| 
  \times 2/3 { g,8[ b d] }
  g,8[ g'-| e-| d-|] < cis e >4
  \times 2/3 { a8[ cis e] }
  a,8[ a'-| gis-| g-|] \grace { g16 } fis16[( e fis g]) a8-.[ a-.] a4-. 
  \times 2/3 { a8-.[ g-. fis-.]} e8 r a,[( g']) < a, g' >4
  \times 2/3 { g'8-.[ fis-. e-.]}
  d4 g, a a << { a'2( a8)( d4 cis8) } \\ { d,8 \times 2/3 { fis16[ e d]} e8[ g] fis[ fis] e4 } >>

  << { a2( a8)( d4 cis8) cis2( d4) } \\ { d,8 \times 2/3 { fis16[ e d]} e8[ g] fis[ fis] e4 e2( d4) } >> \bar ":|:"

  a''4 < d,, fis' d' >4.( cis''16[ b]) a4 << { a4 a2  } \\ { fis4 \times 4/6 { g8[^( fis g e fis g]) } } >> fis8[( a]) g16[( fis g e]) d4 d8[ d] \grace { fis16 } e8[( d e a]) g2( \times 4/6 { fis8[)( d e fis g a]) } 

  << { b4 b8.[ b16] b4 a g } \\ { g4 g8.[ g16] g4 fis e } >> \grace { a,16^( } e''2) \times 2/3 { e8[( cis) a-|] } d8[( a) b( g]) fis4 e8[( a]) g16[( fis e d]) d4 r2 << { fis,4( g fis a-|) } \\ { a,2. } >> < a g' e' >4.^( d'8) 
  \times 2/3 { cis8[( d b]) }
  \times 2/3 { a8[( b g]) }
  fis4-| r r a < a, g' e' >4.^( d'8) cis16[( e a g]) fis[( e d cis])

  d2\p << { g2( fis) b } \\ { d,2\< d\! d\f } >> a'8[( fis e d]) << { e4.( fis16[ g]) } \\ { a,2 } >> g'8[( fis e d]) cis[( d c a]) g2\p << { c2 b4( a2 dis4) e8[ b] } \\ { g2 g\f( fis) e4 }  >> b'4.( c16[ b]) a8-|[ g-|] g\trill[( fis]) fis4-| r b-|
  \times 2/3 { g8[( b e]) }
  \times 2/3 { g8-.[ fis-. e-.] }

  \times 2/3 { fis,8[( b fis']) }
  \times 2/3 { a8-.[ g-. fis-.] }
  g16[( b,) b'( b,]) a'16[( b,) g'( b,]) fis'16[( b,) a'( b,]) g'16[( b,) fis'( b,]) 
  \times 2/3 { g8[( b e]) }
  \times 2/3 { g8-.[ fis-. e-.] }
  \times 2/3 { fis,8[( b fis']) }
  \times 2/3 { a8-.[ g-. fis-.] }
  g16[( b,) b'( b,]) a'16[( b,) g'( b,]) fis'16[( b,) a'( b,]) g'16[( b,) fis'( b,]) < e g >4. < fis a >8 < g b >4 < g b >4 < g b >2 e'2

  \times 2/3 { < g, b >8[ < fis a > < g b >] }
  << { c4 } \\ { a,8[ r16 e'] } >> \grace { g4 } < b, fis' >2\trill e2( e16[) fis( g fis] a[ g fis e]) d4\p b8.[( c32 d]) d8[( c]) a8.[( b32 c]) b8[( a) c( a]) g[( fis) e( d]) g8.[( a16) b8.( c16]) d8[ e16( d]) c[( b) a( g]) g[( fis e d]) d4. d8 \grace { fis16 } e16[( d e fis])

  g8\p[( d) b'8.( a16]) a8[( d,) c'8.( b16]) \grace { b16^( } g'4.\rfz)( fis16[ e])
  \times 2/3 { d8[ e c] }
  \times 2/3 { b8[ c a] }
  g8\p[( d) b'8.( a16]) a8[( d,) c'8.( b16]) \grace { b16^( } g'4.)( fis16[ e]) 
  \times 2/3 { d8[ e c] }
  \times 2/3 { b8[ c a] }
  g4\f r r16 d[( g) fis-|] e-|[ d-| c-| b-|] a8-|[ b16( c]) d[ e fis g] a[ b c b] a[ g fis e]

  d4-| d16[( c b a]) g4-| r b g c d g,8 r d' r c r b r r4
  \times 2/3 { g'8[ d c] }
  b4 r g8 r d' r c r b r r4
  \times 2/3 { g'8[ d c] }
  \times 4/6 { b8[ g a b c d] }
  < g, e' >4
  \times 2/3 { c8[ e g] }
  c,8[ c'-| a-| g-|]

  < fis a >4 
  \times 2/3 { d8[ fis a] }
  d,8-|[ d-| cis-| c-|] \grace { c16 } b16[( a b c]) d8-.[ d-.] d4 
  \times 2/3 { d8-.[ c-. b-.] }
  a8 r8 << { d4 d } \\ { c4 c } >>
  \times 2/3 { c8-.[ b-. a-.] }
  g4 c d d g16-|[ g( a\trill g]) fis16-|[ g( a\trill g])
   e16-|[ g( a\trill g])
   d16-|[ g( a\trill g])
  \times 2/3 { g,8[( d' g]) }
  \times 2/3 { b8[ d fis] }

  \times 4/6 { g8[ d c b c a] }
  g16-|[ g( a\trill g]) fis16-|[ g( a\trill g])
   e16-|[ g( a\trill g])
   d16-|[ g( a\trill g])
  \times 2/3 { g,8[( d' g]) }
  \times 2/3 { b8[ d fis] }
  \times 4/6 { g8[ d c b a g] }
  c,8[ e'] e4.\trill e8[ fis g] d,[fis'] fis4.\trill fis8[ g a] \grace { a16 } g16[( fis g a]) b4( \times 4/6 { b8)[ a g fis e d] }

  c8[( a']) a4( \times 4/6 { a8)[ g fis e d c] }
  \times 2/3 { b8[ g' d] }
  \times 2/3 { e8[ c a] }
  \grace { g16[ a] } a2\trill << { d2 d8 g4 fis8 d2 d8 g4 fis8  fis2( g4) }  \\ { g,8[( \times 2/3 { b16 a g] } a8[ c]) b[( b] a4) g8[( \times 2/3 { b16 a g] } a8[ c]) b[( b] a4) a2( g4) } >>

  \bar ":|"

}
