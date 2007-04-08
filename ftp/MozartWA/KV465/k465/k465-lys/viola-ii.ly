violaSecondMov = \notes \relative c' {
    \key f \major
    \clef alto

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(make-moment 1 4)

    c4-\p a4.( [bes16 )g]
    | e4( [)f8 \LowerText f(-\cresc g )a]
    | bes-\f d4( f )bes8
    | f4-\p r r
    | d( )c2
    | fis,4( g )c,
    | [d8( g16 )bes] a4( )c
    | c r r
    | c(-\cresc [)bes'8( a-. g-. )f-.]

% 10
    | e4-\f r8 [e( g )f]
    | f2( )e4-\p
    | [c8 bes16 a] a4.(-\p [bes16 )g]
    | [f8 f' f f c c]
    | [c e e e c c]
    | d2.:8
    | [c8 g' g g g g]
    | bes2.:8
    | [a8 f f f c c]
    | a2.:8

% 20
    | [g8( b16 a] [c8 )b] r [c16(-\cresc b] \noBreak
    | [d8 )c] r [d16( cis] [e8 )d]
    | r [e16(-\f dis] [f8 e d )c]
    | b4 r r
    | [b8-\p b] b r r4
    | [d8 d] d r r4
    | R2.
    | f4-\pp \raiseSlur [f8(-. f-. f-. )f-.]
    | f4( )e r
    | g2 r4

% 30
    | g4.-\cresc \raiseSlur [g8(-. g-. )g-.]
    | c,4-\f c r
    | f-\p \raiseSlur [f8(-. f-. f-. )f-.]
    | f4 \raiseSlur [f8(-. f-. f-. )f-.]
    | c2( )d4
    | c8-. \lowerDynamics [c,(-\f cis d es )e]
    | [f f'-\p f f f f]
    | g2.-\cresc
    | r8 [e-\p f f f f]
    | e2.

% 40
    | f2.-\cresc
    | g2( )f4
    | c( )bes!2
    | \lowerDynamics a4(-\f f )e
    | e2 r4
    | c'4-\p a4.( [bes16 )a]
    | e4( [)f8 \LowerText f( g )a]
    | bes(-\f d4 f )bes8 % The slur start from bes, not from d
    | f4-\p r r
    | d( )c2

% 50
    | [fis,8( )g] g4( )f
    | bes( a )c
    | c r r
    | c( [)bes'8 \raiseSlur a(-.-\cresc g-. )f-.] % The slur start from a
    | e4-\f r8 [e( g )f]
    | f4 ~ [f8( )c] r c-\p
    | [c( bes16 )a] [a \raiseSlur f'-.-\p e-. d-.] \raiseSlur
      [c-. bes-. a-. g-.]
    | [f8-\f f f f a c]
    | [d-\p d bes bes d d]
    | es2.:8

% 60
    | c2.:8-\f
    | [bes8-\p bes bes d d d]
    | e!2.:8
    | d2.:8
    | [d8 d-\cresc d d d d]
    | [d d <d f> <d f> <d f> <d f>]
    | [<c f> <c f> <c f> <c f> <c f> <c f>]
    | [<b f'> <b f'> <b f'> f'-\f f f]
    | [g( f16 )e] r8 [e16(-\p d] [f8 )e]
    | [e( )f] r \lowerText [f16(-\cresc e] [g8 )f]

% 70
    | [fis( )g] r [g16( fis] [a8 )g]
    | e( )f!4 [e8(-\f )f f]
    | e4 r r
    | [e8-\p e] e r r4
    | [g8 g] g r r4
    | R2.
    | bes4-\pp \raiseSlur [bes8(-. bes-. bes-. )bes-.]
    | bes4( )a r
    | c2 r4
    | c4. \raiseSlur [c8(-.-\cresc c-. )c-.]

% 80
    | f,4-\f f r
    | bes,-\p \raiseSlur [bes8(-. bes-. bes-. )bes-.]
    | bes4 \raiseSlur [bes8(-. bes-. bes-. )bes-.]
    | f2( \lowerDynamics )e4-\fp
    | f4 r r
    | f-\pp \raiseSlur [f8(-. f-. f-. )f-.]
    | f4( )e r
    | c'2 r4
    | bes'4 \raiseSlur [bes8(-. bes-. bes-. )bes-.]
    | bes4( )as-\cresc f

% 90
    | f2(-\f )es4 ~
    | es2( )d!4 ~
    | d4.( )des8 c4 ~
    | c4. [c8( as )f]
    | <des'4-\p f> \raiseSlur [<des8(-. f> <des-. f> <des-. f> <)des-. f>]
    | <des4-\sf e> \raiseSlur [<des8(-. e> <)des-. e>] <d4-\sf f>
    | \raiseSlur [<d8(-. f> <)d-. f>] <c4( f> )bes-\fp
    | [a8-. \lowerDynamics f(-\f fis g as )a]
    | [bes8 bes-\p bes bes bes bes]
    | c2.-\cresc

% 100
    | r8 [a-\p bes bes bes bes]
    | [a16-\p a a a] f4:16 a4:16
    | e4:16 g4:16 [e16 e e g]
    | f4:16 f4:16 f4:16
    | a4:16 a4:16 e4:16
    | g4:16 f4:16 f'4:16
    | e4:16 g4:16 [e16 e e g]
    | f4:16 es4:16 [d16-\cresc d as' as]
    | a!4:16 a4:16 e4:16
    | [f16 c c c] c4:16 c4:16

% 110
    | bes4:16 bes4:16 a4:16
    | f'4:16 des4:16 c4:16
    | e,4:16 e4:16 e4:16 \LowerDynamics [f16-\pp c c c] c4:16 c4:16
    | c2 r4 \bar "|."
}
