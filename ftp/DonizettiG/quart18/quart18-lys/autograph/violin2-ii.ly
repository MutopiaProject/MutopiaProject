violinIISecondMov = \notes \relative c' {
    \key c \major
    \clef violin

    \lowerDynamics c4(-\p )b
    | a r
    | d( )c
    | b r
    | r8 [g( a )b]
    | c4 b
    | g( [c8 )d]
    | c4( )b8 r
    | c2 ~

% 10
    | c8 r r4
    | c2 ~
    | c8 r r4
    | d4( \LowerScript )c-> ~
    | c8 r r4
    | g4( )b
    | [c16( )e g-. g-.] g4:16
    | g2:
    | r32 [fis( g )a] [g16-. g-.] g4:
    | g2:

% 20
    | r32 [fis( g )a] [g16-. g-.] g4:
    | r32 [b( c )d] [c16 c] c4:
    | [c16( )es d-. c-.] [b( )d c-. b-.]
    | [c( )e! gis,( )b] [a( )c a( )d]
    | [c( )g e( )c] [b( )g' g-. g-.]
    | r32 [b32( c )d] [c16 c] c4:
    | c8 r r4
    | r32 [b( c )d] [c16 c] c4:
    | c8 r r4
    | d4( )c

% 30
    | a8 r [b16( )a g( )f]
    | e4 <b f'>
    | [<g32(-\f es'> )f' g-. g-.] [g-. g-. g-. g-.] <b,4-> d>
    | c8 r r4
    | [<c32( es> )des es es] [es es es es] \tieUp <bes4( es> ~
    | <)as8 es'> \tieBoth r r4
    | c2:32-\f
    | f8 c'4-> bes8 ~
    | bes as4 a8
    | d, d'4 d8 ~

% 40
    | d d4 cis8
    | \repeat unfold 2 { r32 [cis,( d )es] [d16 d] }
    | r32 [gis( a )bes] [a16 a] r32 [a( bes )c] [bes16 bes]
    | a8 r r4
    | \repeat unfold 2 { [fis32( eis fis )g] [fis16 fis] }
    | g!16 [d( b d] [b d b )d]
    | \repeat "tremolo" 4 
      { b16( )d } % [R] In the score this is notated differently
    | \repeat "tremolo" 4 { c16( )d } % [R] Ditto
    | \repeat "tremolo" 4 { b16( )d } % [R] Ditto
    | \repeat "tremolo" 4 { g16( )cis, } % [R] Ditto

% 50
    | a'8 r b16 r cis, r
    | d [a'( \< gis \! )g] [fis( \> e d \! )c!]
    | \repeat "percent" 2 { \repeat "tremolo" 4 { b16( )d } } % [R] Ditto
      \property Score.currentBarNumber = #54
    | \repeat "tremolo" 4 { c16 d } % [R] Ditto (add a slur here)
    | \repeat "tremolo" 4 { b16( )d } % [R] Ditto
    | \repeat "tremolo" 4 { c16( )es } % [R] Ditto
    | b8 r fis' r
      % [R] There is a mistake here !
    | <b,16 g'> s r s <b d> s r s \bar "" \noBreak
    | <b d> s r s <b d> s r s
      \property Score.currentBarNumber = #59
    | [a'8.->-\f \( b32( \) )c] [a8.-> \( b32( \) )c]

% 60
    | \repeat unfold 4 { [<a,16 a'> b'32( )c] }
      % [R] There is a mistake here !
    | b16 s r s <b, d> s r s \bar "" \noBreak
    | <b d> s r s <b d> s r s
      \property Score.currentBarNumber = #62
    | \repeat unfold 3 { [a'8 ~ a32 b( a )gis] }
      [a8. fis16]
    | r32 [ais,-. b-. c-.] [b8( )b'16] r r8
    | r32 [b,-. c-. d-.] [c8( )c'16] r r8
    | r32 [cis,-. d-. e-.] [d8( )d'16] r r8
    | [bes8( )g] a4
    | [g'16( )fis] [e( )d] [c( )b] [a( )g]
    | \repeat unfold 2 { r32 [dis( e )fis] [e e e e] }

% 70
    | r [fis( g )a] [g g-\cresc g g] r [fis( g )a] [g g g g]
    | [<bes,8.-\f g'> <bes32 g'> <bes g'>] [<bes8. g'> <bes32 g'> <bes g'>]
    | \repeat unfold 2 { [<bes8. as'> <bes32 as'> <bes as'>] }
    | <bes2 as'> ~
    | <bes4 as'> r
    | es4( d
    | )es r
    | f( es
    | )d r
    | r8 [bes( c )d]

% 80
    | es4( )d
    | bes4. [g'16.( )f32]
    | es4( )d8 r
    | r32 [f( as )g] f4 d!8
    | bes r r4
    | r32 [dis( e f] [g as bes )b] c8 r
    | r4 r16 [c,-.-\p c-. c-.]
    | [es32-. d-. es-. f-. es8] ~ [es32 d-. es-. f-. es8] ~
    | [es32 c-. d-. es-.] \repeat unfold 3 { [es-. c-. d-. es-.] }
    | \repeat unfold 2 { r32 [fis( g )as] [g16 g] }

% 90
    | r32 [ais( b! )c] [b b b b] r [b( c )d] [c c c c]
    | b8 r r4
      % [R] There is a mistake here!
    | \cadenzaOn [b,!32( % [R] The cautionary natural is useless
       ais b )c] [b16 b] [d32( cis d )e] [d16 d] s2 \cadenzaOff \bar "|"
      \property Score.currentBarNumber = #93
    | \repeat "percent" 2 {
          \repeat "tremolo" 4 
          { c16( )g } % [R] In the score this is notated differently
      }
      \property Score.currentBarNumber = #95
    | [d'16 g,( b )g] [b( g b )g]
    | \repeat "tremolo" 4 { c16( )g } % [R] Ditto
    | \repeat "tremolo" 4 { d'16( )c } % [R] Ditto
    | d8 r e16 r a, r
    | b [b'( ais )a] [g( f % [R] A cautionary natural would be useful
                      e )d]

% 100
    | \repeat "percent" 2 {
          \repeat "tremolo" 4 
          { e16( )g } % [R] In the score this is notated differently
      }
      \property Score.currentBarNumber = #102
    | \repeat "tremolo" 4 { f16( )g } % [R] Ditto
    | \repeat "tremolo" 4 { e16( )g } % [R] Ditto
    | \repeat "tremolo" 4 { f16( )as } % [R] Ditto
    | e8 r <b d> r
    | r8 r32 [fis-. g-. g-.] a4 ~ % [R] This is impossible to play!
    | [a8 ais32 ais ais ais] b4 ~
    | [b8 b(] % [R] Probably the b is b32 b b b
      )c4
    | c4 [b8 d]

% 110
    | [e16( s d s c s )b s] \bar "" \noBreak % [R] There is a mistake here !
    | [a( s g s b s )c s] % [R] Ditto
      \property Score.currentBarNumber = #111
    | \repeat unfold 2 { <d a'> s r s } \bar "" \noBreak
    | \repeat unfold 2 { <d a'> s r s }
      \property Score.currentBarNumber = #112
    | <d8 a'> r r4
    | e2(
    | [)f16( e d )c] [b8( )f']
    | e8 r e4
    | f2(
    | )e8 \lowerHairpin [f(-\< f \! )g]
    | < f2 \context Voice=x { s8 \> s4 \! s8 } >
    | r8 [g,( a )b]

% 120
    | c4( )b
    | a2-> ~
    | a8 r r4
    | g4( )b
    | \repeat "percent" 2 { r32 [b( c )d] [c16-. c-.] c4:16 }
      \property Score.currentBarNumber = #126
    | \repeat unfold 2 { [c32( b c )d] [c16-. c-.] }
    | \repeat unfold 2 { [b32( ais b )c] [b16-. b-.] }
    | c8 r \lowerDynamics \raiseSlur [g8(-.-\p )g-.]
    | g r g r

% 130
    | g4 r
    
    \bar "||"
}
