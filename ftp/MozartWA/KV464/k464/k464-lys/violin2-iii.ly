violinIIThirdMov = \notes \relative a {
    \key d \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	r4
	| a8-\p r d r
	| cis r r4
	| r8 a4( )e'8
	| [e( )d] [fis( e]
	| [d )e] [fis( e]
	| [dis )e] g!4(-\sf
	| )fis8 r [cis8.(-\p e32 )d]
	| cis8 r
    }

    \repeat volta 2 {
	r4
	| r8 [c( b )a]

% 10
	| [fis'( )e] r e
	| r d r b
	| a4 [fis'8( e]
	| [d )e] [g(-\f fis]
	| [eis )fis] [b(-\p ais]
	| )b r r cis_\cresc \noBreak
	| e( )d4 a'8 ~
	| \times 2/3 { [a16(-\f )fis d-.] } \times 2/3 { [b( )g e-.] }
          [fis8.( a32 )g]
	| fis8 r
    }

    \repeat volta 2 {
        r4
	| r8 [a,(-\p d )fis]

% 20
	| r [b,( d )g]
	| r [e( a )g']
	| r [d,( fis e]
	| [d )e] [fis( e]
	| )dis e4 a8-\f ~
	| [a( )b] [a32( b bis cis] [b a b )gis]
	| a8 r
    }

    \repeat volta 2 {
        r4
	| r8 [a,(-\f \LowerDynamics dis-\p )a']
	| r [b,( \LowerText g'_\cresc )e']
	| r [fis,( g )b-\f]

% 30
	| r \lowerDynamics [e,(-\p fis e]
	| [d )e] [g( fis]
	| [eis )fis] [b(-\f c]
	| )b r [a(-\p )cis!]
	| [e( )d16] r
	  <
	    { \once \property Voice.Stem \override #'length = #11 e,4( |
	      \once \property Voice.Stem \override #'length = #15 )d16 }
	    \context Voice=x
	    { \stemOff \stemUp \slurUp cis'4( | )d16 }
	  > r16 b'-\p r [fis16.( eis32] [e d e )cis]
	| d8 r
    }

    \repeat volta 2 {
        \lowerDynamics [d32(-\p fis a fis] [d a d )a]
	| [d( fis a fis] [d a d )a] [d( fis a fis] [d a d )a]
	| [e'( g a g] [e a, e' )a,] [e'( g a g] [e a, e' )a,]
	| [e'( g a g] [e a, e' )a,] [cis( e a e] [cis a cis )a]

% 40
	| [d( fis a fis] [d a d )a] [d( fis b fis] [d b d )b]
	| \lowerDynamics [e(-\fp gis b gis] [a e a )e] [a( cis fis
          cis] [a fis a )fis]
	| [b(-\fp dis fis dis] [e b e )b] [a(-\f cis e )cis] [e( d b
          )gis]
	| [e( a cis )a] [fis( a fis )d] [cis( e cis a] [d e d )b]
    }

    \alternative {
        { \cadenzaOn [cis( e a gis] [g fis g )e] \cadenzaOff }
	{ \cadenzaOn [cis( e fis gis] [a gis b )a] \cadenzaOff }
    }

    \repeat volta 2 {
        \cadenzaOn [c'32(-\p d c b] [a g! fis )e] \cadenzaOff \bar "|"
	| \property Score.currentBarNumber = #45 [dis( fis a fis] [dis
          b dis )b] [fis'( a c a] [fis b, fis' )b,]
	| [e( g b g] [e b e )b] [e( g a g] [e a, e' )a,]
	| [d( fis a g] [fis e d )cis] [b( g' b a] [g fis e )d]
	| [fis( a fis )d] [e( a e )cis] [d( fis b fis] [d b d )b]
	| [e(-\fp gis b gis] [a e a )e] [g( b e b] [g e g )e]

% 50
	| [a(-\fp cis e cis] [d a d )a] [e(-\f g b g] [fis a fis )dis]
	| [e( b e g] [b-\p g b )g] [fis( a fis d] [g a g )e]
	| [cis( d e cis] [d e fis )d] [e(-\f gis b d] [e, a cis )e]
	| [a,( d fis d] [b d b )g!] [fis( a fis d] [g a g )e]
    }

    \alternative {
        { \cadenzaOn [fis( e d e] [fis g a )b] \cadenzaOff}
	{ \cadenzaOn fis8 r \cadenzaOff }
    }

    \repeat volta 2 {
        \cadenzaOn [d16.(-\p )a32 e'16.( )cis32] \cadenzaOff
	| \property Score.currentBarNumber = #55 fis8 r r4
	| r [cis16.( )a32 d16.( )b32]
	| e8 r r4
	| R2*2

% 60
	| r4 \lowerDynamics [g!8(-\p fis]
	| \LowerText [eis_\cresc )fis] \lowerDynamics [e8.(-\fp )gis16]
	| a8 r
    }

    \repeat volta 2 {
        [c,16.(-\p )a32 e'16.( )c32]
	| a'8 r r4
	| r4 [cis16.( )a32] [e'32( cis e )cis]
	| fis8 r r4
	| r4 r8 fis(
	| [f )e] [g( fis]
	| [eis )fis] r g( ~
	| [g )fis] \LowerText [fis,(_\cresc )e]

% 70
	| [cis'( )d] [c( b]
	| [ais )b] [fis8.(-\fp a32 )g]
	| fis8 r
    }

    \key d \minor

    \repeat volta 2 {
        \raiseSlur \lowerDynamics [a,8(-.-\p )a-.]
	| a4.( )d8
	| d4.( )g,8
	| e'4.( )cis8
	| [e( )d] r f( ~
	| [f )e] \times 2/3 { r16 [f( e] } \times 2/3 { [f a )f] }
	| \times 2/3 { [dis( fis dis] } \times 2/3 { [e gis )e] }
          [e'8.-\f \rbcOne r32 e,]
	| [c'8. \rbcOne r32 c,] [a'8-. b,-.]

% 80
	| a r
    }

    \repeat volta 2 {
        r4
	| \noTupletNum \times 2/3 { r16 \lowerDynamics [a(-\p cis] [e
          cis e] } )a8 r
	| \times 2/3 { r16 [a,( d] [f d f] } )a8 r
	| \times 2/3 { r16 [e( g] [a g )e] r [d( f] [a f )d] }
	| a8 r r4
	| \times 2/3 { r16 \lowerDynamics [a(-\f cis] [e cis e] } )g8 r
	| \times 2/3 { r16 [a,( d] [f d f] } )a8 r
	| \times 2/3 { r16 [cis,( d] [f cis d] } )f8 r
	| r4 [bes,8-\p bes'] ~
	| [bes( )a] \times 2/3 { r16 [bes( a] [bes d )bes] }

% 90
	| \times 2/3 { [gis( b gis] [a cis )a] } \tupletNum [a'8.-\f
          \rbcOne r32 a,]
	| [f'8. \rbcOne r32 f,] [d'8-. cis-.]
	| d r [gis,8.-\p \rbcOne r32 gis,32]
	| [f'8. \rbcOne r32 b,] [d8-. cis-.]
	| d r
    }

    \key d \major

    r4
    | r \lowerDynamics [d8(-\p )cis]
    | b( e4 )d8 ~
    | [d cis( d )e]
    | [a, d] ~ [d16.( )e32 cis16.( )d32]
    | [b8( )e] ~ [e16.( )fis32 d16.( )e32]

% 100
    | [cis8( )fis] ~ [fis16.( )g32 e16.( )fis32]
    | d4 ~ [d16( cis32 d] [e16 )d]
    | cis8 r r4
    | r4 \lowerDynamics [d8(-\f )c]

    % The Breitkopf score has b( cis4 )d8, but the cis is ambiguous
    % (there is no cautionary accidental although the previous and
    % the next bar both contain a natural c).  I prefer this solution,
    % which is the same adopted by Quartetto Italiano in the Philips
    % recording (8/1966) of this quartet: the interval between b and
    % e is the same as the interval between fis and b in bar #95
    % (violin I).
    | b( e4 )d8 ~

    | [d( c16. b32] [c16. d32 b16. )c32]
    | a8( d4 )a'8
    | [b cis16.(^\trill )b32] [cis8( )d]
    | [e16.( d32 cis16. )b32] [a8( )cis,]
    | [d16.( )a'32 gis16.( )fis32] [gis8.(^\trill fis32 )gis]
    
% 110
    | a8 r [a(-\p )g!]
    | fis( b4 )a8( ~
    | [a )g] ~ [g16.( )a32 f16.( )g32]
    | e8( a4 )g8 ~
    | [g( fis!16. )e32] fis8 r
    | [d( cis b )e] ~
    | [e16.( )fis32 d16.( )e32] [cis8( )e]
    | [d b'( a )g]
    | fis r r4
    | r r8 b-\f ~

% 120
    | [b16.( )c32 a16.( )b32] [g8 e'] ~
    | [e16.( )fis32 d16.( )e32] [cis!8 e]
    | [a, cis16(^\trill b32 cis] )d8 r
    | [d8(-\p cis b )e] ~
    | [e16.( )fis32 d16.( )e32] [cis16.( )d32 e8]
    | [d8-. e-. d-. cis-.]
    | d r

    \repeat volta 2 {
        r4
	| fis,4.(-\p )a8
	| a2 ~
	| a ~

% 130
	| a8 r [b( a]
	| [gis )a gis( )a] ~
	| [a( g! fis )f]
	| e( a4 )gis8
	| [a( )e16] r
    }

    \repeat volta 2 {
        \raiseSlur [e8(-. )e-.]
	| [fis( g a )dis,]
	| [e( f g )cis,]
	| d4.( )b'8
	| [b( )a16] r [b8( a]
	| [gis )a] [cis( )d]

% 140
	| a4( [gis8 g]
	| [fis )f] e4
	| r8 [dis'(-\f e )bes]
	| a d4( )cis8
ifdef(`SOLO',`
        | d8 r
    }

    r4
', `
    }

    \alternative {
        { d8 r }
	{ d8 r }
    }

    \cadenzaOn r4 \cadenzaOff \bar "||"
')

    | \property Score.currentBarNumber = #145 a2(-\p
    | )g4 r
    | \lowerDynamics cis,(-\f [e8 )g]
    | [fis8.( )d16] a'8 r
    | \lowerDynamics fis2(-\p

% 150
    | )g8 r a r
    | [d-. d-.] [a-. a-.]
    | [a16 a,32 a] [a16 a] [cis-. a-. cis-. a-.]
    | [d a32 a] [a16 a] [d-. a-. d-. a-.]
    | [a' a,32 a] [a16 a] [a'-. a,-. a'-. a,-.]
    | [a' a,32 a] [a16 a] [a'-. a,-. a'-. a,-.]
    | a'4 r8 a(
    | < { )gis4. } \context Voice=x { s8 \LowerText s8_\cresc } > gis(
    | [)g!8. g16(] [)fis8. d'16(]
    | [)cis8. cis16(] [)d8. fis,16]

% 160
    | e4-\f ~ e8 r
    | R2
    | r8 g,4-\p g8
    | g r r4
    | a4( )fis'
    | [fis8( )e] r4
    | r8 a,4( )e'8
    | [e( )d] [fis( e]
    | [d )e] [g(-\f fis]
    | [eis )fis] [b(-\p ais]

% 170
    | )b r r cis(_\cresc \noBreak
    | e d4 )a'8 ~
    | \times 2/3 { [a16( )fis d-.] } \times 2/3 { [b( )g e-.] }
      [fis8.( a32 )g]
    | fis8 r r4
    | \lowerDynamics [d8(-\p cis )b] r
    | [e16.( )fis32 d16.( )e32] [cis8 e'(]
    | [)d b] [a g]
    | fis \lowerDynamics d4(-\f )cis8
    | [b e] ~ [e16.( )fis32 d16.( )e32]
    | [cis8 e( a )cis]

% 180
    | [d b] [fis16.( )g32 e16.( )g32]
    | fis4 r
    | a4.(-\p )g8
    | fis4 r
    | fis4.( )e8
    | d r a r
    | a4 r \bar "|."
}
