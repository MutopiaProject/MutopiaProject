celloSecondMov = \notes \relative f {
    \key c \major
    \clef bass

    \lowerDynamics c4(-\p )g
    | a r
    | b( )c
    | g r
    | R2
    | r8 [a( b )g]
    | [e'( b] [c )f,]
    | g4 ~ g8 r
    | R2*2

% 11
    | f'2(
    | )e8 r r4
    | gis,4( )a
    | f8 r r4
    | g'4( )g,
    | c8 r r4
    | R2*15

% 32
    | c,4 \lowerScript f(->
    | )es8 r r4
    | as4 des(
    | )c8 r r4
    | [f,8.(-\f g32 )as] bes4
    | as8 r r4
    | R2
    | [g'8 g'(] )f!4(

% 40
    | )e!( \< \! )es
    | [d,,16 fis32 a] d16 r [d,16 g32 bes] d16 r
    | \repeat unfold 2 { [d,16 d'32( )cis] [d16 d] }
    | d,8 r r4
    | [a''32( gis a )bes] [a16 a] d,,4
    | \repeat unfold 2 { [g8( b )d] r }
    | [fis,8( a )fis] r
    | [g( b )d] r
    | [e,( g )a] r

% 50
    | fis r g16 r a r
    | d8 r r4
    | \repeat unfold 2 { [g,8( b )d] r }
    | [fis,8 a d] r
    | [g,( d' )g] r
    | [c,( es )a] r
    | d, r d, r
    | g16 r r8 b16 r r8 % [E]
    | d16 r r8 g16 r r8
    | r32 [d,(-\f es )f!] [es16 es] r32 [dis( e )f] [es16 es]

% 60
    | r32 [e( f! )g] [f f f f] r32 [eis( fis )g] [fis fis fis fis]
    | g16 r r8 b16 r r8 % [E]
    | d16 r r8 g16 r r8
    | r32 [e!( f! )g] [f16 f] r32 [dis( e )f] [e16 e]
    | r32 [d!( es )f!] [es es es es]  r [cis( d )e] [d d d d]
    | g,4 ~ [g32 fis( g )a] [g( fis g )gis]
    | a4 ~ [a32 gis( a )b] [a( gis a )ais]
    | b4 ~ [b32 ais( b )c] [b( ais b )b]
    | [e8( )bes'] [d,( )fis']
    | [g16( )d] [e( )b] [c( )g] [a( )e]
    | c8 r32 [c( b )c] c,8 r32 [c'( b )c]

% 70
    | cis,8 % [E]
      r32 [cis'( bis )cis] [cis,8 ~ cis32 cis'( b )cis]
    | [d(-\f cis d )es] [d d d d] [d( cis d )es] [d d d d]
    | [bes( a bes )c] [bes bes bes bes] [bes( a bes )c] [bes bes bes bes]
    | d2 ~
    | d4 r
    | [es8_#'(italic "pizz.") g bes bes,]
    | [es bes'] [g es]
    | [d bes' g es]
    | [bes f'] [d bes]
    | R2

% 80
    | r8 [c d bes]
    | [g' d] [es as,]
    | [bes bes'] [bes, bes']
    | f,4_#'(italic "arco") bes
    | g8 r r4
    | [g8.( )f16] e!4
    | f4 ~ f16 [f-.-\p f-. f-.]
    | as8-> es'( [g,-> )es']
    | [f,16-> es' fis,-> es'] [g,-> es' a,!-> es']
    | [g,16( b!32 )d] g8 [g,16( c32 )es] g8 % [E]

% 90
    | \repeat unfold 2 { [g,16 g'32 fis g16 g] }
    | g,8 r r4
    | [d'32( cis d )e] [d16 d] g,4
    | [c8( e! )g] r
    | [c,8( e )g] r
    | [b,( d )g] r
    | [c,( e )g] r
    | [a,( c )d] r
    | b r c16 r d r
    | g,8 r r4

% 100
    | \repeat unfold 2 { [c8( e )g] r }
    | [b,( d )g] r
    | [c,( e )g] r
    | [f,( as )d] r
    | g, r g r
    | c4 ~ [c32 b( c )d] [c( )b c-. cis-.]
    | d4 ~ [d32 cis( d )e] [d( )cis d-. dis-.]
    | e4 ~ [e32 dis( e )f] [e( )dis e-. e-.]
    | [d8( a'] [g )d']

% 110
    | c r r4
    | R2
    | f,16 r r8 f16 r r8
    | f16 r r8 f16 r r8
    | f8 r r4
    | g2(
    | )g,
    | c8 r r4
    | r f4
    | \repeat unfold 2 { \repeat unfold 2 { [c32( b c )d] [c16-. c-.] } }
    | c8 r r4

% 120
    | r8 [a( b )g]
    | \lowerScript a4(-> )g
    | f8 r r4
    | g2(
    | )c8 r r4
    | R2*2
    | g2(
    | )c8 r \raiseSlur \lowerDynamics [c8(-.-\p )c-.]
    | c r c, r

% 130
    | c4 r-\fermata

    \bar "||"
}
