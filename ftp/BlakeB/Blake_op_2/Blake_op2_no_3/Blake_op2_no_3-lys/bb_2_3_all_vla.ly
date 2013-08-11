\version "2.16.0"

viola_rondo = \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \tempo "Allegretto"
  \time 2/4
  \clef alto
  \key a \major

  cis'4 d e fis16[( e dis e]) b4 cis d e16[( d cis b]) a4 b cis d e8.[( cis16]) a16[( b32 cis) b16-| a-|] a16[( gis fis\trill e]) e8[d16 b] a16[( e') a,( e')] b[( e) b( e)]

  cis[( e) cis( e)] a,16[( e') a,( e')] gis,[( e') gis,( e')] a,16[( e') a,( e')] b[( e) b( e)] gis,[( e') gis,( e')] a,[ cis e a] a,8 r8 e'16[( fis gis a]) b[( cis d b]) cis[(a) d( b]) a-|[ e-| gis-| e-|] a[ e cis e] a,4 \bar ":|" a4 a'(

  a) gis fis8[ fis16 e] dis8[ b] e,[ e'] e,[ b'] e8.[ fis16 gis8 gis] gis-|[ a16( fis]) gis8-| r8 r8 r16 dis16 e8[ e,] b'[ b'] b,16[( gis') fis( a]) gis16-|[ b8 cis16-|] dis16-|[ e8 dis16](

  dis16[) cis8 b16]( b[) a8 gis16-|] e'16([ e,) e'( dis]) dis[( cis) cis( b]) b( a) a( gis]) gis[( fis) fis( e]) b[ fis' dis fis] b,[ fis' dis fis] b,[ fis' dis fis] b,[ fis' dis fis] e[ b' gis b] e,[ b' gis b] e,[( e' dis\trill cis]) b[( a gis\trill fis])

  e8\p[( b) fis'( b,]) gis'[( b,]) r8 e dis[( b) e( b]) fis'[( b,]) r8 dis e8\f[ < b gis'> < b gis' >] r8 b'16[( gis) b( gis]) e8 r8 gis16[( e) a( fis]) e[ b dis b] e[ e' b gis] e[ d cis b]

  a16[ e' cis e] a,16[ e' cis e] a,16[ e' cis e] d[ e b e] cis[ e a, a'] cis8[ cis] cis4 \grace { cis16 } b8.\trill[ a32 b] a16[ e cis e] a,8 r8 e''8. b16] a16[( gis) fis( e]) a8.[ e16] d16[( cis) b( a])

  e16[( fis gis a]) b[( cis d b])-\tag #'vla ^\markup{\italic "D.C."} \bar "||" \key a \minor a8. [( b16) c8-.( c-.]) c8[( e) b( e]) a,-|[ f'( e d]) c[ b a gis] a4\p c8[( b16\trill a]) b4 < b e >\f << { e8 s s e e s } \\ { c8[^( b16\trill a]) a8[ c] b8[ e8] } >>  e16[ d-| c-| b-|]

  a4 r r8 c\f[ b g] c[ fis g f] e[ d c b] c16[ g e g] c,8 r g'4 b8[( a16\trill g]) c4 e'8[( d16\trill c]) b16[ g d b] g8 r < c, g' e'>4 r

  g'4 \grace { b16 } a16[( g a b]) c8[ d e fis] g[ d b g] f16[( a) c( f]) a8-|[ a16( fis]) g8[ f e cis] d[ b] c[ e16 c] g8[ g'] g,16[( b) d( g]) e16\p[( g,) e'( g,]) d'[( g,) f'( g,])

  f'[( e d c]) d[( e f d]) e16[( g,) e'( g,]) d'[( g,) f'( g,]) f'[( e d c]) d[( e f d]) \grace {c16^(} g'8.[ f16) e8-|] r8 d8.[( c16) b8-.( b8-.]) c8[ e16( f]) g8[ g,] c,[ c'] e16[ d c b]

  a8\f[ e' b e] c[ e b e] a,[ f' e d] c[ b a gis] a16[( c e) a-|] c8 r8 r8 d,8. c16[ b a] g[( b d) g-|] b8 r8 r8 c,8. b16[ a gis]

  a8[ c b gis] a[ c' b gis] a[ c, d e] a,4\p c8[( b16\trill a]) b4 < b e>\f << { e8 s s e }  \\  { c8[^( b16 a]) a8[ c] } >> < b e >2\fermata-\tag #'vla ^\markup{\italic "D.C"} \bar "||"

}


viola_duetto_iii = \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \tempo "Allegro con Espressione"
  \time 4/4
  \clef alto
  \key a \major

  \partial 4 cis'8.[( d16]) e8.[( cis16]) a4 r8 e16[( a] cis[ a cis e]) d8.[( b16) gis8.( b16]) e,4.( d'8) d[( cis b\trill a])
  \times 2/3 { a8[( cis b]) }
  \times 2/3 { b8[( d cis]) }


  \times 2/3 { cis8[( e d]) }
  \times 2/3 { d8[( fis e]) }
  e4 \grace { fis16 } e16[( dis e fis]) e4 b8.[( d16]) d4( cis) gis4.( b8)
  \times 4/6 { a[( b cis d e fis]) }
  e8[( a,) d( b)] \appoggiatura { cis4 } b2\trill \appoggiatura { b16 } a8[( gis16-. fis-.] e-.[ d-. cis-. b]) a4 r r e'8.[( cis16]) a8[( cis16 e]) a4

  r d,8.[( b16]) gis8.[( b16]) e,4 a d8[( cis]) cis4-| gis-|
  \times 2/3 { a8[( cis b]) }
  \times 2/3 { b8[( d cis]) }
  cis4-| r r gis-| a-| r e' b8.[( d16])
  \times 4/6 { cis8-|[ a'( g fis e d]) }
  cis4 d cis8-|[ cis( b a])

  e4 e' e,8\p[ b''16( fis]) e8-.[( e8-.]) fis8.[( gis32 a]) gis8-.[( fis-.]) e[ e'16( b]) gis8-.[ gis-.] a8.[( b32 cis]) b8-.[( a-.])
  \times 2/3 { gis8[( b a]) }
  \times 2/3 { a8[( cis b]) }
  b4.( cis16[ dis]) e4 e e8[( dis) cis\trill( b]) b4 r cis2\f a4 fis

  dis2 b'4. a8 gis[( a) b-| cis-|] dis[( e) cis-| a-|]gis[(fis) a( fis]) e[( dis) cis( b]) < b gis' >4\p r gis' ais b r gis4.( fis16[ e])  dis4 dis2 dis4 e e8[( b]) e[( gis) fis( a])
  << { gis4_( a gis-|) } \\ { b,2.\f } >>
  r8 dis

  e4
  \times 2/3 {e8[( fis gis]) }
  \times 4/6 { fis8-|[ dis( e fis gis a])  }
  gis4 gis r r8 e-| dis[( e) cis-| ais-|] b4 b e'8_\markup{\italic "Dolce"}[( b]) b2 cis8[( a]) a8[( gis]) gis2 a8[( fis]) e4. gis16[( a])
  \times 2/3 { b8[( gis) e'-|] }
  \times 2/3 { b8[( gis) e'-|] }

  b4( gis8.[) e16-|] \appoggiatura { gis16 } fis8\trill[( e fis gis]) e4 r r2 \grace { e16^( } e'8)[ b] b2 cis8[( a]) a[( gis]) gis4 r gis8.[( e16]) gis4 r b, b gis < gis e' > < gis e' > \bar ":|:" r r b'8.[( gis16]) e8[( gis16 b]) e4

  r a,8.[( fis16]) dis8.[( fis16]) b,4 e a8[( gis]) gis4 dis
  \times 2/3 { e8[( gis fis]) }
  \times 2/3 { fis8[( a gis]) }
  gis4 r r dis-| e-| r b' fis8.[( a16])
  \times 4/6 { gis8-|[ e'( d cis b a]) }
  gis4 a b b, e e' e, cis'16\p[( d) cis( d)]

  e8.[( cis16]) a4 r8 e16[( a] cis[ a cis e]) d8.[( b16) gis8.( b16]) e,4. d'8 d[( cis b\trill a])
  \times 2/3 { a8[( cis b]) }
  \times 2/3 { b8[( d cis]) }
  \times 2/3 { cis8[( e d]) }
  \times 2/3 { d8[( fis e]) }
  e4 \grace { fis16 } e16[( dis e fis]) e4 b8.[( d16]) cis8[( d16 cis]) b16\ff[( a gis fis])

  eis2 fis4 cis8.[( e16]) d4( dis) \grace { e16^( } e'4) b8.[( d16]) cis4 cis( d) ais( b) r r8 b,8-|[ d-| b-|] fis[ fis' cis ais] fis4 r d'8[( fis) b,( fis']) ais,8[( fis') cis( fis]) b,[( cis d b-|]) ais4 r

  d8[( fis) b,( fis']) ais,8[( fis') cis( fis]) b,[( cis d b-|]) ais4 r b r d b fis r < ais fis' >2( < b fis' >4) r d b fis r < ais fis' >2( < b fis' >4) ais4( b) r r gis( a) r r eis'( fis) cis8[ a]

  fis4 fis' a16[( gis a gis]) a-|[ a( gis fis]) eis4-| eis8[( gis]) b4 eis, fis b, cis cis, fis fis' d8-|\p[ e-| d-| e-|] cis[ e cis e] cis[ e gis, e'] a,[_\< e' a, e'] cis4\! a
  << { e'1 e} \\ { gis,2\f a gis a} >>

  e4 e' e, r8 cis'-|\p d8[( e) d( e)] cis-|[ e'16( cis]) a8[ a] b8.[( cis32 d]) cis8-|[ b-|]
  \times 2/3 { a8[( cis b]) }
  \times 2/3 { b8[( d cis ]) }
  cis4 r cis, dis e r
  \times 2/3 { gis,8[( a b]) }
  \times 2/3 { a8[( b cis ]) }
  d4 r fis2\f d4 b gis2(

  a4) r r d, e e' e, r < e cis'>\p r cis' dis e r cis4.( b16[ a]) gis4 gis2 gis4
  \times 2/3 { a8[ cis e]}
  \times 2/3 { a8[ e cis] }
  a4 r cis\f( d cis-|) r8 gis

  a4
  \times 2/3 { a'8[( b cis]) }
  \times 4/6 { b8[( gis a b cis d]) }
  cis4 cis r r8 a gis[( a) fis-| dis-|] e4 e \grace { a16^( } a'8_\markup{\italic "Dolce"})[( e]) e2 fis8[( d]) d[( cis]) cis2 d8[( b]) a4. cis16[( d])
  \times 2/3 { e8-|[ cis( d]) }
  \times 2/3 { e8-|[ cis( d]) }

  e4( cis8)[ r16 a-|] \grace { cis16 } b8[( a b cis]) a4 r r2 a8[( e]) e2 fis8[( d]) cis8[( e) e( a])
  \times 2/3 {cis8[( a) e'-|] }
  \times 2/3 {cis8[( a) e'-|] }
  cis4 a,8.[ cis16] e4 e,
  \times 2/3 { a8[ cis e] }
  \times 2/3 { a8[ e cis] }
  a4 \bar ":|"
}
