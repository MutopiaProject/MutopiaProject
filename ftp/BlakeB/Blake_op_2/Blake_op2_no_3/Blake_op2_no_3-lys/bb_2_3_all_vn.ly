\version "2.16.0"

violin_rondo = \relative c' {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \tempo "Allegretto"
  \time 2/4
  \clef treble
  \key a \major

  a8[ e' b e] cis[ e a, e'] gis,[ e' a, e'] b[ e d e] cis[ e gis, e'] a,[ e' b e] cis[ a cis dis] e-.[( e-.] e16-.)[ gis( b d]) cis4 d

  e fis16( e dis e]) b4 cis d e16[( d cis b]) cis,[( e a) cis-|] b[( a) gis( a]) gis[( a b cis]) d[( e fis gis]) a[( e) fis( d]) cis8[ b\trill] << { a2\fermata } \\ { a2 } >> \bar ":|:" cis4 d16[( cis b a]) b4 e( e8)[ \times 2/3 { a,16( b cis]) }
  cis16\trill[( b) b\trill( a])

  a4( gis8) r8 < b, gis' >8.[ a'16 b8 b] b8[( cis16 dis]) e16[( fis gis a]) b[( a gis\trill fis]) a[( gis fis\trill e]) e[( dis cis\trill b]) b4 b'16[( b,) b'( a]) a[( gis) gis( fis]) fis[( e) e( dis]) dis[( cis) cis( b]) < b, gis' >8 r8 r4

  b'16[( cis dis e]) b8 r8 < b, fis' >8.[( gis'16) a8-.( a-.)] a8.[( b16]) dis16[( cis b a]) < b, gis' >8.[( b'16) e8-.( e-.)] e16[(gis fis\trill e]) dis[( cis b\trill a]) gis4\p a b \grace { dis16 } cis16[( b e gis,]) fis4 gis a8.[( cis16]) b16[( a gis fis])

  e8-|\f[ b16( e]) gis[( e) b'( gis]) e'[( b) gis'( e]) b'[( gis e) b-|] e[( b) cis( a]) gis8[ fis\trill] e4 r4 a8.[( b16) cis8-.( cis-.]) cis4 \grace { cis16 } b8.\trill[( a32 b]) a8.[( cis16) e8-.( e-.]) e4 \grace { e16 } d8.\trill[( cis32 d]) \appoggiatura { cis16 } a'8.[ e16] d[( cis) b( a])

  e'8-.[( e-.]) e4 a,8.[ e16] d[( cis b a]) < gis e' >8 < gis e' >8]  < gis e' >4^\markup{\italic "D.C."} \bar "||"

  \key a\minor

  c'8.^"Minore"[( d16) e8( e]) e4 d << { s8 a16 s16 }  \\ { c16[^( a)( s16 a]) }  >> gis16[( a) f( a)] e[( a) d,( a')] c,[( a') b,( e])  c\p[ a' e c] a8 r8 < gis e' >4 gis'4\f(

  a) c8[( b16\trill a])
  gis8[ < gis b, > < gis b, >]
  r8 c8.\p[( d16) e8-.( e-.]) e4 f8.\f[( g32 a]) g16[( e) d( c]) b[( c) a( c]) g[(c) f,( c']) e,[( c') d,( c']) c,4 e8[( d16\trill c]) d4 g f16[( e) d( c])
  c8[ < c e >] d[ < b g' >]
  \times 4/6 { g'16 a g f e d }

  c4 \grace { f16 } e16[( d e fis]) g8 g'4 f8 e8.[ d16] c16[( e) d( c]) c[( b  a g]) g4 \appoggiatura { a8 } a'4 gis16[( a f d]) c[( b d b]) c[( g e' g,]) g[( f d' f,]) f[( e c' e,]) g8.[( e16]) d8 r

  < g c >4\p < g b[ >8. d'16] d16[( c b a]) g4 < g c >4\p < g b[ >8. d'16] d16[( c b a]) g4 e'8.[( d16) c8-.( c-.]) \appoggiatura { d16[ e] } f8.[( e16]) d4 g16[( a) g( a]) e8[ d\trill] c4 r c8.\f[( d16) e8-.( e-.])

  e4 d << { s8 a16 s16 }  \\ { c16[^( a)( s16 a]) }  >> gis16[( a) f( a)] e[( a) d,( a')] c,[( a') b,( e]) a,4 r16 e''16[( a) g-|] g[( f) f8.] e16[( d) c-|]  b4 r16 d16[( g) f-|] f[( e) e8.] d16[( c) b-|]

  c16-|[ a( a') e]( f[) dis( e) b]( c[) a( a') e]( f[) dis( e) b]( c[) a( a') a,-|] \appoggiatura { c8 } b4\trill a r r gis\f a c8[( b16\trill a]) < b, gis' >2^\markup{\italic "D.C."}\fermata \bar "|"
}


violin_duetto_iii = \relative c' {
  \set Staff.midiInstrument = #"violin"
  \set Staff.instrumentName = #"Violin"
  \tempo "Allegro con Espressione"
  \time 4/4
  \clef treble
  \key a \major

  \partial 4 r4
  r4 e8.[( cis16]) a8[( cis16 e]) a4-| r d,8.[( b16]) gis8.[( b16) e8.( gis,16]) a4 d8[( cis]) cis4 gis
  \times 2/3 { a8( cis b)  }
  \times 2/3 { b( d cis)  }
  cis4 r

  r gis-| a-| r e' b8.[( d16])
  \times 4/6 {cis8-|[ a'( g fis e d])  }
  cis4 d e e a, a' a, cis'8.[( d16]) e8.[( cis16]) a4 r8 e16[( a]) cis[( a cis e]) d8.[( b16) gis8.( b16]) e,4. d'8 d[( cis) b\trill( a])
  \times 2/3 { a8( cis b) }
  \times 2/3 { b8( d cis) }

  \times 2/3 { cis8( e d) }
  \times 2/3 { d8( fis e) }
  e4 \grace { fis16 } e16( dis e fis]) e4 b8.( d16]) d4( cis) gis4.( b8)
  \times 4/6 { a8[( b cis d e fis]) }
  e[( a) gis( b]) a[ e( d cis]) cis\trill[( b]) b4 r4 r8 gis,8 a\p[( b) a( b]) gis-|[ b'16( gis]) e8-.[( e-.])


  fis8.[( gis32 a]) gis8-.[( fis-.])
  \times 2/3 { e8[( gis fis]) }
  \times 2/3 { fis8[( a gis]) }
  gis4 r gis, ais b r4
  \times 2/3 { dis8[( e fis]) }
  \times 2/3 { e8[( fis gis]) }
  a4 r cis,2\f a'4 fis dis2 e4 r4 r a, b b' b, r b'4.\p( cis16[ dis]) e4-.( e-.) e4.( dis16[ cis]) b4 r4


  a4.( cis8) cis\trill[( b) b\trill( a]) a\trill[( gis]) gis4. b8[( a cis]) b4.\f( cis16[ dis]) e[( dis e gis]) \grace { gis16 } fis[( e fis a])
  \times 4/6 { gis8[( e fis gis a b]) }
  \times 4/6 { a8[( fis gis a b cis]) }
  b8[( gis fis e]) dis[( e) cis( ais]) b4.( cis8) \grace { gis4 } fis2\trill e4 r4 r2

  e'8^\markup{\italic "Dolce"} [( b]) b2 cis8[( a]) a[( gis]) gis4 r gis8.[( e16]) gis4 r b, b \grace { e16 } e'8[( b]) b2 cis8[( a]) a8[( gis]) gis2 a8[( fis]) e4.( gis16[ a])
  \times 2/3 { b8[( gis) e'-|] }
  \times 2/3 { b8[( gis) e'-|] }
  \stemUp b4_( gis8.)[ e16-|]  \stemNeutral \grace { gis16 } fis8[( e fis gis]) e4 < b e > < b e > \bar ":|:" gis''8.[( a16])

  b8.[( gis16]) e4 r8 b16[( e]) gis[( e gis b]) a8.[(fis16) dis8.( fis16]) b,4. a'8 a[( gis fis e])
  \times 2/3 { e8( gis fis) }
  \times 2/3 { fis8( a gis) }
  \times 2/3 { gis8( b a) }
  \times 2/3 { a8( cis b) }
  b4 \grace { cis16 } b16[( ais b cis]) b4 fis8.[( a16]) a4( gis) dis4.( fis8)
  \times 4/6 { e[( fis gis a b cis]) }

  b8[( e,) a( fis]) \grace { gis4 } fis2\trill \appoggiatura { fis16 } e8[( dis16-. cis-.] b[-. a-. gis-. fis-.] e4) r4 a,8\p[( e') cis( e]) a,[( e') cis( e]) gis,[( e') b( e]) gis,[( e') b( e]) a,4 d8[( cis]) cis4 gis
  \times 2/3 { a8[( cis b]) }
  \times 2/3 { b8[( d cis]) }
  cis4 r4 r4 gis a r cis'\f gis8._"mo"[( b16]) a4( ais)

  \appoggiatura { b4 } b'4 fis8.[( a16]) g4( gis) a e8.]( g16] fis4)
  << { fis4 } \\ { cis8.[^( e16]) } >> d16[ b fis d] b[ d fis b] d[ b fis' d] b'[ fis e d] d8\trill[( cis] cis4) r fis,4 b8.[( cis16 d8-|) r16 b-|] cis8.[( d16 e8-|) r16 cis-|]

  d8.[( e16]) fis4 fis16[( gis) e( fis]) d[( e) cis( d])
  b8.[( cis16 d8-|) r16 b-|]
  cis8.[( d16 e8-|) r16 cis-|]
  d8.[( e16]) fis4 fis16-|[ gis-| e-| fis-|] d-|[ e-| cis-| e-|]
  d[( cis b) b'-|] fis-|[ d( cis\trill b]) b'-|[ d,( cis\trill b]) fis'-|[ d( cis\trill b])

  ais16[( cis) e-.( cis-.]) g[( cis) e-.( cis-.]) fis,[( cis' e) g-|] fis-|[ e-| d-| cis-|]
  d[( cis b) b'-|] fis-|[ d( cis\trill b]) b'-|[ d,( cis\trill b]) fis'-|[ d( cis\trill b])
  ais16[( cis) e-.( cis-.]) g[( cis) e-.( cis-.]) fis,[( cis' e) g-|] fis-|[ e-| d-| cis-|]
   fis4 << { fis4 fis } \\ { cis8[^( d16 e)] e16[^( d cis d]) } >> b4

  e4 << { e4 e } \\ { b8[^( cis16 d)] d16[^( cis b cis]) } >> a4
  cis4 << { cis4 cis  fis,8[_( cis]) } \\ { gis'8[^( a16 b)] b16[^( a gis a] s4) } >>
  fis8[( fis') a,( a']) \appoggiatura { cis,8 } cis'4. b16[ a] gis8[( b]) d2 cis16[( b a gis]) a[( eis) fis( cis]) \grace { e16 } d8[ cis16 b] \grace { a4 } gis2\trill fis2\p( fis8.)[( gis16]) \grace { a16 } gis8.\trill[( fis32 gis])

  a2( a8.)[( b16]) \grace { cis16 } b8.\trill[( a32 b]) cis8.\<[( d16]) \grace { e16 } d8.\trill[ cis32 d]\! e8[( fis16 gis]) a-|[ e( d cis]) d\f[ b gis' e] b'[ gis e d] cis[ a e' cis] a'[ e cis a] d[ b gis' e] b'[ gis e d] cis[ a e' cis] a'[ e cis a]

  dis16[( e) dis( e]) e,4 r8 e'16\p[( cis]) a8-.[ a-.] b8.[( cis32 d]) cis8-|[ b-|] a-|[ a'16( e]) cis8-.[( cis]) d8.[( e32 fis]) e8-|[ d-|]
  \times 2/3 { cis8( e d) }
  \times 2/3 { d8( fis e) }
  e4.( fis16[gis]) a4 a a8[( gis) fis\trill( e]  e4) r fis2\f d4 b

  gis2 e'4.( d8) cis( d) e( fis]) gis[( a) fis-| d-|] cis( b) d( b]) a[( gis)  fis( e]) e'4.( fis16[ gis]) a4 a a4.( gis16 fis]) e4 r d4.( fis8) fis\trill[( e) e\trill( d]) d[( cis]) cis4. e16[( cis] b[ gis a fis])

  e4.( fis16[gis]) a[( gis a cis]) \grace { cis16 } b[( a b d])
  \times 4/6 { cis8[( a b cis d e]) }
  \times 4/6 { d8[( b cis d e fis]) }
  e8[( cis a) a'-|] gis[( a) fis-| dis-|] e4.( fis8) \grace { cis4 } b2\trill a4 r r2 a8^\markup{\italic "Dolce"}[( e]) e2 fis8[( d]) cis[( e) e( a])
  \times 2/3 { cis,8( a) b-| }
  \times 2/3 { cis8( a) b-| }

  cis4( a8)[ r16 cis16] e4 e \appoggiatura { a16 } a'8[( e]) e2 fis8[( d]) d[( cis]) cis2 d8[( b]) a4. cis16[( d])
  \times 2/3 { e8( cis) a'-| }
  \times 2/3 { e8( cis) a'-| }
  e4( cis8[) r16 a] \grace { cis16 } b8\trill[( a b cis]) a4 < cis, a' > < cis a' > \bar ":|"
}
