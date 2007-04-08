violinIIFourthMov = \notes \relative ais {
    \key e \major
    \clef violin

    R2.*2
    | [ais8.-\f <cis32 ais'> <cis ais'>] 
      < { [cis8 cis] [cis cis] } { [ais'8 ais] [ais ais] } >
    | [<b8.-\f gis'> <b32-\p gis'> <b gis'>] 
      < { [b8 b] [b b] } { [gis'8 gis] [gis gis] }>
    | [<b8. a'> <b32 a'> <b a'>] 
      < { [b8 b] [b b] } { [a'8 a] [a a] }>
    | [e8. e32 e] [e8 e] [e e]
    | [dis8. dis32 dis] [dis8 dis] [dis dis]
    | [<b8. gis'> <b32 gis'> <b gis'>] 
      < { [b8 b] [b b] } { [gis'8 gis] [gis gis] } >
    | [<b8. a'> <b32 a'> <b a'>] 
      < { [b8 b] [b b] } { [a'8 a] [a a] } >

% 10
    | [e8. e32 e] [e8 e] [e e]
    | [dis e] \slurUp <ais,4 \( e'(> <\) b8 )dis> r \slurBoth
    | R2.*2
    | [bes8. <des32 bes'> <des bes'>] 
      < { [des8 des] [des des] } { [bes'8 bes] [bes bes] } >
    | [a8. <c32 a'> <c a'>] 
      < { [c8 c] [c c] } { [a'8 a] [a a] } >
    | r8 <c bes'> r <c bes'> r <c bes'>
    | [<a8. f'> <a32 f'> <a f'>] 
      < { [a8 a] [a a] } { [f'8 f] [f f] } >
    | r8 <cis! e> r8 <cis e> r8 <cis e>
    | [<d8. e> <d32 e> <d e>] 
      < { [d8 d] [d d] } { [e8 e] [e e] } >

% 20
    | r8 <c e!> r8 <c e> r8 <c e>
    | [g'8. g32 g] [g8 g] [g ais,]
    | [b16. e32 dis!16. cis32] b2
    | b8 r < { b4..-> [cis32 dis] } \\ { s4. \< \lowerHairpin s16. \! s32 } >
    | [e8.-\f <b32-\p gis'> <b gis'>] 
      < { [b8 b] [b b] } { [gis'8 gis] [gis gis] } >
    | [<b8. a'> <b32 a'> <b a'>] 
      < { [b8 b] [b b] } { [a'8 a] [a a] } >
    | [e8. e32 e] [e8 e] [e e]
    | [<bis8. dis> <bis32 dis> <bis dis>] 
      < { [bis8 bis] [bis bis] } { [dis8 dis] [dis dis] } >
    | [gis'8.-\fp gis32 gis] [gis8 gis] [gis gis]
    | [<b,8. a'> <b32 a'> <b a'>] 
      < { [b8 b] [b b] } { [a'8 a] [a a] } >

% 30
    | [e8. e32 e] [e8 e] [cis a']
    | [<b, gis'> <b a'>] <b4 a'(> ~ <b8 )gis'> r
    | r4 gis'2-\p
    | fis2.
    | a8 r a2
    | gis [cis16. d32 cis16. cis32]
    | b4 [b16. cis32 b16. b32] [fis8.( )fis16]
    | b4 g [eis8. eis16]
    | [fis16. \< fis32 g16. fis32] [g16. gis32 ais16. gis32] 
      [ais16. ais32 b16. \! ais32]
    | b2-\p r4

% 40
    | [ais16. fis32 eis16. fis32] [gis16. gis32 fisis16. gis32] 
      [ais16. ais32 gisis16. ais32]
    | b2 r4
    | \repeat unfold 2 {
          [fis16.-\f b32 ais16. gis32] [fis16. cis'32 ais16. gis32] 
          [fis16. e'32 cis16. ais32] }
    | [fis16.-\f gis32 fis16. gis32] [fis16. gis32 fis16. gis32] 
      [fis16. e32 dis16. cis32]
    | [b8-\p <b dis>] r <b dis> r <b dis>
    | \repeat unfold 3 { r <b e> }
    | \repeat unfold 3 { r <ais dis> }
    | \repeat unfold 6 { r <b dis> }

% 50
    | \repeat unfold 3 { r <gis eis'> }
    | r8 <cis fis> r <cis fis> r <b gis'>
    | <ais fis'> r r [b'(-\p ais b]
    | )ais r r [dis( cis d]
    | )cis r r4 r
    | [b,8-\p <b dis>] r <b dis> r <b dis>
    | \repeat unfold 3 { r <gis e'> }
    | \repeat unfold 3 { r <ais dis> }
    | \repeat unfold 3 { r <b dis> }
    | \repeat unfold 3 { r <gis fis'> }

% 60
    | \repeat unfold 3 { r <gis e'> }
    | r8 <b dis!> r <b dis> r <cis e>
    | <b dis> r dis'4 [cis16. dis32 cis16. bis32]
    | cis8 r fis4. eis8
    | e!2 [dis16. e32 dis16. cis32]
    | dis8 r gis4.-> fisis8
    | gis r d4 cis ~
    | cis ais b
    | [cis8 b] [ais gis] [fis e16. cis32]
    | dis4 r r

% 70
    | r16. [b32 cis16. dis32] [e16. fis32 gis16. ais32] b4 ~
    | [b16. fis32 gis16. ais32] [b16. cis32 dis16. e32] 
      [fis16. eis32 fis16. eis32]
    | \repeat unfold 3 { [fis16. eis32 fis16. eis32] }
    | fis2. ~
    | fis8 fis4 fis fis8 ~
    | [fis16. fis32 e16. dis32] [cis16. b32 ais16. gis32] 
      [fis16. e32 dis16. cisis32]
    | dis4( d )cis
    | b( ais )b
    | g2 r4
    | b4 r r

% 80
    | g2.(
    | )b4 r r
    | g2.(-\f
    | )b4 r r
    | R2.*2
    | [e8. e32 e] [e8 e] [e e]
    | [<c8. a'> <c32 a'> <c a'>] 
      < { [c8 c] [c c] } { [a'8 a] [a a] } >
    | r8 <c bes'> r <c bes'> r <c bes'>
    | R2.*2 % [E]

% 91
    | [fis!8. fis32 fis] [fis8 fis] [fis fis]
    | [<d8. b'> <d32 b'> <d b'>] 
      < { [d8 d] [d d] } { [b'8 b] [b b] } >
    | [<d8. c'> <d32 c'> <d c'>] 
      < { [d8 d] [d d] } { [c'8 c] [c c] } >
    | <d8 b'> r [fis16.-\p a32 g16. fis32] [g8 b]
    | [b8.( )b16] e4 [d16. b32( )c16. d32(]
    | [)e16. c32( )d16. e32(] [)d16. b32( )c16. d32(] [)e8. e16]
    | [cis8.( )cis16] [fis16. d32 e16. fis32] [e16. cis32 d16. e32]
    | [fis16. d32 e16. fis32] [e16. cis32 d16. e32] [fis8. fis16]
    | [g16. e32 fis16. g32] [fis16. dis32 e16. fis32] [e16. b32 e16. d32]

% 100
    | [cis8.( )cis16] d4 [e8.(-\trill d32 )e]
    | [fis16. d32( )e16. fis32(] [)e16. cis32( )d16. e32(] 
      [)d16. a32( )d16. cis32(] % [R] Probably c(
    | [)b8. b16] cis4 % [R] Probably c4
      [d8.(-\trill cis32 )d]
    | [e16. cis32( )dis16. e32(] [)d16. b32( )cis16. d32(] 
      [)cis16. g32( )cis16. b32(]
    | )ais4 b [cis8.( )cis16]
    | [b16. e32( )d16. cis32(] [)b16. e32( )d16. cis32(] 
      [)b16. e32( )d16. cis32]
    | [b16. e32( )d16. cis32(] [)b16. cis32( )b16. a32(] 
      [)g16. f32( )e16. d32]
    | c2.
    | g
    | a

% 110
    | b4 r r
    | [g8.-\p g32 g] [g8 g] [g g]
    | b4 r r
    | [g8. g32 g] [g8 g] [g g]
    | [b16. ais32( )b16. c32(] [)b16. ais32( )b16. c32(] )b8 r
    | R2.*5 % [E]

% 120
    | [<cis!8. ais'> <cis32 ais'> <cis ais'>] 
      < { [cis8 cis] [cis cis] } { [ais'8 ais] [ais ais] } >
    | [<b8. gis'!> <b32 gis'> <b gis'>] 
      < { [b8 b] [b b] } { [gis'8 gis] [gis gis] } >
    | [<b8. a'> <b32 a'> <b a'>] 
      < { [b8 b] [b b] } { [a'8 a] [a a] } >
    | [e8. e32 e] [e8 e] [e e]
    | [dis8. dis32 dis] [dis8 dis] [dis dis]
    | [<b8. gis'> <b32 gis'> <b gis'>] 
      < { [b8 b] [b b] } { [gis'8 gis] [gis gis] } >
    | [<b8. a'> <b32 a'> <b a'>] 
      < { [b8 b] [b b] } { [a'8 a] [a a] } >
    | [e8. e32 e] [e8 e] [e e]
    | [dis8 e] \slurUp <ais,4 \( e'(> <\) b8 )dis> r \slurBoth
    | R2.*2

% 131
    | [bes8. <des32 bes'> <des bes'>] 
      [<des8 bes'> <des bes'> <des bes'> <des bes'>]
    | [<c8. a'> <c32 a'> <c a'>] [<c8 a'> <c a'> <c a'> <c a'>]
    | \repeat unfold 3 { r8 <c8 bes'> }
    | [<a8. f'> <a32 f'> <a f'>] [<a8 f'> <a f'> <a f'> <a f'>]
    | r8 <cis! e> r <cis e> r <cis e>
    | [<d8. e> <d32 e> <d e>] [<d8 e> <d e> <d e> <d e>]
    | \repeat unfold 3 { r8 <c e> }
    | [<ais8. g'> <ais32 g'> <ais g'>] [<ais8 g'> <ais g'>] [<ais g'> ais]
    | [b16. e32 dis16. cis32] b8 r [c'8.( )c16]

% 140
    | [b16. e32 dis16. cis!32] b8 r [c8.( )c16]
    | [b16. cis!32 b16. a32] gis8 r [a8.( )a16] % [E]
    | [gis!8. ais16] [bis8. gis16] [a8. cis16]
    | [bis8(-\p b ais a gis )gis]
    | [fisis( fis eis e dis )fis]
    | e2 cis4
    | [gis'8( eis fis dis e )cis]
    | [dis( bis cis ais bis )gis]
    | \repeat unfold 3 { [cis16. dis32 cis16. bis32] }
    | bis8 r e2(

% 150
    | )dis8 r e2(
    | )dis8 r r4 r
    | r2. % [R] Better: R2.
    | \repeat unfold 3 { r8 <b8 gis'> }
    | r8 cis r cis r cis
    | r bis r bis r bis
    | r cis r cis r cis
    | \repeat unfold 3 { r8 <b8 gis'> }
    | \repeat unfold 3 { r <cis e> }
    | r <b dis> r <b dis> r <ais e'>

% 160
    | <b4 dis> r8 [g'( fis )g]
    | fis4 r8 [g( fis )g]
    | fis r r4 r
    | [gis8( e gis8 e gis8 )e] % [R] The autograph is different
    | [a8( cis, a' )cis,] [fis( )cis]
    | [dis-. fis-.] [dis-. gis,-.] [dis'-. gis,-.]
    | [cis-. e-.] [gis,( cis e )cis]
    | gis'4 eis2
    | r8 <cis a'> r <cis a'> r <cis fisis>
    | r <b gis'> r <b ais'> r dis

% 170
    | eis r gis4-\f fis ~
    | fis b4. ais8
    | a2 % [R] A cautionary accidental should be placed here
      gis4 ~
    | gis cis4. bis8
    | cis r g4( )fis(
    | fis dis )e
    | [fis8 e dis cis] [b8 ais16. ais32]
    | gis8 r r4 r
    | r16. [e'32 fis16. gis32] [a16. b32 cis16. dis32] e4 ~
    | [e16. b32 cis16. dis32] [e16. fis32 gis16. a32] 
      [b16. ais32 b16. ais32]

% 180
    | \repeat unfold 3 { [b16. ais32 b16. ais32] }
    | b2. ~
    | b8 b4 b b8 ~
    | [b16. b32 a16. gis32] [fis16. e32 dis16. cis32] 
      [b16. ais32 gis16. fisis32]
    | gis4( fisis )fis
    | e( dis )e
    | c2(-\f )b4
    | b r r
    | [c8.-\p c32 c] [c8 c] [c c]
    | b4 r r

% 190
    | [bes8. bes32 bes] [bes8 bes bes bes]
    | [a8.-#'(italic "cresc. poco") c32 c] [c8 c c c(]
    | [)b8. d32 d] [d8 d d d]
    | [cis \LowerText e(-\cresc dis! fis e )g]
    | [fis( a gis b a )c]
    | [b cis16 dis] [e8 dis16 e] [e8 dis16 e]
    | [<b16. gis'> e32( )dis16. cis32(] [<b16. )gis'> e32( )dis16. cis32(] 
      [<b16. )gis'> e32( )dis16. cis32]
    | b8 r r4 r
    | R2.*2 % [E]

% 200
    | [cis,8( e cis e cis )e]
    | [e8. e32 e] e2
    | <cis2.( e>
    | <)c e>
    | <b g'>
    | fisis'
    | [gis8 b,] r gis r <b gis'>
    | \repeat unfold 3 { r <b gis'> }
    | [e8. e32 e] [e8 e] [e e]
    | [dis8. dis32 dis] [dis8 dis] [dis dis]

% 210
    | e8 r
      <
          { \stemDown e'2 ~ | \stemUp e4 [dis8( cis] )dis r \stemBoth }
	  \context Voice=x
          {
	      \voiceTwo gis,2( | )fis2.
	  }
      > \oneVoice
    | e8 r
      <
          { \stemDown e2 ~ | \stemUp e4 [dis8( cis] )dis r \stemBoth }
	  \context Voice=x
          {
	      \voiceTwo gis,2( | )fis2.
	  }
      > \oneVoice
    | [<gis,8 e'> <b,16 a'> <b a'>] <b2: a':>
    | [<b8 gis'> <b16 a'> <b a'>] <b2: a':>
    | \repeat unfold 6 { [<b8 gis'> <b a'>] }
    | <b gis'> r <b4 gis'> r
    | \lowerDynamics a2.(-\fp

% 220
    | )gis-\fermata

    \bar "|."
}