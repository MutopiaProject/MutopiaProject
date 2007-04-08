violinIISecondMov = \notes \relative c' {
    \key as \major
    \clef violin

    \noTupletBracket

    \repeat volta 2 {
	\lowerDynamics c4.(-\p )des-\sf
	| [c8(-\p es f] ~ f )es4 ~
	| es8( des4 ~ des8 )c4 ~
	| c8( bes4 ~ bes8 \lowerText )as4_\cresc \restoreText ~
	| [as8( bes )ces] [c(-\f )bes] r \restoreDynamics
	| r4 r8 es'4.(-\p
	| )as4. ~ as8( )g4
	| [c,8( des ces] [bes ces )bes]
	| [as(-\cresc bes )ces] [bes16.( c32 des8 )c]

% 10
	| bes4(-\f )as8 \grace { \cue bes16 } [as8 g] r
	| r [es(-\p )g] [g( )as] r
	| r [bes,( )f'] [fis( )g] r
	| r [as( )bes] ~ [bes( as )e]
	| [f c'( bes16 )as] \lowerDynamics [g8(-\f )f] r
	| r [d(-\p es] [e )f] r
	| r [d(-\p es!] [e )f] r \restoreDynamics
	| r \LowerText [d(_\cresc es!] [e f )g]
	| [c(-\f bes )as] g4 r8
	| r8 \lowerDynamics [g(-\p as] [a )bes] r

% 20
	| r [g( as!] [a )bes] r
	| r [g(-\cresc \restoreText as!] [a bes )as]
	| [fis(-\p g )es] [g( )f16. es32-. d8]
	| es4.(-\sf )d
	| [es8(-\p f )es] \restoreDynamics [as16.( f32 es8 )d]
	| < { \stemUp \slurUp es'4.( )d( | [)es8 \slurDown g,(-\p as]
          [a bes )b] } \context Voice=x { \stemDown \slurDown f2.(-\sf |
	  )es8 s4 s4. } > \stemBoth \slurBoth
	| [c8( e, )f] [as!8..( \lbcOne \rbcThree f32 \lbcTwo as16. )f32]
	| es!8 r g r g r
	| g r r r4 r8
% 30
	| bes,4.( <)as d>
	| \grace { \raiseBeam [g32( es'] \restoreBeam } )es'4.( des_\cresc
	| c )d
	| es(-\p des!_\cresc
	| c )d
	| [es8 <g,,-\p es'> <g es'>] <g es'> r r
    }

    \repeat volta 2 {
        | r4 r8 bes'4.(-\p
	| )es ~ es8( )des!4
	| c8( )f4 ~ f8( )e4
	| [f,8( as c] [es,! g )c]

% 40
	| \lowerText [des,!(_\cresc g )bes] \restoreText [c,( es )as]
	| [bes,( es )bes'] [bes,( d )f]
	| [c( f )c'] [c,( e )g]
	| [f(-\f bes )des!] [f,( as )c]
	| [des,!( ges bes] [as bes )b]
	| c4. ~ c8 r r
	| r4 r8 as4.-\p ~
	| as f
	| ges2. ~
	| ges4. es

% 50
	| < { des } \context Voice=x { s8 \LowerText s4_\cresc
          \restoreText } > bes4. ~
	| bes bes'
	| as2.-\f
	| g!8 r r as-\p r r
	| es r r r4 r8
	| [g'8(-\f es )bes] ~ [bes( es, )des!]
	| \lowerDynamics c4.(-\p )des-\sf
	| [c8(-\p es f] ~ f )es4 ~
	| es8( des4 ~ des8 )c4 ~
	| c8( bes4 ~ bes8 \lowerText )as4_\cresc \restoreText ~

% 60
	| [as8( bes )ces] [c(-\f )bes] r \restoreDynamics
	| r4 r8 es'4.(-\p
	| )as4. ~ as8( )g4
	| [c,8( des ces] [bes ces )bes]
	| [as(-\cresc bes )ces] [bes16.( c32 des8 )c]
	| bes4(-\f )as8 \grace { \cue bes16 } [as8 g] r
	| r \lowerDynamics [as,(-\p )c] \restoreText [c( )des] r
	| r [bes( )des] [b( )c] r
	| r [as(-. as-.] )as4-. r8
	| r [bes(-. bes-.] )bes4-. \once \property Voice.DynamicText
          \override #'extra-offset = #'(0 . 1.0) bes'8-\sf

% 70
	| g(-\p )f] \once \property Voice.DynamicText \override
	  #'extra-offset = #'(0 . 0.5) des'-\sf [bes(-\p )as] \once
	  \property Voice.DynamicText \override #'extra-offset =
	  #'(0 . -0.5) as-\sf
	| as4(-\p )bes8 [as( )g] g
	| [f8.^\trill g16 as8] [as( )g] <g-\f bes>
	| < { \stemUp bes4. bes4 } \context Voice=x { \stemDown
          \slurUp as4. [as8( )g] } > \stemBoth \slurBoth es,8(-\p
	| )fes4. ~ fes4 es8(
	| )fes4. ~ fes4 es8(
	| \LowerText )fes4.(_\cresc \restoreText )es
	| [d8(-\f c )bes] as4.-\fp ~
	| as8 r r r4 r8
	| r [c( des] [d )es] r

% 80
	| r [c( des] [d )es] r
	| r [c'(_\cresc des] [d es )des]
	| [b(-\p )c as] [c( )bes!16. as32-. g8]
	| as4.(-\sf )g
	| [as8(-\p bes )as] [des16.( )bes32] [as8( )g]
	| < { \stemUp \slurUp f'4.( )g( | \stemDown [)as8 c,( des!] [d
          es )e] } \context Voice=x { \stemDown bes2.-\sf } >
          \slurBoth \stemBoth
	| [f8( a, )bes] [des!8..( \lbcOne \rbcThree bes32 \lbcTwo
          des16. )bes32]
	| as!8 r c r c r
	| r c r r c, r

% 90
	| R2.
	| c4.( )g
	| as( \lowerText )ges'_\cresc \restoreText
	| f( )g
	| as(-\p )ges_\cresc
	| f( <)bes, g'!>
	| [<c8-\p as'> <c-. es> <c-. es>] <c-. es> r r
    }
}
