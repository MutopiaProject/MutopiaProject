\version "2.16.0"

rf = #(make-dynamic-script "rf")

violin_rondo = \relative c' {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \time 2/4
  \clef treble
  \key bes \major
  \tempo "Allegretto"

  bes8 [( d f bes]) bes[( a) g( f]) f[( a c ees]) ees[( d) c( bes]) f[( bes) d( f]) f[( ees) es( d]) d[( c) c8.( bes16]) bes4( a) r4 < bes, f' >( < c f >) r

  < a f' >2( < bes f' >4) r \grace { f'16^( } f'8.\f[) d16] f[( d) f( d]) f[( d) c( bes]) a[( g) f( ees]) d4 c\trill bes2 \bar ":|" a2( bes4) r g'8-|[ g\trill( c bes]) bes[( a) g( f]) e16[( g) f( a]) g[( bes) a( c])

  bes[( d) c( e]) d[( f-|) e( g]) f8-|[ c( bes) a-|] a\trill[( g]) g4 << { bes4 s8 bes8 a4 c c,8[( e g) bes-|] a4 c } \\ { g4 r8 g8 f4 a s8 s4 g8 f4 a }  >> r4 < b, d >4^\sf( c8-|) r8 < cis e >4^\sf( d8[-|)[ c-| bes( b])

  c[ c' c,] r8 f[( a c f]) f[( e) d( c]) c[( e g bes]) bes[( a) g( f]) c16[( c' b c]) a,[( a' gis a]) f,[( f' e f]) d,[( d' cis d]) c[( a) f'-.( d-.]) c[( a) f'-.( d-.])


  c8[( a16) f-|] \grace { a16 } g\trill[( f g a]) f4. << { f'8 e[ d c c] c4 } \\ { f,8\pp( f4. bes8) a4 } >> r8
  << { f'8 e[ d c c] c8 c4. c8( f4)( e8) }  \\ {  f,8\p( f4. bes8) a8[ a\< bes g] a4 g\!  }  >> \grace { f16^( } f'8\f[) f,] << { f4 f8( bes4)( a8) } \\ { ees[( c]) d4 c_\markup{\italic "D.C."} } >> \bar "||"

  \key g \minor
  \time 2/4

  << { d'4^"Minore" g g( fis8[ ees])} \\ { bes2 a4 s} >> ees'4( d8[) c-|] c[( bes) a( g]) g\p[( fis g) cis,] d[( ees d) c-|] bes[ g g' g,] d'[ d'] d,4 << { f'4 bes bes( a8[) g-|] } \\ {d2\f c4 s  } >>

  g'4( f8[) ees-|] ees[( d) c( bes]) << { bes2 bes8[( b c8.) d16-|] } \\ { f,8\p[( g) aes( fis]) g4.\rf s8 } >> ees'16[( f g f]) ees[( d c bes]) bes[( a g f]) f[( g ees f]) < d bes' f' >4\f ees'16[( d c bes]) bes4 bes << { c4. d8 } \\ { f,2 } >> < f ees' >4 < f ees' >4

  d'16[( ees e f]) ees[( d c bes]) bes4 bes << { c4. d8 } \\ { f,2 } >> ees'16[( f g f]) a[( g f ees]) d4\p \grace { d16 } c8.\trill[( b32 c]) c8[( b]) r b c16[( ees g f]) ees[( d c bes]) bes8[( a]) r f\f << { bes4 d ees8.[ f16 g8-| r16 g16-|] } \\ { f,4 f ees4 s4 } >>

  f'16[( d) c( ees]) d[( bes) a( c]) bes8[ < d, bes' >  < d bes'  >] r << { d'4 g g( fis8[) ees-|] } \\ { bes2 a4 s } >> ees'4( d8[) c-|] c[( bes) a( g]) g\p[( fis g) cis,-|] d[( ees d) c-|] bes[ g g' g,] d'[ d'] d,4

   << { d'4\f g g( fis8[) ees-|] } \\ { bes2 a4 s } >> ees'4( d8[) c-|] c[( bes) a( g]) bes16[ d g bes] a[( d,) c'( d,]) bes'[( d,) d'( d,]) c'[ a fis d] g[( d) ees( c]) bes8[ a\trill] g2\fermata_\markup{\italic "D.C."} \bar "||"

}


violin_duetto_iv = \relative c' {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \time 2/2
  \clef treble
  \key bes \major
  \tempo "Allegro con Espressione"

  \partial 4 r4
  \times 2/3 { bes8[ d f] }
  \times 2/3 { bes,8[ d f] }
  \times 2/3 { bes,8[ d f] }
  \times 2/3 { bes,8[ d f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { bes,8[ d f] }
  \times 2/3 { bes8[ f d] }
  bes4 r r bes a4.( bes16[ c]) bes8[( d) f( bes]) d-|[ bes,( c d]) ees4 g << { f4 ees d } \\ { d4 c bes } >> bes' bes, f'8.[( a16]) bes8.[( c16) d8.( ees16]) \appoggiatura { d16[ ees] } f4.( ees16[ d]) d8[( c]) c2 f,8.[( g16]) a8.[( bes16) c8.( d16]) \appoggiatura { c16[ d] } ees4.( d16[ c]) c8[( bes]) bes4 f'16[( a bes g] f[ d ees c])

  << { f2 f f f  } \\ { d2 c4.( d16[ ees]) d2 c4.( d16[ ees])  } >> d16[( f ees d]) c[( bes) c-| d-|] ees-|[ f-| g-| a-|] bes-|[ f-| ees-| d-|] d8\trill[( c]) c4 r f,8.\p[( g16]) a8.[( bes16]) c4 << { c8[( bes]) bes4 bes8[( c16 d]) } \\ { a4 g8[( f]) e8 } >>

  c'8-|[ bes-|] a4 f8.[( g16]) a8.[( bes16]) c4 << { c8[( bes]) bes4 bes8[( c16 d]) } \\ { a4 g8[( f]) e8 } >> c'8-|[ bes-|]
  \times 2/3 { a8[ f a] }
  \times 2/3 { c8[ f a] }
  << { bes4( a8[) r16 a16-|] bes4( a8[) r16 a16-|] bes8.[ a16] } \\ { c,4.\f s8 c4. s8  c8. s16 } >> bes'16[ a bes a] bes[ a g f] e[ d c bes] a8-|[ f16( f']) a,16[( a') c,( c']) a[( g) f( e)] f8[ r16 a,] c4 bes16[( a g a]) g4 c, f2\p a4. f8 c'2 bes

  a2\< < c, a' >2\! < bes bes' >4.\f c'8 d4. \appoggiatura { e32[ d cis d] } e8 f[( a]) c,4. a'16[( g]) f[( e d c]) << { f4 bes4. a8[( g f]) g4 c4. bes8[( a g]) } \\ { d4 bes4. s8 s4 e4 c4. s8 s4 } >> a'8-|[ c16( a]) f16[( c) a( f]) \appoggiatura { f16[ g] } g2\trill

  f4 r8\p c'-| bes[( g) c-| bes-|] a[ f] r  c'-| bes[( g) c-| bes-|] a[( f]) r8 c\f d8.[( f16) e8.( g16]) f8[( f') e( d]) c8.[( a16]) \grace { a16 } g16\trill[( f g a]) f4 r c\p e

  f8-|[ c'-| a( f]) c4 e f8-|[ c'-| a( f]) bes,4\f g a8-|[ d( c bes]) a-|[ a( bes c]) a4 < a f' > < a f' > \bar ":|:"


  c'8.[( e16]) f8.[( g16) a8.( bes16]) \appoggiatura { a16[ bes] } c4.( bes16[ a]) a8[( g]) g2 c,8.[( d16])

  e8.[( f16) g8.( a16]) \appoggiatura { g16[ a] } bes4.( a16[ g]) g8[( f]) f4 c16[( e f d] c[ a bes g]) << { c2 c2 } \\ { a2 g4.( a16[ bes]) } >> a8[( c f) a-|] c-|[ c( bes a]) a16[( g) bes( g]) f2 e4

  \grace { g16( } f8[) e16-.( d-. c-. bes-. a-. g-.]) f4 r\p
  \times 2/3 { bes,8[ d f] }
  \times 2/3 { bes,8[ d f] }
  \times 2/3 { bes,8[ d f] }
  \times 2/3 { bes,8[ d f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { a,8[ c f] }
  \times 2/3 { bes,8[ d f] }
  \times 2/3 { bes8[ f d] }
  bes4 r

  << { f'2 f f4( fis2)( a4) } \\ { d,2\f c4.( d16[ ees]) d2 c2 } >> <  g' bes, >8.[(  a16) bes8.( c16]) d8[ ees16( d]) c8[ bes] bes\trill([ a]) a4 r d,
  \times 2/3 { g8[( bes d]) }
  \times 2/3 { g8[ fis g] }
  \times 2/3 { fis8[ a c,] }
  \times 2/3 { ees8[ d c] }

  \times 2/3 { bes8[ bes' a] }
  \times 2/3 { g8[ fis g] }
  \times 2/3 { d8[ ees d] }
  \times 2/3 { c8[ bes a ] }
  \times 2/3 { g8[( bes d]) }
  \times 2/3 { g8[ fis g] }
  \times 2/3 { fis8[ a c,] }
  \times 2/3 { ees8[ d c] }
  \times 2/3 { bes8[ bes' a] }
  \times 2/3 { g8[ fis g] }
  \times 2/3 { d8[ ees d] }
  \times 2/3 { c8[ bes a ] }
  bes4.\p( c8) d4 d << {s8 d4. d4  } \\ { d8-|\f[^( bes a c]) bes4 } >> \grace { g8^( } g'4)

  f16[( ees d) ees-|] d[( c) bes-| c-|] \grace { bes8( } a2\trill) g2. g8.[( \times 2/3 { a32 bes a]) }  << { s8 g4. } \\ { g8-|\rf[^( d ees f]) } >>
  \times 2/3 { ees8[( g) c-|] }
  \times 2/3 { c8[( b) d-|] }
  \times 2/3 {  d8[( c) ees-|] }
  \times 2/3 {  ees8[( d) f-|] }
  ees4 f,8.[( \times 2/3 { g32 a g]) } << { s8 f4. } \\ { f8-|\rf[^( c d ees]) } >>
  \times 2/3 {  d8[( f) bes-|] }
  \times 2/3 {  bes8[( a) c-|] }
  \times 2/3 {  c8[( bes) d-|] }

  \times 2/3 {  d8[( c) ees-|] }
  \times 2/3 {  d8[ bes' a] }
  \times 2/3 {  bes8[ f d] }
  << { ees4( d8[) r16 d16-|] ees4( d8[) r16 d16-|]  } \\ { f,4. s8 f4. s8 } >> < f ees' >8.[ d'16] ees[ d ees d] ees[ d c bes] a[ g f ees] d8[ bes16( bes']) d,[( d') f,( f']) d,[( d') f,( f']) \grace { bes,16^( } bes'8.)[ d,16-|]

  f4 ees16[( d c d]) c4 f, bes2\p d4. bes8 f'2 ees2 d\< < f, d' >2\! < ees ees' >4.\f f'8 g4. \appoggiatura { a32[ g fis g] } a8 bes8[( f]) f4. g16[( f]) ees[( d c bes]) << { bes4 ees4. s8 s4 c4 f4. s8 s4 } \\ { g,4 ees4. d'8[^( c bes]) a4 f4. ees'8[^( d c]) } >>

  d8[ f16( d]) bes'[( f) d-| bes-|] \appoggiatura { bes16[ c] } c2\trill bes4 r8 f'8\p ees[( c) f-| ees-|] d[( bes]) r8 f' ees[( c) f-| ees-|] d[( bes]) r8 f8\f g8.[( bes16) a8.( c16]) bes8-|[ bes'( a g]) f8.[( d16]) \grace { d16 } c\trill[( bes c d])

  bes4 r f\p a bes8-|[ f-| d( bes]) f'4 a bes8-|[ f-| d( bes]) g'8.[( bes16) a8.( c16]) bes8-|[ bes'( a g]) f8.[( d16]) \grace { d16 } c\trill[( bes c d]) bes4 < d, bes' > < d bes' > s \bar ":|"

  }
