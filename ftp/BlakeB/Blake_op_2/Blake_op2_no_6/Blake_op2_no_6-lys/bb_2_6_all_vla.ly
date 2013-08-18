\version "2.16.0"

viola_minore = \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \time 2/4
  \clef alto
  \key c \minor

  < c, ees' g >4 < f' aes >4 << { g s8 c c[ b16( c]) } \\ { ees,4 c'8[ es,] d s8 } >> d'16[ b g f] ees[( g) f( aes]) g8[ g,] c16[ ees g c] ees4( ees16)[ ees d\trill( c]) d4(

  d16)[ d c\trill( b]) c[ ees d c] b[ g d b] g[ f ees d] \grace { c16^( } c'4) b c8.[ d16 ees8 fis] g4 g,8[ b] c16[( ees) d( f]) ees8 r r bes\p d16[( ees f g])

  aes4( g16[)( f ees f]) g8[ \times 2/3 { g16( aes g]) } f8[ ees] bes[ bes'] bes,16[( d) f( aes]) g[( ees) bes( g']) \grace { g16 } f[( ees f g]) ees[( bes) g( bes]) \grace { bes } aes[( g aes bes]) g8.[( aes32 bes]) << { ees4 ees aes8[( g]) } \\ { c,8[( bes]) aes[( g]) bes4 } >>

  ees4\f \grace { aes16 } g16[( f g aes]) bes4 aes g16[( ees) ees( g]) g[( ees) d( c]) bes8[ bes'] r4 r8 ees,8 \grace { g16 } f16[( ees f g]) aes4 g f8[( g aes a]) bes4 r << { d,4\p( aes') g } \\ {bes,2 bes4  } >> ees'16[( bes) g-| ees-|]

  << { d4\p( aes') g } \\ {bes,2 bes4  } >> ees'16[( bes) g-| ees-|] g,[ bes ees bes] c[ ees d ees] bes ees d ees] aes,[ ees' d ees] g,[ ees' aes, ees'] bes[ ees bes d] ees,[ ees' bes g] ees8 r c'4\f b c8.[ d16 ees8 fis]

  g4 g,8[ b] c16[( ees) d( f]) ees8[ b] c16[( ees g) c-|] ees[ ees( d
							       c]) b8
< d, b' >4 < d b' >8 c'16[( g) aes( f]) g8[ g,] c,16[ c' g ees]
c4-\tag #'vla _\markup{\italic "D.C." }\bar "||"

}


viola_duetto_vi = \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \tempo "Allegro con Spirito"
  \time 2/2
  \clef alto
  \key ees \major

  % This leading grace is necessary because there is a leading grace
  % note in the violin part. Without it, the two staves together would
  % not synchronize. -gl
  \grace {s8}
  r8 ees,[ g bes] ees[ g ees bes]
  \times 4/6 { g8[( aes bes c bes aes]) }
  g4 r r2
  \times 4/6 { r8 bes[( c d c bes]) }
  ees4( des
  \times 4/6 { c8)([ aes bes c bes aes]) }

  \times 2/3 { g8[( bes ees]) }
  \times 2/3 { g8-.[( f-. ees-.]) }
  \times 2/3 { d8[( bes d]) }
  \times 2/3 { f8-.[( ees-. d-.]) }
  \times 2/3 { ees8[( bes ees]) }
  \times 2/3 { g8-.[( f-. ees-.]) }
  \times 2/3 { d8[( bes d]) }
  \times 2/3 { f8-.[( ees-. d-.]) }
  \times 4/6 { ees8-.[( g-. f-. ees-. d-. c-.]) } bes4 r8 aes8 g[( bes ees) bes-|] \grace { bes16 } aes8( g aes bes) \appoggiatura { g16[ ees'] } ees'2 < g,, ees' >4. < g ees' >8

  ees'2( \times 4/6 { ees8[ ees f g f ees]) } bes'2 aes g( \times 4/6 { aes8[)( c d ees d c]) } bes4 << {  bes8.[ bes16] bes2 bes4 bes8.[ bes16] bes2 bes8 s8 } \\ { g8.[ g16] aes2 g4 g8.[ g16] aes2 g8[ ees'] } >>
  ees4( \times 4/6 { ees8)[( d c bes aes g]) } bes4.( g8) f4-| f

  bes4.( c8) d4 ees16[( d c bes]) c4.( d8) \times 4/6 { ees8[ d c bes a g] } f4  f,8[( g]) a4 bes16[( d) c( ees]) d4.( c8) bes4 r << { f'2 f4. s8 f2 f4  } \\ { a,4\p bes8[ c] d8.[ c16] bes8 r8 c8-.[( c-. c-. a-.]) bes4 } >> r4

  << { f'2 f4. s8 f2 f4  } \\ { a,4 bes8[ c] d8.[ c16] bes8 r8 c8-.[( c-. c-. a-.]) bes4 } >> r4 r r8 < g' bes >8\f( g16[) ees g bes] ees[ bes f ees] bes8 r8 r < f' bes >8( f16[) d f bes] d[ bes f d]\fermata r2 r4 e,4\p( f) f r a

  bes4 d8.[ f16] bes8.\f a16] \times 2/3 { g8[ f ees] } d4 bes f' f, bes bes8.[ bes16] c8.[( a16]) \grace { bes16 } a8.[\trill g32 a] bes4 bes r8 bes-|[ d-| f-|] bes[( f) bes( f)] c'( f,) a( f) bes4 bes, r f

  d16[( bes') f'( bes,]) f'[( bes,) f'( bes,]) ees,16[( bes') g'( bes,]) g'[( bes,) g'( bes,]) a[( f') ees'( f,]) ees'[( f,) ees'( f,]) bes,[( f') d'( f,]) d'[( f,) d'( f,]) << { d4 f bes2 bes8 s8 s4 } \\ { bes,4 d f2 g8.[^( ees16) ees'8.^( c16]) } >> \appoggiatura { bes16[ c] } c2\trill bes4 d, r ees

  r a, r bes r \times 2/3 { bes8[(\p c d]) }
  \times 4/6 { ees8[( f g a bes c]) }
  d8[( bes f) d-|] \grace { f16 } ees8[( d ees f]) r8 d\rfz[( ees f]) ees4 d c8[( a bes) ees-|] f4 f, r8\rfz d'8[( ees f]) \grace { f8( } ees4) \grace { ees8( } d4)

  c8[( a bes) ees-|] f4 f, bes bes' f8.[ d16] bes4 \bar ":|:"
  \grace{s8}
  r8 bes8[ d f] bes[ d bes f] \times 4/6 { d8[( ees f g f ees]) } d4 r r2 \times 4/6 { r8 f[( g a g f]) } bes4( aes \times 4/6 { g8)([ ees f g f ees]) }

  \times 2/3 { d8[( f bes]) }
  \times 2/3 { d8-.[( c-. bes-.]) }
  \times 2/3 { a8[( f a]) }
  \times 2/3 { c8-.[( bes-. a-.]) }
  \times 2/3 { bes8[( f bes]) }
  \times 2/3 { d8-.[( c-. bes-.]) }
  \times 2/3 { a8[( f a]) }
  \times 2/3 { c8-.[( bes-. a-.]) }
  bes4 bes, d bes f' f, r2 r8 bes8[ d bes] r f[ a f] r bes[ f' d] bes4 r

  r8 bes[ d bes] r fis[ a fis] g4 << { d'4 d d } \\ { b4 b b } >> c4.\trill( b16[ c]) d4 c c( b8.[) d16] \times 4/6 { g8[ aes g f ees d] } < g, ees' >4 r4 r2 r8 g[ aes b] c4 c,

  c'8\p[( d16 ees]) d8-|[ c-|] c[( b]) b16[( d) c( ees]) d4-| d'\f( b c) c,8[  d ees c] f[ d b g] c[ d ees c] f[ d b g] c4 f g g, c,8[ c' g ees] c4 r

  r8 bes'8[ d f] bes,4 d ees8[ ees, g bes] \times 4/6 { ees8[( g f ees f g]) } aes4 aes,2 a4 bes bes' bes, r4 ees,8\p[( bes') g( bes]) ees,[( bes']) c16[( bes aes g]) aes8[( aes') f( ees]) \times 4/6 { d8[( f ees d ees c]) }

  bes8[( aes') f( ees]) d4 ees16[( g) f( aes]) g4.( f8) ees4 r d ees8-.[( f-.]) g8.[( f16]) ees4 f8-.[( f-. f-. d-.]) ees16\f[( g bes) ees] bes-|[ g( f\trill ees]) d4\p ees8-.[( f-.]) g8.[( f16]) ees4 f8-.[( f-. f-. d-.]) ees4 r

  r r8 < c ees >8\f( c16)[ aes c ees] aes[ ees c aes] g8 r8 r8 < bes ees >8( bes16)[ g bes ees] g[ ees bes g]\fermata r2 r4 a4\p( bes) bes r d( ees) g8[( bes]) ees8.\f[( d16]) \times 2/3 { c8-.[ bes-. aes-.] } g4 ees bes' bes,

  \times 2/3 { ees8[( g bes]) } << { bes8.[ bes16] bes2 } \\ { g8.[ g16] aes8.[^( f16]) \grace { g16 } f8.[ ees32 f] } >> g16[ bes aes g] f[ ees f g] aes[ bes c d] ees[ bes g ees] << {bes'4 bes8.[ bes16] bes2 } \\ { g4 g8.[ g16] aes8.[^( f16]) \grace { g16 } f8.[ ees32 f] } >> g16[ bes aes g] f[ ees f g] aes[ bes c d] ees[ bes g ees]

  g,16[( ees') bes'( ees,]) bes'[( ees,) bes'( ees,]) aes,[( ees') c'( ees,]) c'[( ees,) c'( ees,]) d,[( bes') aes'( bes,]) aes'[( bes,) aes'( bes,]) ees,[( bes') g'( bes,]) g'[( bes,) g'( bes,]) << { g4 bes ees2( ees8) s8 s4 } \\ { ees,4 g bes2( c8[) aes aes' f] } >> \grace { ees16[ f] } f2\trill ees4 g, r aes r d r ees

  \times 4/6 { ees,8-|[ ees'( d des c bes]) } aes4 r g8[( bes\f ees) bes-|] \grace { bes16 } aes8\trill[( g aes bes]) g-|\rfz[ g'( aes bes]) aes4 g f8[ d ees aes,] bes4 bes r8 g'8\rfz[( aes bes]) \grace { bes8( } aes4) \grace { aes8( } g4) f8[ d ees aes,] bes4 bes < g ees' >4 bes8.[ g16] ees4 r

  \bar ":|"

}


viola_rondo = \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \tempo "Allegretto"
  \time 2/4
  \clef alto
  \key ees \major

  \grace { bes16^( } g'4)\p f8.\trill[( ees16]) ees4 aes8.[( g16]) f4 bes8.[( aes16]) aes8[( g) f( ees]) \grace { ees16^( } ees'4\f) d8.[( c16]) bes8.[( g16) c8.( aes16]) g8.[( f16) aes8.( f16]) ees8[( d) c( bes]) R2

  c8.\p[( bes16]) aes4 d8.[( c16]) bes4 ees r << { ees2 } \\ { c4\f( bes8.[ aes16]) } >> g8.[( ees'16) aes,8.( ees'16]) bes8[( ees) bes( d]) ees4 ees, \bar ":|" aes'4 g8.[( f16]) ees4 r ees d8.[( c16]) bes4 r r8 f'8 ees16[( d) c( bes])

  a8[ c] bes16[( a) g( f]) bes8[ d ees e] f,[ f' f,] r8 f'[ ees d bes] a[ f bes d] f[ ees d bes] a[ f bes d] ees16[ g8 f16] ees16[ ees8 d16]

  c16[ c8 bes16] a16[ a8 g16] f8-| c'4 c8( c) c4 c8 bes8[ bes] r8 a \times 4/6 { bes16[ c d ees f g] } f8[ f,] r8 bes r a \times 4/6 { bes16[ c d ees f g] } f8[ f,]

  bes16-|[ d( f ees]) d8 r r16 f[( bes d]) c[( bes) d( bes]) ees,8. e16] f8[ f,] bes16[ bes' f d] bes[ aes g f] ees[( bes') ees( bes]) d[( bes) d( ees]) f[( g) ees( f]) d[( ees) c( d]) \grace { bes16^( } aes'4) \grace { aes16 } g16[( f g aes])

  bes[( c) aes( bes]) g[( aes) f( g]) \grace { ees16^( } ees'8.)[( d32
								   c])
<< { bes8[ c\trill] bes[ c\trill] bes } \\ { ees,4 ees4. } >> r8 g8.[(
  f32 ees]) << { d8[ ees] f8 s s4 } \\ { bes,8[ bes] bes[ bes]^( bes16)[ d^( f aes])-\tag #'vla _\markup{\italic "D.C."} } >>  \bar "||"

}
