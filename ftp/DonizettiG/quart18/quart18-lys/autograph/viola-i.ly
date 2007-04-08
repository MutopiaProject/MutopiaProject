violaFirstMov = \notes \relative g {
    \key e \minor
    \clef alto

    \noTupletBracket
    \noTupletNum

    \repeat volta 2 {
	g2->-\f <e-> a>
	| <e g> ~ <e8 g> r r4
	| r2 b''8-\p r b r
	| fis,2(-> )fis4 r
	| e2->-\f e->
	| e-> ~ e4 r
	| r2 b'8-\p r b r
	| b4 r \times 2/3 { r8 [ais-\f b] [cis d dis] }
	| <g,2-> e'> <e-> a>

% 10
	| <e g> ~ <e8 g> r r4
	| r2 b''8-\p r b r
	| \times 2/3 { [c,!8-.-\f d-. e-.] [f-. g-. a-.] } g2
	| \times 2/3 { [c,!8-. d-. e-.] [f-. g-. a-.] } g2
	| f8 r \times 2/3 { [a,-\p a a] [a a a] [a a a] }
	| f' r \times 2/3 { [a, a a] [a a a] [a a a] }
	| g' r \times 2/3 { [g,-\p g g] [g g g] [g g g] }
	| fis'! r \times 2/3 { [fis,-\p fis fis] [fis fis fis] [fis fis fis] }
	| e2->-\f <e a>
	| \times 2/3 { g1.:8 }

% 20
	| \times 2/3 { e2.: g: }
	| \repeat unfold 3 { \times 2/3 { a1.: } }
	| \times 2/3 { a2.: fis: }
	| \times 2/3 { g1.: }
	| \times 2/3 { <g2.: b:> <g: b:> }
	| \repeat unfold 2 { \times 2/3 { a1.: } }
	| \times 2/3 { <fis!1.: a:> }

% 30
	| \times 2/3 { <d2.: a':> fis: }
	| g8 r g2-> \times 2/3 { [e'8-. d-. c-.] }
	| b8 r d2-> d4(
	| )e8 r a,2 \times 2/3 { [fis'8-. e-. d-.] }
	| c8 r e2-> e4(
	| )f8 r b,2 \times 2/3 { [g'8-. f!-. e-.] }
	| d8 r <d2 f> d4(
	| <c8-\p )e> r r4 r d(
	| )c d( e )d
	| \times 2/3 { e1.: }
	| \times 2/3 { g2.: g: }
	| \times 2/3 { fis!1.: }
	| \times 2/3 { g: }
	| \times 2/3 { fis: }
	| \times 2/3 { g: }
	| fis!2->-\f d->
	| \times 2/3 { r8 [fis,! g] [a g fis] } \times 2/3 { g2.: }
	| d'8 r d r d r <d bes'> r
	| \repeat "percent" 2 { d r <d, d'> r <d d'> r <d d'> r }
	  \property Score.currentBarNumber = #50

% 50
	| d' r \times 2/3 { [d, d d] d2.: }
	| d8 r \times 2/3 { [d d d] [d d d] [d d d] }
	| \repeat "percent" 8 { d8 r \times 2/3 { [d d d] d2.: } }
	  \property Score.currentBarNumber = #60

% 60
	| d4( fis! )d [a'8.( )fis16]
	| \slurStemToHead g4( b d )g
	| a2 c,
	| b8 r b4( ais )a
	| g8 r e4( )c'8 r e,4(
	| )fis8 r r4 r2
	| \repeat "percent" 2 { r4 \times 2/3 { [d8-\p d d] d2.: } }
	  \property Score.currentBarNumber = #68
	| \repeat unfold 2 { a'8 r \times 2/3 { [d, d d] } }
	| g8 r \times 2/3 { [d d d] d2.: }
	| fis8 r \times 2/3 { [d d d] [d d d] [d d d] }
	| fis! r \times 2/3 { d2.: } s4 % [R] s4 -> d4.:
	| \times 2/3 { d1.: }
	| b'2->-\f c->
	| b c
	| <g4 b> r r2
	| \times 2/3 { r8 [e'' d] [c b a] [gis f e] [d c b] }
	| c2-> s4 % [R] Probably, c2.->
          \raiseScript [c8.(-\trill b32 )c]
	| e1-\f
	| \times 2/3 { [e,8( )g g] [g( )bes bes] [bes( )cis cis] [cis( )e e] }

% 80
	| \repeat unfold 2 { \times 2/3 { g1.: } }
	| R1
	| c1-\p \< ~
	| \! c2 r
	| c1( \<
	| \! )cis2 r
	| r dis
	| d! cis
	| d c ~ % [R] A cautionary natural should be placed here

% 90
	| c c
	| \times 2/3 { c1.: }
	| \times 2/3 { <c,: c':> }
	| <b2-> b'> g->
	| g-> r
	| e'8-\p r e r fis r e r
	| dis4-- dis-- d2(
	| )cis4 cis-- c( a
	| )g d'( c )e
	| b2 <d, c'>

% 100
	| <d8 b'> r [ais'8.( )ais16] b2(
	| )a!4 [gis8.( )gis16] \times 2/3 { [a8 c( b] [a g )fis] }
	| g8 r [ais8.( )ais16] b2(
	| )a4 [gis8.( )gis16] \times 2/3 { [a8 c( b] [a g )fis] }
    }

    \alternative {
        {
	    | g2 \stemUp c4.( [b16 )a] \stemBoth
	    | g2 fis!
	}

	{
	    | <b2 d(> <c )e>
	}
    }

    | <b4 d> r r2
    | R1
    | <bes2 d> <c es>

% 110
    | <bes4 d> r r2
    | R1
    | bes1-\p ~
    | bes
    | \times 2/3 { es1.:-\f }
    | \times 2/3 { es1.: }
    | es8 r <c4 as'> <es g> [d8.( )f16]
    | <bes,8 es> r \times 2/3 { [g-\fp g g] [g g g] [g g g] }
    | r4 \times 2/3 { [g8 g g] [g g g] [g g g] }
    | r4 \times 2/3 { [g8-\p g g] [g g g] [g g g] }

% 120
    | r4 \times 2/3 { [g8-\p g g] [g g g] [g g g] }
    | \times 2/3 { f-\f [f' f] f4.: f2.: }
    | \times 2/3 { f1.: }
    | f8 r g4 as [e!8.( )g16]
    | f8-\f r \times 2/3 { as,4.:-\p as: as: }
    | \repeat unfold 2 { r4 \times 2/3 { as4.: as: as: } }
    | r4 \times 2/3 { a!2.: } s4 % [R] As usual, s4 -> a4.:
    | \times 2/3 { g1.: }
    | \times 2/3 { g: }

% 130
    | \times 2/3 { g4.: \< a: \! b!2.: }
    | \times 2/3 { [c8 d e!] [f e d] [c d e] [f e d] }
    | \times 2/3 { [c a a] a2.: } s4 % [R] Ditto
    | \times 2/3 { a4.: b: cis2.: }
    | \times 2/3 { [dis8( e )fis] fis4.: [g8( fis )g] g4.: }
    | \times 2/3 { [e8( dis )e] e4.: [fis8( eis )fis] fis4.: }
    | \times 2/3 { [d!8( cis )d] d4.: [e8( dis )e] e4.: }
    | \times 2/3 { [c!8( b )c] c4.: [cis8( bis )cis] cis4.: }
    | dis8 r r4 \lowerDynamics g,2(-\p
    | )e f(

% 140
    | )d! e(
    | )c cis(
    | )dis8 r b'4-> ~ \times 2/3 { [b8 cis dis] [e fis g] }
    | a8-\p r g r fis r e r
    | dis r <e b'> r <fis b'> r <e b'> r
    | \times 2/3 { r [g-. f-.] [e-. d-. c-.] [b-. a-. g-.] [f-. e-. d-.] }
    | c! r \repeat unfold 3 { <c4 c'> }
    | \times 2/3 { r8 [a''-. g-.] [fis!-. e-. d-.] 
                   [cis-. b-. a-.] [g-. fis-. e-.] }
    | d r \repeat unfold 3 { <d4 d'> }
    | \times 2/3 { r8 [b''-. c-.] [b-. a-. g-.] 
                   [fis-. e-. dis-.] [c!-. b-. a-.] }

% 150
    | \times 2/3 { [g e-. fis-.] [g-. fis-. g-.]
                   [e-. e-. fis-.] [gis-. fis-. gis-.] }
    | \times 2/3 { [e-. fis-. gis-.] [a-. gis-. a-.] 
                   [e-. gis-. a-.] [ais-. gis-. ais-.] }
    | \times 2/3 { [b e dis] [d cis c] [b fis' eis] [e dis cis] }
    | \times 2/3 { [b g' fis] [e d! c!] [b a' g] [fis dis cis] }
    | \times 2/3 { [b b'-\f a] [g fis e] [d c b] [a g fis] }
    | e2-> <e-> a>
    | <e g> ~ <e8 g> r r4
    | r2 b''8-\p r b r
    | fis,1->-\f ~
    | fis4 r r2

% 160
    | e2-> e->
    | e ~ e8 r r4
    | r2 b'8-\p r b r
    | b4 r \times 2/3 { r8 [ais b] [cis d dis] }
    | <g,2-> e'> <e-> a>
    | <e g> ~ <e8 g> r r4
    | r2 b''8-\p r b r
    | \repeat "percent" 2 { \times 2/3 { [c,! d! e] [f g a] } g2 }
      \property Score.currentBarNumber = #169
    | f8 r \times 2/3 { [a,-\p a a] [a a a] [a a a] }

% 170
    | f' r \times 2/3 { [a,-\p a a] [a a a] [a a a] }
    | g'-\f r \times 2/3 { [g,-\p g g] [g g g] [g g g] }
    | fis'! r \times 2/3 { [fis,-\fp fis fis] [fis fis fis] [fis fis fis] }
    | e2->-\f <e a>
    | \times 2/3 { g1.: }
    | \times 2/3 { e2.: g: }
    | \repeat unfold 3 { \times 2/3 { a1.: } }
    | \times 2/3 { a2.: fis: }

% 180
    | \times 2/3 { b1.: }
    | \times 2/3 { <b: d:> }
    | \times 2/3 { c4.: d: e2.: }
    | fis4 r r [a,8.( )a'16]
    | a4 [g8.( )g16] b8 r r4
    | \times 2/3 { [d,,8-\f cis d] [e fis g] [a b c] [d e fis] }
    | \times 2/3 { [g a g] [fis e d] [c b a] [g fis e] }
    | \times 2/3 { d4.: cis: d: dis: }
    | \times 2/3 { e: dis: e: e': }
    | <d4 b'> \times 2/3 { [gis,8-\p % [R] Probably g.
                            gis gis] gis2.: }

% 190
    | \repeat unfold 2 { g8 r \times 2/3 { g2.: } s4 } % [R] s4 -> g4.:
    | \repeat "percent" 2 { g8 r \times 2/3 { g2.: } s4 }
      \property Score.currentBarNumber = #194
    | e8 r \times 2/3 { d'-\f e fis!] [e d cis] [d e fis] }
    | \times 2/3 { [e d cis] [d e fis!] [e d cis] [d e fis] }
    | a,8 r \times 2/3 { a4.: } a8 r \times 2/3 { a4.: }
    | \repeat unfold 4 { a8 r \times 2/3 { [a a a] } }
    | d, r \times 2/3 { [e' fis! g] [fis e dis] [e fis g] }

% 200
    | \times 2/3 { [fis e dis] [e fis g] [fis e dis] [e fis g] }

    \bar "||"
    \key e \major

    | \repeat unfold 8 { b,8 r \times 2/3 { [b b b] } }
    | b4 dis, b' [fis8.( )dis16]
    | e4 \slurStemToHead gis( b )e
    | fis2 a,
    | gis8 r gis4( fisis )fis
    | e8 r cis'4( )a8 r e4(

% 210
    | )gis8 r r4 r2
    | \repeat unfold 2 { r4 \times 2/3 { [b8 b b] [b b b] [b b b] } }
    | \repeat unfold 2 { fis8 r \times 2/3 { [b b b] } }
    | e,4 \times 2/3 { [b'8 b b] b2.: }
    | dis,8 r \times 2/3 { [b' b b] } cisis, r \times 2/3 { [b' b b] }
    | dis,8 r \times 2/3 { b'2.: } s4 % [R] s4 -> b4.:
    | \repeat unfold 4 { \times 2/3 { [b8( )fis fis-.] } }
    | \repeat "percent" 2 { gis2 a }
      \property Score.currentBarNumber = #220

% 220
    | <gis4 b> r r \times 2/3 { [fis8 gis a] }
    | \times 2/3 { [gis cis' b] [a gis fis] [eis d cis] [b a gis] }
    | a2. [a8.(-\trill gis32 )a]
    | cis1-\sf
    | \times 2/3 { [cis,8( )e e] [e( )g g] [g( )ais ais] [ais( )cis! cis] }
    | \repeat unfold 2 { \times 2/3 { e1.: } }
    | R1
    | a-\p ~
    | a2 r

% 230
    | a1 \<
    | \! ais2 r
    | r bis
    | b! a-> ~ % [R] ais?
    | a a ~
    | a a
    | \times 2/3 { <fis1.: a:> }
    | \times 2/3 { <b,: a':> }
    | <b2 gis'-> > a->
    | gis r

% 240
    | cis8-\p r cis r dis r cis r
    | bis4 bis b2->
    | ais4( ais a )fis
    | gis( b a )cis
    | <e,2 gis> <dis a'>

    \bar "||"
    \key e \minor

    | \times 2/3 { g4.: c!:-\cresc e: g: }
    | \times 2/3 { c: e: g,: e: }
    | \times 2/3 { f:-\ff g: f: g: }
    | \times 2/3 { f: g: f: g: }
    | \times 2/3 { fis!2.: fis: }

% 250
    | \times 2/3 { e: } d!4 [e8.( )f16]
    | e8 r e4 ~ e8 r e4 % [R] Missing tie?
    | e8 r e4 ~ e8 r e4 ~
    | \times 2/3 { <c1.: e:> }
    | g2 e4 [fis8.( )g16]
    | \times 2/3 { [e8 e' e] e2.: } s4 % [R] s4 -> e4.:
    | \times 2/3 { e1.: }
    | \times 2/3 { r8 [g( )a] [b-. g( )a] [b-. g( )a] [b-. e,( )fis] }
    | \times 2/3 { [g-. e( )fis] [g-. e( )fis] [g-. c,( )d] [e-. d( )c] }
    | b1

% 260
    | \times 2/3 { [e,8( )g g] [g( )c c] [c( )e e] [e( )g g] }
    | f8-\p r \times 2/3 { [f( )c c-.] [c( )a a-.] [a( )f f-.] }
    | dis1-\f
    | r4 \times 2/3 { [g8-\f g g] [g g g] [g g g] }
    | r4 \times 2/3 { [g8 g g] [g g g] [g g g] }
    | r4 \times 2/3 { [g8 g g] [g g g] [g g g] }
    | r4 \times 2/3 { a2.: } s4 % [R] s4 -> a4.:
    | g8 r \times 2/3 { a2.: } s4 % [R] Ditto
    | g8 r e' r g, r e' r
    | \repeat unfold 4 { \times 2/3 { [b( )c c] } }

% 270
    | b4 r \lowerScript a2(->
    | )b4 r r2-\fermata

    \bar "|."
}
