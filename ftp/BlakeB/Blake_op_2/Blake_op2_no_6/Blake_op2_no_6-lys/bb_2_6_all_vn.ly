\version "2.16.0"

violin_minore = \relative c' {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \time 2/4
  \clef treble
  \key c \minor

  c4 b c8.[ d16 ees8 fis] g4 g,8[ b] c16[( ees) d( f]) ees8 r r16 c16[ ees g] c-|[ g( f\trill ees]) f4( f16)[ f( ees\trill d]) ees8.[ d16] ees16[ g f ees]

  d8[ < b g' >8] < b g' >8 r << { g'4 aes g s8 c8 } \\ { ees,4 f ees c'8[ ees,] } >> < d c' >8[ b'16( c]) d16[ b g f] ees[( g) f( aes]) g8[ bes,\p] ees16[( f g aes]) bes4( bes16)[ c( d bes]) ees4( ees8)[ \times 2/3 { bes16( c bes]) } aes8[ g] g\trill[( f]) f r8

  \appoggiatura { ees16[ g] } bes4 \grace { bes16 } aes16[( g aes bes]) g4 \grace { g16 } f16[( ees f g]) ees8.[( f32 g]) aes8[( g]) c[( bes) d( ees]) R2 bes4\f \grace { d16 } c16[( bes c d]) ees[( g) g( bes]) bes[( g) f( ees]) ees[( d) c( bes]) \grace { d16 } c16[ bes c d] ees4 des

  c8[ d ees e] f4. ees8 d16[ bes c d] ees[ f g aes] bes8\p[( aes) f-| d-|] ees8[( bes]) r8 bes' bes[( aes) f-| d-|] ees8[( bes]) r bes16[( g]) ees4 aes g c bes8.[ c16] g8[ f] ees[ < g, ees' > < g ees' >] r8

  << { g'4 aes g s8 c8 } \\ { ees,4 f ees c'8[ ees,] } >> < d c' >8[ b'16( c]) d16[ b g f] ees[( g) f( aes]) g8 r r4 r8 fis g16[( b d) f-|] aes-|[ aes( g f]) ees[( c) f( d]) \appoggiatura { c16[ d] } d4\trill c2\fermata _\markup{\italic "D.C."} \bar "||"

}


violin_duetto_vi = \relative c' {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \tempo "Allegro con Spirito"
  \time 2/2
  \clef treble
  \key ees \major

  \appoggiatura { g16[ ees'] }
  ees'2 < g,, ees' >4. < g ees' >8  ees'2( \times 4/6 { ees8[)( ees f g f ees]) } bes'2 aes g( \times 4/6 { aes8[)( c d ees d c]) } bes4
  << { bes8.[ bes16] bes2 bes4 bes8.[ bes16] bes2 bes8 s s4} \\ { g8.[ g16] aes2 g4 g8.[ g16] aes2 \times 4/6 { g8 bes'-.^( aes-. g-. f-. ees-.]) } } >>

  \times 4/6 { d-.[( c-. bes-. aes-. g-. f-.]) } \grace { ees16( } bes'4)( g8[) ees-|] \grace { g16 } f8[( ees f g]) ees4 g,8[ bes] ees[ g ees bes] \times 4/6 { g8[( aes bes c bes aes]) } g4 r r2 \times 4/6 { r8 bes[( c d c bes]) }

  ees4 des( \times 4/6 { c8[)( aes bes c bes aes]) }
  \times 2/3 { g8[( bes ees]) }
  \times 2/3 { g8-.[( f-. ees-.]) }
  \times 2/3 { d8-.[( bes-. d-.]) }
  \times 2/3 { f8-.[( ees-. d-.]) }
  \times 2/3 { ees8[( bes ees]) }
  \times 2/3 { g8-.[( f-. ees-.]) }
  \times 2/3 { d8-.[( bes-. d-.]) }
  \times 2/3 { f8-.[( ees-. d-.]) }
  ees8-|[ g,( bes) ees-|]
  \times 4/6 { g8[( bes aes g f ees]) }
  bes4 bes' bes, r

  bes8[( f') d( f]) bes,[( f']) g16[( f ees d]) ees8[( d c bes]) a4 r << { f''2. } \\ { a,4.( bes8) c4 } >> d16[( bes) ees( c])
  << { f2 } \\ { bes,4.( c8) } >> \times 4/6 { d8[ f ees d c bes] } c4\p d8-.[( ees-.]) f8.[ ees16] d4 ees8-.[( ees-. ees-. c-.]) d16\f[ f bes f] ees[ d c bes]

  c4\p d8-.[( ees-.]) f8.[ ees16] d4 ees8-.[( ees-. ees-. c-.]) d16\f[ f bes f] ees[ d c bes] ees,8 < ees' g >4 < ees g >8 < ees g >4( bes'8) r8
  d,,8 < d' f >4 < d f >8 < d f >4\fermata \grace { f32[ g aes g f] } bes8  r8\fermata
  << { f,4 e8[( f]) g2( g4) f8[( a]) c2( c4) } \\ { c,4\p r4 r4 bes4 a r r ees' d } >>

  bes'8[(d]) f2( f16\f)[ fis( g a] bes[ g f ees] \grace { d4) } c2\trill \times 2/3 { bes8[( d f]) } << { f8.[ f16] f2 } \\ { d8.[ d16] ees8.[( c16]) \grace { d16 } c8.\trill[ bes32 c] } >> d16[ f ees d] c[ bes c d] ees[ f g a] bes[ f d bes]

  << { f'4 f8.[ f16] f2 } \\ { d4 d8.[ d16] ees8.[( c16]) \grace { d16 } c8.\trill[ bes32 c] } >> d16[ f ees d] c[ bes c d] ees[ f g a] bes[ f d bes] bes,4 d r ees r a, r bes r bes d8[( bes) d( bes]) ees4 g f f

  d16[( bes') f'( bes,]) bes'[( bes,) f'( bes,]) ees,[(bes') g'( bes,]) bes'[( bes,) g'( bes,]) a,[( f') ees'( f,])  ees'[( f,) ees'( f,]) bes,[( f') d'( f,]) d'[( f,) d'( f,])
  \times 4/6 { d8\p[( bes c d ees f]) }
  \times 4/6 { g8[( a bes c d ees]) }
  f4( d8)[ bes-|] \grace { d16 } c8[( bes c d])

  << { s8 bes4.\rfz bes4 b c8[ d16( ees]) } \\ { bes8-|[ f( g aes]) g4 f ees} >>
  d'8-|[ c-|] c8\trill[( bes) bes\trill( a]) << { s8 bes4.\rfz bes4 b c8[ d16( ees]) } \\ { bes8-|[ f( g aes]) g4 f ees} >>
  d'8-|[ c-|] c8\trill[( bes) bes\trill( a]) bes4 f8.[ d16] bes4 r \bar ":|:"

  \appoggiatura { d16[ bes'] } bes'2 < d,, bes' >4. < d bes' >8 bes'2( \times 4/6 { bes8)[ bes( c d c bes]) } f'2 ees d( \times 4/6 { ees8)[ g( a bes a g]) } f4 << { f8.[ f16] f2 f4 f8.[ f16] f2 } \\ { d8.[ d16]  ees2 d4 d8.[ d16] ees2} >>
  \grace { d16^( } bes'8)[ bes,] f'[ f,] bes[ bes,] \times 2/3 { d8[( c) bes-|] }

  \times 2/3 { a8[( c f]) }
  \times 2/3 { aes8[ c ees] }
  \times 2/3 { d8[ c bes] }
  \times 2/3 { aes8[ g f] }
  << { f2 ees } \\ { d2 c } >>
  \times 2/3 { bes8[( d f]) }
  \times 2/3 { bes8[ d f] }
  \times 2/3 { bes8[ f ees] }
  \times 2/3 { d8[ c bes] }
  << { f2 ees } \\ { d2 c } >>
  < b d  >8[( aes']) g2 < g, f' >4
  << { ees'4.\trill d16[ ees] f4 ees ees( d8.[) g16] } \\ { g,1 g4. } >>
  \barNumberCheck #61
  g4 g' c8\p[( d16 ees]) d8-|[ c-|] c[( b]) b16[( d c ees]) d4-|
  << { d2\f( c8[ d]) } \\ { f,4 ees4. s8 } >> ees'\p[( f16 g]) f8-|[ ees-|] ees[( d]) d16[( f) ees( g])
  f4\f << { f2( ees8[ f]) g4 g8[( aes]) aes4( g8[) f-|] g4 g8[( aes]) aes4( g8[) f-|] } \\ { aes,4 g4. s8 ees'8[( d]) c4 b4. s8 ees8[( d]) c4 b4. s8 } >> ees16[ g c g] \grace { bes16 } aes8[ g16 f] \grace { ees16 } d2\trill c( c16[) d( ees d]) f[( ees d c]) c8\trill[( bes]) bes4( bes16[) d( f ees] d[ c bes aes])

  aes8\trill[( g]) g4( \times 4/6 { g8[)( bes aes g aes bes]) } c8[( c, c') bes-|] aes\trill[( g) f\trill( ees]) ees[( d) c( bes]) bes[ bes'] aes16[( g) aes( f]) ees4.\p f8 g4 aes16[( g f ees]) f4.( g8) aes4-| r

  << { bes2. g16[( ees) aes( f]) bes2 } \\ { d,4.( ees8 f4) s4 ees4. f8 } >>
  \times 4/6 { g8-.[( aes-. bes-. c-. d-. ees-.]) }
  << { f4 g8-.[ aes-.] bes8.[ aes16] g4 aes8-.[ aes-. aes-. f-.] g4 } \\ { bes,1 bes2 bes4 } >> r4 << { f'4 g8-.[ aes-.] bes8.[ aes16] g4 aes8-.[ aes-. aes-. f-.] } \\ { bes,1 bes2 } >> g'16\f[( ees) d-.( c-.] bes-.[ aes-. g-. f-.]) ees8 << { c'4 c8 c4( ees8) } \\ { aes,4 aes8 aes4 s8 } >>  r8

  ees8 << { bes'4 bes8 bes4\fermata } \\ { g4 g8 g4 } >> \grace { bes32[( c d c bes]) } ees8 r8\fermata << { bes4 a8[(bes]) c2 c4 s4  f2 f4 } \\ { f,4\p s r ees4^( d) bes'8[^( d]) r4 aes g } >> ees'8[( g]) bes2( bes16[)( b c d]) ees[ c( bes aes]) \grace { g16 } f2\trill ees4 ees,8.[ ees16] f8.[( d16]) \grace { ees16 }  d8.\trill[( c32 d])

  ees4 r r2 ees8[( bes) ees( bes]) f'8[( bes,) d( bes]) ees4 r r2 r4 g, r aes r d r ees r ees bes8[( g) bes( g]) aes4 c bes bes g16[( ees') bes'( ees,]) ees'16[( ees,) bes'( ees,]) aes,16[( ees') c'( ees,]) ees'16[( ees,) c'( ees,])

  d16[( bes') f'( bes,]) aes'16[( bes,) f'( bes,]) ees,16[( bes') g'( bes,]) bes'16[( bes,) g'( bes,]) \times 4/6 { g8\p[( ees f g aes bes]) } \times 4/6 { c8[( d ees f g aes]) } \times 4/6 { bes8\f[( g ees bes g ees]) } \grace { g16 } f8\trill[( ees f g]) << { s8 ees4. ees4 e4 } \\ { ees8-|[ bes( c\rfz des]) c4 bes } >>

  < aes f' >8[( g'16 aes]) g8-|[ f-|] f\trill[( ees) ees\trill( d]) << { s8 ees4. ees4 e4 } \\ { ees8-|[ bes( c des]) c4 bes } >>
  < aes f' >8[( g'16 aes]) g8-|[ f-|] f\trill[( ees) ees\trill( d]) ees4( ees') bes8.[ g16] ees4 \bar ":|"

}


violin_rondo = \relative c' {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \tempo "Allegretto"
  \time 2/4
  \clef treble
  \key ees \major

  \grace{s16}
  R2 c8.\p[( bes16]) aes4 d8.[( c16]) bes4 ees r << { ees2 ees4 } \\ { c4\f bes8.[( aes16]) g4 } >> r4 aes c bes r \grace { bes16 } g'4\p f8.\trill[( ees16]) ees4 aes8.[( g16]) f4 bes8.[( aes16]) aes8[(g) f( ees]) \grace { ees16^( } ees'4)\f d8.[( c16]) bes8.[(g16) c8.( aes16]) g4 f\trill ees2 \bar ":|"

  << { ees2 } \\ { c4 bes8.[( aes16]) } >> < g ees' >8.[( bes16]) ees8.[( f16])
  << { bes2 } \\ { g4 f8.[( ees16]) } >> < d bes' >8.[( f16]) bes8.[( c16])
  < f, d' >4 < f d' >8.[ < f d' >16] < f ees' >2( < f d' >8)[ f']

  ees16[( d) c( bes]) bes[( a) g( f]) f-|[ d'( c bes]) a[ ees' c a] bes[ f' d bes] c[ ees f ees] d[ f d bes] a[ ees' c a] bes[ f' d bes] c[ ees f ees] d[ f d bes] bes'[ bes, bes' a] g[ g, g' f]

  ees[ ees, ees' d] c[ c, c' bes] << { s8 a4. a2 } \\ { a8[( f ees f]) ees[( f ees f]) } >>
  \times 2/3 { d16[( f bes]) }
  \times 2/3 { d16-|[ c-| bes-|] }
  \times 2/3 { a16[( c ees]) }
  \times 2/3 { g16-|[ f-| ees-|] }
  \times 4/6 { d16[ ees f g a bes] }
  \times 4/6 { a16[ g f ees d c] }
  \times 4/6 { bes16[ f bes d c bes] }
  \times 4/6 { c16[ f, c' ees d c] }

  \times 4/6 { d16[ ees f g a bes] }
  \times 4/6 { a16[ g f ees d c] }
  bes4 r16 f[( bes d]) c[( bes d f]) ees[( d f d]) g[( ees d c]) \appoggiatura { bes16[ c] } c4\trill bes4( bes16)[ c( bes aes]) g4\p \grace { g16 } f16[( ees f g]) aes[( bes) g( aes]) f[( g) ees( f])

  d[( bes d f]) \grace { f16 } ees[( d ees f]) g[( aes) f( g]) ees[( f) d( ees]) c8.\f[( bes32 aes]) g8[ aes\trill] g[ aes\trill g bes'] \grace { bes16^( } bes'8.)[ aes32 g] f8[ g\trill] aes16[( f) d( bes]) aes8 r8_\markup{\italic "D.C."} \bar "||"
}
