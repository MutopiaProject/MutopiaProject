\version "2.6.0"
violinISecondMov =  \relative b' {
  \key c \major
  \clef violin

  \noTupletBracket

  b4(\p ais b)
  | cis8.( dis16) e4( dis)
  | dis( cis b)
  | b( ais8) r r4
  | b4( ais b)
  | << { cis8.( dis16 e4 dis) } { s8 s8^\turn } >>
  | \times 2/3 { cis8( e gis) } b,4( ais)
  | cis4(-> b8)-. r r4
  | b4(\pp ais b)

  % 10
  | cis8.( dis16) e4( dis)
  | dis( cis b)
  | b( ais8) r r4
  | b4( ais b)
  | cis8.( dis16) e2 ~
  | e8.(-\< fis16) gis4( bis,)-\!
  | cis8 cis,(\pp dis e fis gis)
  | a!( dis, e fis gis a)
  | b( eis, fis gis a b)
  | cis( gis-\< a b cis dis)-\!

  % 20
  | e4( dis e)
  | fis8.( gis16 a4 gis)
  | gis( fis e)
  | e( dis8)-. r r4
  | e4(-\< dis e)-\!
  | fis8.( g!16) a2
  | << { g8.( b16) } { s8 s8^\turn } >> 
  d8-. r <d,, a' fis'>-.\ff r
  | <d b' g'>4-. r r
  | R2.*3

  % 31
  | bes'4(\p a bes)
  | c8.( d16 es4 d)
  | d( c bes)
  | bes4( a8) g( f a)
  | bes4(\pp a bes)
  | ces8.( des16) es2
  | cis8.(-\< dis16) e!2-\!
  | \times 2/3 { dis8(-\markup { \italic "poco " \dynamic "f" } e fis) }
  b,4( ais)
  | b-. b-. b-.

  % 40
  | b ais8( gis ais bis)
  | cis4-. cis-. cis-.
  | cis bis8( ais bis dis)
  | e4-. e-. e-.
  | dis2. ~
  | dis4 cis8(\( bis cis) cis\)-.
  | cis2\fermata r4
  | b!2\fermata-\markup { \italic "dim." } r4
  | bes,2\p\fermata r4\fermata
  | \grace as8 as'4(\pp g as)

  % 50
  | bes8.( c16 des4 c)
  | c( bes as)
  | as( g8) r r4
  | as(\mf g as)
  | << { bes8.( c16 des4 c) } { s8 s8^\turn } >>
  | \times 4/6 { c16[( bes des f des bes]) } as4( g)
  | as4 r r
  | R2.*3

  \bar "||"
  \key b \major
  % 60
  | b4(\p ais b)
  | << { cis8.( dis16 e4 dis) } { s8 s8^\turn } >>
  | dis4( cis b)
  | b( ais8) r r4
  | R2.*2
  | fis'4(-\markup { \italic "poco " \dynamic "f" } eis fis)
  | gis8.( ais16 b4 ais8 cis)
  | fis,( gis4 fis8 e) dis( ~
  | dis cis4) bis8[( cis dis)]

  % 70
  | e4.( fis16 gis) fis8( e ~
  | e dis16 cis) dis4( cis)
  | \grace { bis32[( cis dis] } cis2.) ~
  | cis8.( dis16) e8-. e( dis cis)
  | b4 r r
  | e( dis e)
  | fis8.( gis16 a4) gis ~
  | gis8 fis4( eis8[ fis) e]( ~
  | e dis16 cis) b8( ais b a)
  | gis4 r r

  % 80
  | R2.*3
  | r4 gis'2(
  | fisis4) gis2
  | ais8.( b16 cis4 b)
  | cis8.( dis16 e4) dis ~
  | dis8( gis,) cis4( b)
  | b( ais8) fis-.\( fis( fisis)\)
  | gis\( \acciaccatura b!16 a gis\) gis2 ~

  % 90
  | gis ~ gis8( g)
  | fis\( \acciaccatura ais!16 gis! fis\) fis2 ~
  | fis2. ~
  | fis8( b,) e4(-. e)-.
  | \grace { dis32[( e fis] } e2)( dis4)
  | << { gis8.( ais16) } { s8 s8^\turn } >> 
  b16( ais gis fis) e( dis fis e)
  | gis( fis a gis) fis( e a gis) fis( e b' a)
  | gis( fis b a) gis( fis b a) gis( fis a gis)
  | fis( e a gis) fis( e dis cis bis cis e gis)
  | b,!2( ais8. b16)

  % 100
  | b2( cis8 dis)
  | e a16( gis) fis( e gis fis e dis cis b)
  | ais!( gis fis e) dis8( fis e ais)
  | b2( cis8 dis) 
  | e a16( gis) fis( e gis fis e dis cis b)
  | ais!( gis fis e) dis8( fis e ais)
  | b4(\p ais b)
  | << { cis8.( d16 e4 ais,) } { s8 \preNaturalTurn s8^\naturalTurn } >>
  | b4(\pp ais b)
  | << { cis8.( d16 e4 ais,) } { s8 \preNaturalTurn s8^\naturalTurn } >>

  % 110
  | b4 dis,!(-. dis)-.
  | dis2. ~
  | dis\fermata

  \bar "|."
}
