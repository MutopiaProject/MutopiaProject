celloSecondMov = \notes \relative f {
    \key f \major
    \clef bass

    \noTupletBracket
    \property Voice.tupletSpannerDuration = #(make-moment 1 4)

    f4(-\p a, )c
    | f,2 r4
    | f'8-\f r d r bes r
    | f4-\p r8 [f'(-\cresc g )a]
    | [b,-\p b c c fis, fis]
    | [g g g g a a]
    | [bes! bes c c c c] % There is no cautionary flat in the B&H edition
    | f,!4 r8 [f'(-#'(columns (dynamic "p") (italic " cresc.")) c' )bes]
    | [a \raiseSlur a(-. g-. f-. e-. )d-.]

% 10
    | c4-\f r8 [c( e )f]
    | [bes, bes c c c-\p c]
    | f4 r8 [f,(-\p a )c]
    | f4 r8 [f16( e] [g8 )f]
    | e4 r8 [e16( d] [f8 )e]
    | d4 r8 [g16( fis] [a8 )g]
    | c,4 r8 [c'16( b] [d8 )c]
    | e,4 r8 [e16( d] [f!8 )e]
    | f4 r8 [f16( e] [g8 )f]
    | fis4 r8 [fis16( e] [g8 )fis]

% 20
    | g4 r8 [g,16( fis] [a8 )g]
    | r8 \LowerText [g16(-\cresc fis] [a8 )g] r8 [g16( fis]
    | [a8 )g] r [g(-\f b )c]
    | g'4 r r
    | [g8-\p g] g r r4
    | [b8 b] b r r4
    | [c,16(-\pp b c g] [c b c g] [c b c )g]
    | [d'( cis d g,] [d' cis d g,] [d' cis d )g,]
    | [c!( b c g] [c b c g] [c b c )g]
    | [d'( cis d g,] [d' cis d g,] [d' cis d )g,]

% 30
    | [c!( b c g] [c b c g] [c b c )g]
    | e4-\f f r
    | R2.*2
    | fis'4(-\p g )gis
    | a a,(-\f )g
    | f r f'-\p
    | e(-\cresc d )c
    | g'2.:8-\p
    | [c,8 c16( b] [d8 )c] r c

% 40
    | r \LowerText [c16(-\cresc b] [d8 )c] r c
    | r [c16( b] [d8 )c] r [c16( b]
    | [d8 )c] r [c16( b] [d8 )c]
    | r [c16(-\f b] [d8 )c] r [c16( b]
    | [d8 )c] r4 r
    | \lowerDynamics f4(-\p a, )c
    | f,2 r4
    | f'8-\f r d r bes r
    | f4-\p r8 \LowerText [f'(-\cresc d )c]
    | [b-\p b c c fis, fis]

% 50
    | [g g cis, cis d d]
    | [bes'! bes c c c c] % There is no cautionary flat in the B&H edition
    | f,4 r8 [c''8(-\cresc b bes]
    | [)a \raiseSlur a(-.-\p \lowerText g-.-\cresc f-. e-. )d-.]
    | c4-\f r8 [c( cis )d]
    | [bes bes c! c-\p c c]
    | f4 r8 \lowerDynamics [a,(-\p c )e,]
    | [es8-\f es es es es' es]
    | r8 [d16(-\p c] [es8 )d] r4
    | r8 [a16( g] [bes8 )a] r4

% 60
    | r8 [a'16(-\f g] [bes8 )a] r4
    | r8 [g16(-\p fis] [a8 )g] r4
    | r8 [cis,16( b] [d8 )cis] r4
    | r8 [d16( cis] [e8 )d] r4
    | r8 \LowerText [bes!16(-\cresc a] [c!8 )bes] r8 bes
    | r [b16( a] [c8 )b] r b
    | r8 [c16( b] [d8 )c] r c
    | r [des16( c] [es8 )des] r des-\f
    | c4 c, r8 [e'16(-\p c]
    | [g'8 )f] [b( )c] r [f,16(-\cresc c] \noBreak

% 70
    | [a'8 )g] [b( )c] r [g16( )c,]
    | [bes'8( a as g-\f f )b,]
    | c4 r r
    | [c8-\p c] c r r4
    | [e'8 e] e r r4
    | [f,16(-\pp e f c] [f e f c] [f e f )c]
    | [g'16( fis g c,] [g' fis g c,] [g' fis g )c,]
    | [f!( e f c] [f e f c] [f e f )c]
    | [g'16( fis g c,] [g' fis g c,] [g' fis g )c,]
    | [f!( e f c] [f e f c] [f e f )c]

% 80
    | a4-\f bes r
    | R2.*2
    | \lowerDynamics b4(-\p c )cis-\fp
    | d r r
    | \LowerDynamics [f,16(-\pp e f c] [f e f c] [f e f )c]
    | [g'16( fis g c,] [g' fis g c,] [g' fis g )c,]
    | [f!( e f c] [f e f c] [f e f )c]
    | [g'16( fis g c,] [g' fis g c,] [g' fis g )c,]
    | [f!( e f c] [f-\cresc e f )c] [as'( g as )f]

% 90
    | [bes(-\f a! bes )f] [des'( c des )bes] [g( f g )es]
    | [as( g as )es] [c'( bes c )as] [f( es f )d!]
    | [g( f g )d] [bes'( as bes )g] [e!( d e )c]
    | [f( e f )c] [as'( g as )f] [des'( c des )c]
    | bes4-\p \RaiseSlur [bes8(-. bes-. bes-. )bes-.]
    | \property Voice.DynamicText \override #'extra-offset = #'(0.0
      . -1.5) bes4-\sf \RaiseSlur [bes8(-.-\p )bes-.] b4-\sf
    | \RaiseSlur [b8(-.-\p )b-.] c4 cis-\fp \property
      Voice.DynamicText \revert #'extra-offset
    | \slurHeadToStem d(-\f c! )f,
    | bes r bes-\p
    | \once \property Voice.TextScript \override #'extra-offset =
      #'(0.0 . -2.5) a4(-\cresc g )f

% 100
    | c'2.:8-\p
    | f,8-\p r a r f r
    | g r e r bes' r
    | a r a r bes r
    | c r c r c, r
    | f r f' r a r
    | g r e r bes' r
    | a r a4( [bes8-\cresc b]
    | )c8-\p r c, r c r
    | r [f16( e] [g8 )f] r f

% 110
    | r [f16( e] [g8 )f] r f
    | r [f,16( e] [g8 )f] r f
    | r [f16( e] [g8 )f] r f
    | \lowerDynamics [f16(-\pp e f c] [f e f c] [f e f )c]
    | f2 r4 \bar "|."
}
