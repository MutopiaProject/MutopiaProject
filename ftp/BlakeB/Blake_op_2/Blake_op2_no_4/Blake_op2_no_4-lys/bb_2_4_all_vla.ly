\version "2.16.0"

rf = #(make-dynamic-script "rf")

viola_rondo = \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \tempo "Allegretto"
  \time 2/4
  \clef alto
  \key bes \major
  
  r4\p << { f( f) } \\ { bes,( c)  } >>
  r 
  << { f2( f4) } \\ { a,2( bes4) } >>
  r4 d bes g a8[( bes])
  << { g2 } \\ { ees4( e) } >>
  f4 f' bes,8[( d f bes]) bes[( a) g( f]) f[( a c ees]) ees[( d) c( bes]) d8.\f[ bes16] d16[( bes) d( bes]) d[( bes) a( g]) f[( ees) d( c]) bes8[ d f f,] bes[ bes'] bes,4 \bar ":|" f'8[( c\trill) f( ees]) ees[( d) c( bes]) e2( f4) r c16[( bes) a( f']) e[( g) f( a])

  g[( bes) a( c]) bes[( d) c( bes]) a8-|[ a( g f]) c[ c'] c,4 ees16[ c' g e] c[ e bes e] a,[ f' c a] f[ a c f] e[ c' g e] c[ e bes e] a,[ f' c a] f[ a c f] << { d4 g8.[( f16]) e4 a8.[( g16]) } \\ { bes,4 g\sf c a\sf } >>  f'8.[( g32 a]) bes8[ a] a8.[( g16]) f16[( e-|) d( c]) r4 << { f4( g) s4 e2( f4) } \\ { c4( c) r  c2( c4)} >> r4 a'8-|[ a( f) f(] d[) d( bes) bes-|]

  a16[( f) d'-.( bes-.]) a16[( f) d'-.( bes-.]) a8[ f16( a]) c8[ c,] f-|\pp[ f'( e d] c[ bes a g]) f-|\p[ f'( e d] c[ bes a g]) f[ f'\<( g e] f\![ a c c,-|]) f-|\f[ d( c a]) bes[( d f) f,-|]-\tag #'vla _\markup{\italic "D.C."} \bar "||" 

  \key g \minor
  r8 g16[( a] bes[ a bes cis]) d4 d, < fis a >2 g8[ g'] g,4 << { d'4 bes' a d8[_( a]) bes8.[_( c32 d]) } \\ { bes,4\p g' g8[^( fis]) fis4 g4 } >> c8[( bes]) bes\trill[( a] a4) r8\f bes,16[( c] d[ c d e]) 

  f4 f, < f a >2( < f bes >8)[ bes'] bes,4 d8\p[( ees) f( d]) ees\rf[( d ees) b-|] c8.[ d16 ees8 e] f,8[ f' f,] r r2 r8 f'-|\f ees16[( d) c( bes]) a4. bes8 c[ c'] bes16[( a) g( f]) bes4 r

  d,16[( ees e f]) ees[( d c bes]) a4. bes8 c16[( d ees d]) f[( ees d c]) bes4 r g'\p \grace { g16 } f8.\trill[ ees32 f] ees4 r8 e8 f4 \grace { f16 } ees8.\trill[ d32 ees] << { d4\f aes' g8.[ f16 ees8 r16 ees16] } \\ { bes4 bes bes4. } >>

  d16[( f) ees( g]) f8[ f,] bes16[ bes' f d] bes8 r r g16[( a] bes[ a bes cis]) d4 d, < fis a >2 g8[ g'] g,4 << { d'4 bes' a d8[_( a]) bes8.[_( c32 d]) } \\ { bes,4\p g' g8[( fis]) fis4 g } >> c8[ bes] bes\trill[( a] a4)

  r8\f g,16[( a] bes[ a bes cis]) d4 d, < fis a >2( g8[) g'] g,4 r8 g'[ fis a] g[ bes, a c] bes[ c16 ees] d16[( cis) d-| d,-|] g[ g' d bes] g8-\tag #'vla _\markup{\italic "D.C."} r8\fermata \bar "||"
 
}


viola_duetto_iv = \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \tempo "Allegro con Espressione"
  \time 2/2
  \clef alto
  \key bes \major

  \partial 4 f8.[( a16])
  bes8.[( c16) d8.( ees16]) \appoggiatura { d16[ ees] } f4.( ees16[ d]) d8[( c]) c2 f,8.[( g16]) a8.[( bes16) c8.( d16]) \appoggiatura { c16[ d] } ees4.( d16[ c]) 

  c8[( bes]) bes4 f16[( a bes g] f[ d ees c])
  << { f2 f2 }  \\ {d2 c4.^( d16[ ees])  }  >>
  d8[( f bes) d-|] f-|[ f( ees d]) d16[( c) ees( c]) bes2 a4 \grace { c16( } bes8[)( a16-. g-.] f-.[ ees-. d-. c-.]) bes4 r4
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
  bes4 r
  \times 4/6 { bes8[ f' ees d c bes] }
  \times 4/6 { a8[ c bes a g f] }

  \times 4/6 { bes8[ f' ees d c bes] }
  \times 4/6 { a8[ c bes a g f] }

  bes4 d8.[ f16] bes8[ f d bes] f[ f' c a] f4 a8.\p[( c16]) f8.[( g16]) a4 d,4 e8[( d]) c4 e f a,8.[( c16]) f8.[( g16]) a4 d,4 e8[( d]) c4 e f
  \times 2/3 { bes8[ a f] }
  e16\f[ c' g e] f[ c' a f] e16[ c' g e] f[ c' a f] e16[ c' e, f] g16[ fis g fis] g[ f e d] c[ bes a g]

  f8[ a] c[ f16( a]) c4( a8[) f-|] c4 c' c, r r1 c2\p e4. c8 f2\< ees\! d4.\f c8 bes4 bes a < a f' > < a f' > r r2 d4 bes'( bes8[) a g f] e4 c'( c8[) c, a f] bes4 c f8\p[( a c) a-|] g[( e c) e-|] f[( a c) a-|] g[( e c) e-|] f[( a c) a,-|] bes4\f c d8[( d') c( bes]) a-|[ a,( bes c])

  f,8[ a16( c]) f8-|\p[ c'-|] bes[( g) c-| bes-|] a8[( f]) r8 c' bes[( g) c-| bes-|] a[( f]) r c d8.\f[( f16) e8.( g16]) f8[( f') e( d]) c8.[( a16]) \grace { a16 } g16\trill[( f g a]) f4  < c f > < c f > \bar ":|:" r4

  \times 2/3 { f8[ a c] }
  \times 2/3 { f,8[ a c] }
  \times 2/3 { f,8[ a c] }
  \times 2/3 { f,8[ a c] }
  \times 2/3 { e,8[ g c] }
  \times 2/3 { e,8[ g c] }
  \times 2/3 { e,8[ g c] }
  \times 2/3 { e,8[ g c] }
  \times 2/3 { e,8[ g c] }
  \times 2/3 { e,8[ g c] }
  \times 2/3 { e,8[ g c] }
  \times 2/3 { e,8[ g c] }
  \times 2/3 { f,8[ a, c] }
  \times 2/3 { f8[ c a ] }
  f4 r r f'-| e4.( f16[ g]) 

  f8-|[ a,( c f]) a8-|[ f( g a]) bes4 d c c, f, f' f, f'8.\p[( a16]) bes8.[( c16) d8.( ees16]) \appoggiatura { d16[ ees] } f4.( ees16[ d]) d8[( c]) c2 f,8.\f[( g16]) a8.[( bes16) c8.( d16]) \appoggiatura { c16[ d] } ees4.( d16[ c]) 

  c8[( bes]) bes4 f16[( a bes g] f[ d ees c]) 
  \times 4/6 { bes8\f[ f' ees d c bes] }
  \times 4/6 { a8[ c bes a g f] }
  bes4 a2 fis4 g g8.[( a16]) bes8[ c16( bes]) a8-|[ g-|] d4 fis8.[ a16]
  \times 4/6 { d8[ ees d c bes a] } g4 bes a fis

  g4 g' r d, g bes a fis g g' r d, g4.\p( a8) bes[( d) a( d]) g,-|\f[ g'( fis a]) g4 bes, c a d d, g bes8.[ d16] g4 r r8\rf b,8[( c d]) c4 g'8.[( f16]) 

  \times 2/3 { ees8[( g) c-|] }
  \times 2/3 { c8[( b) d-|] }
  c4 r r8 a,8\rf[( bes c]) bes4 f'8.[( ees16])
  \times 2/3 { d8[( f) bes-|] }
  \times 2/3 { bes8[( a) c-|] }
  bes4
  \times 2/3 { f8[ d bes] }
  a16[ f' c a] bes16[ f' d bes ] a16[ f' c a] bes16[ f' d bes ] a[ f' a bes] c[ b c b] c[ bes a g] f[ ees d c]

  bes8[ d f d] bes4 r16 f'[ d bes] f8[ f' c a] f4 r r1 f'2\p a4. f8 bes2 aes2 g4.\f f8 ees4 ees d << {d d } \\ { bes bes } >> r r2 g4 ees'( ees8[) d c bes] a4 f'4( f8[) f d bes] ees4 f bes,8\p[( d f) d-|] c[( a f) a-|] bes[( d f) d-|]  c[( a f) a-|] bes\f[( d f) d-|] ees4 c d8-|[ g( f ees]) d8-|[ d,( ees f]) bes-|[ bes'( d f]) ees[( c) f-| ees-|] d[( bes]) r8 f'8 ees[( c) f-| ees-|] d[( bes]) r8 d,\f ees4-| c-| d8-|[ g( f ees]) d-|[ d,( ees f]) bes8. bes'16 f8. d16] bes4 s \bar ":|"

}
