violinIIFirstMov = \notes \relative b {
    \key e \minor
    \clef violin

    \noTupletBracket
    \noTupletNum

    \repeat volta 2 {
	b2->-\f c->
	| b ~ b8 r r4
	| r2 fis''8-\p r e r
	| ais,2(-> )b4 r
	| e,2->-\f e-
	| e-> ~ e4 r
	| r2 dis8-\p r e r
	| dis4 r \times 2/3 { r8 [ais-\f b] [cis dis % [R] Probably: d
                                             dis!] }
	| b2-> c->

% 10
	| b ~ b8 r r4
	| r2 fis''8-\p r e r
	| r2 \times 2/3 { [g,8-. \< a-. bes-.] [c-. d-. \! e-.] }
	| f8 r r4 \times 2/3 { [g,8-. a-. bes-.] [c-. d-. e-.] }
	| f8 r \times 2/3 { [c,-\p c c] [c c c] [c c c] }
	| f'8 r \times 2/3 { [c, c c] [c c c] [c c c] }
	| e'8 r \times 2/3 { [b,-\p b b] [b b b] [b b b] }
	| dis'8 r \times 2/3 { [a,-\p a a] [a a a] [a a a] }
	| g2->-\f c->
	| \times 2/3 { b1.:8 }

% 20
	| \times 2/3 { b: }
	| \times 2/3 { c: }
	| \times 2/3 { c: }
	| \times 2/3 { [b8 fis' fis] fis2.:8 } s4 % [R] It should be fis4.:
	| \times 2/3 { fis2.: dis: }
	| \repeat unfold 2 { \times 2/3 { e1.: } }
	| \repeat unfold 2 { \times 2/3 { <c: e:> } }
	| \times 2/3 { c1.: }

% 30
	| \times 2/3 { c2.: a: }
	| \times 2/3 { r8 [b-. \< c-.] [d-. e-. fis-.] 
                       [g-. a-. b-.] [c-. d-. \! e-.] }
        | fis8 % [R] Probably d8
          r g,2-> g4
	| \times 2/3 { r8 [c,-. d-.] [e-. fis-. g-.] 
                       [a-. b-. c-.] [d-. e-. fis-.] }
	| e8 r a,2-> a4
	| \times 2/3 { r8 [d,-. e-.] [f-. g-. a-.] 
                       [b-. c-. d-.] [e-. f-. g-.] }
        | f8 r g,2 [g8 f]
	| \times 2/3 { [e f e] e4.:8-\p [e8 f e] e4.:8 }
	| \times 2/3 { [e8 f e] e4.:8 [e8 f e] e4.:8 }
	| \times 2/3 { e2.: g: }

% 40
	| \times 2/3 { [d'8( cis )d] d4.:8 [c8( % [R] cis8(
                        b % [R] bis ?
			)c] c4.: }
        | \times 2/3 { [d8 ais ais] ais2.:8 } s4 % [R] ais -> c ? and ais4.:
	| \times 2/3 { bes1.: }
	| \times 2/3 { a: }
	| \times 2/3 { bes: }
	| a2->-\f g->
	| \times 2/3 { r8 [a, bes] [c bes a] bes2.: }
	| <a8 fis'!> r <bes g'> r <a fis'> r <d bes'> r
	| \repeat "percent" 2 { <d a'> r <bes' g'> r <a fis'!> r <bes g'> r }
          \property Score.currentBarNumber = #50

% 50
        | <a8 fis'> r d, r r2
	| R1*3
	| fis2-\p fis
	| g ~ \times 2/3 { [g8 b( a] [g fis )e] }
	| \raiseSlur d4(-- d-- d-- )d--
	| d4.( e8 )d4 r
	| fis2 fis
	| g ~ \times 2/3 { [g8 b( a] [g fis )e] }

% 60
	| d2 \times 2/3 { r8 [c'( a] [fis d )c] }
	| \slurStemToHead b4( d g )b
	| c2 \times 2/3 { r8 [d,( e] [fis g )a] }
	| b8 r dis,4( e )fis
	| g8 r e2 \times 2/3 { [e8( fis )e] }
	| dis r r4 r2
	| R1*2
	| fis2-\p fis
	| g ~ \times 2/3 { [g8 b( a] [g fis )e] }

% 70
	| \raiseSlur d4(-- d-- d-- )d--
	| d4.( e8 )d4 r
	| r \raiseSlur fis(-- fis-- )fis--
	| \repeat unfold 2
          { \times 2/3 { [d8-\f e fis] [g a b] [b a g] [fis e d] } }
	| g8 r \times 2/3 { [g, a b] } a8 r \times 2/3 { [a b c] }
	| b4 r r2
	| \times 2/3 { r8 [e'' d] [c b a] [g fis e] [d c b] }
	| ais1-\f
	| \times 2/3 { [g'8( )e e] [e( )cis cis] 
                       [cis( )bes bes] [bes bes bes] }

% 80
        | \times 2/3 { <d,1.:8 b'!:8> }
	| \times 2/3 { <d1.:8 b':8> }
	| R1
	| \lowerDynamics d'2(-\p dis
	| )e r
	| f( fis
	| )fis! r
	| fis1 ~
	| fis2 e
	| d dis % [R] Perhaps there is a crescendo here (see Violin I)

% 90
	| e f % [R] Ditto
	| \times 2/3 { fis1.:8 }
	| \times 2/3 { <a,: fis':> }
	| <b2-\f g'-> > c,->
	| <b-> d> r
	|  g'8-\p r g r a r g r
	| <fis2 a> gis(
	| )g! \raiseSlur fis4(-- )fis--
	| g2 a(
	| d, )fis!

% 100
	| g8 r [cis,8.( % [R] "rall. poco" should be placed here too
	        )cis16] d2( 
	| )c!4 [b8.( )b16] \times 2/3 { [c8 e( d] [c b )a] }
	| b8 r [e8.( )e16] d2(
	| )c4 [b8.( )b16] \times 2/3 { [c8 e( d] [c b )a] }

	\bar "||"
    }

    \alternative
    {
        {
	    | b2( )c
	    | b dis
	}
	{
	    | g'2 e4..( fis16
	}
    }

    | )g'4 r r2
    | R1
    | g2 es4..( f16

% 110
    | )g4 r r2
    | R1
    | d1-\p ~
    | d
    | \times 2/3 { <bes1.:-\f g':> }
    | \times 2/3 { <c: as':> }
    | <bes8 g'> r <f'4 c' f> <bes, g'> <bes as'>
    | <bes8 g'> r \times 2/3 { [bes-\fp bes bes] [bes bes bes] [bes bes bes] }
    | r4 \times 2/3 { [bes8 bes bes] [bes bes bes] [bes bes bes] }
    | r4 \times 2/3 { [bes8-\p bes bes] [bes bes bes] [bes bes bes] }

% 120
    | r4 \times 2/3 { bes2.:8 } s4 % [R] Change s4 with s4.:8 into "times"
    | \times 2/3 { as8-\f [<c as'> <c as'>] <c4.: as':> <c2.: as':> }
    | \times 2/3 { <des1.: bes':> }
    | c'8 r <des,4 des'> <c as'> <c bes'>
    | <c8-\f as'> r \times 2/3 { c4.:-\p c: c: }
    | \repeat unfold 3 { r4 \times 2/3 { c4.: c: c: } }
    | \times 2/3 { [bes8 c d] [es d c] [bes c d] [es d c] }
    | \times 2/3 { bes1.: }

% 130
    | \times 2/3 { bes'4.: a: gis2.: }
    | \times 2/3 { [a8 a a] [a a a] [a a a] [a a a] }
    | \times 2/3 { c,1.: }
    | \times 2/3 { c'4.: b: % [R] A cautionary natural would be useful here
                   ais2.: }
    | \times 2/3 { [b8( cis )dis] dis4.: [e8( dis )e] e4.: }
    | \times 2/3 { [c8( b )c] c4.: [d!8( cis )d] d4.: }
    | \times 2/3 { [b8( ais )b] b4.: [c!8( b )c] c4.: }
    | \times 2/3 { [a8( gis )a] a4.: [ais8( gisis )ais] ais4.: }
    | b8 r r4 e,2(-\p
    | )c! d!(

% 140
    | )b c(
    | )a ais(
    | )b4 r r2
    | \times 2/3 { [b8 cis dis] [e fis g] } a8 r g r
    | <b, fis'> r <g' e'> r <fis! dis'> r <g e'> r
    | \times 2/3 { r8 [b'-. a-.] [g-. f-. e-.]
                   [d-. c-. b-.] [a-. g-. f-.] }
    | e8 r <a4 f'> <g e'> <a f'>
    | \times 2/3 { r8 [cis'-. b-.] [a-. g-. fis-.]
                   [e-. d-. cis-.] [b-. a-. g-.] }
    | fis8 r <a4 g'> <a fis'!> <a g'>
    | \times 2/3 { r8 [b'-. a-.] [g-. fis!-. e-.] 
                   [dis-. c!-. b-.] [a-. g-. f-.] }

% 150
    | \times 2/3 { [e e-. fis-.] [g-. fis-. g-.]
                   [e-. e-. fis-.] [gis-. fis-. gis-.] }
    | \times 2/3 { [e-. fis-. gis-.] [a-. gis-. a-.]
                   [e-. gis-. a-.] [ais-. gis-. % [R] gisis-. ?
                                    ais] }
    | \times 2/3 { [b e dis] [d cis c] [b fis' eis] [e dis cis] }
    | \times 2/3 { [b g' fis] [e d! c!] [b a' g] [fis dis cis] }
    | \times 2/3 { [b b'-\f a] [g fis e] [d c b] [a g fis] }
    | e2-> c->
    | b ~ b8 r r4
    | r2 fis''8-\p r e r
    | ais,,1(->-\f
    | )b4 r r2

% 160
    | e2-> e->
    | e2 ~ e8 r r4
    | r2 dis8-\p r e r
    | dis4 r \times 2/3 { r8 [ais b] [cis d dis] }
    | b2-> c->
    | b ~ b8 r r4
    | r2 fis''8-\p r e r
    | r2 \times 2/3 { [g,8 a bes] [c d e] }
    | f8 r r4 \times 2/3 { [g,8 a bes] [c d e] }
    | f8 r \times 2/3 { [c,8-\p c c] [c c c] [c c c] }

% 170
    | f'8 r \times 2/3 { [c,-\p c c] [c c c] [c c c] }
    | e'-\p r \times 2/3 { [b,-\p b b] [b b b] [b b b] }
    | dis' r \times 2/3 { [a,-\fp a a] [a a a] [a a a] }
    | g2--\f c->
    | \times 2/3 { b2.:8 b: }
    | \times 2/3 { b: b: }
    | \repeat unfold 2 { \times 2/3 { c1.: } }
    | [b8( )fis'] \times 2/3 { fis2.: } s4 % [R] Change s4 with fis4.:
    | \times 2/3 { fis2.: dis: }

% 180
    | \times 2/3 { d1.: } % [R] A cautionary natural would be useful
    | f2( )gis,8 r [b' r16 b']
    | c4( % [R] Probably b4(
      [)a8 r16 c] b4( [)a8 r16 g!]
    | \times 2/3 { fis4.: g: gis: a: }
    | d,4 r r [g,8.(-\f )g16]
    | g'2. [g,8.( )g16]
    | g'2. [g,8.( )g16]
    | \repeat unfold 4 { g'4-> [g,8.( )g16] }
    | g'4 r r2

% 190
    | R1*3
    | <b,,1 d>
    | <c4 e> \lowerDynamics [a8.(-\f )a16] a'4 
      \repeat unfold 2 { [a,8.( )a16] a'4 } r4
    | R1*2
    | <cis,1 e>
    | <a8 fis'!> r \repeat unfold 3 { [b8.( )b16] b'4 } r

    \key e \major
    \bar "||"

% 201
    | R1*2
    | dis,2 dis
    | e ~ \times 2/3 { [e8 gis( fis] [e dis )cis] }
    | b2 \times 2/3 { r8 [a'( fis] [dis b )a] }
    | gis4 b( e )gis
    | a2 \times 2/3 { r8 [b,8-. cis-.] [dis-. e-. fis-.] }
    | gis8 r bis,4( cis )dis
    | e8 r gis4( )cis,8 r \times 2/3 { [cis8 dis cis] }

% 210
    | bis8 r r4 r2
    | R1*2
    | dis2 dis
    | e ~ \times 2/3 { [e8 gis( fis] [e dis )cis] }
    | \raiseSlur b4(-- b-- b-- )b--
    | \times 2/3 { [b8 b'( a] [fis dis )cis] } b8 r r4
    | r \raiseSlur dis4(-- dis-- )dis--
    | \repeat "percent" 2
      { \times 2/3 { [b8 cis dis] [e fis gis] [gis fis e] [dis cis b] } }
      \property Score.currentBarNumber = #220

% 220
    | e8 r \times 2/3 { [e fis gis] } fis8 r r4
    | r2 gis2(-\f
    | \times 2/3 { )cis,8 [cis'' b] [a gis fis] [e dis cis] [b a gis] }
    | fisis1-\sf
    | \times 2/3 { [e'8( )cis cis] [cis( )ais ais] 
                   [ais( )fisis fisis] [fisis( )fisis fisis] }
    | \repeat unfold 2 { \times 2/3 { <b,1.:8 gis':> } }
    | R1
    | b'2(-\p bis
    | )cis r

% 230
    | d dis ~
    | dis r
    | dis!1 ~
    | dis2 cis
    | \LowerText b-\cresc \< bis
    | cis d
    | \times 2/3 { \! dis!1.: }
    | \times 2/3 { <fis,:-\ff dis':> }
    | <gis2-> e'> cis,->
    | b r

% 240
    | e8-\p r e r fis r fis r
    | fis2 \raiseSlur eis(->
    | )e! \raiseSlur dis4(-- )dis--
    | e2( )fis
    | b,1

    \key e \minor
    \bar "||"

    | \times 2/3 { \lowerText c4.:-\cresc e: g: c: }
    | \times 2/3 { e: g: <c,2.: c':> }
    | \times 2/3 { <c1.:-\ff c':> }
    | \times 2/3 { <c: c':> }
    | \times 2/3 { a2.: } a4 [b8.( )c16]

% 250
    | \times 2/3 { b2.: b: }
    | \repeat "percent" 2 { \times 2/3 { [e,8 f e] e4.: [e8 f e] e4.: } }
      \property Score.currentBarNumber = #253
    | e2 a4..-\trill [gis32( )a]
    | ais2 s4 % [R] It is probably ais2.
      [ais8.(-\trill gisis32 )ais]
    | \times 2/3 { [<b,8 b'> <b g'> <b g'>] <b2.: g':> } s4 % [R] See above
    | \times 2/3 { <b1.: g':> }
    | \times 2/3 { r8 [g'( )a] [b-. g( )a] [b-. g( )a] [b-. e,( )fis] }
    | \times 2/3 { [g-. e( )fis] [g-. e( )fis] [g-. c,( )d] [e-. d( )c] }
    | b4 r r2

% 260
    | g'1-\fp
    | \times 2/3 { \lowerDynamics [f8(-\p )a a-.] [a( )c c-.] 
                   [c( )f f-.] [f( )a a-.] }
    | <b,,1-\f a'>
    | <b8 g'> r \times 2/3 { [b-\f b b] [b b b] [b b b] }
    | <b e> r \times 2/3 { [b b b] [b b b] [b b b] }
    | <b e> r \times 2/3 { [b-\f b b] [b b b] [b b b] }
    | \repeat unfold 2 { b r \times 2/3 { <c4.: e:> <c: e:> <c: e:> } }
    | <b8 g'> r <c a'> r <b g'> r <c a'> r
    | \times 2/3 { [g'( )a a] [g( )a a] [g( )a a] [g( )a a] }

% 270
    | g4 r \lowerScript a,2(->
    | )g4 r r2-\fermata

    \bar "||"
}
