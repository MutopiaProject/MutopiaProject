\version "2.16.0"

viola_minore = \new Voice \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \clef alto
  \key g \minor
  \time 2/4

 d'4\p ees8. g,16 
 fis8[( ees') d8. c16] 
 c( bes) a( g) g8 g 
 

fis16.[( g32]) \grace { a16 } g16.[\trill( fis64 g]) a16[( fis) d8-|]\f   
d16([ c d) bes-|] ees[( d ees) c-|] 

f16( a) c( a) c( a) c( a) bes( f) d( f) bes,( f') d( f) ees\p( ees') ees,( d) c8 a( bes) g'16( ees) f8 f, \times 4/6 { bes16\f bes' a g f ees} \times 4/6 { d g f ees d c } bes8 d16. f32 bes8 r  

f f, bes16( f) g( ees) \times 2/3 {d16[( f bes]) } \times 2/3 { d-.[ ( c-. bes-.]) } \times 2/3 {a[( c ees)] } \times 2/3 { g-.[( f-. ees-.])}  \times 2/3 {d[( f bes]) } \times 2/3 { d-|[ ( c-| bes]) } \times 4/6 { a16-| g-| f-| ees-| d-| c-| } bes16-| f'( ees d) c[( bes) a8]( bes16) f'( ees d) c[( bes) a8]( 

bes) r d bes f f' f, r a16[ a8 a16] c16[ c8 c16] bes4 r8 bes8 a16[ a8 a16] c16[ c8 c16] bes4 r8 bes8 g'16-|[ ees'8 ees16]( \times 4/6 { ees16) d c bes a g} f8 r a,4(

 bes32[)( d16.) ees32( c16.]) f8 f, bes d16.( f32) bes16 b c cis d4\p ees8. g,16 fis8[( ees') d8.( c16)] c16( bes) a( g) g8 g  fis16.\f[ g32] \grace { a16} g16.\trill[ fis64 g] a16.[ bes32] \grace { c16} bes16\trill[ a32 bes] 

a8-|[ fis-| c-| a-|] bes-| g-| r8 b\p c-|[ a-| bes-| g-|] a-| fis-| << {g{ ees'}} \\ { s8 c\f} >> << { d8.[ a16] } \\ { bes8. s16 } >> g8 g' |
  < fis a,>2\fermata-\tag #'vla ^\markup{\italic "D.C."} \bar "||" 

}

viola_duetto_i = \new Voice \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \time 2/2
  \clef alto
  \key g \major

  \partial 4 d4  g g8-.( g-.) a( g) g-.( g-.) c( b) b-.( b-.) e( g) fis( e) d( b) a( g) fis( g) e( g) d4 c\trill \times 4/6 {b8-| g'( a b c d)} 
%{comment - line 2 in the original%}
e2 c,4.( b8) a2 \times 2/3 {e'8[( gis a)]}  \times 2/3 {c[( d e)]} d2 b,4.( a8) g2 \times 2/3 {d'8[( g a)]}  \times 2/3 {b[( c d)]} d4( c8) a-| c( b) d-| g,-| g( fis) e( d) g( b) d,( g) e( g) c,( c') \grace {b} a2\trill
%{comment - line 3 in the original%}
g4 d8. b16 g4 r g8( d') b( d) c( d) b( d) a( d) g,( d') c( e) d( c) <b g'>4 c8( cis) d4 c b8( d,) a'( d,) g4 r \times 2/3 {a8[( c e)]} \times 2/3 {a8[( c e)]} e,4.( fis16[ gis]) 
%{comment - line 4 in the original%}
a4 e8.[ c16] a4 r \times 2/3 {b8[ b( d)]} \times 2/3 {g8[( b d)]} d,4.( e16 fis) g4 d8.[ b16] g4 r d'4 c b a r g( fis) d-| g r b g d fis8.[ a16] d4 r d8( fis) a( g) \times 2/3 {fis8[( g) e-|]} \times 2/3 {d8[( e) cis-|]}
%{comment - line 5 in the original%}
 << {s8 d4.} \\ {d8-|^( b a g)} >> fis8( a) g( a) fis-| fis'( a g) \times 2/3 {fis8[( g) e-|]} \times 2/3 {d8[( e) cis-|]} << {s8 d4.} \\ {d8-|( b a g)} >> fis8( a) g( a) \times 2/3 {fis8[( a d)]} \times 2/3 {fis8[( e d)]} \times 4/6 {a'8 g fis e d c} b4 r r2 r8 a( a' g) fis( g fis e) 
%{comment - line 6 in the original%}
d4 fis, g a \times 4/6 {d8 a' g fis e d} \times 2/3 {cis8[ b a]} \times 2/3 {g8[ fis e]} << { s4 d'2.} \\ {d,4^( a' b c)} >> b8( d) g( b) d-| d( cis b) b( a) a4. d16( cis) b( a g fis) a( g fis g) e4. cis'16( a) e'( cis a g)
%{comment - line 7 in the original%}
g( fis e fis) d4. e16( fis g a b cis) d8\p( cis b a) << {s8 a4.} \\ {a8-|\rfz^( e fis g)} >> fis16\f( a b a) g( fis e d) \appoggiatura { d[ e] } e2\trill d4 r r2 r4 fis,( g a) g8( b) d( g) b-| b( a g)
 %{comment - line 8 in the original%}
d4 d' d, r r8 a cis e a,4 cis d8 d, fis a d,4 r b''8\p( a) g( fis) e-|\rfz cis( d e) d4\f d, a' a \times 4/6 {d,8-| d'( fis a g fis)} g2( fis4\p) d-| cis-| a-| \times 4/6 {d,8-| d'\f( fis a g fis)} g2( fis4\p) d-| cis-| a-| d,8\f d' a fis d4 \bar ":|:" d'8 fis a4 a8. a16 a8( b16 a) g8-| fis-| fis( e) e2 g8.( fis16) fis8( e) d2 e8( cis)
 %{comment - line 9 in the original%}
d8-| b' b4. d8 cis e \times 2/3 {d8[( cis b])} \times 2/3 {a[( b cis])} \times 2/3 {d[ e fis]} \times 2/3 {g[( e cis])} d8( fis) a,2 g4 fis16( d) a( d) b( d) g,( g') \grace {fis16} < e a,>2\trill d4 cis8( c) b4 r
 %{comment - line 10 in the original%}
b'8(\p d,) b'8( d,) b'8( d,) a'8( d,) g( d) fis( d) fis( d) e( d) d( c) b( d) b( d) c( a) g( c) e-| g-| c( e) d( c) b4 c b a r < g b >\rfz < fis a >2 g8(\p b,) fis'( b,) e-| g,( a ais)
 %{comment - line 11 in the original%}
b4 b' b, r e-|\f e,8-|[ g16( b)] e( b) g'( e) b'4 g8( b) a( fis) g fis e dis e4-| e,8-|[ g16( b]) e( b) g'( e) b'4 g8( b) a( fis) g fis e dis e4-|   c'( ais b) 
 %{comment - line 12 in the original%}
a8( b,) a'( b,) g'( b,) fis'( b,) e4 c' b b, e8 e' b g e4 r b'\p a g8 b g e dis2\rfz( e4) r b'\p a g8 b g e dis2\rfz( e8) e'-| b-| g-| e4\f d c a
%{comment - line 13 in the original%}
d c b a g g' r8 b,8( c cis) d4 d' d, r g8( b) d( c) \times 2/3 {b[( c) a-|]} \times 2/3 {g[( a) fis-|]} g( e) d( c) << {d2} \\ {b4( c)} >> b8-|[ b'( d c]) \times 2/3 {b[( c) a-|]} \times 2/3 {g[( a) fis-|]} g( e) d( c) << {d2} \\ {b4( c)} >>
%{comment - line 14 in the original%}
\times 2/3 {b8[( d g])} \times 2/3 {b[ a g]} \times 2/3 {d'[c b]} \times 2/3 {a[ g f]} e4 r r2 r8 d( d' c) b( c b a ) g4 b, c d \times 2/3 {<b' d, g,>8[ d c]} \times 2/3 {b[ a g]} \times 2/3 {fis[ e d]} \times 2/3 {c[ b a]} << {s4 g'2.} \\ {g,4-|^( d' e f)} >>
%{comment - line 15 in the original%}
e8( g) c( e) g-| g( fis e) e( d) d4. g16( fis) e( d c b) d( c b c) a4. c16( e) d( c b a) c( b a b) g4. a16[( b] c d e fis) g8(\p fis e d) << {s8 d4.} \\ {d8-|\rfz^( a b c)} >>
%{comment - line 16 in the original%}
b16( d e d) c( b a g) \appoggiatura { g[ a] } a2\trill g4 r r2 r4 b,( c d) c8( e) g( c) e,-| e( d c) g4 g' g, r r8 d' fis a, d4 fis g8[ g, b d] g4 r
%{comment - line 17 in the original%}
e'8(\p d c b)  a8-|\rfz( fis g a) g4\f g, d' d, \times 4/6 {g8-| g'( b d c b)} c2( b4\p) g-| fis-| d-| \times 4/6 { g,8-| g'(\f b d c b)} c2( b4\p) g-| fis-| d-| g,\f g' g, \bar ":|" \pageBreak

}


viola_rondo = \new Voice \relative c' {
  \set Staff.midiInstrument = #"viola"
  \set Staff.instrumentName = #"Viola"
  \tempo "Allegretto" 
  \clef alto
  \key g \major
  \time 2/4
 
g16 ( b d g) b( g e cis) d4( c) b8[ g fis d] g g' g,4 gis a8.( b32 c) c8( b) g'8.( a32 b) gis8[( a) fis( g])

d d'd,4 d' g,8.(( a16) g8[( fis) e( d]) g4 a8.( b32 c) c8( b) b4 e, c'8.( d32 e) d8( fis,) g( c) b8.( c16) \grace { b16 } a4\trill |
  g4 r-\tag #'vla ^\markup{\italic "Fine"} \bar ":|" 

<< {s4 s8 g\stemUp g4_( fis8)[ g-|] } \\ {d8.^( e32 fis g8)[ b,] a4 s } >>
a'8.( b16) c[( d32 e) d16-| c-|] c8[( b) a( g]) fis4 d g8[ fis e d] cis4 a d d, r dis'(\rfz e) g8( fis) dis( e) cis( d) a a' a,4

d16\p( fis a d) fis( d b gis) a4 g fis8[ d cis a] d d' d,4 dis\f e8.( fis32 g) << { a16_([s32)s32 g16( a)] }\stemDown \\ { s16 a }\stemUp >> fis16( a) e( a) d,8. fis16 a( g) fis( e) d4( cis8)[ a'-|] g16( a e' a,) fis( a d a)

e( a cis a ) d( a fis d) a8([ cis d) fis-|] g4 fis8[ a16( fis)] d([a) fis'(d)] a'([ fis) d'( cis)] c8( b)\trill a4 fis16[ a g( e)] d8[\grace {fis} e] d4 r r r8 d'8\p c16( b a g) fis( a g b)

d,4 a'16([ c) b( d)] c([ b a g)] fis(\f a g b) e,( gis a) b-|\times 4/6 { c-| b-| a-| g-| fis-| e-| } d8 e b16([ d) g,(g')] c,8( b) a-| r8 |
   d4( d16)[ c( b a-\tag #'vla ^\markup{\italic "D.C." } )] \bar "|"

 }
