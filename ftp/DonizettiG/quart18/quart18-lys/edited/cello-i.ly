celloFirstMov = \notes \relative e, {
    \key e \minor
    \clef bass

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(ly:make-moment 1 4)

    \repeat volta 2 {
	e2->-\f a->
	| e2 ~ e8 r r4
	| r2 dis''8-\p r e r
	| \times 2/3 { [c,8 c c] [c8( d )c] } b4 r
	| a2->-\f c->
	| a-> ~ a4 r
	| r2 fis'8-\p r e r
	| b4 r \times 2/3 { r8 [ais-\f b] [cis d dis] }
	| e2-> a,->

% 10
        | e ~ e8 r r4
        | r2 dis''8-\p r e r
        | a,2-\f bes
        | a bes
        | a8 r \times 2/3 { [a,8-\p a a] [a a a] [a a a] } \noTupletNum
        | a r \times 2/3 { [a a a] [a a a] [a a a] }
        | b r \times 2/3 { [b-\p b b] [b b b] [b b b] }
        | b r \times 2/3 { [b-\p b b] [b b b] [b b b] } \tupletNum
        | e,2->-\f a->
        | e4 r r2

% 20
        | R1
        | \grace gis8( )a2 \( \grace dis8( \) )e2
        | a,4 % [R] c4 ?
          r r2
        | \grace ais8( )b2 \( \grace eis8( \) )fis2
        | b,4 r r2
        | \grace dis,8( )e2 \( \grace dis'8( \) )e2
        | e,4 r r2
        | \grace gis8( )a2 \( \grace dis8( \) )e2
        | c4 % [R] a4 ?
          r r2
        | \grace eis,8( )fis2 \( \grace cis'8( \) )d2

% 30
        | d,4 r r2
        | \times 2/3 { r8 \< [g-. a-.] [b-. c-. d-.] 
                       [e-. fis-. g-.] [a-. b-. \! c-.] } \noTupletNum
        | b8 r b,2-> b4(
        | \times 2/3 { )c8 [a-. b-.] [c-. d-. e-.]
                       [fis-. g-. a-.] [b-. c-. d-.] }
        | c8 r c,2-> c4(
        | \times 2/3 { )d8 [b-. c-.] [d-. e-. f-.]
                       [g-. a-. b-.] [c-. d-. e] } \tupletNum
        | d8 r b,2 b4(
        | )c8 r d'4(-\p c b
        | )c b( c )b
        | \times 2/3 { [c8 c c] [c c c] [cis cis cis] [cis cis cis] }
          \noTupletNum

% 40
        | \times 2/3 { [d d d] [d d d] [es es es] [es es es] } \tupletNum
        | d4 r r2
        | R1
        | r4 r8. cis,16 es4( [)d8. a16]
        | c4( [)bes8. fis16] a4( [)g8. cis,16]
        | d2->-\f g->
        | d4 d' g,2
        | \repeat unfold 3 { d8 r g r d r g r }

% 50
        | d8 r d' r r2
        | R1
        | c8_#'(italic "pizz.") r d, r b' r d, r
        | c' r d, r c' r d, r
        | c'-\p r d, r c' r d, r
        | b' r d, r b' r d, r
        | c' r d, r b' r d, r
        | c' r d, r c' r d, r
        | c' r d, r c' r d, r
        | b' r d, r b' r d, r

% 60
        | a' r d, r fis r d r
        | g r d r b' r d, r
        | d' % [E] To avoid unison with Violin II
          r d, r a' r d, r
        | g r r4 r \lowerText b(_#'(italic "arco")
        | )e8 r r4 r c4(
        | )b8 r r4 r2
        | c8_#'(italic "pizz.") r d, r b' r d, r
        | \repeat unfold 2 { c' r d, r c' r d, r }
        | b'8 r d, r b' r d, r

% 70
        | c' r d, r b' r d, r
        | c' r d, r c' r d, r
        | c' r a r fis! r d r
	| R1*2
	| \times 2/3 { r8 [d'' c] [b a g] [fis e d] [c b a] }
	| gis2. % [E]
          [gis8.(-\trill fis32 )gis]
	| a1->
	| cis->-\f
	| \times 2/3 { [cis8( )e e] [e( )g g] 
                       [g( )bes bes] [bes( )cis cis] } \noTupletNum
   
% 80
        | \times 2/3 { [d d d] [d d d] [b b b] [b b b] }
	| \times 2/3 { [g g g] [g g g] [d d d] [d d d] } \tupletNum
	| R1
	| fis'2(-\p f
	| )e r
	| es( d
	| )cis r
	| c!( b
	| a g
	| fis f

% 90
	| e-\cresc )es
	| \times 2/3 { [d8 d d] [d d d] [d d d] [d d d] } \noTupletNum
	| \times 2/3 { r8 [d'-. c-.] [b-. a-. g-.] 
                       [fis-. e-. d-.] [c-. b-. a-.] } \tupletNum
        | g2->-\f c->
	| g-> r
	| R1*2
	| r2 d'4( c
	| )b2 c(
	| d )d,

% 100
	| \lowerText <g1_#'(italic "rall. poco") d'> ~ % [E]
	| <g d'> ~
	| <g d'> ~
	| <g d'>

	\bar "||"
    }

    \alternative {
        {
	    | g2( )a
	    | b1
	}

	{
	    | g2( )c
	}
    }

    g4 r r2
    | R1
    | g2( )c

% 110
    | g4 r r2
    | R1*2
    | g'1-\p
    | \times 2/3 { [es,8-\f es es] [es es es] [es' es es] [es es es] }
    | \noTupletNum \times 2/3 { [as, as as] [as as as] [c c c] [c c c] }
      \tupletNum
    | es8 r as,4 bes bes
    | es1(-\fp 
    | )d
    | des(

% 120
    | )c8 r \times 2/3 { [<c,8-\p c'> <c c'> <c c'>] \noTupletNum
            \repeat unfold 2 { [<c c'> <c c'> <c c'>] } }
    | \times 2/3 { [f8-\f f f] [f f f] [f' f f] [f f f] }
    | \times 2/3 { [bes, bes bes] [bes bes bes] [des des des] [des des des] }
      \tupletNum
    | f8 r bes,4c c,
    | f'1(-\p
    | )e!
    | es
    | d8 r \times 2/3 { [<d, d'> <d d'> <d d'>] \noTupletNum
           \repeat unfold 2 { [<d d'> <d d'> <d d'>] } }
    | \times 2/3 { [g8 a bes] [c bes a] [g a bes] [c bes a] }
    | \times 2/3 { [g g g] [g g g] [g g g] [g g g] }

% 130
    | \times 2/3 { [g g g] [f f f] [e! e e] [e e e] }
    | \times 2/3 { [a b c] [d c b] [a b c] [d c b] }
    | \times 2/3 { [a a a] [a a a] [a a a] [a a a] }
    | \times 2/3 { [a a a] [g g g] [fis! fis fis] [fis fis fis] }
    | \repeat unfold 16 { \times 2/3 { [b b b] } }
    | \times 2/3 { [b8( ais )b] [b b b] [b8(-\p % [E] "Piano" added
                                         ais )b] [b b b] }
    | \times 2/3 { [b8( ais )b] [b b b] [b8( ais )b] [b b b] }

% 140
    | \times 2/3 { [b8( ais )b] [b_#'(italic "calando") b b] 
                   [b8( ais )b] [b b b] }
    | \times 2/3 { [b8( ais )b] [b b b] [b8( ais )b] [b b b] }
    | \times 2/3 { [b8-\f cis dis] [e fis g] } \tupletNum
      a8 r g-\p r
    | fis r e r b' r b r
    | b, r e r b r e r
    | g,1->
    | c8 r f4 c f
    | a,1->
    | d8 r g4 d g
    | b,1

% 150
    | <c,2 c'> c'4..(-\trill [b32 )c]
    | c,2 c'4..(-\trill % [E] To match the previous bar
      [b32 )c]
    | \times 2/3 { [b8 e dis] % [E]
                   [d cis c] [b fis' eis] [e dis cis] } \noTupletNum
    | \times 2/3 { [b g' fis] % [E]
                   [e d! c!] [b a' g] [fis dis cis] }
    | \times 2/3 { [b b'-\f a] % [E]
                   [g fis e] [d! c! % [E]
                              b] [a g fis] } \tupletNum
    | e2-> a->
    | e ~ e8 r r4
    | r2 dis''8-\p r e r
      % [E] Donizetti could have meant [d8 d d d] [d d] (without tuplets),
      %     but this solution matches bar 4
    | \times 2/3 { [c,8 c c] [c c c] [c c c] [c8( d )c] }
    | b4 r r2

% 160
    | a2-> c->
    | a ~ a8 r r4
    | r2 fis'8-\p r e r
    | b4 r \times 2/3 { r8 [ais b] [cis d dis] }
    | e2-> a,->
    | e ~ e8 r r4
    | r2 dis''8-\p r e r
    | \repeat unfold 2 { a,2 bes }
    | a8 r \times 2/3 { [a,-\p a a] [a a a] [a a a] } \noTupletNum

% 170
    | r4 \times 2/3 { [a8-\p a a] [a a a] [a a a] } % [E]
    | b8-\f r \times 2/3 { [b-\p b b] [b b b] [b b b] }
    | b8 r \times 2/3 { [b-\p b b] [b b b] [b b b] } \tupletNum
    | e,2->-\f a->
    | e4 r r2
    | R1
    | \grace gis8( )a2 \( \grace dis8( \) )e2
    | a,4 r r2
    | \grace ais8( )b2 \( \grace eis8( \) )fis2
    | b,4 r r2

% 180
    | \grace e,8( )f2 \( \grace ais8( \) )b2
    | e,4 r r [gis'8.( )gis16]
    | \times 2/3 { [a8 a a] [b b b] [c c c] [cis cis cis] } \noTupletNum
    | \times 2/3 { [d d d] [e e e] [eis eis eis] [fis fis fis] }
    | \times 2/3 { [g8-\f fis e] [d c b] [a g fis] [e d c] }
    | \times 2/3 { [b ais b] [c d e] [fis g a] [b c d] }
    | \times 2/3 { [e fis e] [d c b] [a g fis] [e d c] }
    | \times 2/3 { [b b b] [ais ais ais] [b b b] [b b b] }
    | \times 2/3 { [c c c] [b b b] [c c c] [cis cis cis] } \tupletNum
    | d4 r r2

% 190
    | R1
    | f8_#'(italic "pizz.") r g, r e' r g, r
    | \repeat unfold 2 { f' r g, r f' r g, r }
    | r4_#'(italic "arco")
      \times 2/3 { [fis'!8-\f e d] [cis b a] [fis' e d] } \noTupletNum
    | \times 2/3 { [cis b a] [fis'! e d] [cis b a] [fis' e d] } \tupletNum
    | r4 % [R] g'8 r ?
      a8_#'(italic "pizz.") r fis' r a, r
    | g' r a, r g' r a, r
    | g' r a, r g' r a, r
    | r4_#'(italic "arco") \times 2/3 { [g'8 fis e] [dis cis b] [g' fis e] }
      \noTupletNum

% 200
    | \times 2/3 { [dis cis b] [g' fis e] [dis cis bis] [g' fis e] } 
      \tupletNum

    \bar "||"
    \key e \major

    | a8_#'(italic "pizz.") r b, r a' r b, r
    | a' r b, r a' r b, r
    | a' r b, r a' r b, r
    | gis' r b, r gis' r b, r
    | fis' r b, r dis r b r
    | e r b r gis' r b, r
    | a' r b, r fis' r b, r
    | e r r4r gis4(_#'(italic "arco")
    | )cis8 r r4 r a,4(

% 210
    | )gis8 r r4 r2
    | a'8_#'(italic "pizz.") r b, r gis' r b, r
    | a' r b, r a' r b, r
    | a' r b, r a' r b, r
    | gis' r b, r gis' r b, r
    | a' r b, r gis' r b, r
    | a' r b, r a' r b, r
    | a' r fis r dis! r b r
    | R1*2

% 220
    | \times 2/3 { r8_#'(italic "arco.") [b' a] [gis fis e] 
                   [dis cis b] [a gis fis] }
    | eis2. [eis8.(-\trill dis32 )eis]
    | fis1->
    | ais-\sf
    | \times 2/3 { [ais8( )cis cis] [cis( )e e] [e( )g g] [g( )ais ais] }
      \noTupletNum
    | \times 2/3 { [b b b] [b b b] [gis gis gis] [gis gis gis] }
    | \times 2/3 { [e e e] [e e e] [b b b] [b b b] } \tupletNum
    | R1
    | dis'2(-\p d
    | )cis r

% 230
    | c( )b
    | ais r
    | a!( % [E]
      gis
    | fis )e
    | dis(-\cresc d % [E]
    | cis )c
    | \times 2/3 { [b8 b b] [b b b] [b b b] [b b b] } \noTupletNum
    | \times 2/3 { r8-\ff [b' a] [gis fis e] [dis cis b] [a gis fis] }
      \tupletNum
    | e2-> a->
    | e r

% 240
    | R1*2
    | r2 b'4( )a
    | gis2( )a
    | b1(

    \key e \minor

    | \times 2/3 { [)c8 c c] [c c c] [c c c] [c c c] } \noTupletNum
    | \times 2/3 { \repeat unfold 4 { [bes bes bes] } }
    | \times 2/3 { [a-\ff a a] [bes bes bes] [a a a] [bes bes bes] }
    | \times 2/3 { [a a a] [bes bes bes] [a a a] [bes bes bes] }
    | \times 2/3 { [b! b b] [b8 ais b] [dis dis dis] [dis8 cis dis] }

% 250
    | \times 2/3 { [e e e] [e8 dis e] [gis gis gis] [gis8 fis gis] }
    | a8 r \raiseScript [b8.(-\trill a32 )b]
      \repeat unfold 3 { c8 r \raiseScript [b8.(-\trill a32 )b] }
    | \times 2/3 { [c8 c c] [c c c] [c c c] [c c c] }
    | \times 2/3 { \repeat unfold 4 { [c, c c] } } % [E]
    | \times 2/3 { \repeat unfold 4 { [b b b] } }  % [E]
    | \times 2/3 { \repeat unfold 4 { [b b b] } }  % [E]
    | \times 2/3 { r8 [g'( )a] [b-. g( )a] [b-. g( )a] [b-. e,( )fis] }
    | \times 2/3 { [g-. e( )fis] [g-. e( )fis] [g-. c,( )d] [e-. d( )c] }
    | \times 2/3 { [b( )e e] [e( )g g] [g( )b b] [b( )e e] }
      \tupletNum

% 260
    | bes,1->
    | a-\p
    | b-\f
    | r4 \times 2/3 { [e,8-\f e e] [e e e] [e e e] } \noTupletNum
    | b''8 r \times 2/3 { [e,, e e] [e e e] [e e e] }
    | g'8 r \times 2/3 { [e,-\f e e] [e e e] [e e e] }
    | e'8 r \times 2/3 { [a, a a] [a a a] [a a a] } % [E]
    | e8 r \times 2/3 { [a a a] [a a a] [a a a] }   % [E]
    | e8 r a r e r a r
    | \repeat unfold 4 { \times 2/3 { [e( )a a] } }

% 270
    | e4 r a2(->
    | )e4 r r2-\fermata

    \bar "||"
}
