\version "2.16.0"
  
violin_minuetto = \relative c' {
  \tempo "Tempo di Minuetto"
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \time 3/4
  \clef treble
  \key c \major

  \partial 4 r4
  r g \grace { d'16 } c16[( b c d]) e[( g c d]) e[( c g e]) \grace { g16 } f16[( e f g]) a8[( c,) g'( c,) f( c]) \grace { g'16 } f8[(\trill e)] 
  \times 4/6 { e-|[ c( d e d c)] }
  f8 f4 f f8 < d g, >2 a4

  b8[ g a b c e]  
  g4 g, g' 
  << { c2 \grace { f16 } e16[( d e f]) } \\ { < g, c,>4 s4 } >>
  < g' e >2 \grace { b16 } a16[( g a b]) c4 b a \grace { b16 } a8[( g]) g4 r a,8[( d]) 
  << { d4.( c8) c4 b c16[( e a c]) } \\ { a,2 g4( g8[ f]) e16 s s s} >>
  \grace { b''16 } a8[ g16 f] \grace { e4 } d2\trill

  c2\fermata \bar ":|"

  < c g >4\p 
  << { c2 f4 e2 g4 g2 c4 b4( \times 4/6 { b8\f) g_( a b a g) } } \\ { a,4( g) g g2 d'4 e( d) d d s2 } >>
  c'2 b4 < a e >2 <g d >4 \afterGrace < c, fis >2( { g'32[ a g fis]) }  \grace { b,16^( } \times 2/3 { g'8) d b } b8\trill[( a]) a4 r

  r4 r16 d,[ g fis] e[ d c b] a[ c fis a] c[ b a g] fis e d c] b4 r g a d g, d'8.[(  e16) fis8.( g16) a8.( b16)] c8.[( d16])\rfz e4.( d16[ c]) b[( b') fis( g]) d4 e16[( d c b])

  b[( a b g]) g[( fis g e]) e[( d e c]) < b d >4\p( g') < g b, >4 < a, g' >8[ fis'16\trill( e]) fis8[ g a < a c, >8] 

  << { a4( g) b a } \\ { b,2 g'4 g8[ fis16\trill^( e]) } >>
   fis8[ a < d d, > c ] < b d, >4
   r r\f d,4. fis16[( e] d[ e fis d])

   g4 r r d'4. fis16[( e] d[ e fis d]) g[ a b c] d[ b g d] c'[ a fis d] b'[ g d b] c[ d b d] c[ d a d] b[ d g b] d[ b g d] c'[ a fis d]

   b'[ g d b] c[ d b d] c[ d a d] 
   << { d4 g b a } \\ { b,2 g'4 g8[ fis16^\trill^( e])} >> fis8[ a] \grace { d,16 } d'8.[( c16]) b8[( g) d-| b-|] \grace { b16 } a16\trill[( g a b]) g4. g16[( a] b[ c d e]) f4\p f( e) e8\trill[( d]) d4 r

   e4 e( d) d8\trill[( c]) c16-|\f[ c( d e] f[ g a b]) c4 g4. e8 f8.[( g32 a]) g16-|[ b( c a] g[ e f d]) c4.\p( d16[ e]) f8-|[ e-|] e8\trill[( d]) d4^\markup{\italic "D.C."} \bar "||" 

 }


violin_duetto_ii = \relative c' {
  \tempo "Allegro Moderato"
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \time 2/2
  \clef treble
  \key c \major

  \partial 4 r4 r
  \times 2/3 { e8[( c) g-|] }
  \times 2/3 { d'8[( b) g-|] }
  \times 2/3 { f'8[( d) g,-|] }
  \times 2/3 { e'8[( c) g-|] }
  \times 2/3 { e'8[( c) g-|] }
  \times 2/3 { c8-|[ g-| c-|] }
  \times 2/3 { e8-|[ c-| e-|] }

  \times 2/3 { g8[( e) g,-|] }
  \times 2/3 { f'8[( d) g,-|] }
  \times 2/3 { e'8[( c) g-|] }
  \times 2/3 { c8[( g) e'-|] }
  \times 2/3 { d8[( b) g-|] }
  \times 2/3 { d'8[( b) g-|] }
  \times 4/6 { c8[ g' f e d c] }
  g4\rfz( aes g) r8 b8 c4. g8 e'8[( f d) b-|] c[( d e) c-|] b-|[ g( a b])

  c[ c' g e] c4 c'8.[( e16]) g4 g2 g4 
  \times 4/6 { g8[( a b c d e]) } g,4 r e' d8.[( b16]) c4 e8.[( c16]) g4 f\trill e r f f8.[ f16] f16[( b d c] b[ a g f])

  e8[( g]) bes,4.( c16[ d]) c8-|[ bes-|] a16[( cis d cis]) d[( e f e]) f[( g a g]) f[( e e c]) c[( b a g]) g4 r8 d-|[ g-| b-|] d4 d2 fis4 g4.\trill fis16[( e]) d8\p[ d,-| g-| b-|] d4 d2 fis4

  \times 4/6 { g8[ b a g fis e] }
  \times 4/6 { d8[ e d c b a] }
  << { b2 c4 e( e)( d2)( c4) b \times 2/3 { c8[ b a] } b4 cis d } \\ { g,2\f( g2 fis) a g4 \times 2/3 { a8[ g fis] } g4 g fis } >> a8.[ fis16] d4 r g2\p g' b, c4.( d16[ e])

  d2\< e4.( fis16[ g])\! g8[(\f fis) e( d]) d4 d8-.\p[( d-.]) d[( c) c-.( c-.]) c[( b]) g'16[( d d' d,]) d8[( c]) b16[( c a' c,]) c8[( b]) b'16\f[( g d b]) a8.[ b16] \grace { d16 } c16[( b c d]) \grace { fis16 } e16[( d e fis]) g16[( e d c])

  b16[( cis d cis]) d[( b a g]) \appoggiatura { g16[ a] } a2\trill g4 r 
  \times 2/3 { g,8[( b) a-|] }
  \times 2/3 { a8[( c) b-|] }
  b4 e2 d8[( c]) b[( a g) c-|] b[( a g) c-|] b4 e c d 
  \times 2/3 { g8[( b) a-|] }
  \times 2/3 { a8[( c) b-|] }
  \times 2/3 { b8[( d) c-|] }
  \times 2/3 { c8[( e) d-|] }

  \times 4/6 { d8[( e fis g a b]) }
  \times 4/6 { c8[( a g fis e d]) }
  \times 2/3 { d'8[( b g]) }
  \times 2/3 { d8[( b g]) }
  \appoggiatura { g16[ a] } a2\trill g4 d g, \bar ":|:"

  g'8.( b16) d4 d2 d4 \grace { d8 } g4.( a8 b4) r b a8.( fis16) g4 b8.[( g16]) d4 c\trill b r c c8. c16 c16[( fis a g] fis[ e d c]) b8[( d g) b-|] d4. c8 b[( fis) g( e]) d4. c8

  c16[( b a g]) g4 r2 r4
  \times 2/3 { e8[( c) g-|] }
  \times 2/3 { d'8[( b) g-|] }
  \times 2/3 { f'8[( d) g,-|] }
  < c e >4 r4 
  \times 4/6 { e8[( f g a b c]) }
  g8[( g,) f'( g,) e'( g,) c( g]) a[( g) b( g]) c4 \grace { c16 } b8.[\trill a32 b]

  c4 gis a \grace { c16 } b8.[\trill a32 b] 
  \times 4/6 { c8[( a b c b a]) }
  \times 4/6 { b8[( gis a b a gis]) }
  a4 a c a e' < gis, e' > < gis e' > r a < c e >8.[ < c e >16] < c e >4 r < e b' e > e'8.[ e16]
  \times 4/6 { e8[( gis a b gis d]) }

  c8[( a') a-.( a-.])
  \times 2/3 { a8[( gis a]) }
  \times 2/3 { e8[( c a]) }
  < d f >4 < c e > 
  \times 4/6 { r8 e[ d c b a] }
  \times 2/3 { f'8[( a) e-|] }
  \times 2/3 { d8[( f) c-|] }
  \times 2/3 { b8[( d) a-|] }
  \times 2/3 { g8[( d') f,-|] }
  \times 2/3 { e8-|[ g'( d]) }
  \times 2/3 { c8[( e) b-|] }
  \times 2/3 { a8[( c) g-|] }
  \times 2/3 { f8[( c') e,-|] }

  \times 2/3 { d8-|[ f'( c]) }
  \times 2/3 { b8[( d) a-|] }
  \times 2/3 { gis8[( b) f-|] }
  \times 2/3 { e8[( b') d,-|] }
  << { e4( a8[) e]_( d4) gis8[_( d]) r8( e[ a e]) d4( gis8[ d]) } \\ { c2 c8[ b] b4 c2 c8[ b] b4 } >> c16[( e a c]) e8-|[ r16 a,16-|] \grace { c4 } b2\trill a2( a16[) b( c b] d[ c b a])

  g8.[(\p c16 e8) e-|] e16[( f g f]) a[( g f e]) d4 d8.[ d16] d16[( e f e]) g[( f e d]) c4.( d16[ e]) f4 e e\trill d r8 g,-|\f[ c-| e-|] g4 g2 b4

  c4.( b16[ a]) g4 r r8 g,,-|[\p b-| d-|] f4 < f g, >4( < g, e' >) r4 r2 
  << { e''2 f4 a( a)( g2)( f4) e e8.[ e16] e4 fis g } 
     \\ { c,2\f c2 b2 d2 c4 c8.[ c16] c4 c b  } >> 
  d8.[ b16] g4 r

  c2\p c' e, f4.( g16[ a]) g2 a4.( b16[ c]) c8[(\f b) a( g]) g4 g8-.\p[( g-.]) g8[( f) f-.( f-.]) f[( e]) g16[( e c' g]) g8[( f]) g,16[( d' g f]) f8[( e]) c'16\f[( g e c])

  d8.[ e16] \grace { g16 } f16[( e f g]) \grace { b16 } a16[( g a b]) c[( a g  f]) e[( fis g fis]) g[( e d c]) \appoggiatura { c16[ d] } d2\trill 
  \times 2/3 { c8[( e) d-|] }
  \times 2/3 { d8[( f) e-|] }
  \times 2/3 { e8[( g) f-|] }
  \times 2/3 { f8[( a) g-|] }
  g4 c2 b8[ a] g[( b c) a-|] g[( b c) a-|] 

  g8[ a16( g]) f[( e d c]) \appoggiatura { c16[ d] } d2 c4 r 
  \times 2/3 { c,8[( e) d-|] }
  \times 2/3 { d8[( f) e-|] }
  e4( 
  \times 2/3 { e8)[ d c] }
  \times 4/6 { b8-|[ b( c d e f]) }
  \times 4/6 { e8[( d e f g a ]) }
  g4 g, c < g e' > < g e' > \bar ":|"
}
