\version "2.16.0"

viola_minuetto = \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \tempo "Tempo di Minuetto"
  \time 3/4
  \clef alto
  \key c \major

  \partial 4 g'4
  < g, e' c' >4. d''8 \grace { f16 } e16[( d e f]) g4. g,8 \grace { b16 } a16[( g a b]) c4 b a \grace { b16 } a8(\trill g]) g4 r4 a8( d) << {d4.( c8) } \\ { a2 } >> 

<< {c4( b c8[)  e]-| } \\ {g,4 g8[ f] e s } >> g'4 f e8( g) f16[( e d e]) d4 r r g,, \grace { d'16 } c16( b c d) e[( g c d]) e[( c g e]) \grace { g16 } f[( e f g]) a8[( c,) g'( c,) f( c])

   \grace { g'16 } f8[( e]) \times 4/6 {e8-|[ c( d e d c]) } f8 f4 f f8 e4 d c8 e f4 g g, c,8 c' c,4 \bar ":|" e'4\p f8[-| f( e) e( d) d-|] c16[ e g e] c8[-| c( b) b](

   c)[ c( b) b( a) a-|] g16[( b d b]) g4 r  
   \times 4/6 { r8\f d'8[( e fis e d]) }
   \times 2/3 { g8[ b d] }
   c2 b4 
   \times 4/6 { a8-|[ d,( e fis e d)] }
   g8 g, d8[ fis16( a]) d[( e) c( d]) b[( c) a( b])

   g[( b d) fis-|] g[ fis e d] c[ b a g] fis[ a d fis] a[ g fis e] d[ c b a] 
   \times 2/3 { g8[( b d]) }
   \times 2/3 { g8[( b d]) }
   \times 2/3 {e[( b f']) }
   d4 c\trill b d,8.[( cis16) c8.( b16) a8.( g16)]

   fis8 <a fis>4 <a fis> <a fis>8 g4 r16 g( b d) c( b) a( g) d8 d'8 d,4 r g\p( b cis) d( d, fis') g( g,cis) d( d, fis) g4.\f b16([ a] g a b c)

   d4 c2( b4) g8[( b16 a] g[ a b c]) d4 c2( b4) r d g a8[ g a fis] g4 g, fis8[ a] g[ g' a g a fis] g4 g,8[ a b cis]

   d4 d, fis g b8[ g] d'[ d,] g[( b d) g-|] f16\p[( e d c]) b8[ g d' g, c g] c[(\trill b]) b16-|[ g( a b]) c[( d e f]) g8[( g,) g'( g,) f'( g,]) << { f'8[(\trill e]) e4 } \\ { g,4 g } >> r4

   r16 e''[(\f d c] b[ a g f]) e8[ c-|] d8.[( e32 f]) e4 r g8[(\p f]) e[ d16( c]) b8[ c] |
   g[ g'] g,4-\tag #'vla ^\markup{\italic "D.C."} \bar "||"

 }


viola_duetto_ii = \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \tempo "Allegro Moderato"
  \time 2/2
  \clef alto
  \key c \major

  \partial 4 c8.( e16) g4 g2 g4 \grace {g16} c4.( d8 e4) r4 e d8.( b16)  c4 e8.( c16) g4 f4\trill e r 

  f f8. f16  f16[( b d c] b[ a g f]) e8( g c) e-| g4. f8 e( b) c( a) g4. f8 f16( e d c) c4 r2 r4 \times 2/3 { e8( c) g-| } \times 2/3 {d'8[( b) g-|] } \times 2/3 {f'8[( d) g,-|] } 

  < c e >4 r \times 4/6 { e8( f g a b c) } g8( g,) f'( g,) e'( g,) c( g) b( g) d'( g,) \times 4/6 { c8 g' f e d c } g4\rfz( aes g) r8 b c4 e e e f f r8 d8( f fis)

  g g, b d g,4 r r8 d'-| fis-| a-| c4 << { c( b) } \\ { d, d } >> c'4( b) r r8 d,-|\p fis-| a-| c4 << { c( b) } \\ { d, d } >> r b d g,\f g' e c d2 fis g4 d g e

  d8 d, fis a \times 4/6 {d8 e d c b a } g4 r r2 g\p e'4. c8 b4\< b c4.( d16 e)\! e8\f( d) c( b) b4 r8 d e4\p fis8 d g4 r8 d8 e4 fis g g,

  c r8. a16\f \grace {d16 } c[( b c d]) e[( c b a]) d4 r8 b c4 d 
  \times 2/3 { g8[( b) a-|] } 
  \times 2/3 { a8[( c) b-|] }
  \times 2/3 { b8[( d) c-|] }
  \times 2/3 { c8[( e) d-|] }
  d4 g2 fis8 e d( fis g) e-| d( fis g) e-| 

  d8[ e16( d]) c( b a g) \appoggiatura { g[ a] } a2\trill g4 
  \times 2/3 { fis8[( a) g-|] } 
  \times 2/3 { g8[( b) a-|] }
  \times 2/3 { a8[( c) b-|] }
  b4 g fis c b g8. b16 d4 d, 
  \times 2/3 { g8[ b d] }
  \times 2/3 { g8[ d b] }
  g4 \bar ":|:" r4

  r4
  \times 2/3 { b'8[( g) d-|] } 
  \times 2/3 { a'8[( fis) d-|] }
  \times 2/3 { c'8[( a) d,-|] }
  \times 2/3 { b'8[( g) d-|] }
  \times 2/3 { b'8[( g) d-|] } 
  \times 2/3 { g8[( e) g-|] }
  \times 2/3 { b8[( g) b-|] }
  \times 2/3 { d8[( b) d,-|] }
  \times 2/3 { c'8[( a) d,-|] } 
  \times 2/3 { b'8[( g) d-|] }
  \times 2/3 { g8[( d) b'-|] }
  \times 2/3 { a8[( fis) d-|] }
  \times 2/3 { a'8[( fis) d-|] } 
  \times 4/6 { g8 d' c b a g }

  d4( ees d) r8 fis g4. d8 b'8( c) a( fis) g( a b) g-| fis-| d( e fis) g4 d8. b16 g4 c8.( e16) g4 g2 g4 \times 4/6 { g8( a b c d e) } g,4 r

  e'4 d8.( b16) c4 e8.( c16) g4 f\trill e gis a b8.\trill a32 b c4 d8.\trill c32 d 
  \times 4/6 { e8( c d e d c) } 
  \times 4/6 { d8( b c d c b) } 
  c8[ a,16( c]) e( a c d) e8-| e( d c) 

  c8(\trill b) b4 r4 e, < c e a >4 a'8. a16 \times 4/6 { a8( c d e c a) } gis4 < b, gis' >8.[ < b gis' >16] < b gis' >4 gis4 a c e a gis a a, r4 d f g b, c e f a,

  b d e gis, a2 e a e a4 c e e, a c8. e16 a4 r r8 g,8[\p c e] g4 r r8 g,16[( a] b[ c d e]) f4 r4

  e16[( f g f]) \grace { f16 } e8[ d16 c] b8( g') c( g) g,4 g' g, r r8 g8-|\f b-| d-| f4 << { f  e } \\ { g,( g) } >> f'( e8) g,\p c-| e-| g4 g2 b4 
  \times 4/6 { c8 e d c b a } 
  \times 4/6 { g8 a g f e d } 

  c4\f c' a f g2 b, c8 g' e c a4( aes) g b8. d16 g8[ a16 g] \grace { g16 } f8[ e16 f] < g, e' >4 r4 r2 \appoggiatura { c,16 } bes'2 a4. f8 e4 e'\< f4.( g16 a)\!

  a8(\f g) f( e) e4 r8 g,8\p a4 b8-| g-| c4 r8 g'8 a4 b c c, f r8. e16\f \grace { g16 } f16[( e f g]) a[( f e d]) g4 r8 e8 f4 g

  c, 
  \times 2/3 { b8[( d) c-|] }
  \times 2/3 { c8[( e) d-|] }
  \times 2/3 { d8[( f) e-|] }
  e4 a2 g8 f e8[( d c) f-|] e8[( d c) f-|] e4 a f  g
  \times 2/3 { c,8[( e) d-|] }
  \times 2/3 { d8[( f) e-|] }
  \times 2/3 { e8[( g) f-|] }
  \times 2/3 { f8[( a) g-|] } 
  \times 4/6 { g8( a b c d e) } 
  \times 4/6 { f8( d c b a g) } 
  \grace { g16 } g'4 f16[( e d c]) \appoggiatura { c16[ d] } d2\trill c4 g8.[ e16] c4 \bar ":|"
}
